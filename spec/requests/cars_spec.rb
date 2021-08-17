require 'rails_helper'

RSpec.describe "Cars", type: :request do

  before(:all) do
    @cars = Car.create(model: Faker::Number.within(range: 1980..2022), brand: Faker::Vehicle.manufacture, driver_id: Faker::IDNumber.valid, code: Faker::Code.asin)
    #@cars = Car.create(model: '', brand: Faker::Vehicle.manufacture, driver_id: Faker::IDNumber.valid, code: Faker::Code.asin)
  end

  describe "GET /index" do
    it 'Verifica el create de Cars' do
      expect(@cars).to be_valid
    end

    it 'Verifica el update de Cars' do
      @cars.update(:code => "Codigo-001")
      expect(Car.find_by_code("Codigo-001")).to eq(@cars)
    end

    it 'Verifica el destoy de Cars' do
      @cars.destroy
      expect(Car.find_by(code: "Codigo-001")).to be_nil
    end
  

  end
end
