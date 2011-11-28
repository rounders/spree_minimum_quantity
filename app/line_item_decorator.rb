LineItem.class_eval do 
  validate :must_meet_minimum

  private
  def must_meet_minimum
    minimum = variant.is_master? ? variant.product.minimum_quantity : variant.minimum_quantity
    minimum ||= 0
    errors.add(:quantity, "does not meet minimum quantity required") if quantity < minimum && quantity != 0
  end


end

