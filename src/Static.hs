{-# LANGUAGE TemplateHaskell #-}
module Static
    ( embedList
    ) where

import qualified Data.ByteString as B
import           Data.FileEmbed  (embedDir)
import           System.IO       (FilePath)

embedList :: [(FilePath, B.ByteString)]
embedList = $(embedDir "build")
