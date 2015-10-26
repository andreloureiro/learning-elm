module DrawGraph where

import Debug
import Http
import Json.Decode as Json exposing ((:=))
import Task exposing (..)
import DrawLine
import DrawCircle
import Color exposing (purple, red, green)
import Graphics.Collage exposing (collage)

type alias GraphData = List (Int, Int)
type alias GraphList = List GraphData

-- graphDataRequest section =
--   Http.get graphList ("http://localhost:3000/" ++ section)

-- graphData =
--   Json.list
--
-- graphList =
--   Json.at ["data"]
--     <| Json.list

data1 =
  [(100, 30),
   (200, 80),
   (300, 60),
   (400, 90),
   (500, 10),
   (600, 50),
   (700, 20),
   (800, 40),
   (900, 120),
   (1000, 100)]

data2 =
  [(100, 40), (200, 110), (300, 30), (400, 50), (500, 10), (600, 30), (700, 80), (800, 60), (900, 90), (1000, 10)]

data3 =
  [(100, 50), (200, 20), (300, 40), (400, 120), (500, 100), (600, 40), (700, 110), (800, 30), (900, 50), (1000, 10)]

init w h =
  let
    posX = -(toFloat w / 2)
  in
  collage w h [
    DrawLine.drawPath posX purple data1,
    DrawLine.drawPath posX red data2,
    DrawLine.drawPath posX green data3,
    DrawCircle.drawCircles posX purple data1,
    DrawCircle.drawCircles posX red data2,
    DrawCircle.drawCircles posX green data3
  ]
