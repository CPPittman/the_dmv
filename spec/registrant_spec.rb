require './lib/registrant'

RSpec.describe @registrant do
    before(:all) do
    end

    it 'is a registrant' do
        registrant_1 = Registrant.new('Bruce', 18, true) 
    end

    it 'has a name' do
        registrant_1.name
    end

    it 'has an age' do
        registrant_1.age
    end

    it 'has a permit' do
        registrant_1.permit?
    end

    it 'has license data' do
        registrant_1.license_data
    end

    it 'is a registrant' do
        registrant_2 = Registrant.new('Penny', 15)
    end

    it 'has a name' do
        registrant_2.name
    end

    it 'has an age' do
        registrant_2.age
    end

    it 'has a permit' do
        registrant_2.permit?
    end

    it 'has license data' do
        registrant_2.license_data
    end

    it 'earns a permit' do
        registrant_2.earn_permit
    end

    it 'has a permit' do
        registrant_2.permit?
    end
end