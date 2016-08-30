vLast :: [a] -> a
vLast [] = error "Empty list has no last element"
vLast [x] = x
vLast (_:xs) = vLast xs

main = do
  print (vLast [1, 2, 3, 4])
  print (vLast [] :: [Integer])
