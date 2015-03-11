class ProgramCyclesController < ApplicationController
  before_action :set_program_cycle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @program_cycles = ProgramCycle.all
    respond_with(@program_cycles)
  end

  def show
    respond_with(@program_cycle)
  end

  def new
    @program_cycle = ProgramCycle.new
    respond_with(@program_cycle)
  end

  def edit
  end

  def create
    @program_cycle = ProgramCycle.new(program_cycle_params)
    @program_cycle.save
    respond_with(@program_cycle)
  end

  def update
    @program_cycle.update(program_cycle_params)
    respond_with(@program_cycle)
  end

  def destroy
    @program_cycle.destroy
    respond_with(@program_cycle)
  end

  private
    def set_program_cycle
      @program_cycle = ProgramCycle.find(params[:id])
    end

    def program_cycle_params
      params.require(:program_cycle).permit(:name, :start_date, :end_date, :goal, :description)
    end
end
