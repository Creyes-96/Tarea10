require 'rails_helper'

RSpec.describe "Drivers", type: :request do

  before(:all) do
    @drivers = Driver.create(name: '', code:'Cod001')
  end

  describe "GET /index" do
    it 'Verifica el create' do
      expect(@drivers).to be_valid
    end
  
  end
end