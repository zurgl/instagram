
/* Layout */
// cSpell:disable



#let defaultT = (
  width: length,
  height: length,
  size: length,
  margin: (x: length, y: length),
  position: (alignment),
  font: str,
  weight: str,
  page-color: color,
  text-color: color,
  image-background: image,
  doc: none,
)

#let default = arguments(
  width: 960pt,
  height: 960pt,
  size: 46pt,
  margin: (x: 50pt, y: 25pt),
  position: (center),
  font: "Fira Code",
  weight: "semibold",
  page-color: black,
  text-color: white,
  text-spacing: 100%,
  image-background: none,
)

#let template = doc => {
  arguments(
    arguments(
      width: 960pt,
      height: 960pt,
      size: 46pt,
      margin: (x: 50pt, y: 25pt),
      position: (center),
      font: "Fira Code",
      weight: "semibold",
      page-color: black,
      text-color: white,
      text-spacing: 100%,
      image-background: none,
    ),
    doc,
  ) = {
    set page(
      width: width,
      height: height,
      margin: margin,
      fill: page-color,
      background: image-background,
    )
    set text(font: font, weight: weight, size: size, fill: text-color)
    set align(position)
    [doc]
  }
}



// #let template(
//   width: length,
//   height: length,
//   size: length,
//   margin: (x: length, y: length),
//   position: (alignment),
//   font: str,
//   weight: str,
//   page-color: color,
//   text-color: color,
//   image-background: image,
//   text-spacing: length,
//   doc: [],
// ) = {

//   doc
// }


// #show template: it => [
//   #set page(
//     width: 960pt,
//     height: 960pt,
//     margin: (x: 50pt, y: 25pt),
//     fill: black,
//     background: none,
//   )
//   #set text(font: "Fira Code", weight: "semibold", size: 46pt, fill: white, spacing: 100%)
//   #set align(center)
//   it.doc
// ]
