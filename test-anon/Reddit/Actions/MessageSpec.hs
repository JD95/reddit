module Reddit.Actions.MessageSpec where

import Reddit

import Test.Hspec

isLeft :: Either a b -> Bool
isLeft = const True `either` const False

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "Reddit.Actions.Message" $ do

  it "shouldn't have an inbox for an anonymous user" $ do
    res <- runRedditAnon getInbox
    res `shouldSatisfy` isLeft
