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
  ),

  tip-box: (
    border: rgb("#9FBDA8"),
    marker: rgb("#E1F0E5"),
    text: rgb("#385344"),
  ),

  warning-box: (
    border: rgb("#D2B27D"),
    marker: rgb("#F8EBD4"),
    text: rgb("#5E4A2F"),
  ),

  resource-box: (
    border: rgb("#A9A0C5"),
    marker: rgb("#EAE6F4"),
    text: rgb("#49425E"),
  ),
)


#let setup() = {
  set text(
    font: "American Typewriter",
    size: 12pt,
    fill: colors.text,
  )
