This corrected Haskell code addresses the lazy evaluation issue:

```haskell
import Data.Maybe (listToMaybe)

findCommon :: [Int] -> [Int] -> Maybe Int
findCommon xs ys = listToMaybe (headMay $ filter (`elem` ys) xs)

headMay :: [a] -> Maybe a
headMay [] = Nothing
headMay (x:_) = Just x

main :: IO ()
main = do
  let xs = [1..]  -- Infinite list
      ys = [1000..2000]
  print (findCommon xs ys)
```

This version uses `filter` and `headMay` to efficiently find the first common element without traversing the entire infinite list.  The `headMay` function safely handles the case where no common element exists.