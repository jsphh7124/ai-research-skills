---
name: journal-to-md
description: Convert Office files (Word/PowerPoint/Excel), audio, or a whole folder of documents to Markdown files with MarkItDown. For multi-column journal-article PDFs, pdftotext (poppler) extracts text more cleanly.
---

# Journal to Markdown Converter Skill

## 概述 (Overview)

此 Skill 使用 Microsoft MarkItDown 工具將各種格式的學術文獻轉換為結構化的 Markdown 格式,便於後續整理、閱讀與知識管理。

## 核心功能 (Core Features)

1. **單檔轉換**: 將單一學術文獻轉換為 Markdown
2. **批次轉換**: 一次處理整個資料夾的文獻
3. **智能提取**: 保留文獻結構(標題、段落、列表、表格等)
4. **多格式支援**: PDF、Word (.docx)、PowerPoint (.pptx)、Excel (.xlsx)、音訊 (轉錄，需另裝語音辨識套件)。圖片與掃描版 PDF 不做 OCR，見「圖片與掃描版 PDF」

## 安裝需求 (Installation Requirements)

需先安裝 MarkItDown（`pip install 'markitdown[all]'`）。若匯入失敗，回報錯誤給使用者，由使用者安裝，不要在 session 中自行安裝套件。

## 使用方式 (Usage)

### 1. 單檔轉換

當使用者提供單一檔案路徑時:

```python
from markitdown import MarkItDown

# 初始化轉換器
md = MarkItDown()

# 轉換檔案
result = md.convert("path/to/academic_paper.pdf")

# 儲存為 Markdown
output_path = "path/to/academic_paper.md"
with open(output_path, "w", encoding="utf-8") as f:
    f.write(result.text_content)
```

### 2. 批次轉換的約定

使用者提供資料夾路徑時：

- 輸出到來源資料夾下的 `markdown/` 子資料夾，保留原本的子資料夾結構
- 支援副檔名：`.pdf .docx .pptx .xlsx`
- 一律用 UTF-8 存檔
- 完成後回報成功與失敗清單（失敗附原因）
- 使用者要同步到 Notion 時，轉換後擷取標題、作者、摘要，用 Notion MCP 建頁面並回報連結

## 輸出格式建議 (Output Format Recommendations)

轉換完成後,建議在 Markdown 檔案開頭加入 YAML frontmatter:

```markdown
---
title: [論文標題]
authors: [作者列表]
year: [發表年份]
journal: [期刊名稱]
doi: [DOI]
converted_date: [轉換日期]
source_file: [原始檔案路徑]
---

# [論文標題]

[轉換後的內容]
```

## 錯誤處理 (Error Handling)

1. **檔案不存在**: 檢查路徑是否正確
2. **不支援的格式**: 提示使用者支援的格式清單
3. **轉換失敗**: 記錄錯誤訊息,建議使用者檢查檔案是否損壞
4. **編碼問題**: 統一使用 UTF-8 編碼儲存

## 進階功能 (Advanced Features)

### 圖片與掃描版 PDF

MarkItDown 不做 OCR：圖片只讀出 EXIF 資訊，掃描版 PDF 轉出來幾乎是空白。遇到這類檔案，用 PyMuPDF 把頁面轉成 PNG，再用 Read 工具直接看圖讀字。

### 音訊轉錄

若學術會議有錄音檔,可轉錄為文字:

```python
# 需要額外安裝語音識別套件
result = md.convert("conference_talk.mp3")
```

## 整合建議 (Integration Recommendations)

1. **與文獻管理工具整合**: 配合 Zotero、Mendeley 等工具的資料夾結構
2. **建立文獻索引**: 批次轉換後建立全文檢索資料庫
3. **自動化工作流**: 監控特定資料夾,新增檔案時自動轉換

## 注意事項 (Important Notes)

1. **轉換品質**: PDF 品質會影響轉換結果；掃描版 PDF 轉不出文字，見「圖片與掃描版 PDF」
2. **格式保留**: 複雜的排版(如多欄位、特殊字體)可能無法完美保留
3. **數學公式**: LaTeX 公式可能需要手動調整
4. **參考文獻**: 建議轉換後檢查參考文獻格式是否正確

## 參考資源 (References)

- [MarkItDown GitHub Repository](https://github.com/microsoft/markitdown)
- [MarkItDown Documentation](https://github.com/microsoft/markitdown?tab=readme-ov-file)
