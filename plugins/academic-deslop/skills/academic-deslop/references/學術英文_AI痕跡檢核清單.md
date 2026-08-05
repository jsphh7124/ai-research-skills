# 學術英文 AI 痕跡檢核清單（OB/HRM 校準版）

> **用途**：`ai-slop-cleaner` 在處理**英文學術稿**（OB/HRM／應用心理學期刊稿、書章、摘要、審稿回應）時的稽核參考。
> **與一般版的差異**：直接照搬通用去 AI 味規則會誤刪正當學術筆法，甚至違反 APA。本清單把每條標記分成「直接適用／學術調校／學術豁免／低相關」四層，附學術版改法。
>
> **來源**：blader/humanizer 的 33 項標記（本於 Wikipedia「Signs of AI writing」，WikiProject AI Cleanup）；E 區增補自 speak-human-tw v1.4.0（2026-07-11 吸收）。
> **姊妹檔**：[[resources/學術中文_AI痕跡檢核清單]]（同架構中文版，本於 speak-human-tw 38 項）。依稿件語言擇一使用。
> **互補檔**：[[resources/AI Writing Tropes to Avoid]]（tropes.fyi 通用網文版）、[[resources/文案撰寫應避免之用字與用語]]。
> **配合技能**：`writing-style-en`（保作者 voice）、`manuscript-review`（精簡＋關鍵詞一致）、co-author 誠實紀律（不編造）。
>
> **使用方式**：在英文學術稿的 deslop pass，先掃「直接適用」19 項；遇到「學術調校」8 項時依該條改法處理，不可機械刪除；「學術豁免」2 項預設**不動**（dash 例外見硬規則）；「低相關」4 項通常略過。任何一條**單次出現**多半無妨，問題在於密集出現或反覆濫用。

---

## ⛔ 硬規則：Em-dash 與 En-dash（嚴格）

破折號**預設一律不用**，只在「絕對有必要」時放行：

- **En-dash（–）**：僅用於**數值/頁碼/年份範圍**等正字法必要處——`pp. 12–18`、`2010–2015`、`Table 3–5`、`r = .20–.35`。這類**必須**用 en-dash，不可改成 hyphen 或刪。
- **Em-dash（—）**：預設**改寫掉**。優先順序：逗號 → 冒號 → 句號 → 括號 → 重組句子。**僅當**插入語在結構上無法用上述替代、且刪了會損失意義時，才保留單一 em-dash；同一段落不得出現第二個。
- 自我檢查：最終稿中 em-dash 數量應趨近於 0；en-dash 僅出現在範圍標記。AI 稿常見 20+ 個破折號，人類學術稿通常 0–2 個。

> 對應 humanizer #14。一般版主張「全砍」；本校準版保留 en-dash 的範圍正字法，但對 em-dash 採「近零容忍、僅必要時放行」。

---

## A. 直接適用學術寫作（19 項）— 偵測到即清

| # | 標記 | Watch for | 學術版處理 |
|---|------|-----------|-----------|
| 3 | 浮誇 -ing 結尾分詞 | highlighting / underscoring / emphasizing / reflecting / contributing to / showcasing | 砍掉拖在句尾、不增資訊的分詞片語；要講意涵就寫成完整子句並附證據 |
| 4 | 廣告式形容詞 | vibrant / breathtaking / rich(比喻) / stunning / renowned / groundbreaking / nestled | 期刊要中性，刪除或換成可驗證的具體描述 |
| 7 | AI 愛用詞（**需挑**，見下） | delve / tapestry / landscape(抽象) / testament / pivotal / underscore / showcase / intricate / interplay | 確為空殼修飾才刪；正當學術用法保留（見 B 區 #7 註） |
| 8 | 迴避 is（copula avoidance） | serves as / stands as / marks / represents / boasts / features | 多數可直接還原成 is/are/has，句子更乾淨 |
| 9 | 否定平行 + 尾巴否定 | "not only…but…" 濫用、"no guessing / no wasted motion" 尾巴 | 還原成正面完整子句 |
| 10 | 硬湊三項（rule of three） | 三個並列短語強行湊齊 | 非真三構念時拆開或刪冗 |
| 15 | 濫用粗體 | 正文 inline **bold** 堆疊 | 期刊正文幾乎不 inline 粗體，移除 |
| 18 | Emoji | 標題/條列的 emoji | 學術稿零容忍，全刪 |
| 20 | 客套/協作殘留 | I hope this helps / Certainly! / Would you like… / here is a… | 直接刪，與正文無關 |
| 21 | 訓練截止免責＋編故事填空 | as of [date] / while specific details are limited / likely / it is believed that | **誠信紅線**：缺來源就如實說「資料不足」或省略，**禁止**用 plausible filler 補；與 co-author 誠實紀律一致 |
| 22 | 諂媚語氣 | Great question! / You're absolutely right / excellent point | 刪除，學術文中不應出現 |
| 23 | 填充贅語 | in order to→to / due to the fact that→because / at this point in time→now / has the ability to→can | 全部精簡；與 `manuscript-review` 精簡原則同向 |
| 25 | 空泛正向結尾 | the future looks bright / exciting times ahead / a step in the right direction | discussion/conclusion 改為具體主張或可檢驗的命題 |
| 26 | 連字號誤用 | data-driven / cross-functional / high-quality 等在**述語位**仍連字 | 規則：**修飾名詞（attributive）才連字**，述語位（predicate）不連字。`a data-driven approach` ✓／`the approach is data driven` ✓ |
| 27 | 權威話術 | at its core / in reality / what really matters / fundamentally / the real question is | 空話，刪或換成具體論點 |
| 29 | 標題後一句廢話重述 | heading 後接一行只重述標題的句子 | 刪該行，直接進實質內容 |
| 31 | 硬湊金句／短句堆戲劇感 | 每句都像收尾金句、短 fragment 連發 | 還原成正常學術陳述句 |
| 32 | 格言公式 | "X is the Y of Z" / "X becomes a trap" / the language of / the currency of | 改寫成具體、可界定的學術命題 |
| 33 | 口語反問開場 | Honestly? / Look / Here's the thing / Let's be honest（作獨立開場） | 刪除戲劇性停頓，直接陳述 |

