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
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  def meals
  Meal.all.select do |meal|
    meal.customer == self
  end
end
<<<<<<< HEAD
def waiters
  meals.map do |meal|
      meal.waiter
    end
end
=======
>>>>>>> 710ce1a98294a5de54b622ec48cc22ea6e5606fd
def new_meal_20_percent(waiter, total)
    tip = total * 0.2
    Meal.new(waiter, self, total, tip)
  end
<<<<<<< HEAD
 def self.oldest_customer
=======
 
  def self.oldest_customer
>>>>>>> 710ce1a98294a5de54b622ec48cc22ea6e5606fd
    oldest_age = 0
    oldest_customer = nil
    self.all.each do |customer|
      if customer.age > oldest_age
        oldest_age = customer.age
        oldest_customer = customer
      end
    end
    oldest_customer
<<<<<<< HEAD
  end
 
=======
>>>>>>> 710ce1a98294a5de54b622ec48cc22ea6e5606fd

end