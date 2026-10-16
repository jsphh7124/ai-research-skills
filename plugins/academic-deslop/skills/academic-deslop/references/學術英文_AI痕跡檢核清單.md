# 學術英文 AI 痕跡檢核清單（OB/HRM 校準版）

> **用途**：`academic-deslop` 在處理**英文學術稿**（OB/HRM／應用心理學期刊稿、書章、摘要、審稿回應）時的稽核參考。
> **與一般版的差異**：直接照搬通用去 AI 味規則會誤刪正當學術筆法，甚至違反 APA。本清單把每條標記分成「直接適用／學術調校／學術豁免／低相關」四層，附學術版改法。
>
> **來源**：blader/humanizer 的 33 項標記（本於 Wikipedia「Signs of AI writing」，WikiProject AI Cleanup）；E 區源自 speak-human-tw v1.4.0。
> **姊妹檔**：[[resources/學術中文_AI痕跡檢核清單]]（同架構中文版，本於 speak-human-tw 38 項）。依稿件語言擇一使用。
> **上游檔（先讀）**：[[resources/學術稿_篇章結構AI痕跡檢核]]——流程紀律（兩階段、逐組分開掃、74/18/8、累積計分）與**段落之上**的結構痕跡。本清單只管詞與句；結構層必須**先掃**，因為結構改動會連帶重寫周圍句子。
> **互補檔**：[[resources/AI Writing Tropes to Avoid]]（tropes.fyi 通用網文版）、[[resources/文案撰寫應避免之用字與用語]]。
> **配合技能**：`manuscript-review`（精簡＋關鍵詞一致）、co-author 誠實紀律（不編造）。
>
> **使用方式**：在英文學術稿的 deslop pass，先掃「直接適用」19 項；遇到「學術調校」8 項時依該條改法處理，不可機械刪除；「學術豁免」2 項預設**不動**（dash 例外見硬規則）；「低相關」4 項通常略過。任何一條**單次出現**多半無妨，問題在於密集出現或反覆濫用。

---

## ⛔ 硬規則：Em-dash 密度

**問題是密度，不是存在**。單一個 em-dash 不構成 AI 訊號，人類作者偶爾用一個很正常；要清的是 AI 稿的穩定痕跡——**一頁裡連下好幾個**。

- **En-dash（–）**：用於**數值／頁碼／年份範圍**是正字法必需——`pp. 12–18`、`2010–2015`、`Table 3–5`、`r = .20–.35`。這**不是破折號用法，不計入任何配額**，必須保留，不可改成 hyphen 或刪。
- **Em-dash（—）配額**：
  - 同一**段落**最多一個。
  - 同一**頁**（英文稿約 250–300 字）最多一個。
  - 整份稿子讀下來應該是「偶爾出現」，**不是每頁都有**。連續多頁每頁一個，即使每頁都沒超標，合計仍是密集。
- **超出配額時刪哪一個**：留給真正需要插入語或語氣中斷、且改寫會損失意義的那一處，**不是**留給先出現的那一個。其餘改逗號 → 冒號 → 句號 → 括號 → 重組句子。
- 自我檢查：全文搜 `—`，看的是**分布**（有沒有擠在同一頁、同一段），不是總數是否為零。

> 對應 humanizer #14，但**不採**其「全砍」主張：單一 em-dash 無訊號價值，機械全刪本身就是可辨識的過度校正（見 [[resources/學術稿_篇章結構AI痕跡檢核]] P7）。本規則是密度規則，與該檔 D4「累積才算數」同源。
>
> **主要對象是生成端**：寫的時候就守配額，比事後回頭清省事。

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

> **#7 挑詞註**（完整詞表見 G 區）：`crucial / key / pivotal / underscore / highlight / interplay / valuable / robust / leverage` 在正當學術句中也會出現（如 "a key moderator"、"the interplay between X and Y"）。**看語境挑**，不要全表封殺；只清明顯為灌水修飾的用例。

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
| 14 | 「砍掉所有 dash」 | **見上方硬規則**：en-dash 為頁碼／數值／年份範圍正字法所必需，不可全砍；em-dash 走密度配額（同段一個、同頁一個、不要每頁都有），單一個不算痕跡。本條**不套用一般版的無條件刪除**——機械全刪是過度校正 |
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

## E. 增補標記（源自 speak-human-tw v1.4.0）

原 33 項未涵蓋、但英文學術稿同樣常見的 AI 痕跡：

