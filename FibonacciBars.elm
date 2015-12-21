module FibonacciBars where

import Fibonacci exposing (..)
import Color exposing (..)
import Graphics.Element
import Graphics.Collage

color n =
  let colors = [ red, orange, yellow, green, blue, purple, brown ]
  in
    List.drop ((n-1) % List.length colors) colors |> List.head |> Maybe.withDefault red

bar (index, n) =
  Graphics.Element.flow Graphics.Element.right
    [ Graphics.Collage.collage (n*20) 20
      [ Graphics.Collage.rect (toFloat n * 20) 20 |> Graphics.Collage.filled (color index) ]
    , Graphics.Element.show n
    ]

main =
  Graphics.Element.flow Graphics.Element.down <| List.map bar (fibonacciWithIndexes 10)
