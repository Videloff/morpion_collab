
# morpion_poo_collab

We made a game that allow two players to play "morpion" (french version of "noughts and crosses game"). Counting victories to both players.
You can play as much gane you wish, it'll still count voctories, and make it playable for ever.
There is no IA part, so you have to play both player.

## Deployment

To deploy this project run
```bash
  ruby app.rb
```

## Usage

Once you've started the app.rb with ruby, the promp will ask names for players. After that, you'll have to give coords to the program, just as :

```bash
prompt = a1
prompt = C3
     1   2   3
   ╔═══╦═══╦═══╗
A  ║ x ║   ║   ║
   ╠═══╬═══╬═══╣
B  ║   ║   ║   ║
   ╠═══╬═══╬═══╣
C  ║   ║   ║ o ║
   ╚═══╩═══╩═══╝
```


## Architecture

ruby_poo_game

├── lib

│   ├── board.rb

│   ├── boardcase.rb

│   ├── game.rb

│   ├── player.rb

│   └── show.rb

├── lib

│   └── spec_helper.rb

├── app.rb

├── README.md

├── Gemfile

├── Gemfile.lock

└── others (.rspec)
## Implementation and Distribution

This project as been made on Ubuntu. It needs, in addition to ruby, some gems like :
 - bundler

## Tech Stack

**Client:** Ruby


## Authors

- [@Devz23](https://github.com/Devz23)
- [@SmartDevSource](https://github.com/SmartDevSource)
- [@Videloff](https://github.com/Videloff)
