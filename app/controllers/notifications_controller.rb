class NotificationsController < ApplicationController
  
  # Current notification related to stock market
  def index
    @notifications = Notification.find(:all, :order => 'id desc').paginate(:per_page => 6, :page => params[:page])
    @meta_title = "STB Finance Service - Notifications"
  end
  
  def show
    @notification = Notification.find(params[:id])
    @meta_title = "STB Finance Service - Notifications"
  end
  
end
