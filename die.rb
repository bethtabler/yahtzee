

class Die

  attr_accessor :value, :held

  def initialize
    @held = false
    roll
  end

  def roll
    unless held?
      @value = rand(1..6)
    end
  end

  def held?
    @held
  end

  def hold
    @held = true
  end

  def release
    @held = false
  end

end