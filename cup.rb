require 'die'


class Cup
  attr_accessor :dice_pool

  def initialize
    @dice_pool = []
    5.times do 
      @dice_pool << Die.new
    end
    @rolls_remaining = 2
  end

  def roll
    unless @rolls_remaining == 0
      @rolls_remaining -= 1
      @dice_pool.each do |die|
        die.roll
      end
    end
  end

  def hold(position)
    @dice_pool[position].hold
  end

  def release(position)
    @dice_pool[position].release
  end

  def to_s
    @dice_pool.map(&:value)
  end

  # def die_at(position)
  #   @dice_pool[position]
  # end

end
