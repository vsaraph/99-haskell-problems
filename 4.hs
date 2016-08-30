len [] = 0
len (_:xs) = (len xs) + 1

main = print (len [2, 3, 4])
