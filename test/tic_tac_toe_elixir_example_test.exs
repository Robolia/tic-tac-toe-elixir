defmodule TicTacToeElixirExampleTest do
  use ExUnit.Case
  doctest TicTacToeElixirExample

  test "greets the world" do
    assert TicTacToeElixirExample.hello() == :world
  end
end
