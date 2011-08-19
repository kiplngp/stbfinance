class Admin::NotificationsController < Admin::BaseController
  
  before_filter :authenticate_admin!, :except => []
  
  def index
    @notifications = Notification.all
  end

  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.new(params[:notification])
    if @notification.save
      flash[:notice] = "Notification created successfully"
      redirect_to admin_notifications_path
    else
      render :new
    end
  end
  
  def edit
    @notification = Notification.find(params[:id])
  end

  def update
    @notification = Notification.find(params[:id])
    if @notification.update_attributes(params[:notification])
      flash[:notice] = "Notification saved successfully"
      redirect_to admin_notifications_path
    else
      render :new
    end
  end
  

  def destroy
    @notification = Notification.find(params[:id])
   
    if @notification.destroy
      flash[:notice] = "Notification deleted successfully"
      redirect_to admin_notifications_path
    end
    
  end
  
  def show
    @notification = Notification.find(params[:id])
        
  end
  
end
