// #set page(width: 960pt, height: 540pt, fill: navy)

// #set text(font: "Fira Code", weight: "semibold", size: 52pt, fill: lime)

// image

// #set align(center + horizon)

#import "../../template.typ": arguments, template
template
#import "../default.typ": template, default

#let values = arguments(
  width: 21cm,
  height: 29.7cm,
  ..default,
)

#show: doc => template(..values)[doc]

Sourd comme le vent
#linebreak()
Sans te voir,
#linebreak()
je sais que tu es là.

