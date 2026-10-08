#import "../style.typ": colors

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

#let banner-box(
  body,
  style: colors.info-box,
  icon: image("../icons/info.svg", width: 42pt),
) = {
  stack(
    dir: ttb,
    // Icon sits in the right border.
    place(
      top + right,
      dx: 42pt + 10pt,
      dy: 10pt,
      icon,
    ),
    // Box content.
    box(
      inset: (
        top: 14pt,
        x: 12pt,
        bottom: 6pt,
      ),
      width: 120%,
      height: 60pt,
      radius: 12pt,
      fill:  style.border.transparentize(75%),
    )[
      #set text(fill: style.text)
      #body
    ],

  )
}
