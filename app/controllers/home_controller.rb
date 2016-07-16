class HomeController < ApplicationController
  respond_to :js, :html

  def index
    redirect_to new_user_session_path
  end

  def create

  end

  def get_users
    @users = User.all
    respond_to do |format|
      format.html
      format.json { render json: @users }
      format.js{render json: @users.to_json}
    end
  end

end
