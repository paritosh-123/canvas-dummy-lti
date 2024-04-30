class LaunchController < ApplicationController
  skip_before_action :verify_authenticity_token
  def account
    render component: 'Account', prerender: false
  end
end