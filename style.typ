// style.typ
// id: 01a11c3d-dcf9-7231-b615-6c4c52fa9daa

#let colors = (
  primary: rgb("#82A9D8"),
  secondary: rgb("#9AA8B8"),
  secondary_dim: rgb("#9AA8B8").transparentize(50%),
  accent: rgb("#D9A85C"),
  text: rgb("#344454"),
  code: rgb("#EEF3F7"),

  info-box: (
    border: rgb("#9DB7D1"),
    marker: rgb("#DCEAF7"),
    text: rgb("#31465A"),
    fill: rgb("#FFFFFF"),
  ),

  tip-box: (
    border: rgb("#9FBDA8"),
    marker: rgb("#E1F0E5"),
    text: rgb("#385344"),
    fill: rgb("#FFFFFF"),
  ),

  warning-box: (
    border: rgb("#D2B27D"),
    marker: rgb("#F8EBD4"),
    text: rgb("#5E4A2F"),
    fill: rgb("#FFFFFF"),
  ),

  resource-box: (
    border: rgb("#A9A0C5"),
    marker: rgb("#EAE6F4"),
    text: rgb("#49425E"),
    fill: rgb("#FFFFFF"),
  ),
)


#let setup() = {
  set text(
    font: "American Typewriter",
    size: 12pt,
    fill: colors.text,
  )

  set heading(numbering: "1.1")

  show heading.where(level: 1): it => [
    #text(
      font: "American Typewriter",
      size: 24pt,
      weight: "bold",
      fill: colors.primary,
    )[#it.body]
  ]

  show heading.where(level: 2): it => [
    #text(
      font: "American Typewriter",
      size: 16pt,
      weight: "bold",
      fill: colors.secondary,
    )[#it.body]
  ]
}
