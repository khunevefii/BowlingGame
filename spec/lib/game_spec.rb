require 'spec_helper'
require 'game'

describe Game do
	it 'perfect game' do
		g1 = Game.new
		#Frame1
		g1.roll(10) #strike
		g1.roll(0)
		#Frame2
		g1.roll(10) #strike
		g1.roll(0)
		#Frame3
		g1.roll(10) #strike
		g1.roll(0)
		#Frame4
		g1.roll(10) #strike
		g1.roll(0)
		#Frame5
		g1.roll(10) #strike
		g1.roll(0)
		#Frame6
		g1.roll(10) #strike
		g1.roll(0)
		#Frame7
		g1.roll(10) #strike
		g1.roll(0)
		#Frame8
		g1.roll(10) #strike
		g1.roll(0)
		#Frame9
		g1.roll(10) #strike
		g1.roll(0)
		#Frame10
		g1.roll(10) #strike
		g1.roll(10) #strike
		g1.roll(10) #strike
		expect(g1.score).to eq(300)
	end

	it 'turkey' do
		g2 = Game.new
		#Frame1
		g2.roll(10) #strike
		g2.roll(0)
		#Frame2
		g2.roll(10) #strike
		g2.roll(0)
		#Frame3
		g2.roll(10) #strike
		g2.roll(0)
		#Frame4
		g2.roll(3)
		g2.roll(2)
		#Frame5
		g2.roll(8)
		g2.roll(0)
		#Frame6
		g2.roll(6)
		g2.roll(2)
		#Frame7
		g2.roll(8)
		g2.roll(1)
		#Frame8
		g2.roll(7)
		g2.roll(3) #spare
		#Frame9
		g2.roll(2)
		g2.roll(3)
		#Frame10
		g2.roll(10) #strike
		g2.roll(0)
		g2.roll(3)
		expect(g2.score).to eq(128)
	end

	it 'all spare' do
		g3 = Game.new
		#Frame1
		g3.roll(0)
		g3.roll(10) #spare
		#Frame2
		g3.roll(3)
		g3.roll(7) #spare
		#Frame3
		g3.roll(7)
		g3.roll(3) #spare
		#Frame4
		g3.roll(5)
		g3.roll(5) #spare
		#Frame5
		g3.roll(2)
		g3.roll(8) #spare
		#Frame6
		g3.roll(7)
		g3.roll(3) #spare
		#Frame7
		g3.roll(4)
		g3.roll(6) #spare
		#Frame8
		g3.roll(2)
		g3.roll(8) #spare
		#Frame9
		g3.roll(7)
		g3.roll(3) #spare
		#Frame10
		g3.roll(9)
		g3.roll(1) #spare
		g3.roll(0)
		expect(g3.score).to eq(146)
	end

	it 'beginner bowler' do
		g4 = Game.new
		#Frame1
		g4.roll(1)
		g4.roll(1)
		#Frame2
		g4.roll(3)
		g4.roll(0)
		#Frame3
		g4.roll(2)
		g4.roll(3)
		#Frame4
		g4.roll(4)
		g4.roll(1)
		#Frame5
		g4.roll(0)
		g4.roll(0)
		#Frame6
		g4.roll(7)
		g4.roll(0)
		#Frame7
		g4.roll(4)
		g4.roll(0)
		#Frame8
		g4.roll(0)
		g4.roll(3)
		#Frame9
		g4.roll(2)
		g4.roll(1)
		#Frame10
		g4.roll(4)
		g4.roll(0)
		g4.roll(0)
		expect(g4.score).to eq(36)
	end


    it 'given example score' do
    	g5 = Game.new
	    #Frame1
	    g5.roll(1)
	    g5.roll(4)
	    #Frame2
	    g5.roll(4)
	    g5.roll(5)
	    #Frame3
	    g5.roll(6)
	    g5.roll(4) #spare
	    #Frame4
	    g5.roll(5)
	    g5.roll(5) #spare
	    #Frame5
	    g5.roll(10) #strike
	    g5.roll(0)
	    #Frame6
	    g5.roll(0)
	    g5.roll(1)
	    #Frame7
	    g5.roll(7)
	    g5.roll(3) #spare
	    #Frame8
	    g5.roll(6)
	    g5.roll(4) #spare
	    #Frame9
	    g5.roll(10)	#strike
	    g5.roll(0)
	    #Frame10
	    g5.roll(2)
	    g5.roll(8) #spare 
	    g5.roll(6)
	    expect(g5.score).to eq(133)
    end

end