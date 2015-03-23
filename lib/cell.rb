require_relative 'ship'

class Cell

  attr_accessor :ship

  def initialize
  	@ship = []
  	@hit = false
  end

  def has_ship?
  	!@ship.empty?
  end
  
  def receive_ship(ship)
  	fail "Cell Full" unless @ship.empty?
  	@ship << ship
  end

  def hit?
  	@hit
  end

  def receive_hit
  	@hit = true
  	pass_hit if has_ship?
  end

  def pass_hit
  	@ship[0].receive_hit
  end
end