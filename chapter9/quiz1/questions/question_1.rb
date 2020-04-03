# Write a program that lets a user player a solo game of
# Blackjack. The program should:
# * Ask the player if they want to "hit" or "stick".
#   * If the player hits, add a card to their hand.
#   * If the player sticks, end the game.
# * Keep asking the player if they want to "hit" or "stick" until they
#   say "stick".
# * Each time the player hits, calculate the score for the player's
#   hand and `puts` `Score so far: ` and the score.
#   * e.g. `Score so far: 23`
#   * A score is calculated by adding up the values of each of the
#     cards in the player's hand.
#   * Value for each card:
#     * "two": 2
#     * "three": 3
#     * "four": 4
#     * "five": 5
#     * "six": 6
#     * "seven": 7
#     * "eight": 8
#     * "nine": 9
#     * "ten": 10
#     * "jack": 10
#     * "queen": 10
#     * "king": 10
#     * "ace": 11 (This is slightly different from real Blackjack.)
# * When the game is over, `puts` the outcome of the game.
#   * If the player's score is `<= 21`, `puts` `You scored: ` and the
#     final score
#     * e.g. `You scored: 20`
#   * If the player's score is `> 21`, `puts` `You busted with: ` and
#     the final score.
#     * e.g. `You busted with: 25`

# * As part of your solution, there should be four specific methods:
#   * `random_card`: This has already been written for you.  You don't
#     need to change it.
#   * `move`: Asks the player for a move.  If they enter `hit` or
#     `stick`, it returns the move.  If they enter something else, it
#     keeps asking them until they enter `hit` or `stick`.
#   * `score`: Takes an array of cards and returns the score for the
#     hand as an integer.
#   * `run_game`: uses the other methods to run a game of Blackjack.
#
# * Note: When you run the automated tests, make sure to remove from
#   the top level of the file any calls to `run_test` or other
#   methods.
#
# * Note: To stop the game when the user sticks, don't use `exit` to
#   quit the program because this will break the automated tests.  To
#   exit a while loop early, use the `break` keyword.

# You don't need to change this method!
$cards = { "two" => 2, "three" => 3, "four" => 4, "five" => 5,
            "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9,
            "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10,
            "ace" => 11 }
$hand = Array.new

def random_card
  r = rand(13)
  $cards.keys[r]
end

def score(hand_values)
  hand_values.map { |card_name| $cards[card_name] } .sum
end

def move
  input = ""
  while input != "hit" && input != "stick"
    puts "Hit or stick."
    input = gets.chomp
  end
  input
end

def run_game
  while player_move = move()
    if player_move == "stick"
      puts "You scored: #{score($hand)}"
      break
    elsif player_move == "hit"
      $hand.push(random_card())
      if score($hand) <= 21
        puts "Score so far: #{score($hand)}"
      elsif score($hand) > 21
        puts "You busted with: #{score($hand)}"
        break
      end
    end
  end
  $hand.clear
end
