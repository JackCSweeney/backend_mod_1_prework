class MyCar
    attr_accessor :color
    attr_reader :year

    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @speed = 0
    end

    def speed_up(mph)
        "The car is now going #{@speed += mph} mph"
    end

    def slow_down(mph)
        "The car is now going #{@speed -= mph} mph"
    end

    def turn_off
        @speed = 0
        "The car is now going #{@speed} and is now shut off"
    end

    def spray_paint(new_color)
        self.color = new_color
        puts "Your car is now #{color}"
    end
end

jetta = MyCar.new(2013, "Silver", "Jetta")
puts jetta.speed_up(25)
puts jetta.slow_down(20)
puts jetta.turn_off
jetta.spray_paint("green")