class DosesController < ApplicationController
  before_action :find_cocktail_id, only: [:new, :create]

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
      @dose = Dose.new(doses_params)
      @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end



  def destroy
  end

  private

  def find_cocktail_id
    @cocktail = Cocktail.find(params[:cocktail_id])

  end
  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
