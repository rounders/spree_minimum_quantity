LineItem.class_eval do 
  validate :must_meet_minimum

  private
  
  def must_meet_minimum
    if variant.is_master?
      minimum_qty =  variant.product.minimum_quantity
      minimum_qty_increment = variant.product.minimum_quantity_increment
    else
      minimum_qty = variant.minimum_quantity
      minimum_qty_increment = variant.minimum_quantity_increment
    end
    
    minimum_qty ||= 0
    minimum_qty_increment ||= 0
        
    errors.add(:quantity, "#{variant.product.name} has a minimum order quantity of #{minimum_qty}") if quantity < minimum_qty && quantity != 0
        
    if minimum_qty_increment != 0 &&  (quantity - minimum_qty)%minimum_qty_increment != 0 && quantity > minimum_qty
      errors.add(:quantity, "#{variant.product.name} can only be ordered in increments of #{minimum_qty_increment}")
    end                      
    
  end


end

