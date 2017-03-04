class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  rescue_from ArgumentError, with: :render_unprocessable_entity_response

  private

  def record_not_found
    head status: 500
  end

  def render_unprocessable_entity_response(exception)
    render json: { response: false, message: exception }, status: 400
  end
end
