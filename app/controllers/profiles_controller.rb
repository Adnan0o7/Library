class ProfilesController < ApplicationController
  before_action :authencate_user!

	def index
    user_signed_in?
  end
end
