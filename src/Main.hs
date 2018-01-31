module Main where

import           Control.Monad   (forM_)
import qualified Data.ByteString as B

import           Static

main :: IO ()
main = do
  forM_ embedList $ \(p, bs) ->
    putStrLn $ mconcat [show p, show (B.length bs)]
