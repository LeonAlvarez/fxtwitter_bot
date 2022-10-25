defmodule FxtwitterBotTest do
  use ExUnit.Case
  doctest FxtwitterBot

  describe "maybe_fix/1" do
    test "works" do
      assert {:ok, result} = FxtwitterBot.maybe_fix("https://twitter.com/user")
      assert result == "https://fxtwitter.com/user"
    end

    test "no match" do
      assert {:error, "No match"} == FxtwitterBot.maybe_fix("no match")
    end

    test "not a string" do
      assert {:error, "Not a string"} == FxtwitterBot.maybe_fix(1)
    end
  end
end
