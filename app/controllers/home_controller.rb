class HomeController < ApplicationController

  def index
  end

  def click
    mixpanel_resp = Mixpanel_Helper.track(request.remote_ip, 'Testing mixpanel')
    puts mixpanel_resp
    flash[:notice] = 'Tracking successful'
    redirect_to root_path
  end

end
