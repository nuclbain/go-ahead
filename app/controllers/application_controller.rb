# frozen_string_literal: true

# ApplicationController is a class that inherits from ActionController::Base.
class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: %i[home]
end
