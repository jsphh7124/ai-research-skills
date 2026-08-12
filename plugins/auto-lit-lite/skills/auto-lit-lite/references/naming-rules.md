# 檔名命名規則

擷取文獻作者與標題，組成檔名字串：

1. 擷取第一作者的 last name。
2. 兩位作者：`第一作者last name & 第二作者last name`。
3. 三位（含）以上：第一作者last name + ` et al.`。
4. 其後補一個半形空格 → 半形圓括弧包住「正式刊登西元年後 2 碼」→ 再補一個半形空格。例：` (25) `。
5. 接上文章標題；標題中的**冒號 `:`、問號 `?` 代換為 `_`**。
6. 不要把空格改成底線或其他符號（空格保留）。
7. 純文字輸出結果。
8. 句末不加空格或句號（標題若以句點結尾，去除尾點）。

**完整格式**：`作者 (yy) 標題`，存檔時加 `.pdf`。

**範例**：
- 一人：`Harvey (25) Self-promotion in entrepreneurship_ A driver for proactive adaptation`
- 兩人：`Du & Ponce de Leon (26) Organizations espousing an authenticity ideology repel stigmatized job seekers`
- 三人以上：`Hickman et al. (25) Automated speech recognition bias in personnel selection_ The case of automatically scored job interviews`

**補充規則**（實作中確立）：

- 斜線 `/`（如 "attention-deficit/hyperactivity"）在檔名是路徑分隔符，比照冒號問號換成 `_`。
- **其他檔案系統非法字元一律換 `_`**：`\\ * " < > |`（Windows 禁用；跨平台同步資料夾一律避開）。標題含引號很常見（如 The "dark side" of…），別漏。檔名尾端的空格與句點也要去除（Windows 不允許）。
- 檔名全長（含 `.pdf`）控制在 200 字元內，過長時截斷標題尾部。
- 同名碰撞（同作者同年同標題前綴）時，第二個檔在年份後加 DOI 尾碼區別，不要靜默覆蓋。
- last name 去除世代後綴（III、II、Jr.、Sr.）：如 "Houston III" → Houston。
- last name 含空格保留：如 "Ponce de Leon"、"Tomova Shakur"。
- 年份取資料庫顯示的正式刊登西元年（advance online 用線上先行年）後 2 碼。
- 作者序與年份以 CrossRef／出版商頁面為準，不要信通知信（通知信掛的學者未必是第一作者）。
