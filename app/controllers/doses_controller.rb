class DosesController < ApplicationController
  def index
    @doses = Dose.all.cocktail_id
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create

    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])

    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  def destroy

    Cocktail.find(params[:id]).Doses.find(@dose.id).destroy
    redirect_to cocktail_doses_path
  end

private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
