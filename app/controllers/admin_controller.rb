class AdminController < ApplicationController
  http_basic_authenticate_with name: 'aaa', password: 'bbb'
  def index
  end
end
