#import "@preview/qrypst:0.1.1": qr, encode

#let resource-box(
  url,
  body,
  size: 18mm,
  ecc: "M",
  quiet: 4,
) = {
  let style = colors.resource-box

  // Determine the required QR version.
  let (modules, _) = encode(url, ecc: ecc)

  // Calculate the physical module size so the QR symbol
  // fits exactly into the requested size.
  let module = size / modules

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
          #link(url)[
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
        ]
      ]
    )
  ]
}
