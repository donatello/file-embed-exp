{-# LANGUAGE TemplateHaskell #-}
module Static
    ( embedList
    ) where

import qualified Data.ByteString as B
import           System.IO       (FilePath)

import           EmbedFile       (embedFile)

embedList :: [(FilePath, B.ByteString)]
embedList = [("mypath", $(embedFile "build/3mb"))]
