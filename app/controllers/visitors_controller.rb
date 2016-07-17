class VisitorsController < ApplicationController
  before_action :authenticate_user!
  before_filter :get_visitors_and_tour_place,:only=>[:new, :create]

  def index
    redirect_to new_visitor_path
  end

  def new
    @visitor = Visitor.new
  end

  def create
    params[:visitor][:tour_place_id] = session[:tour_place]["id"]
    @visitor = current_user.visitors.new(visitor_params)

    respond_to do |format|
      if @visitor.validate
        @visitor.save!
        @visitor = Visitor.new
      end
      format.html { render :new }
    end
  end

  private

  def visitor_params
    params.require(:visitor).permit(:reg_no, :receipt_date, :religion, :name, :sex, :tour_place_id,
      :father_name, :address, :date_of_birth, :identity_name, :identity_number, :mobile_number, :age
    )
  end
  
  def get_visitors_and_tour_place
    @tour_place = TourPlace.where(id: session[:tour_place]["id"]).first
    @visitors = @tour_place.visitors.all
  end

end
