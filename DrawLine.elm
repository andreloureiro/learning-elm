module DrawLine where

import Graphics.Collage exposing (collage, path, solid, traced, moveX)
import Signal exposing ((<~), map)
import Window

lineStyle color =
  solid color

createPath data =
  path data

drawPath position color data =
  moveX position
    <| traced (lineStyle color) (createPath data)
