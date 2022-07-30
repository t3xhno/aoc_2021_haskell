import Lib.IO (readLines)

solve_1 :: (Eq a, Num a) => [a] -> a
solve_1 xs = head [x * y | x <- xs, y <- xs, x + y == 2020]

solve_2 :: (Eq a, Num a) => [a] -> a
solve_2 xs = head [x * y * z | x <- xs, y <- xs, z <- xs, x + y + z == 2020]

main = do
    contents <- readLines
    print $ map ($ map read contents) [solve_1, solve_2]