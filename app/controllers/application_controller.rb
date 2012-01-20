class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # After Sig-in Admin redirect to dashboard pages
  def after_sign_out_path_for(resource_or_scope)
      new_admin_session_path
  end
  
  # for Search engine optimization
  before_filter :meta_defaults
    private

    def meta_defaults
      @meta_title = "Welcome to STB Financial Services."
      @meta_keywords = "Financial Service Provider,Stock Broking Services,Stock Broking Services, Share Market Advisory Services, Mutual Funds, Life Insurance Services, Education Services such as coaching for CS, CPT (CA Entrance), ICWA, BCA, BBA, BCCA, HSSC, B.Com, MBA "
      @meta_description = "STB Financial Services is one of the most trusted financial service providers in Central India.Stock Broking Services, Share Market Advisory Services, Mutual Funds, Life Insurance Services up to the Education Services such as coaching for CS, CPT (CA Entrance), ICWA, BCA, BBA, BCCA, HSSC, B.Com, MBA"
    end
    
  
end
