# TicTacToeElixir bot

_Important:_ You must sign up on [https://robolia.com](https://robolia.com) before forking this repository.

This is a prototype of a bot for playing Tic Tac Toe on [Robolia](https://robolia.com).

### Quickstart

TicTacToe is a turn-based game. So, for each turn, Robolia will call your bot giving the current state of the game and the turn. Based on that,
it must must predict the best position to play in order to win the game.

The returned value will update the current state of the game and then the opponent's bot will be called.

This will be repeated until someone wins the game or all the positions be filled.

### How to play

On each turn, this function `TicTacToe.play/2` will be called. For example:

`TicTacToe.play(%{p1: :x, p2: nil, p3: nil, p4: nil, p5: :o, p6: nil, p7: nil, p8: nil, p9: :x}, 4)`

On the situation above, 3 positions (1, 5 and 9) have been filled already and it is your time to play for the 4th turn.

### Map

```
   p7 | p8 | p9
  ----|----|----
   p4 | p5 | p6
  ----|----|----
   p1 | p2 | p3
```

Possible values for each position are `:x`, `:o` or `nil`.

- `:x` is always played by the first player;
- `:o` is always played by the second player;
- `nil` is empty space

### Rules

1. Your bot must only returns one integer between 1 and 9;
1. If your bot returns any invalid value, it loses the match;

### How to create a bot on Robolia

First, you must be signed up on Robolia. After, you just need to fork this repository to your personal account. That's it.

Your bot will be created on the website as inactivated. Go to your profile, activate it and leave with us, your bot is ready to fight.

### Tests

Feel free to create tests and run them by yourself. Robolia will only call the expected Module and function `TicTacToe.play/2`.

### License

This project is licensed under the MIT License - see the LICENSE file for details
