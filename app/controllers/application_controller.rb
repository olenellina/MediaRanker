class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    rescue_from ActiveRecord::RecordNotFound, :with => :render_404

    def render_404
      render :file => "#{Rails.root}/public/404", :raise => ActiveRecord::RecordNotFound
    end
end
