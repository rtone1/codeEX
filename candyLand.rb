class Course
  def initialize
    # create 100 steps here
    @steps = ['purple','yellow','blue','green','red','candycanes','gumdrops']
    @allsteps = []
     16.times.each do |i|
       @allsteps << @steps.shuffle
     end

  end
end

class Step

end

# CARDS
# 6 total colors: red, purple, yellow, blue, green, and pink
# 6 pink
# 56 of the other 5, red has 12 places, the rest have 11

class Deck
  def initialize
    @cards = []

    @unshuffled_cards = []
    @unshuffled_cards[0] = {color: 'pink', candy: 'gumdrop'}
    @unshuffled_cards[1] = {color: 'pink', candy: 'gumdrop'}
    @unshuffled_cards[2] = {color: 'pink', candy: 'gumdrop reverse'}
    @unshuffled_cards[3] = {color: 'pink', candy: 'gumdrop reverse'}
    @unshuffled_cards[4] = {color: 'pink', candy: 'candycane'}
    @unshuffled_cards[5] = {color: 'pink', candy: 'candycane'}
    @unshuffled_cards[6] = {color: 'pink', candy: 'candycane reverse'}
    @unshuffled_cards[7] = {color: 'pink', candy: 'candycane reverse'}

    12.times do
      @unshuffled_cards << {color: 'red', candy: 'none'}
    end
    11.times do
      @unshuffled_cards << {color: 'blue', candy: 'none'}
      @unshuffled_cards << {color: 'purple', candy: 'none'}
      @unshuffled_cards << {color: 'green', candy: 'none'}
      @unshuffled_cards << {color: 'yellow', candy: 'none'}
    end
  end

  def shuffle!
    @cards << @unshuffled_cards.shuffle
  end

  def draw_card
    @cards.pop
  end

end



# START HERE
class Game
  def start_game
    # build a course, shuffle the deck
    @course = Course.new
    @deck = Deck.new
    @deck.shuffle!
  end

  def run_game
    # while the game is running, execute a turn
    # while @course.steps.last
    # while player.step != @course.steps.last
    while @course.steps.last.is_unoccupied?
      # define a turn
      # 1. draw a card
      # 2. move piece to color step
      # 3. flip board and talk trash. drop mic and walk away.

      turn = @deck.draw_card
      turn[:color] # => 'red'
      turn[:candy] # => 'none', 'gumdrop'

      if turn[:color] == 'pink'
        # do stuff
        # should the course be smart enough to tell me where the right step is relative to my position?
        # should the course just tell me where the candy is, and i move there myself
        if turn[:candy]
      else
        new_step = @course.next_step(turn[:color]) # => returns the next step of that color
        @player.move_to(new_step)
      end
    end
  end

end
