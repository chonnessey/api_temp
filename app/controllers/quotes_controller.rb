class QuotesController < ApplicationController

  def index
    @quotes = {"quotation": "The secret of getting ahead is getting started."}
    json_response(@quotes)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end