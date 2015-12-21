{-
  This module ocntains funcions which draw
  the eyes.
-}
module EyesView where

import Color
import Graphics.Element
import Graphics.Collage

import Signal
import Window

eyeBorder : Float -> Float -> Graphics.Collage.Form
eyeBorder w h =
  Graphics.Collage.group
    [ Graphics.Collage.filled Color.black <| Graphics.Collage.oval w h
    , Graphics.Collage.filled Color.white <| Graphics.Collage.oval (w*0.9) (h*0.9)
    ]

eyePupil : Float -> Float -> Graphics.Collage.Form
eyePupil w h =
  Graphics.Collage.filled Color.black <| Graphics.Collage.oval w h

-- eyesView : (Int, Int) -> Graphics.Element.Element
eyesView (w, h) =
  let
    xC = (toFloat w) / 4
    yC = (toFloat h) / 2
  in
    Graphics.Collage.collage w h
      [ eyeBorder (2*xC) (2*yC) |> Graphics.Collage.moveX (-xC)
      , eyeBorder (2*xC) (2*yC) |> Graphics.Collage.moveX xC
      ]

-- test
main =
  Signal.map eyesView Window.dimensions
