class CashRegister 
    attr_accessor :discount, :total

        def initialize(discount = 0)
            @items = []
            @total = 0
            @discount = discount 
            @last_item = []
        end 

    
        def add_item(name, cost, number = 1)
            @total += cost * number 
            number.times do 
            @items << name
            end 
            @last_item = cost * number
        end

        def apply_discount 
            if @discount > 0 
                @total -= (@total * @discount/100.to_f) 
                return "After the discount, the total comes to $#{@total.to_i}."
            else 
                return "There is no discount to apply."
            end 
        end 
            
        def items 
            @items 
        end 

        def void_last_transaction 
            @items.delete_at(-1)
            self.total = self.total - @last_item 
        end 
    end 
      
     



   

