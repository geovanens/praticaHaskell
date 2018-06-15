mean :: Float -> Float -> Float
mean v1 v2 = (v1+v2)/2

status :: Float -> String
status v1
    | v1 >= 7 = "pass: True!"
    | otherwise = "pass: False!"

main = do
    nota1 <- getLine
    nota2 <- getLine
    putStrLn (status (mean (read nota1) (read nota2)))
