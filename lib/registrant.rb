class Registrant 
    attr_reader :name, :age, :permit, :license_data

    def initialize(name, age, permit, license_data)
        @name = name
        @age = age
        @permit = permit
        @license_data = license_data
    end

    # def name
    #    @name = name
    # end

    # def age
    #    @age = age
    # end

    # def permit
    #    @permit = permit
    # end

    # def license_data
    #    @license_data = license_data
    # end
end