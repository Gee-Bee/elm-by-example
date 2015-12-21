module Fibonacci where

fibonacci : Int -> List Int
fibonacci n =
  let fibonacci' n k1 k2 acc =
    if n <= 0
      then acc
      else fibonacci' (n-1) k2 (k1+k2) (k2 :: acc)
  in
    fibonacci' n 0 1 [] |> List.reverse

fibonacciWithIndexes : Int -> List (Int, Int)
fibonacciWithIndexes n =
  List.map2 (,) [1..n] (fibonacci n)