> **#7 挑詞註**：`crucial / key / pivotal / underscore / highlight / interplay / valuable / robust / leverage` 在正當學術句中也會出現（如 "a key moderator"、"the interplay between X and Y"）。**看語境挑**，不要全表封殺；只清明顯為灌水修飾的用例。

---

## B. 學術調校／反轉（8 項）— 不可機械刪除，依下法處理

| # | 標記 | 為何不能照刪 | 學術版改法 |
|---|------|------------|-----------|
| 1 | 灌水意義/legacy | 學術 intro **本來就要論述 contribution/significance** | 只刪空殼字（testament / indelible mark / pivotal moment / deeply rooted）；**保留**有證據支撐的貢獻論述 |
| 5 | 空泛歸因/weasel words | 原則對、**修法相反** | 偵測 "experts argue / studies show / it is widely believed" → **不是刪，而是補上真實 citation**（作者、年份）。補不出來才刪該主張 |
| 6 | 「挑戰與未來展望」公式段 | 學術論文的 **Limitations & Future Research 是必備章節** | **保留**正當的限制/未來研究段落；只清 "despite these challenges…continues to thrive" 式空洞樂觀套語 |
| 7 | AI 詞表全表封殺 | 部分是正當學術詞 | 見 A 區 #7 挑詞註，**語境判斷**而非整表刪 |
| 11 | 同義詞輪替 | **反轉成優點** | 學術寫作**要求關鍵詞一致**：同一構念固定用同一詞（engagement 別一下寫 involvement、commitment）。偵測到輪替 → 統一為標準術語，**強化**而非容忍。對應 `manuscript-review` keyword consistency |
| 13 | 被動語態 | Method 段**正當使用被動**（"participants were recruited"）；APA 7 偏好主動但不禁被動 | 只清**過度/隱藏主詞**的被動；該用被動處（強調受詞、方法程序）保留 |
| 24 | 過度 hedging | 學術**需要**校準過的單層 hedging（"results suggest"） | 只清疊三層（"could potentially possibly might"）；**保留**單一、必要的限定語 |
| 28 | Signposting | 學術**正當需要 roadmap**（"This section reviews…"、"We first describe…"） | 保留結構性指路；只清口語式（"let's dive in / without further ado"） |

---

## C. 學術豁免（2 項）— 與規範直接衝突，預設不動

| # | 標記 | 豁免原因 |
|---|------|---------|
| 14 | 「砍掉所有 dash」 | **見上方硬規則**：en-dash 為頁碼/數值/年份範圍正字法所必需，不可全砍；em-dash 採近零容忍但非「機械全刪」。本條**不套用一般版的無條件刪除** |
| 17 | 標題不用 Title Case | **APA 7 的 Level 1、2 標題正是 Title Case**；機械改成 sentence case 會違反 APA。依目標期刊格式為準，預設**不動** |

---

## D. 對學術論文低相關（4 項）— 通常略過

| # | 標記 | 說明 |
|---|------|------|
| 2 | 媒體曝光/notability | 為維基人物條目設計（"cited in NYT / active social media presence"），論文用不到 |
| 16 | inline-header 垂直清單 | 論文偶有正當的結構化清單，弱相關；僅在明顯 chatbot 式條列時清 |
| 19 | 彎引號 vs 直引號 | 多數期刊接受並偏好彎引號，屬排版細節，低風險；以目標期刊/Word 設定為準 |
| 30 | Diff-anchored 寫法 | 軟體文件專屬。**例外**：R&R 回應信本就要描述「改了什麼」，反而需要 diff 式，與本條相反 |

