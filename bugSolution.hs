{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}

import GHC.Generics

data MyEither a b = Left' a | Right' b deriving (Show, Generic, Eq)

main :: IO ()
main = do
  print (Left' 1 :: MyEither Int String)
  print (Right' "hello" :: MyEither Int String)
  print (Left' (1 :: Int) :: MyEither Int String)
  print (Right' ("hello" :: String) :: MyEither Int String)