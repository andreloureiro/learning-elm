module ResolveGraph where

import DrawGraph
import Signal exposing ((~), (<~))
import Window

main =
  DrawGraph.init
    <~ Window.width
    ~ Window.height
