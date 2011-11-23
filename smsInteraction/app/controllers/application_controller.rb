class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  #No cookies on client side to store session key anyhow.
  #protect_from_forgery
end