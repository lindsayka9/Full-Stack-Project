# frozen_string_literal: true

class PetsController < ProtectedController
  # before_action :set_pet, only: %i[update]
  before_action :set_owner_id, only: %i[show update destroy]

  # GET /pets
  def index
    @pets = current_user.pets.all

    render json: @pets
  end

  # GET /pets/1
  def show
    @pet = current_user.owners.find(@owner).pets.find(params[:id])
    render json: @pet
  end

  # POST /pets
  def create
    @pet = current_user.owners.find(pet_params[:owner_id]).pets.build(pet_params)
    @pet.user_id = current_user.id
    # binding.pry
    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  def update
    @pet = current_user.owners.find(@owner).pets.find(params[:id])
    binding.pry
    @pet.owner_id = current_user.owners.find(pet_params[:owner_id]).id
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet = current_user.owners.find(@owner).pets.find(params[:id])
    @pet.destroy
    # head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  # def set_pet
  #   @pet = current_user.owners.find(pet_params[:owner_id]).pets.find(params[:id])
  # end

  def set_owner_id
    # binding.pry
    # @owner = current_user.owners.find(params[:owner_id])
    @owner = current_user.pets.find(params[:id])[:owner_id]
  end

  # Only allow a trusted parameter "white list" through.
  def pet_params
    params.require(:pet).permit(:name, :species, :age, :color, :gender, :owner_id)
  end
  private :set_owner_id, :pet_params
end
