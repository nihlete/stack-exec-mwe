module Main where

import Graphics.Rendering.Chart.Backend.Cairo
import Graphics.Rendering.Chart.Easy

signal :: [Double] -> [(Double, Double)]
signal xs = [(x, (sin (x * 3.14159 / 45) + 1) / 2 * (sin (x * 3.14159 / 5))) | x <- xs]

main = do
  print "IDDQD"
  toFile def "example1_big.png" $ do
    layout_title .= "Amplitude Modulation"
    setColors [opaque blue, opaque red]
    plot (line "am" [signal [0, (0.5) .. 400]])
    plot (points "am points" (signal [0, 7 .. 400]))