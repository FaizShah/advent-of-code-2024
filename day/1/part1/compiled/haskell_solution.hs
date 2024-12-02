import System.Environment (getArgs)
import Data.List (sort)
import Control.Monad (liftM2)

main :: IO ()
main = do
    [file] <- getArgs
    content <- readFile file
    let rows = map (map read . words) (lines content) :: [[Int]]
        col1 = map head rows
        col2 = map (!! 1) rows
        result = sum $ zipWith (\a b -> abs (a - b)) (sort col1) (sort col2)
    print result
