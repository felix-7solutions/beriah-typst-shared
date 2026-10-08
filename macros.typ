// macros.typ
//
#import "style.typ": colors, setup
#import "boxes/icon.typ": *
#import "boxes/resource.typ": *

//#let semantic-style = "box"
#let semantic-style = "banner"
//

#let info(body) = {
  if semantic-style == "banner" {
    info-banner-box(body)
  } else {
    info-box(body)
  }
}

#let tip(body) = {
  if semantic-style == "banner" {
    tip-banner-box(body)
  } else {
    tip-box(body)
  }
}


#let warning(body) = {
  if semantic-style == "banner" {
    warning-banner-box(body)
  } else {
    warning-box(body)
  }
}

#let resource(url, body) = {
  if semantic-style == "banner" {
    resource-banner-box(url, body)
  } else {
    resource-box(url, body)
  }
}

setup()

#let group-link(group) = {
  link(label("group-" + group))[group]
}

#let print-table(entries) = {
  for entry in entries {
    [
      *#entry.term* \
      #entry.definition
    ]

    v(0.5em)
  }
}

#let print-table-table-alpha(entries) = {
  block(
    stroke: 1pt,
    radius: 6pt,
    clip:   true,
    table(
        columns: (20%, 60%, 30%),
        inset: (x: 10pt, y: 8pt),
        stroke: 1pt,

        fill: (_, row) => {
        if row == 0 {
            colors.accent
        } else if calc.odd(row) {
            none
        } else {
            colors.secondary_dim
        }
        },

        table.header(
        [*Name*],
        [*Beschreibung*],
        [*Group*],
        ),

        ..entries
        .sorted(key: entry => entry.name)
        .map(entry => (
            [#strong(entry.name)],
            [#entry.summary],
            [#link(label("group-" + entry.group))[
                #text(fill: colors.primary)[#entry.group]
            ] ],
        ))
        .flatten(),
    )
  )
}

#let print-table-grouped(data) = {
    let entries = data
      .sorted(key: entry => (entry.group, entry.name))

    let groups = ()

    for entry in entries {
      if not groups.contains(entry.group) {
        groups.push(entry.group)
      }
    }

    for group in groups {
        heading(level: 2)[
          #metadata("group-" + group)
          #group
        ]

      let group-entries = entries
        .filter(entry => entry.group == group)

      block(
        stroke: 1pt,
        radius: 6pt,
        clip:   true,
        table(
            columns: (20%, 80%),
            inset: (x: 10pt, y: 8pt),
            stroke: 1pt,
            [*Name*],
            [*Beschreibung*],

            ..group-entries
            .map(entry => (
                [#strong(entry.name)],
                [#entry.summary],
            ))
            .flatten(),
        )
      )
    }
  }


#let print-table-2(entries) = {
  let rows = entries.enumerate().map(item => {
    let index = item.at(0)
    let entry = item.at(1)

    let background = if calc.even(index) {
      luma(75%)
    } else {
      none
    }

    (
      table.cell(fill: background)[#entry.term],
      table.cell(fill: background)[#entry.meaning],
    )
  })

  table(
    columns: (3cm, 1fr),
    inset: 6pt,

    table.cell(fill: luma(55%))[*Term*],
    table.cell(fill: luma(55%))[*Meaning*],

    ..rows.flatten(),
  )
}
