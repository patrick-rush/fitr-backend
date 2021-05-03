class ClubsController < ApplicationController
    before_action :set_club, only: [:show, :update, :destroy]

  # GET /clubs
  def index
    @clubs = Club.all

    render json: ClubSerializer.new(@clubs).serializable_hash[:data].map{|hash| hash[:attributes] }
  end

  # GET /clubs/1
  def show
    render json: @club
  end

  # POST /clubs
  def create
    @club = Club.new(club_params)

    if @club.save
      render json: @club, status: :created, location: @club
    else
      render json: @club.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clubs/1
  def update
    if @club.update(club_params)
      render json: @club
    else
      render json: @club.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clubs/1
  def destroy
    @club.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def club_params
      params.require(:club).permit(:name, :category, :description, :location, :user_id)
    end
end
