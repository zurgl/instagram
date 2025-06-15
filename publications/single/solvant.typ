// cSpell:words smallcaps Divant Fira
#set page(width: 960pt, height: 540pt, fill: black, margin: (left: 80pt, right: 40pt, y: 80pt))
#set text(font: "Fira Code", weight: "semibold", size: 32pt, lang: "fr", spacing: 8pt)
#set rect(
  stroke: none,
  width: 100%,
  inset: 0pt,
  outset: 0pt,
  fill: black,
)

#stack(
  dir: ttb,
  align(
    left + top,
    block[
      #text(fill: aqua)["Dit #smallcaps[Solvant], As-tu dix sous?",]
      #linebreak()
      #text(fill: lime, weight: "black", size: 24pt)[Dit sous.]
    ],
  ),
  align(
    right + horizon,
    block(spacing: 12pt)[
      #text(fill: aqua)["Pour dix solvants?",]
      #linebreak()
      #text(weight: "black", size: 24pt, fill: lime)[Dit #smallcaps[Solvant].]
    ],
  ),
  rect(height: 25%),
  align(
    center + bottom,
    block[
      #text(fill: aqua)["Dix sous les dix solvants, je dit vent!",]
      #linebreak()
      #text(fill: lime, weight: "black", size: 24pt)[Dit #smallcaps[Vent].]
    ],
  ),
)
