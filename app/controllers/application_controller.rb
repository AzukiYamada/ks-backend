# frozen_string_literal: true

class ApplicationController < ActionController::Base
	protect_from_forgery

	rescue_from Exception, with: :error500
  rescue_from ActiveRecord::RecordNotFound, ActionController::RoutingError, with: :error404

	private

	def error404(e)
    render "error404", status: 404
  end

  def error500(e)
    logger.error [e, *e.backtrace].join("\n")
    render "error500", status: 500
  end

end
