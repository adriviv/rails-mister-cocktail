class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @cocktails = Cocktail.where(name: @name)
    end
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end



  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)

  end
end
