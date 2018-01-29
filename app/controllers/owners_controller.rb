# frozen_string_literal: true

class OwnersController < ProtectedController
  before_action :set_owner, only: %i[show update destroy]

  # GET /owners
  def index
    @owners = current_user.owners.all

    render json: @owners
  end

  # GET /owners/1
  def show
    render json: @owner
  end

  # POST /owners
  def create
    @owner = current_user.owners.build(owner_params)

    if @owner.save
      render json: @owner, status: :created, location: @owner
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /owners/1
  def update
    if @owner.update(owner_params)
      render json: @owner
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /owners/1
  def destroy
    @owner.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_owner
    @owner = current_user.owners.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :phone_number, :user_id)
  end
  private :set_owner, :owner_params
end
