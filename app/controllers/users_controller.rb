class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def index
      @users = User.paginate(page: params[:page])
  end

  def show
      @user = User.find(params[:id])
      @experiments = @user.experiments.paginate(page: params[:page])
  end

  def create
      @user = User.new(user_params) 
      if @user.save
          sign_in @user
          flash[:success] = "Welcome to MyExperiment!"
          redirect_to @user          
      else
          render 'new'
      end
  end

  def new
      @user = User.new
  end

  def edit
      #@user = User.find(params[:id])
  end
  
  def models
    unless params[:login].nil?
      @user= User.find_by_name(params[:login])
    
      if@user.nil?
        @user = User.create(:name=>params[:login])
      end
      sign_in(@user)  
    end
    redirect_to generator_forms_path
  end

  #def current_user
    #return unless session[:user_id]
   # @current_user ||= User.find(session[:user_id])
  #end

  def update
      #@user = User.find(params[:id])
      if @user.update_attributes(user_params)
          flash[:success] = "Profile updated"
          redirect_to @user
      else
          render 'edit'
      end
  end

  private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    #def signed_in_user
    #    unless signed_in?
    #        store_location
    #        redirect_to signin_url, notice: "Please sign in."
    #    end
    #end

    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?(@user)
    end
end
