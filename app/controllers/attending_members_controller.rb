class AttendingMembersController < OpenReadController
  before_action :set_attending_member, only: [:update, :destroy]

  # GET /attending_members from specific event
  def index
    attending_members = AttendingMember.where("event_id = #{params[:id]}")

    render json: attending_members.uniq
  end

  # GET all events a member is part of
  def show_attending_members
    attending_members = AttendingMember.where("user_id = #{current_user.id}")
    render json: attending_members
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
