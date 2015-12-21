module MouseSignals3 where

import Mouse
import Signal
import Graphics.Element
import Text

showSignals a b c e f=
  Graphics.Element.flow Graphics.Element.down <|
    List.map (Text.fromString >> Graphics.Element.leftAligned)
      [ "Mouse.position: " ++ toString a
      , "Mouse.clicks: " ++ toString b
      , "Mouse.isDown: " ++ toString c
      , "sampleOn Mouse.clicks Mouse.position" ++ toString e
      , "sampleOn Mouse.isDown Mouse.position" ++ toString f
      ]

main =
  Signal.map5 showSignals Mouse.position Mouse.clicks Mouse.isDown (Signal.sampleOn Mouse.clicks Mouse.position) (Signal.sampleOn Mouse.isDown Mouse.position)
