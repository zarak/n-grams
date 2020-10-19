{-# LANGUAGE ScopedTypeVariables #-}

module Data (readDigrams) where




import qualified Data.Vector as V
import qualified Data.ByteString.Lazy as BL
import Data.ByteString.Char8 
import Data.Csv
import Control.Monad (mzero)

readDigrams :: FilePath -> IO ()
readDigrams filePath = do
    content <- BL.readFile filePath
    case decode NoHeader content of
        Left err -> print err
        Right xs -> V.forM_ xs $ \(a :: String, b :: String, freq:: Double) -> print (a, b, freq)


--readDigrams' :: FilePath -> IO (Either String (V.Vector (String, String, Double)))
--readDigrams' filePath =
    --do
        --content <- BL.readFile filePath

        --pure $ (decode NoHeader (BL.map Data.ByteString.Char8.singleton content) :: Either String (V.Vector (String, String, Double)))


--readDigrams' :: FilePath -> IO ()
--readDigrams' filePath = do
    --content <- BL.readFile filePath
    --case decode NoHeader content of
        --Left err -> print err
        --Right xs -> V.forM_ xs $ \(a :: String, b :: String, freq:: Double) -> _todo
