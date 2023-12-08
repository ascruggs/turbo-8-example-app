class ApplicationController < ActionController::Base
  layout -> { turbo_frame_request? ? false : ApplicationLayout }
end
