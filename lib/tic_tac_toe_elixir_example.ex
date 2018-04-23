defmodule TicTacToeElixirExample do
  @moduledoc """
  Documentation for TicTacToeElixirExample.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TicTacToeElixirExample.hello
      :world

  """
  def run(%{current: current}) do
    IO.puts("CURRENT >> #{inspect(current)}")
  end
end
