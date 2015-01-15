module Upmin
  class ApplicationController < ActionController::Base
  	skip_before_filter :restrict_access
    http_basic_authenticate_with name: "admin", password: "secret";
  end
end