class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['auth_name'], password: ENV['auth_password'], except: :index
  def show
  end
end
