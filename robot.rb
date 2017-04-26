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
end
  def check_collision
    @@all_robots.include? @name
  end

  def random_str
    alphabet = ('A'..'Z').to_a
    random_index = rand(alphabet.count)
    alphabet[random_index]
  end
  def reset
    @name = name_randomizer
  end
  def name_randomizer
    random_name = ''
    2.times do
      random_name += random_str
    end
    3.times do
      random_name += rand(9).to_s
    end
    random_name
end
end
