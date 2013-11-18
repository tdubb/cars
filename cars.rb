
class Car
	attr_accessor :color 
	@@total_car_count = 0
	@@car_per_color = {}
	#puts the total instances of the class Car
  #it is a class method
  def self.total_cars
  	puts @@total_car_count
  end
  def self.most_popular_color
  	@@car_per_color.sort_by {|k,v| v}
  	@@car_per_color.keys[0]
  end
  def self.cars_per_color
  	puts @@car_per_color
  end
	
	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize(color)
		@fuel = 10
		@distance = 0
		@@total_car_count += 1
		if @@car_per_color[color] == nil
			 @@car_per_color[color] = 1
		else 
			@@car_per_color[color] += 1
		end
	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end
 
end



car_a = Car.new("blue")
car_b = Car.new("red")
car_c = Car.new("blue")
puts car_a
puts car_b
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(232)
car_b.drive(117)
puts car_a
puts car_b
Car.total_cars
Car.most_popular_color
best_color = Car.most_popular_color
Car.new(best_color)
Car.total_cars
puts Car.cars_per_color


