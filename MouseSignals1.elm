module MouseSignals1 where

import Mouse
import Signal
import Graphics.Element

main =
  Signal.map Graphics.Element.show Mouse.position
