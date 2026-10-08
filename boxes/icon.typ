#import "../style.typ": *
#import "semantic.typ": *

#let info-box(body) = {
  semantic-box(
    colors.info-box,
    icon: image("../icons/info.svg", width: 12pt),
    body,
  )
}


#let tip-box(body) = {
  semantic-box(
    colors.tip-box,
    icon: image("../icons/tip.svg", width: 12pt),
    body,
  )
}


#let warning-box(body) = {
  semantic-box(
    colors.warning-box,
    icon: image("../icons/warning.svg", width: 12pt),
    body,
  )
}
