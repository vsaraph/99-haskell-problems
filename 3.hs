kth [] k = error "Index out of range"
kth (x:_) 1 = x
kth (_:xs) k = kth xs (k-1)

main = print (kth [1, 2, 3] (-1))
