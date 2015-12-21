module MouseSignals2 where

import Mouse
import Signal
import Graphics.Element

combine : a -> b -> Graphics.Element.Element
combine a b =
  Graphics.Element.show (a,b)

main =
  Signal.map2 combine Mouse.x Mouse.y
