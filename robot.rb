class Robot
  attr_accessor :name

  @@all_robots = []

  def initialize
    loop do
      until check_collission
        @name = reset
        @@all_robots << @name
      end
      break
  end

  def check_collision
    @@all_robots.include? @name
  end

  def random_str
    alphabet = ('A'..'Z').to_a
    random_index = rand(alphabet.count)
    alphabet[random_index]
  end

end
