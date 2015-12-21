module WindowSignals1 where

import Signal
import Window
import Graphics.Element
import Text

showSignals a b c =
  Graphics.Element.flow Graphics.Element.down <|
    List.map (Text.fromString >> Graphics.Element.leftAligned)
      [ "Window.dimensions: " ++ toString a
      , "Window.width: " ++ toString b
      , "Window.height: " ++ toString c
      ]

main =
  Signal.map3 showSignals Window.dimensions Window.width Window.height
