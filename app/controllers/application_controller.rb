class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_default_response_format

  private

  def set_default_response_format
    request.format = :json if params[:format].nil?
  end
end
