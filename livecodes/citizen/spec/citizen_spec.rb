require_relative '../citizen'

describe Citizen do
  # can_vote?
  describe '#can_vote?' do
    it 'should return true if the citizen age is > 17' do
      # 1. make an instance
      citizen = Citizen.new('','', 18)
      # 2. have an expectation
      # 3. actual result
      expect(citizen.can_vote?).to eq(true)
      
    end

    it 'should return false if the citizen age is < 18' do
      # 1. make an instance
      citizen = Citizen.new('','', 17)
      
      expect(citizen.can_vote?).to eq(false)
    end
  end


  # full_name
  describe '#full_name' do
    it 'returns a string composed of the first_name and last_name' do
      citizen = Citizen.new('Britney', 'Spears', 48)

      expect(citizen.full_name).to eq('Britney Spears')
    end
  end

  describe '#first_name' do
    it 'should make first_name readable' do
      citizen = Citizen.new('Britney', 'Spears', 48)

      expect(citizen.first_name).to eq('Britney')
    end
  end
end