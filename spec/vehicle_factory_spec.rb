require './lib/vehicle'
require './lib/vehicle_factory'
require './lib/dmv_data_service'

RSpec.describe Vehicle_factory do
    before(:each) do
        @factory = Vehicle_factory.new

        wa_ev_registrations = DmvDataService.new.wa_ev_registrations
        factory.create_vehicles(wa_ev_registrations)
    end

    

