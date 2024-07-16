require './lib/registrant'

RSpec.describe @registrant do
    before(:all) do
    end

    it 'is a registrant' do
        registrant_1 = Registrant.new('Bruce', 18, true, "license") 
    end

    # it 'has a name' do
    #   @name = name
    #   expect(registrant.name).to eq('Bruce')
    # # end

    # it 'has an age' do
    #   @age = age
        # expect(registrant.age).to eq(18)
    # end

    # it 'has a permit' do
    #   registrant_1.permit?
    #   @permit = permit
    #   expect(registrant.permit?).to eq(true)
    # end

    # it 'has license data' do
    #   registrant_1.license_data
    # end

    # it 'is a registrant' do
    #   registrant_2 = Registrant.new('Penny', 15)
    # end

    # it 'has a name' do
    #   registrant_2.name
    #   @name = name
    #   expect(registrant_2.name).to eq('Penny')
    # end

    # it 'has an age' do
    #   registrant_2.age
    #   @age = age
    #   expect(registrant_2.age).to eq(15)
    # end

    # it 'has a permit' do
    #   registrant_2.permit?
    #   @permit = permit
    #   expect(registrant_2).to eq(false)
    # end

    # it 'has license data' do
    #     registrant_2.license_data
    # end

    # it 'earns a permit' do
    #     registrant_2.earn_permit
    #   expect(registrant_2).to eq(false)
    # end

    # it 'has a permit' do
    #     registrant_2.permit?
    #   expect(registrant_2).to eq(true)
    # end
end