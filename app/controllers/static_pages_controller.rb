class StaticPagesController < ApplicationController
  before_action :signed_in_user

  def home
      @experiment = current_user.experiments.build if signed_in?
  end
  def models

  end	

  def help
  end

  def about
  end
end
