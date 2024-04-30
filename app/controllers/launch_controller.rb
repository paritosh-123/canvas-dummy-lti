class LaunchController < ApplicationController
  skip_before_action :verify_authenticity_token
  def account
    @message= "Hello from LTI"
  end
end