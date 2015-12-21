module HelloWorld3 where

import Color exposing (blue)
import Graphics.Element exposing (..)
import Text as T

makeBlue : T.Text -> T.Text
makeBlue = T.color blue

main : Element
main =
  T.fromString "Text.fromString"
    |> makeBlue
    |> T.italic
    |> T.bold
    |> T.height 40
    |> leftAligned
