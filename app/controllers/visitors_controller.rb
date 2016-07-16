class VisitorsController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end
  
  def new
    @visitor = Visitor.new
    @visitors = Visitor.all
  end
  
  def create
    @visitor = Visitor.new(listing_params)
    debugger
    if @visitor.save!
      redirect_to new_visitor_path
    end
  end
  
  private
  
  def listing_params
    params.require(:visitor).permit(:reg_no, :receipt_date, :religion, :name, :sex,
      :father_name, :address, :date_of_birth, :identity_name, :identity_number
    )
  end
  
end
