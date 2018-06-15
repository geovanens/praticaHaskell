verificaCor :: Int -> Int -> Int -> String
verificaCor r g b 
    | (min r (min g b)) < 128 = "PRETO"
    | otherwise = "BRANCO"

main = do
    r <- getLine
    g <- getLine
    b <- getLine
    let result = verificaCor (read r) (read g) (read b)
    putStrLn result
    
