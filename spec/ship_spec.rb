require 'ship'

describe Ship do
  let(:ship) { Ship.new }

  it "created without a hit" do
    expect(ship).not_to be_hit	
  end

  it "can receive a hit" do
    ship.receive_hit
    expect(ship.hit?).to eq true 
  end	
end