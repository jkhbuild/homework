class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    stores = [[], []]
    @cups = Array.new(14) {Array.new}
    self.place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, i|
      if i != 6 && i != 13
        4.times do
          cup << :stone
        end
      end
    end
    
  end

  def valid_move?(start_pos)
   raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
   raise "Starting cup is empty" if self.cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    self.cups[start_pos] = []
    (1..4).each do |i|
      self.cups[(start_pos + i) % 12] += [:stone]
    end

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
