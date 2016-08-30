insert :: (Eq a) => a -> [[a]] -> [[a]]
insert y [] = [[y]]
insert y (x:xs) = if (y == head x) then (y:x):xs else [y]:(x:xs)

pack :: (Eq a) => [a] -> [[a]]
pack lst = foldr insert [] lst

encode :: (Eq a) => [a] -> [(Int, a)]
encode lst = map (\l -> (length l, head l)) (pack lst)

main = print (encode [1, 1, 2, 2, 2, 3])
