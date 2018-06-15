palavrasTamanho :: String -> String -> [String]
palavrasTamanho str1 str2
    | t1 > t2 = [str2, str1]
    | t2 > t1 = [str1, str2]
    | otherwise = [str1, str1]
    where
        t1 = length str1
        t2 = length str2
        
printElements :: [String] -> IO()
printElements [] = return ()
printElements (x:xs) = do putStrLn x
                          printElements xs

main :: IO()
main = do
    input1 <- getLine
    input2 <- getLine
    let list = palavrasTamanho input1 input2
    printElements list
