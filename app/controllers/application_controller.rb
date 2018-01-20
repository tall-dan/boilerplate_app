class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from StandardError do |ex|
    raise ex unless %w[production staging].include? Rails.env
    Airbrake.notify(ex)
  end
end
