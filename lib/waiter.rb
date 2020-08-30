class Waiter
    attr_accessor :name, :years
    @@all = []

    def initialize(name, years)
        @name = name
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.filter do |meal|
            meal.waiter == self
        end
    end

    def best_tipper
        #look through each meal to find which has the best tip. then, return the customer associated with that meal
        # best_meal = nil
        # best_tip_value = 0
        # meals.each do |meal|
        #     if meal.tip > best_tip_value
        #         best_tip_value = meal.tip
        #         best_meal = meal
        #     end
        # end
        best_meal = meals.max do |meal_a, meal_b|
            meal_a.tip <=> meal_b.tip
        end
        best_meal.customer
    end
end


# Basic class structures
#   Waiter
#     #new_meal
#       initializes a meal using the current Waiter instance, a provided Customer instance and a total and tip (FAILED - 10)
#     #meals
#       returns an Array of Meal instances associated with this waiter (FAILED - 11)
#     #best_tipper
#       returns the Customer instance associated with the meal that received the largest tip (FAILED - 12)