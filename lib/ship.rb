class Ship
	def initialize
		@hit = false
	end

	def hit?
		@hit
	end

	def receive_hit
		@hit = true
	end
end