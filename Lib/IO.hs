module Lib.IO where

import System.Environment (getArgs)

readLines :: IO [String]
readLines = do
    [fName] <- getArgs
    content <- readFile fName
    return $ lines content