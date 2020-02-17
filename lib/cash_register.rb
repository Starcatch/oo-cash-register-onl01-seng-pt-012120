class CashierRegister
  attr_accessor :total, :discount, :items 
  
  def initialize(discuount = 0)
   @discount = discount
   @total = 0
   @items = []
  end 
end
