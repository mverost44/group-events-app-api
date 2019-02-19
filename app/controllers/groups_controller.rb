class GroupsController < OpenReadController
  before_action :set_group, only: [:update, :destroy]

  # GET /groups that user isn't a part of or own
  def index
    groups = Group.where.not("user_id = #{current_user.id}")

    render json: groups
  end

  # GET All groups organized by a user
  def show
    groups = Group.where("user_id = #{current_user.id}")
    render json: groups
  end

  def show_events
    events = Group.find(params[:id]).events

    render json: events
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      render json: @group, status: :created, location: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group
    @group = current_user.organized_groups.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def group_params
    params.require(:group).permit(:name, :description, :user_id)
  end
end
