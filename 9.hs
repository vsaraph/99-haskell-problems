insert :: (Eq a) => a -> [[a]] -> [[a]]
insert y [] = [[y]]
insert y (x:xs) = if (y == head x) then (y:x):xs else [y]:(x:xs)

pack :: (Eq a) => [a] -> [[a]]
pack lst = foldr insert [] lst

main = print (pack [1, 1, 2, 2, 2, 3])
