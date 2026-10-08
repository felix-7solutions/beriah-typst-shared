#import "style.typ": colors

#let semantic-box(
  style,
  icon: image("../icons/info.svg", width: 12pt),
  body,
) = {
  stack(
    dir: ltr,

    block(
      width: 100%,
      inset: (
        left: 14pt,
        right: 28pt,
        top: 12pt,
        bottom: 12pt,
      ),
      radius: 12pt,
      stroke: 2pt + style.border,
      fill: white,
    )[
      #set text(fill: style.text)
      #body
    ],

    place(
      right,
      dx: 10pt,
      dy: 6pt,
      box(
        fill: style.marker,
        stroke: 2pt + style.border,
        radius: 75%,
        inset: 5pt,
      )[
        #icon
      ],
    ),
  )
}
