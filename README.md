# ai-research-skills

學術研究與教學用的 AI agent skills 集合，涵蓋研究計畫拷問、學術寫作清理、文獻轉檔、Google 服務自動化等工作流程。由彰化師範大學人力資源管理研究所黃敦群老師設計與維護。

每個 skill 都是一份 `SKILL.md`（YAML frontmatter + Markdown 指示），格式同時相容 **Claude Code** 與 **opencode**，安裝一次即可在兩種工具中使用。

## 收錄的 Skills

| Skill | 用途 |
|-------|------|
| `grilling` | 動工前對研究計畫或設計做逐題拷問，通過共識閘門才動工 |
| `academic-deslop` | 清除中英文學術稿的 AI 寫作痕跡（校準 APA／期刊規範） |
| `academic-editor` | 潤飾或翻譯 OB/HRM 英文學術稿，避免 AI 指紋詞彙 |
| `journal-to-md` | 將 PDF、Word、簡報等文件轉為結構化 Markdown |
| `gogcli` | 從終端機存取 Gmail、Google Calendar、Drive、Sheets |
| `tiered-dispatch` | 依複雜度把程式修改分派給不同模型的 Agent，節省額度 |
| `taiwan-labor-law-expertise` | 台灣勞動法規諮詢（解僱、工時、工資、職災、勞資爭議） |
| `teaching-manual-builder` | 為教科書章節生成敘事式教師手冊 |

## 安裝方式一：Claude Code（plugin marketplace，建議）

在 Claude Code 中執行：

```
/plugin marketplace add jsphh7124/ai-research-skills
```

然後用 `/plugin` 瀏覽安裝，或直接安裝特定 skill：

```
/plugin install grilling@ai-research-skills
/plugin install academic-deslop@ai-research-skills
```

日後更新：`/plugin marketplace update ai-research-skills`。

## 安裝方式二：手動複製（opencode 或不想用 plugin 機制）

opencode 會自動讀取 `~/.claude/skills/` 目錄下的 Claude 格式 skills，Claude Code 也支援此位置。執行：

```bash
git clone https://github.com/jsphh7124/ai-research-skills.git
cd ai-research-skills
./install.sh
```

`install.sh` 會把所有 skills 複製到 `~/.claude/skills/`（已存在的同名 skill 會先詢問是否覆蓋）。日後更新：`git pull && ./install.sh`。

## 注意事項

- `gogcli` skill 需另行安裝 [gogcli](https://github.com/steipete/gogcli) 執行檔並完成 Google 帳號授權，詳見該 skill 內文。
- `tiered-dispatch` 的「外部便宜派工」段落為選配，需本機另有外部 CLI agent（如 Gemini CLI）。
- Skills 內容以繁體中文為主，設計脈絡為組織行為／人力資源管理領域的學術研究與教學。

## 授權

MIT License。`grilling` 改造自 [mattpocock/skills](https://github.com/mattpocock/skills)；`academic-deslop` 的中文檢核清單為 [speak-human-tw](https://github.com/Raymondhou0917/speak-human-tw) 的學術校準版。
