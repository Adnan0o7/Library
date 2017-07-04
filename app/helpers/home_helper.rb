module HomeHelper

def display_profile_link(profile)
  if profile = nil
  	link_to 'Complete Profile', new_profile_path(profile), :method => :get, :class => 'btn btn-block btn-primary'
  else
  	link_to 'Edit Profile', edit_profile_path(profile), :method => :get, :class => 'btn btn-block btn-primary'
  end
end

end
