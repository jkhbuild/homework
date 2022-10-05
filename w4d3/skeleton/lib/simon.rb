class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @game_over = false
    @sequence_length = 1
  end

  def play
    until self.game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game

  end

  def take_turn
    if self.game_over
      self.show_sequence
      self.require_sequence
    else
      self.round_success_message
      self.sequence_length += 1
    end

  end

  def show_sequence
    self.add_random_color

  end

  def require_sequence

  end

  def add_random_color
    colors_hash = { 1=>"red" , 2=>"blue", 3=>"yellow", 4=>"green" }
    random = rand(1..4)

    seq << colors_hash[random]
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []

  end
end
