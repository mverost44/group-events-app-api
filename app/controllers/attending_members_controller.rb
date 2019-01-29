class AttendingMembersController < ApplicationController
  before_action :set_attending_member, only: [:show, :update, :destroy]

  # GET /attending_members
  def index
    @attending_members = AttendingMember.all

    render json: @attending_members
  end

  # GET /attending_members/1
  def show
    render json: @attending_member
  end

  # POST /attending_members
  def create
    @attending_member = AttendingMember.new(attending_member_params)

    if @attending_member.save
      render json: @attending_member, status: :created, location: @attending_member
    else
      render json: @attending_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attending_members/1
  def update
    if @attending_member.update(attending_member_params)
      render json: @attending_member
    else
      render json: @attending_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attending_members/1
  def destroy
    @attending_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attending_member
      @attending_member = AttendingMember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attending_member_params
      params.require(:attending_member).permit(:event_id, :user_id)
    end
end
