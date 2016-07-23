class Item
  attr_reader :name, :price
    
  def initialize(name, price)
    @name = name
    @price = price
  end
end

def select_more_items
    print"Do you want to add more items to your cart? \n y/n \n"
    keep_going = gets.chomp
    if keep_going == 'y'
        self.add_item
        else
        keep_going = 'n'
        @add_more_items = 'n'
        self.items
    end
end

def pick_item
    
    print "What item would you like to add to your cart?\n Type a number to select the item \n 1: Duck\n 2: Turkey\n 3: Beef\n 4: Lobster\n 5: Ribs\n"
    @choice = gets.chomp
    number_item_select
end

def number_item_select
  if @choice.to_i == 1
    print "How many piece of Duck do you want to add to your cart?"
    @num_items = gets.chomp
        
  elsif @choice.to_i == 2
    print "How many piece of Turkey do you want to add to your cart?"
    @num_items = gets.chomp
        
  elsif @choice.to_i == 3
    print "How many piece of Beef do you want to add to your cart?"
    @num_items = gets.chomp
        
  elsif @choice.to_i == 4
    print "How many piece of Lobster do you want to add to your cart?"
    @num_items = gets.chomp
        
  elsif @choice.to_i == 5
    print "How many piece of Duck do you want to add to your cart?"
    @num_items = gets.chomp
  else
    print "Please enter a number between 1 and 5 \n"
    pick_item
        
  end
end

class Cart
    
  @add_more_items = 'y'
    
  @cart_items = Hash.new
    
  def self.add_item
    
    pick_item
    
    if @choice.to_i == 1
    
      if !@cart_items["Duck"]
    
        @cart_items["Duck"] = 0
        @cart_items["Duck"] += @num_items.to_i
      else
    
        @cart_items["Duck"] += @num_items.to_i
      end

    elsif @choice.to_i == 2
      if !@cart_items["Turkey"]
    
        @cart_items["Turkey"] = 0
        @cart_items["Turkey"] += @num_items.to_i
      else
    
        @cart_items["Turey"] += @num_items.to_i
      end

    elsif @choice.to_i == 3
      if !@cart_items["Beef"]
          
        @cart_items["Beef"] = 0
        @cart_items["Beef"] = @num_items.to_i
      else
    
        @cart_items["Beef"] += @num_items.to_i
      end

    elsif @choice == 4
      if !@cart_items["Lobster"]
          
        @cart_items["Lobster"] = 0
        @cart_items["Lobster"] = @num_items.to_i
      else
    
        @cart_items["Lobster"] += @num_items.to_i
      end

    elsif @choice == 5
      if !@cart_items["Ribs"]
          
        @cart_items["Ribs"] = 0
        @cart_items["Ribs"] = @num_items.to_i
      else
    
        @cart_items["Ribs"] += @num_items.to_i
      end

    end

    select_more_items

  end

def self.items
@total_value = 0


@items_list = [ Item.new("Duck", 10),
Item.new("Turkey", 5),
Item.new("Beef", 8.99),
Item.new("Lobster", 12.99),
Item.new("Ribs", 7.99)]

self.total


end

  def self.total
  counter_duck = 0
  counter_turkey = 0
  counter_beef = 0
  counter_lobster = 0
  counter_ribs = 0
  
  @cart_items.each do |cart_item|
  
  if !cart_item.nil?
  
  @items_list.each do |item|
  
  if counter_duck == 0
  
  if item.name == "Duck" && !@cart_items["Duck"].nil?
  
  item_value = item.price * @cart_items["Duck"]
  @total_value += item_value
  counter_duck += 1
end
end
if counter_turkey == 0
    
    if item.name == "Turkey" && !@cart_items["Turkey"].nil?
        
        item_value = item.price * @cart_items["Turkey"]
        @total_value += item_value
        counter_turkey += 1
    end
end
if counter_beef == 0
    
    if item.name == "Beef" && !@cart_items["Beef"].nil?
        
        item_value = item.price * @cart_items["Beef"]
        @total_value += item_value
        counter_beef += 1
    end
end
if counter_lobster == 0
    
    if item.name == "Lobster" && !@cart_items["Lobster"].nil?
        
        item_value = item.price * @cart_items["Lobster"]
        @total_value += item_value
        counter_lobster += 1
    end
end
if counter_ribs == 0
    
    if item.name == "Ribs" && !@cart_items["Ribs"].nil?
        
        item_value = item.price * @cart_items["Ribs"]
        @total_value += item_value
        counter_ribs += 1
    end
end
end
end




    printf("The total amount of items in your cart is $%.2f\n",
       @total_value)
    exit
  end


  end


  while @add_more_items == 'y'
    
    self.add_item
    
  end  # end while loop

end

