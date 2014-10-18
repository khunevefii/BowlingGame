class Game
	def initialize
		@rolls = []
	end
	
	def roll(pins)
		@rolls << pins
	end


	def score
		score = 0
		i = 0
		while i<18
			if(@rolls[i]==10)

				if(@rolls[i+2]==10)
					score += 10+10+@rolls[i+4]
					i += 2
				else
					score += 10+@rolls[i+2]+@rolls[i+3]
					i += 2
				end
			
			elsif @rolls[i]+@rolls[i+1]==10 && @rolls[i]!=10
				score += 10+@rolls[i+2]
				i += 2
			else
				score += @rolls[i]+@rolls[i+1]
				i += 2
			end

		end

		if i==18
			if(@rolls[i]==10 || @rolls[i]+@rolls[i+1]==10)
				score += @rolls[i] + @rolls[i+1] + @rolls[i+2]
			else
				score += @rolls[i] + @rolls[i+1]			
			end
		end	
		score	
	end


end