vLast :: [a] -> a
vLast [] = error "Empty list has no last element"
vLast [x] = error "Singleton has no last element"
vLast [x, y] = x
vLast (_:xs) = vLast xs

main = do
  print (vLast [1, 2, 3, 4])
  print (vLast [] :: [Integer])
