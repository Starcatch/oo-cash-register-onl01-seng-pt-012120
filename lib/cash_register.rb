class CashRegister

  attr_accessor :total, :discount, :last_transaction_amount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  
  #accepts a title and a price and increases the total
   #also accepts an optional quantity
  def add_item(title,price,quantity = 1)
    
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    #doesn't forget about the previous total
    @total += price*quantity
    @last_transaction_amount = @total
    @total
  end
  
  def apply_discount()
     #applies the discount to the total price
      if @discount > 0
      @discount = @discount/100.to_f
      #reduces the total
      @total = @total - (@total * (@discount))
      #returns success message with updated total
       "After the discount, the total comes to $#{@total.to_i}."
      else
      "There is no discount to apply."
    end
  end
  
  
  
end 