| E# | 標記 | Watch for | 層級 | 學術版處理 |
|----|------|-----------|------|-----------|
| E1 | 公式化開場（時代大帽子） | "In today's rapidly evolving/changing business landscape/environment…" 開頭；宏觀背景誰都能寫、不含本文專屬資訊 | B | Intro 背景段正當，但零資訊帽子改成有 citation 或數據的具體 opening。自查：刪掉第一句，文章少了什麼資訊？沒少就是暖身 |
| E2 | 立場真空 | "both approaches have merit" / "depends on various factors" / "is context-dependent" 且無後續判準 | B | Discussion 需要理論立場或邊界條件；給出具體選擇條件（when X, A; when Y, B）即放行；滑開判斷的整句改寫或標「需作者補充立場」。與 #24 過度 hedging 區分：那是判斷上疊緩衝，這是根本沒有判斷 |
| E3 | 句長過勻 | 連續 3+ 句長度與結構幾乎相同，像同一台拋光機處理過 | A | 打斷其中一句：併長或斬短。與 #31 短句轟炸相反（那是全部一樣短，這是全部一樣勻） |
| E4 | 假推論 | "This means that…" / "This suggests…" 未交代推論者與前提 | B | 學術推論句掛回理論或數據（"Consistent with COR theory, this pattern suggests…"）；掛不回就刪 |
| E5 | 均值回歸貢獻宣稱 | "This study offers important theoretical and practical implications" 換任何論文也成立 | A | **抽主詞測試**：換個研究主題還成立就重寫，塞回本研究專屬貢獻（哪個構念、哪條路徑、推翻或延伸了誰） |

**程序原則**（適用整個 deslop pass）：

- **換湯不換藥禁令**：刪掉一個 AI 標記後不得補上同族的另一個——刪 "crucial" 不能補 "pivotal"；拆 em-dash 不能改成句句 "not only…but"。
- **假人味防護**：#31–33（金句、短句戲劇、口語開場）常是 deslop 時被「加回去」的假人味；清完不要為了自然而添 "Honestly," 或人造轉折。
- **刪句測試**：拿不準時問「刪掉這句，讀者少知道了什麼？」少知道任何事實、立場或推論就不能刪。

---

## F. 句法模板層（源自 LAMP 與 Reinhart et al.）

> **證據層級**：以下數據已讀過兩篇論文全文（含 Reinhart 的完整附錄特徵表）並逐格核對。用途是指導編輯決策，**不得**在作者的稿件中直接引用。
>
> 樣本場域：LAMP 為 literary fiction 與 creative non-fiction，學術判準屬外推；**Reinhart 的語料庫含 academic 文類**，並另以 arXiv 摘要做跨文類檢核，對學術英文的適用性最高。以下倍率一律為 **GPT-4o 相對人類**（Llama 3 的 base 版本各項都接近 100%，偏差來自 instruction tuning）。
>
> 這一層與 A 區的差別：A 區抓**詞**，這裡抓**句法形狀**。形狀在換詞之後仍然存在，是改寫殺不掉的那一層。

### F1 過度使用的句法模板（可直接目視掃描）

LAMP 從 LLM 產出中抽出長度 5–8 的詞性序列，取最常見的 50 個，其中 15 個在人類原文中罕見。下表為其中五個代表模板，括號內是該模板**實際被專業作家編輯掉的比例**；右欄為學術稿判準：

