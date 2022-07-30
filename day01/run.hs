import Lib.IO (readLines)

d1 :: Num a => [a] -> [a]
d1 (a:b:xs) = b - a : d1 (b:xs)
d1 _ = []

d3 :: Num a => [a] -> [a]
d3 (a:b:c:d:xs) = d - a : d3 (b:c:d:xs)
d3 _ = []

solve:: (Ord a, Num a) => (b -> [a]) -> b -> Int
solve f = length . filter (> 0) . f

main = do
    content <- readLines
    print $ map ($ fmap read content) [solve d1, solve d3]