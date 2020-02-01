class YardsController < ApplicationController

  # GET /yards
  def index
    @yards = Yard.all

    render json: @yards
  end

  # POST /yards
  def create
    @yard = Yard.new(yard_params)
    @yard.quarterback_id = params[:quarterback_id]

    if @yard.save
      render json: @yard, status: :created
    else
      render json: @yard.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def yard_params
      params.require(:yard).permit(:highest, :lowest)
    end
end
