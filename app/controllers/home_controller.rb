class HomeController < ApplicationController
  def index
  	@profile = Profile.find_by_user_id(current_user.id)
  end
end
