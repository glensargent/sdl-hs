{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified SDL

main :: IO ()
main = do
  SDL.initializeAll
  window <- SDL.createWindow "App" SDL.defaultWindow
  renderer <- SDL.createRenderer window (-1) SDL.defaultRenderer
  coreLoop renderer
  -- end
  SDL.destroyWindow window

coreLoop :: SDL.Renderer -> IO ()
coreLoop renderer = do
  events <- SDL.pollEvents
  print events
  coreLoop renderer

