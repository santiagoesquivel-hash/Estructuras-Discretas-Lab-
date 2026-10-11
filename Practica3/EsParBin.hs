module EsParBin where
import Data.Bits 
esParBin :: Int -> Bool
esParBin n = (n .&. 1) == 0