---

## E. 增補標記（源自 speak-human-tw v1.4.0，2026-07-11 吸收）

原 33 項未涵蓋、但英文學術稿同樣常見的 AI 痕跡：

| E# | 標記 | Watch for | 層級 | 學術版處理 |
|----|------|-----------|------|-----------|
| E1 | 公式化開場（時代大帽子） | "In today's rapidly evolving/changing business landscape/environment…" 開頭；宏觀背景誰都能寫、不含本文專屬資訊 | B | Intro 背景段正當，但零資訊帽子改成有 citation 或數據的具體 opening。自查：刪掉第一句，文章少了什麼資訊？沒少就是暖身 |
| E2 | 立場真空 | "both approaches have merit" / "depends on various factors" / "is context-dependent" 且無後續判準 | B | Discussion 需要理論立場或邊界條件；給出具體選擇條件（when X, A; when Y, B）即放行；滑開判斷的整句改寫或標「需作者補充立場」。與 #24 過度 hedging 區分：那是判斷上疊緩衝，這是根本沒有判斷 |
| E3 | 句長過勻 | 連續 3+ 句長度與結構幾乎相同，像同一台拋光機處理過 | A | 打斷其中一句：併長或斬短。與 #31 短句轟炸相反（那是全部一樣短，這是全部一樣勻） |
| E4 | 假推論 | "This means that…" / "This suggests…" 未交代推論者與前提 | B | 學術推論句掛回理論或數據（"Consistent with COR theory, this pattern suggests…"）；掛不回就刪 |
| E5 | 均值回歸貢獻宣稱 | "This study offers important theoretical and practical implications" 換任何論文也成立 | A | **抽主詞測試**：換個研究主題還成立就重寫，塞回本研究專屬貢獻（哪個構念、哪條路徑、推翻或延伸了誰） |

**增補程序原則**（同源吸收，適用整個 deslop pass）：

- **換湯不換藥禁令**：刪掉一個 AI 標記後不得補上同族的另一個——刪 "crucial" 不能補 "pivotal"；拆 em-dash 不能改成句句 "not only…but"。
- **假人味防護**：#31–33（金句、短句戲劇、口語開場）常是 deslop 時被「加回去」的假人味；清完不要為了自然而添 "Honestly," 或人造轉折。
- **刪句測試**：拿不準時問「刪掉這句，讀者少知道了什麼？」少知道任何事實、立場或推論就不能刪。

---

## 保護清單（學術版，動筆前圈出、改寫全程不動）

1. **統計數值**：coefficients、effect sizes、*p* 值、CI、樣本數、題項數——精確度不可漂移（"β = .42" 不能變 "approximately .4"；"*p* < .001" 不能變 "highly significant"）
2. **引用資訊**：作者、年份、頁碼、DOI——不因換詞或精簡規則被改寫
3. **直接引語與量表題項**：引號內一字不改，含其中的用語、標點與大小寫（即使原句本身有 AI 味或不合本清單規則）
4. **構念與變項名稱**：全篇統一（見 B 區 #11 反轉），不可為「避免重複」而換同義詞
5. **承諾性聲明**：IRB／ethics approval、data availability、conflict of interest、author contributions、funding statements——只能調銜接語氣，不能調意思（"within 14 days" 類的具體條件逐字保留）

**保真回讀**（改完逐項核對）：五類保護對象逐字一致 → 原文每個資訊點在改寫版都找得到 → 沒有新增原文沒有的事實／數字／來源 → 作者立場沒被翻轉或稀釋（"We argue against X" 不能變 "X has certain limitations"）。任一項失敗：回去修正，不交稿。

---

## 快速稽核順序（英文學術稿 deslop pass）

1. **誠信先行**：掃 #21（編造填空）、#5（無來源歸因）——這兩條涉及學術誠信，最優先。
2. **硬規則**：掃 dash（#14 硬規則）、Title Case（#17 依期刊）。
3. **A 區 19 項＋E3、E5**：機械清除即可。
4. **B 區 8 項＋E1、E2、E4**：逐條依改法處理，**保留**正當學術筆法（貢獻論述、限制段、被動、單層 hedging、roadmap、關鍵詞一致）。
5. **保護清單回讀**：五類逐項核對＋保真回讀。
6. **保 voice**：完成後對照 `writing-style-en`，確認沒把作者風格也清掉；C 區豁免項未被誤改。
7. **D 區**：通常略過。

> 原則：任一條**單次**出現多半無妨，問題在於密集或反覆。學術稿求的是「乾淨、精準、可驗證、術語一致」，不是「口語化」。
