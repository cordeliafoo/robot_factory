<<<<<<< HEAD
class robot
  attr_accessor :name

  def initialize(name)
    @name = name
  end

=======
class Robot
  attr_reader :name
  def initialize(name = 'AB123')
    @name = name
  end
>>>>>>> be5f9e7925c623a0cf4dd29183dc4c9c27edbba1
end
