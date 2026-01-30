-- ask takes a prompt message (String) and performs IO
-- It repeatedly asks the user for input until they type "quit"
ask :: String -> IO ()
ask prompt = do
  
  -- Display the prompt message
  putStrLn prompt
  
  -- Read user input from terminal
  line <- getLine
  
  -- If the user types "quit", exit the program
  if line == "quit"
    then putStrLn "quitting.."
    
    -- If the user presses ENTER without typing anything:
    else if line == ""
      then ask (prompt ++ "!")   -- Add "!" and repeat prompt
    
    -- Otherwise: reverse input, print it, and repeat
    else do
      putStrLn ("you said: " ++ reverse line)
      ask prompt   -- Recursive call to repeat the loop


-- Main program entry point
main :: IO ()
main = do
  
  -- Initial prompt message
  let prompt = "please say something"
  
  -- Start the interactive loop
  ask prompt
