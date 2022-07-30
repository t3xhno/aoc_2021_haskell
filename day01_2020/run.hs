import Lib.IO (readLines)

solve :: (Eq a, Num a) => [a] -> a
solve xs = head [x * y | x <- xs, y <- xs, x + y == 2020]

solve' :: (Eq a, Num a) => [a] -> a
solve' xs = head [x * y * z | x <- xs, y <- xs, z <- xs, x + y + z == 2020]

main = do
    contents <- readLines
    print $ map ($ map read contents) [solve, solve']