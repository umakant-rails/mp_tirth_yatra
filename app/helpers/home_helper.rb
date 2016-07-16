module HomeHelper

  def get_users
    return User.all
  end
  
  def format_to_date(receipt_date)
    return receipt_date.strftime("%d/%m/%Y")
  end
  
end
