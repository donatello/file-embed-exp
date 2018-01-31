{-# LANGUAGE TemplateHaskell #-}
module Static
    ( embedList
    ) where

import qualified Data.ByteString as B
import           Data.FileEmbed  (embedFile)
import           System.IO       (FilePath)

embedList :: [(FilePath, B.ByteString)]
embedList = [("mypath", $(embedFile "build/10mb"))]
