const_list x 0 = []
const_list x n = [x] ++ (const_list x (n-1))

repli [] n = []
repli lst 0 = []
repli (x:xs) n = (const_list x n) ++ (repli xs n)

main = print (repli ['a', 'b', 'c'] 5)
