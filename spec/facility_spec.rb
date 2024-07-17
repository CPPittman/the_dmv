require './lib/registrant'
require './lib/facility'
require './lib/vehicle'
require 'spec_helper'

RSpec.describe Facility do
  before(:each) do
    @facility = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
  end
  describe '#initialize' do
    it 'can initialize' do
      expect(@facility).to be_an_instance_of(Facility)
      expect(@facility.name).to eq('DMV Tremont Branch')
      expect(@facility.address).to eq('2855 Tremont Place Suite 118 Denver CO 80205')
      expect(@facility.phone).to eq('(720) 865-4600')
      expect(@facility.services).to eq([])
    end
  end

  describe '#add service' do
    it 'can add available services' do
      expect(@facility.services).to eq([])
      @facility.add_service('New Drivers License')
      @facility.add_service('Renew Drivers License')
      @facility.add_service('Vehicle Registration')
      expect(@facility.services).to eq(['New Drivers License', 'Renew Drivers License', 'Vehicle Registration'])
    end
  end

  describe '#vehicle registration' do
    it 'can register vehicles' do

      cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice} )
      facility_1.add_service('Vehicle Registration')
      cruz.registration_date
      facility_1.registered_vehicles
      facility_1.collected_fees
      facility_1.register_vehicle(cruz)
      cruz.registration_date
      cruz.plate_type
      facility_1.registered_vehicles
      facility_1.collected_fees

      bolt = Vehicle.new({vin: '987654321abcdefgh', year: 2019, make: 'Chevrolet', model: 'Bolt', engine: :ev} )
      facility_1.register_vehicle(bolt)
      bolt.registration_date
      bolt.plate_type
      facility_1.registered_vehicles
      facility_1.collected_fees
      facility_2.registered_vehicles
      facility_2.services
      facility_2.register_vehicle(bolt)
      facility_2.registered_vehicles
      facility_2.collected_fees

      camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice} )
      facility_1.register_vehicle(camaro)
      camaro.registration_date
      camaro.plate_type

    end
  end

  describe '#administer written tests' do
    it 'can administer written tests' do

      registrant_1 = Registrant.new('Bruce', 18, true)
      registrant_2 = Registrant.new('Penny', 16, false)
      registrant_3 = Registrant.new('Tucker', 15, false)

      registrant_1.license_data
      registrant_1.permit?
      facility_1.administer_written_test(registrant_1)
      registrant_1.license_data
      facility_1.add_service('Written Test')
      facility_1.administer_written_test(registrant_1)
      registrant_1.license_data

      registrant_2.age
      registrant_2.permit?
      facility_1.administer_written_test(registrant_2)
      registrant_2.earn_permit
      facility_1.administer_written_test(registrant_2)
      registrant_2.license_data

      registrant_3.age
      registrant_3.permit?
      facility_1.administer_written_test(registrant_3)
      registrant_3.earn_permit
      facility_1.administer_written_test(registrant_3)
      registrant_3.license_data

    end
  end

  describe '#administers road tests' do
    it 'can administer road tests' do

      registrant_1 = Registrant.new('Bruce', 18, true)
      registrant_2 = Registrant.new('Penny', 16, false)
      registrant_3 = Registrant.new('Tucker', 15, false)

      facility_1.administer_road_test(registrant_3)
      registrant_3.earn_permit
      facility_1.administer_road_test(registrant_3)
      registrant_3.license_data

      facility_1.administer_road_test(registrant_1)
      facility_1.add_service('Road Test')
      facility_1.administer_road_test(registrant_1)
      registrant_1.license_data

      facility_1.administer_road_test(registrant_2)
      registrant_2.license_data

    end
  end

  describe '#renew drivers licenses' do
    it 'it can renew drivers licenses' do

      registrant_1 = Registrant.new('Bruce', 18, true)
      registrant_2 = Registrant.new('Penny', 16, false)
      registrant_3 = Registrant.new('Tucker', 15, false)

      facility_1.renew_drivers_license(registrant_1)
      facility_1.add_service('Renew License')
      facility_1.renew_drivers_license(registrant_1)
      facility_1.renew_drivers_license(registrant_1)

      facility_1.renew_drivers_license(registrant_3)
      registrant_3.license_data

      facility_1.renew_drivers_license(registrant_2)
      registrant_2.license_data
    end
  end
end
