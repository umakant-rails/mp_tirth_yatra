module HomeHelper

  def get_yatras
    return Yatra.all
  end

  def get_users
    return User.all
  end

end
