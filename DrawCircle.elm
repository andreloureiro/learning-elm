module DrawCircle where

import Color exposing (blue)
import Graphics.Collage exposing (circle, group, filled, move, moveX)
import List
import Signal exposing ((<~))
import Window
import Debug

createCircle color size =
  filled color
    <| circle size

moveCircles circle (x, y) =
  move (x, y) circle

circlesGroup color data =
  let
    circleInstance = createCircle color 5
    createGroupInstance (x, y) =
      moveCircles circleInstance (x, y)
  in
    List.map createGroupInstance data

drawCircles position color data =
  moveX position
    <| group
    <| circlesGroup color data
