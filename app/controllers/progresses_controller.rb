class ProgressesController < ApplicationController
  before_action :set_program_cycle, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  before_action :set_progress, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @progresses = @program_cycle.progresses
    respond_with(@program_cycle, @progresses)
  end

  def show
    respond_with(@progress)
  end

  def new
    @progress = @program_cycle.progresses.build
    respond_with(@progress)
  end

  def edit
  end

  def create
    @progress = @program_cycle.progresses.create(progress_params)
    @progress.save
    redirect_to program_cycle_progress_path(@program_cycle, @progress)
  end

  def update
    @progress.update(progress_params)
    respond_with(@program_cycle, @progress)
    # if @progress.update(progress_params)
    #   flash[:notice] = 'Successfully updated organization progress.'
    # else
    #   render :action => 'edit'
    # end
  end

  def destroy
    @progress.destroy
    flash[:notice] = 'Target organization removed in this program cycle.'
    redirect_to program_cycle_progresses_path(@program_cycle)
  end

  private
  def set_program_cycle
    @program_cycle = ProgramCycle.find(params[:program_cycle_id])
  end

  private
  def set_progress
    @progress = @program_cycle.progresses.find(params[:id])
  end

  def progress_params
    params.require(:progress).permit(:program_cycle_id, :organization_id, :pitching_status, :pitching_remarks, :program_status, :program_remarks)
  end
end
