#set page(
  width: 1280pt,
  height: 32pt,
  fill: black,
  margin: 0pt,
)

#set align(left)

#set text(
  fill: silver,
  size: 32pt,
)

#let values = range(0, 1000, step: 1)

#for v in values [
  #set rect(
    height: 100%,
    width: v * 0.1%,
    outset: 0pt,
    inset: 0pt,
    stroke: none,
    fill: yellow,
  )
  #rect(none)
  #pagebreak()
]

// #let w = eval(
//   "w",
//   mode: "code",
//   scope: (
//     w: $prct$,
//   ),
// )
// #text[#w]
// #let prct = sys.inputs.values().first()
// #metadata(0%) <prct>
// #let preview-theme = preview-args.at("prct", default: "0")

