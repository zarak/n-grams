module DigramModel where

import DigramTest


type Digram = (String, String, Double)


first :: String -> [Digram] -> [Digram]
first key digramList = filter (\(k, _, _) -> k == key) digramList


