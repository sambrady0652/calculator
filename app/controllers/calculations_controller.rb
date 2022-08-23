require 'calculation_runner'

class CalculationsController < ApplicationController
  def show
    @calc = Calculation.find(params[:id])
  end

  def new
  end

  def create
    runner_klass = CalculationRunner.new(inputs: params[:inputs])
    @calc = Calculation.new
    @calc.inputs = runner_klass.displayed_inputs
    @calc.output = runner_klass.run_calculation
    # normally I would include some validation here before saving anything to DB
    @calc.save
    redirect_to @calc
  end
end
