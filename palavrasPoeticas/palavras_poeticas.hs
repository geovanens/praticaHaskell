compareLetter :: String -> String -> Bool
compareLetter l1 l2 = l1 == l2 

comeco :: String -> Char
comeco word = word !! 0

fim :: String -> Char 
fim word = word !! (length word)

poeticas :: String -> String -> String 
poeticas p1 p2 
    | head p1 == head p2 && last p1 == last p2 = "S"
    | otherwise = "N"

main = do
    word1 <- getLine
    word2 <- getLine
    putStrLn(poeticas word1 word2)