{-# LANGUAGE TemplateHaskell #-}
module EmbedFile (embedFile) where

import qualified Data.ByteString            as B
import qualified Data.ByteString.Char8      as B8
import           Data.ByteString.Unsafe     (unsafePackAddressLen)
import           Language.Haskell.TH.Syntax (Exp (AppE, ListE, LitE, SigE, TupE, VarE),
                                             Lit (IntegerL, StringL, StringPrimL),
                                             Q, Quasi (qAddDependentFile),
                                             loc_filename, qLocation, runIO)
import           System.IO.Unsafe           (unsafePerformIO)

bsToExp :: B.ByteString -> Q Exp
bsToExp bs =
    return $ VarE 'unsafePerformIO
      `AppE` (VarE 'unsafePackAddressLen
      `AppE` LitE (IntegerL $ fromIntegral $ B8.length bs)
      `AppE` LitE (StringPrimL $ B.unpack bs))

embedFile :: FilePath -> Q Exp
embedFile fp =
    qAddDependentFile fp >>
    (runIO $ B.readFile fp) >>= bsToExp
