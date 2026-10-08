#import "../style.typ": *
#import "@preview/qrypst:0.1.1": qr, encode

#let resource-qr(
  url,
  style,
  size,
  ecc,
  quiet,
) = {
  let (modules, _) = encode(url, ecc: ecc)

  // Calculate the physical module size so the QR symbol
  // fits exactly into the requested size.
  let module = size / modules

  link(url)[
    #box(
      fill: white,
      stroke: 2pt + style.border,
      radius: 4pt,
      inset: 3pt,
    )[
      #qr(
        url,
        module: module,
        ecc: ecc,
        quiet: quiet,
      )
    ]
  ]
}

//------------------------------------------------------------------------------

#let resource-box(
  url,
  body,
  size: 18mm,
  ecc: "M",
  quiet: 4,
) = {
  let style = colors.resource-box

  block(
    width: 100%,
    inset: (
      left: 14pt,
      right: 0pt,
      top: 6pt,
      bottom: 12pt,
    ),
    radius: 6pt,
    stroke: 2pt + style.border,
    fill: white,
  )[
    #grid(
      columns: (100% - 2 * size, 2 * size),
      column-gutter: 12pt,

      [#body],

      [
        #align(right)[
          #resource-qr(
            url,
            style,
            size,
            ecc,
            quiet,
          )
        ]
      ]
    )
  ]
}

//------------------------------------------------------------------------------

#let resource-banner-box(
  url,
  body,
  size: 18mm,
  ecc: "M",
  quiet: 4,
) = {
  let style = colors.resource-box

  block(
    width: 120%,
    inset: (
      left: 14pt,
      right: 14pt,
      top: 12pt,
      bottom: 12pt,
    ),
    radius: 12pt,
    fill: style.border.transparentize(75%),
  )[
    // Reserve horizontal space for the QR symbol.
    #pad(right: 2 * size + 12pt)[
      #body
    ]

    // Place the QR symbol over the upper-right border.
    #place(
      top + right,
      dx: -size / 2,
      dy: -size / 4,
      resource-qr(
        url,
        style,
        size,
        ecc,
        quiet,
      ),
    )
  ]
}
