sovt :: Int -> Int -> Int -> Int
sovt s v t = s + v * t

main = do
    o1 <- getLine
    vo1 <- getLine
    o2 <- getLine
    vo2 <- getLine
    time <- getLine
    putStrLn (show (abs((sovt (read o1) (read vo1) (read time)) 
                      - (sovt (read o2) (read vo2) (read time)))))
