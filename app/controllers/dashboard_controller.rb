class DashboardController < ApplicationController
  def index
  end
  
  def go_to_message
    render "message/index"
  end
  
end
