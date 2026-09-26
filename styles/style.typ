#let homework-style(body) = {
  set text(
    font: (
      "New Computer Modern Math",
      "霞鶩文楷 TC",
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
** 預設：霞鶩文楷
***/
#let tc(..content) = {
  text(font: "霞鶩文楷 TC", ..content)
}

