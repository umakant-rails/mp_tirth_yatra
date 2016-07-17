module VisitorsHelper

  def get_reg_number(visitors, current_obj)
    if current_obj.parent_id.blank?
      return (visitors.size == 0) ? 1 : (visitors.last.reg_no + 1)
    else
      return @visitor.reg_no
    end
  end

end
