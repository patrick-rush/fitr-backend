class MembershipsController < ApplicationController
    before_action :set_club, only: [:destroy]

  # GET /clubs/1/members
  def index
    @memberships = Membership.where(club_id: params[:club_id])

    render json: MembershipSerializer.new(@memberships).serializable_hash[:data].map{|hash| hash[:attributes] }
  end

  # POST /memberships
  def create
    @membership = Membership.new(membership_params)

    if @membership.save
      render json: @membership, status: :created, location: @membership
      render json: @membership.errors, status: :unprocessable_entity
    end
  end

  # DELETE /memberships/1
  def destroy
    @membership.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_members
      @membership = Membership.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def membership_params
      params.require(:membership).permit(:club_id, :user_id)
    end
end
