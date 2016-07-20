class VisitorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_visitor, only: [:show, :edit, :update, :destroy]
  before_action :get_visitors_and_tour_place,:only=>[:new, :create, :edit, :update, :export_exel]

  def index
    redirect_to new_visitor_path
  end

  def new
    @visitor = Visitor.new
    #~ @visitor = Visitor.last
    #~ @assistant = Visitor.new(parent_id: 1)
  end

  def create
    @assistant = nil

    params[:visitor][:tour_place_id] = session[:tour_place]["id"]
    @visitor = current_user.visitors.new(visitor_params)

    respond_to do |format|
      if @visitor.validate && is_uniq_assistant
        if @visitor.save!
          if params[:is_asst_form_attached].to_i == 1
            @assistant = Visitor.new(parent_id: @visitor.id)
          else
            @visitor = Visitor.new
          end
        end
      elsif !is_uniq_assistant
        @visitor.errors.add(:Assistant, " is alreay exist")
      end
      format.html { render :new }
    end
  end

  def edit
    @visitor = Visitor.where(:id => params[:id]).first
  end

  def update
    is_asst_form_attached = params[:is_asst_form_attached].to_i

    respond_to do |format|
      if @visitor.update(visitor_params)
        if is_asst_form_attached == 1
          @assistant = Visitor.new(parent_id: @visitor.id)
          format.html { render :new, notice: 'Visitor was successfully updated.' }
        else
          format.html { redirect_to new_visitor_path, notice: 'Visitor was successfully updated.' }
        end
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @visitor.destroy
    respond_to do |format|
      format.html { redirect_to new_visitor_path, notice: 'Visitor was successfully destroyed.' }
    end
  end

  def export_exel
    respond_to do |format|
      format.html
      #format.csv { send_data @visitors.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  def import_exel
    Visitor.import(params[:file], current_user, session[:tour_place])
    redirect_to root_url, notice: "Visitor imported."
  end

  private

  def set_visitor
    @visitor = Visitor.where(id: params[:id]).first
  end

  def visitor_params
    params.require(:visitor).permit(:reg_no, :receipt_date, :religion, :name, :sex, :tour_place_id,
      :father_name, :address, :date_of_birth, :identity_name, :identity_number, :mobile_number, :age,
      :parent_id
    )
  end

  def is_uniq_assistant
    if @visitor.parent_id.present?
      old_asst = @tour_place.visitors.where(parent_id: params[:visitor][:parent_id])
      return old_asst.blank?
    else
      return true
    end
  end

  def get_visitors_and_tour_place
    @tour_place = TourPlace.where(id: session[:tour_place]["id"]).first
    @visitors = @tour_place.visitors.where(:parent_id => nil).order(reg_no: :desc)
  end

end
