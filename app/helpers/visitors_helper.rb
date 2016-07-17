module VisitorsHelper

  def get_reg_number(visitors)
    return (visitors.size == 0) ? 1 : (visitors.size + 1)
  end

end
