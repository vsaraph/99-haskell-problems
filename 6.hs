rev [] = []
rev (x:xs) = (rev xs) ++ [x]

palin str = (str == (rev str))

main = print (palin "")
