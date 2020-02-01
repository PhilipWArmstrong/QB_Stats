class QuarterbacksController < ApplicationController
  before_action :set_quarterback, only: [:show]

  # GET /quarterbacks
  def index
    @quarterbacks = Quarterback.all

    render json: @quarterbacks.to_json(include: :yards)
  end

  # GET /quarterbacks/1
  def show
    render json: @quarterback.to_json(include: :yards)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quarterback
      @quarterback = Quarterback.find(params[:id])
    end

end
