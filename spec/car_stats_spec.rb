require 'spec_helper'

describe CarStats do

  before do
    @cars = []
    3.times { @cars << Car.new('black') }
    5.times { @cars << Car.new('silver') }
    2.times { @cars << Car.new('white') }
  end

  it "calculates the most popular car color" do
    pop_color = CarStats.calc_top_color(@cars) #The class 'CarStats' is calling the method calc_top_color which takes in the @cars array created in the before method
    expect(pop_color).to eq 'silver'
  end

  it "calculates the least popular car color" do
    bottom_color = CarStats.calc_bottom_color(@cars) #The class 'CarStats' is calling the method calc_bottom_color which takes in the @cars array created in the before method
    expect(bottom_color).to eq 'white' #bottom_color is defined above
  end
end


