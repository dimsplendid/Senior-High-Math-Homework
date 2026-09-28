#let default-font = "New Computer Modern Math" 
#let default-cjk-font = "更紗黑體 UI TC"
// #let default-cjk-font = "霞鶩文楷 TC"

#let homework-style(body) = {
  set text(
    font: (
      default-font,
      default-cjk-font,
      "Sarasa Ui J",
    ),
    size: 12pt,
  )

  // 行距稍微加大，避免 inline math eq 重疊
  set par(
    leading: 1.2em, 
  )
  
  // Numbering
  set enum(numbering: "1.")
  
  body
}

/*
** 在任何方塊中使用，將中文轉為預設字體。
***/
#let tc(..content) = {
  text(font: default-cjk-font, ..content)
}

