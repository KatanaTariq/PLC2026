-- Generate a list of integers from a to b
-- Example: inpFunc 1 5 → [1,2,3,4,5]
inpFunc a b = [a..b]


-- applicatorFunc takes:
-- 1) A list of integers
-- 2) A character flag that controls behavior
--
-- If the character is 's', return the SUM of the list
-- Otherwise, return the AVERAGE of the list
applicatorFunc inpFunc s
  | s == 's'  = sum inpFunc
  | otherwise = (sum inpFunc) / fromIntegral (length inpFunc)


main = do
  -- Call inpFunc to generate numbers from 1 to 5
  -- Then pass that list into applicatorFunc with control character 'a'
  let result = applicatorFunc (inpFunc 1 5) 'a'
  
  -- Print the final computed result
  putStrLn ("sum = " ++ show result)
