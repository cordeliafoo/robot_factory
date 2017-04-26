
# Manage robot factory settings.

# When robots come off the factory floor, they have no name.

# The first time you boot them up, a random name is generated in the format of two uppercase letters followed by three digits,
# such as RX837 or BC811.

# Every once in a while we need to reset a robot to its factory settings,
# which means that their name gets wiped. The next time you ask, it will respond with a new random name.

# The names must be random: they should not follow a predictable sequence.
# Random names means a risk of collisions.
# Your solution should not allow the use of the same name twice when avoidable.
# In some exercism language tracks there are tests to ensure that the same name is never used twice.


require_relative '../robot'

describe Robot do
  before(:context) do
    @r1 = Robot.new
    @r2 = Robot.new
  end

  #1 update this test, so you get a random name
  describe 'Initializatioin' do
    it 'should create new robot name' do
      expect(@r1).to eq (/^[A-Z]{2}\d{3}$/)
      expect(@r2).to eq (/^[A-Z]{2}\d{3}$/)
    end

    it 'should not create name that has been created' do
      expect(@r1.name).not_to eq(@r2.name)
    end
  end

  #2 if run r1.reset, name for r1 should change
  describe 'Reset' do
    it 'name for r1 should change' do
      original_name = @r1.name
      @r1.reset
      expect(@r1).not_to eq original_name
    end
  end

  #3 names must be random

end
