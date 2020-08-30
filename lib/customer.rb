class Customer
    attr_accessor :name, :age
    @@all = [] 

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select do |meal|
            meal.customer == self
        end
    end

    def waiters
        #find all meals associated with customer (aka meals)
        #return array of waiters
        meals.map do |meal|
            meal.waiter
        end
    end

end

# Object relationships
#   Waiter
#     #new_meal
#       initializes a meal using the current Waiter instance, a provided Customer instance and a total and tip (FAILED - 10)
#     #meals
#       returns an Array of Meal instances associated with this waiter (FAILED - 11)
#     #best_tipper
#       returns the Customer instance associated with the meal that received the largest tip (FAILED - 12)