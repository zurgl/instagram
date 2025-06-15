#import "@preview/gru:0.1.0": gru

#set text(font: "Font Awesome 6 Free Solid", weight: "semibold", size: 16pt)

#set rect(width: 100%, height: 100%, inset: 0pt, outset: 0pt)

#set align(center + horizon)

#let inside = [
  Bref, je m'en fous.
]

#show: gru.with(last-content: inside)
