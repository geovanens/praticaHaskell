printElements :: [String] -> IO()
printElements [] = return ()
printElements (x:xs) = do putStrLn x
                          printElements xs
                          
headVogal :: String -> String
headVogal word
    | head word == 'a' = "s"
    | otherwise = "n"

main = do
    w1 <- getLine
    w2 <- getLine
    w3 <- getLine
    w4 <- getLine
    w5 <- getLine
    printElements(map headVogal [w1, w2, w3, w4, w5])
