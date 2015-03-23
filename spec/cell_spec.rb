require 'cell'

describe Cell do
	let(:cell) { Cell.new }

	it "created empty" do
	  expect(cell).not_to have_ship	
    end

	it "can receive a ship" do
	  cell.receive_ship(:ship)
	  expect(cell.has_ship?).to eq true
	end

	it "can recieve only one ship" do
    cell.receive_ship(:ship)
    expect { cell.receive_ship(:ship) }.to raise_error 'Cell Full'
	end	

	it "created without hit" do
    expect(cell).not_to be_hit
	end

	it "can receive a hit" do
		cell.receive_hit
		expect(cell.hit?).to eq true
	end

	it "pass a hit to a ship" do
		cell.receive_ship Ship.new
		cell.receive_hit
    cell.pass_hit 
		expect(cell.ship[0].hit?).to eq true
	end	

	it "passes hit to a ship if it is occupied" do
		cell.receive_ship Ship.new
		cell.receive_hit
		expect(cell.ship[0].hit?).to eq true
	end		
end