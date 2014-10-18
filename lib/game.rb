class Game
	def initialize
		@score = 0
		@rolls = []
		@eiei = 0
	end
	
	def roll(pins)
		@rolls << pins
	end


	def score()
		i = 0
		while(i<18) do
			if(rolls[i]==10) do

				if(rolls[i+2]==10) do
					score += 10+10+rolls[i+4]
					i += 2
				else do
					score += 10+rolls[i+2]+rolls[i+3]
					i += 2
				end
			
			end

			elsif(rolls[i]+rolls[i+1]=10 && rolls[i]!=10) do
				score += 10+rolls[i+2]
				i += 2
			end

			else do
				score += rolls[i]+rolls[i+1]
				i += 2
			end
		end

		while(i>=18) do
			if(rolls[i]+rolls[i+1]!=10) do
				score += rolls[i] + rolls[i+1]
			else do
				score += rolls[i] + rolls[i+1] + rolls[i+2]
			end
		end		
	end
end