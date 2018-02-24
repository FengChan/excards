class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def init_group
    Group.init_group
  end
end
