class Code

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader(:pegs)

  def self.valid_pegs?(arr)
    arr.all?{|ele| POSSIBLE_PEGS.has_key?(ele.upcase)}
  end

  def self.random(length)
    arr_of_pegs = []
    arr_of_pegs << POSSIBLE_PEGS.keys.sample until arr_of_pegs.size == length
    Code.new(arr_of_pegs)    
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  def initialize(arr)
    if Code.valid_pegs?(arr)
      @pegs=arr.map(&:upcase)
    else
      raise "error"
    end
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.size
  end

  def num_exact_matches(guess)
    num_of_guesses=0
    (0...guess.length).each do |i|
      num_of_guesses += 1 if guess[i] == self[i]
    end
    num_of_guesses
  end

  def num_near_matches(guess_code)
    count=0
    (0..guess_code.length).each do |i|
      if self.pegs.include?(guess_code[i]) && guess_code[i] != self[i]
        count +=1
      end
    end
      count
  end

  def ==(other_code)
    self.pegs == other_code.pegs
  end
end
