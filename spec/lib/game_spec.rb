require 'spec_helper'
require 'game'

describe Game do
	it 'perfect game' do
	g1 = Game.new
	g1.roll(10)
	g1.roll(0)
	g1.roll(10)
	g1.roll(0)
	g1.roll(10)
	g1.roll(0)
	g1.roll(10)
	g1.roll(0)
	g1.roll(10)
	g1.roll(0)
	g1.roll(10)
	g1.roll(0)
	g1.roll(10)
	g1.roll(0)
	g1.roll(10)
	g1.roll(0)
	g1.roll(10)
	g1.roll(0)
	g1.roll(10)
	g1.roll(10)
	g1.roll(10)
	expect(g1.score).to eq(300)
	end


end