#import "macros.typ": *

= Test the elements in this repository

== Fonts



== Colors

#table(
  columns: (40pt, 1fr),
  inset: 6pt,

  // Primary
  box(fill: colors.primary, width: 100%, height: 20pt),
  [`colors.primary`],

  // Secondary
  box(fill: colors.secondary, width: 100%, height: 20pt),
  [`colors.secondary`],

  // Accent
  box(fill: colors.accent, width: 100%, height: 20pt),
  [`colors.accent`],

  // Text
  box(fill: colors.text, width: 100%, height: 20pt),
  [`colors.text`],

  // Code
  box(fill: colors.code, width: 100%, height: 20pt),
  [`colors.code`],
)

== Boxes Module

=== Core Boxes

#banner-box()[
    Multiple lines.
]

=== Bordered Boxes

#info-banner-box[
    A information with info icon

    Longer text is supported.
]

#tip-banner-box[
    A note or tip with question mark icon

    Longer text is supported.
]

#warning-banner-box[
    A warning with exclamation mark icon

    Longer text is supported.
]

#resource-banner-box("https://godotengine.org/download/macos/",)[
    *Download MacOS*

    QR-code sizes are automaticaly calculated.
]

=== Typed Boxes

#info-box[
    A information with info icon

    Longer text is supported.
]

#tip-box[
    A note or tip with question mark icon

    Longer text is supported.
]

#warning-box[
    A warning with exclamation mark icon

    Longer text is supported.
]

#resource-box("https://godotengine.org/download/macos/",)[
    *Download MacOS*

    QR-code sizes are automaticaly calculated.

    The QR-code is clickable from the PDF.
]
