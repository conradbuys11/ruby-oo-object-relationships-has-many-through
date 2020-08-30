class Meal

    @@all = []
    attr_accessor :waiter, :customer, :total, :tip

    def initialize(waiter, customer, total, tip)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end

    def self.all
        @@all
    end

end

# Object relationships
#   Customer
#     #new_meal
#       initializes a meal using the current Customer instance, a provided Waiter instance and a total and tip (FAILED - 7)
#     #meals
#       returns an Array of Meal instances associated with this customer (FAILED - 8)
#     #waiters
#       returns an Array of Waiter instances associated with this customer's meals (FAILED - 9)
#   Waiter
#     #new_meal
#       initializes a meal using the current Waiter instance, a provided Customer instance and a total and tip (FAILED - 10)
#     #meals
#       returns an Array of Meal instances associated with this waiter (FAILED - 11)
#     #best_tipper
#       returns the Customer instance associated with the meal that received the largest tip (FAILED - 12)