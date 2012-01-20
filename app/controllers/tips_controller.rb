class TipsController < ApplicationController
  
  # Manage stock market tips
  def index
    @tips = Tip.find(:all, :order => 'id desc').paginate(:per_page => 6, :page => params[:page])
    @meta_title = "STB Finance Service - Recent Stock Market Tips"
  end
  
  def show
    @tips = Tip.find(params[:id])
    @meta_title = "STB Finance Service - Recent Stock Market Tips"
  end
  
end
