# 來源：Gmail 期刊通知掃描（gog CLI）

適用：從使用者信箱的期刊 TOC、Google Scholar Alert、APA PsycInfo Updates 通知信中找出符合條件的新文獻。不需要瀏覽器。

- 前置：gog CLI 已安裝並授權 gmail scope（`gog auth status` 可驗；本 repo 的 `gogcli` skill 有安裝說明）。
- 輸出加 `-p`（TSV）或 `--json` 便於解析。

## 建議的信箱佈置

- 建一個 **`Journal TOC`** 標籤＋Gmail 篩選器，把各出版商 TOC 信自動聚合進來。常見寄件者：
  - Wiley：`WileyOnlineLibrary@wiley.com`
  - Elsevier/ScienceDirect：`sciencedirect@notification.elsevier.com`
  - AOM：`alerts@aom.org`
  - APA：`psycinfoservices@apa.org`（**PsycInfo Updates 儲存檢索通知**——可在 PsycNet 設定主題式儲存檢索，是主題掃描的高價值來源）、`psycalerts@info.apa.org`（單刊 PsycAlert）
  - listserv 轉發 TOC（RMNET 等）
- Google Scholar Alerts：`scholaralerts-noreply@google.com`，**不在** `Journal TOC` 標籤下，要另加 from 條件。主旨有多語系版本（「… - new articles」等）。
- 建一個「已閱讀」標記標籤（如 `AI已閱讀`），供掃描去重與手動清信。

## 掃描流程

1. **組查詢**（時間範圍照使用者條件換算 `newer_than:`）：

   ```
   gog gmail search "(label:Journal-TOC OR from:scholaralerts-noreply@google.com) newer_than:90d -label:AI已閱讀" -p --max 50
   ```

   查詢語法即 Gmail 搜尋語法；標籤名中的空格在 query 裡寫 `-`（實測有效），或用引號包裹（`label:"Journal TOC"`），兩式擇一、以實測命中為準。結果超過一頁時依提示用 `--page` 或 `--all` 取完。
   **主題詞預篩僅限使用者明確給定狹窄主題時使用**：如 `... overqualification` 只回含該詞的信，大幅縮小逐信解析量。詞形要列變體（`(overqualified OR overqualification)`），Gmail 不做字根展開。⚠️ 預篩以 recall 為代價——使用者興趣圈較寬或在偏好校準期時**不要預篩**，全量掃描逐篇判斷；預篩無命中時回報「此期間通知信無此主題文章」並註明是預篩結果。

2. **逐信讀內文**：`gog gmail get <messageId> --json` 取回 JSON，論文資訊在 `.body`（HTML）。體積可達數百 KB，先落地暫存目錄，再由 AI 助理讀檔解析（剝 HTML tag、解 entity 都在解析時處理；selector 只是定位線索，郵件模板改版時以現場 HTML 結構為準）。實測過的解析要領：
   - **Scholar Alert**：每篇 = `<a class="gse_alrt_title">`（標題）＋後續 `color:#006621` 的 div（`作者 - 期刊, 年份`）。有 `[PDF]` 前綴者附直連。
   - **PsycInfo Updates**：整封剝 HTML tag 後即「標題行／作者行／`期刊, vol, 月年`行」三行一組的清單。⚠️ 寬泛主題（如「Selection」）會混入大量無關領域文章（item selection、feature selection…），逐篇語意過濾，不能只靠關鍵字。
   - 只保留符合使用者主題與年份條件者。一封信可能列數十篇，逐篇判斷、不整封略過。

3. **套標籤**（時序重要：**逐信解析完成、結果已落地候選清單之後**才套標——若中途 crash，未落地就套標的信會在下輪被 query 跳過造成漏件）：

   ```
   gog gmail labels list -p                     # 確認已閱讀標籤存在
   gog gmail labels modify <id>... --add "AI已閱讀" -p
   ```

   `labels modify` 可一次收多個 id；search 輸出 THREAD 欄為 `-`（單信 thread）時直接用 ID 欄的 messageId。**漏標會讓使用者重複讀信**——完成標準：本輪 search 命中的每封信都已套標。

4. **產出候選**：每篇【作者、標題、期刊、年份、來源信件、預計下載管道、摘要素材】，回主流程步驟 2 合併。**摘要素材**：信件若附摘要（Scholar Alert 的片段、TOC 的 abstract）解析時一併擷取；只有標題時註記「僅標題」。

## ResearchGate 通知信（選用）

- 寄件者 `no-reply@researchgatemail.net`，**不在** `Journal TOC` 標籤下，query 用 `from:researchgatemail.net`。
- 信件類型與解析：
  - **published an article/preprint**（追蹤學者發表）：正文有 `View article` 連結，內含 `publication/<id>_<slug>`；一封可含多篇。
  - **cited your research**（被引通知）：列 citing 文獻與被引論文；citing 文獻常是外圍領域，逐篇判相關度。
  - 排除類：站內訊息、followed you back、confirm authorship。
- 下載判斷：RG 頁標題含 `(PDF)` = 有全文；`Request PDF` = 僅能 request（**不代使用者發 request**）。**preprint 先看 DOI**——arXiv DOI（10.48550/arXiv.*）直接 `curl arxiv.org/pdf/<id>` 抓，不必經 RG；命名以 arXiv 版實際作者序為準。