| 模板 | 典型長相 | 學術稿處理 |
|------|---------|-----------|
| `a/the [抽象名詞] of [名詞] (and [名詞])`（被編輯掉 54%） | a mix of pride and · a sense of wonder and · a pang of nostalgia | 拆掉包裝名詞，直接講具體的東西。**例外**：`a sense of belonging`、`the perception of fairness` 等**構念名稱**照原樣保留 |
| `the [形容詞] [名詞] of [所有格]`（40%） | the intricate tapestry of its · a constant reminder of his · the unspoken plea in her | 整句重寫 |
| `[介詞] a [名詞] of [名詞] and`（45%） | with a mix of wariness and · in a gesture of comfort and | 同上，拆包裝 |
| `[名詞] of [名詞] and [名詞]`（35%） | mix of desperation and resolve · story of struggle and resilience | 留一個具體的 |
| `the [名詞] of [形容詞] [名詞]`（27%） | the fabric of daily life · the weight of past grievances | 換成可指涉的實物或構念 |
| 句尾拖分詞子句 | "…, highlighting the importance of X" · "…, suggesting that Y" | 對應 A 區 #3。GPT-4o 的現在分詞子句用量是人類的 **5.3 倍**（d = 1.38，Reinhart 全部 66 個特徵中差距最大的一項）。**學術例外**：Results 段的 "…, suggesting that…" 是正當的結果詮釋句，保留；要清的是不增資訊的評價尾巴 |
| 名詞化當主詞 | The realization / determination / implementation of … was | 還原成動詞（GPT-4o 用量為人類 **2.1 倍**，d = 1.23）。**注意**：學術英文本來就比日常英文更名詞化，只清「動詞被硬轉成名詞、句子反而變糊」的那些 |
| 成對抽象並列 `X and Y` | autonomy and flexibility · challenges and opportunities | 兩個詞若指同一件事，留一個（GPT-4o **1.9 倍**，d = 0.81）。真的是兩個構念就留 |
| `that` 子句當主詞 | That the effect persists suggests… | GPT-4o **2.6 倍**（d = 0.77）。改成正常的主謂結構 |
| `not only X but also Y` / `it's not X, it's Y` | — | 對應 A 區 #9、中文清單 B 區 #12 |
| 恰好三項 | 三個並列形容詞或子句，處處如此 | 對應 A 區 #10 與篇章層 P4。Russell 的專家中有兩位專門抓這個。真有三個構念放行 |
| `seem to + 動詞` | the effect seemed to amplify | GPT-4o 的 seem/appear 用量是人類的 **1.79 倍**。除非不確定性是真的，改成動詞本身。LAMP 受訪作家原話：「除非對該動作真有不確定或疑慮，否則永遠該直接用動詞而不加 seem——amplified 就是比 seemed to amplify 好」 |

### F2 LLM 特異詞彙（三個模型家族共用，補 A 區 #7）

`unspoken`、`the weight of`、`a sense of`、`a mix of`、`the air was thick`、`hung in the air`、`eyes darting`、`in the pit of (her/my) stomach`。LAMP 記錄 `unspoken` 出現在約 **15%** 的 LLM 回應中，而在人類原文段落裡幾乎不出現；三個模型家族全都產出這批詞，作者推測是 instruction tuning 資料重疊或互相蒸餾所致。

其中 `a sense of` 與 `the weight of` 在學術稿最常見（多出現在 Discussion 的詮釋段）。判準同 A 區 #7：**確為空殼修飾才刪**，是構念名稱就留。

Reinhart 的 GPT-4o 過用倍率（附錄 Table 1，逐格核對）：camaraderie ×162、tapestry ×155、intricate ×119、underscore ×107、unspoken ×102、amidst ×100、palpable ×95、solace ×95、fleeting ×84、unravel ×83。實際密度上，**tapestry 出現在 23% 的 GPT-4o 產出中，amidst 27%**。

作者對這件事的詮釋比倍率本身更值得記住：

> 重點不在於人類不用這些詞，而在於人類不會**在這些文類裡**用這些詞。在小說裡不起眼的字，用到別的文類就格外顯眼。

所以判準永遠是「這個詞在這本期刊上會不會出現」，不是「這個詞是不是禁詞」。

### F3 可以反向補回的少數構式

Reinhart 的「不足構式」清單裡，**多數不適用學術稿**（縮寫 60%、amplifiers 46%、discourse particles 60%、第二人稱 52%、髒話——這些在期刊語域本來就不該有，補了是假人味）。只有以下四項在學術英文正當且值得刻意用（數字為 GPT-4o 相對人類的使用率）：

| 構式 | GPT-4o 用量 | 學術用法 |
|------|-----------|---------|
| `because` | 20% | 學術散文完全可以用 because，不必每次改成 "due to the fact that" 或名詞化 |
| 合成否定 | 51% | "no existing account explains…" 比 "existing accounts fail to explain…" 更有力，也更省字 |
| 指示代名詞、that 省略 | 50% / 66% | "This suggests" 的 this 有明確指涉時正當；"we argue [that] X" 的 that 可省 |
| Wh- 問句 | 56% | 研究問題本來就是問句，Introduction 可以直接問 |

用量最低的一項是 `‘Wh-’ relatives as object`（**13%**，如 "the effect which we observed"），但那多半該改成 that 或省略，不值得刻意補。

其餘一律不補。

---

## G. 詞彙正本（翻譯、起草、潤稿共用）

本清單的 deslop pass 以這一區為唯一詞表。改詞表只改這裡。

**套用規則依「英文是誰寫的」而定**：

