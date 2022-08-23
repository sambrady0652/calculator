require 'calculation_runner'

class CalculationsController < ApplicationController
  def show
    @calc = Calculation.find(params[:id])
  end

  def new
  end

  def create
    @calc = Calculation.new(inputs: params.require(:inputs))
    @calc.output = CalculationRunner.new(inputs: params[:inputs]).run_calculation
    # normally I would include some validation here before saving anything to DB
    @calc.save
    redirect_to @calc
  end
end
