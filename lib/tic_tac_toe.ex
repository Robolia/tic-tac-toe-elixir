defmodule TicTacToe do
  @moduledoc """
  # Tic Tac Toe Map
  =================

   p7 | p8 | p9
  ----|----|----
   p4 | p5 | p6
  ----|----|----
   p1 | p2 | p3

  Possible values for each position are :x, :o or nil.

  :x is always played by the first player
  :o is always played by the second player
  nil is empty space
  """

  @doc """
  Plays next moviment based on the received current state of the game.

  This function must returns the integer related to the position.
  So, if you want to play on p3, you must return 3, and so on.

  You are only allowed to play on positions which are currently nil.

  The `turn` parameter will be always between 1 and 9, and it is
  related to the current turn. So, if three positions are occupied,
  the received `turn` parameter will be 4.

  If this function returns an invalid value, then this player loses the match.

  ## Example of how this function will be called

    iex> TicTacToe.play(%{p1: :x, p2: nil, p3: nil, p4: nil, p5: :o, p6: nil, p7: nil, p8: nil, p9: :x}, 4)
    7
  """

  @spec play(map(), integer()) :: integer()
  def play(%{p1: p1, p2: p2, p3: p3, p4: p4, p5: p5, p6: p6, p7: p7, p8: p8, p9: p9}, turn) do
    cond do
      is_nil(p1) -> 1
      is_nil(p2) -> 2
      is_nil(p3) -> 3
      is_nil(p4) -> 4
      is_nil(p5) -> 5
      is_nil(p6) -> 6
      is_nil(p7) -> 7
      is_nil(p8) -> 8
      is_nil(p9) -> 9
    end
  end
end