- **模型自己產出英文**（中翻英、依作者風格起草）：下列詞與片語一律避開。
- **修改作者寫的英文**（潤稿、審閱、deslop）：逐一看語境。只在它是灌水修飾、不承載具體意義時才改；或同一節出現三次以上、同段密集聚集時才動手。單次、有具體意義的用法保留（"a crucial boundary condition"、"particularly in hierarchical teams"、"sheds new light on how recruiters evaluate résumés"）。
- **例外**：領域內的字面用法照用（例如酵素動力學的 *catalyze*）；*significant* 只在有統計檢定支持時用。

### G1 修飾性動詞（只在「修飾效果」而非字面意義時算數）

| 詞 | 平實替代 |
|---|---|
| delve (into) | examine, investigate, explore, study |
| underscore | indicate, show, suggest, demonstrate；作者本人每篇最多用 1 次 |
| showcase | present, report, describe, illustrate |
| boast | have, contain, include |
| surpass | exceed, be higher than |
| employ（當修飾） | use, apply |
| leverage（當修飾） | use, draw on, apply |
| unravel | clarify, explain, identify |
| illuminate | clarify, describe, explain |
| foster（當泛用動詞） | support, promote, increase；真的在講「培養」時照用（fostering creativity） |
| catalyze（比喻） | initiate, drive, begin |
| navigate the complexities of | address, handle, manage |

### G2 形容詞與副詞

`meticulous`、`intricate`、`pivotal`、`crucial`、`commendable`、`comprehensive`、`transformative`、`profound`、`notably`、`additionally`、`primarily`、`particularly`、`multifaceted`、`holistic`、`groundbreaking`、`cutting-edge`、`innovative`、`revolutionary`、`vast`、`myriad`、`plethora`、`state-of-the-art`、`game-changing`；`nuanced` 當形容詞時（當副詞偶爾可用）。

替代方向：*careful*、*detailed*、*important*、*relevant*、*in addition*、*first*、*second*、*especially*，或直接寫出具體內容。

### G3 陳腔比喻與空泛片語

- 比喻：`tapestry`、`realm`、`labyrinth`、`deep dive`、`driving force`、`game changer`、`landscape`（抽象用法）、`ecosystem`（比喻）、`paradigm shift`（沒有真正的理論論證時）、`complex landscape`、`rich tapestry`、`dynamic interplay`、`comprehensive understanding`、`robust framework`。
- 空泛填充：`It is important to note that…`、`It is worth mentioning that…`（直接講重點）；`When it comes to X,`（改 `Regarding X,` 或重組）；`In the realm of X,`／`In the landscape of X,`。
- `play(s) a pivotal/crucial/vital role in…` → `predicts`、`influences`、`shapes`、`is associated with`。
- `shed light on`：照上面的套用規則（生成端避開、修改作者英文時看語境）。作者本人的已發表論文用過，潤稿時有具體內容的用法一定保留。
- 語域漂移：口語 `a lot of`、`tons of`、`basically`、`kind of`、`sort of`；過度避險的疊加 `may possibly potentially`（擇一）。

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

0. **流程紀律**：先讀 [[resources/學術稿_篇章結構AI痕跡檢核]] 第一部分——兩階段（先列完整清單再改）、逐組分開掃、替換優先於刪除優先於新增、累積才算數。
1. **誠信先行**：掃 #21（編造填空）、#5（無來源歸因）——這兩條涉及學術誠信，最優先。
2. **硬規則**：掃 dash（#14 硬規則）、Title Case（#17 依期刊）。
3. **篇章結構層**：跑同一份上游檔的第二部分（段落 move type、首句抽取、位置指紋、分形摘要、場域校準），**從稿件中段開始掃**。結構先於句子。
4. **A 區 19 項＋E3、E5**：機械清除即可。
5. **F 區句法模板與 G 區詞彙**：目視掃 F1 八個模板、F2 特異詞彙，以及 G 區詞表（依「修改作者英文」的規則看語境）。
6. **B 區 8 項＋E1、E2、E4**：逐條依改法處理，**保留**正當學術筆法（貢獻論述、限制段、被動、單層 hedging、roadmap、關鍵詞一致）。
7. **保護清單回讀**：五類逐項核對＋保真回讀。
8. **保 voice 與過度校正檢查**：對照作者既有的寫作樣本（若可取得），確認沒把作者風格也清掉；C 區豁免項未被誤改；hedging 沒被清光、signposting 沒被拿掉。
9. **D 區**：通常略過。

> 原則：任一條**單次**出現多半無妨，問題在於密集或反覆。學術稿求的是「乾淨、精準、可驗證、術語一致」，不是「口語化」。
