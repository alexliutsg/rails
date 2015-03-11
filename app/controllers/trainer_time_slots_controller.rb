class TrainerTimeSlotsController < ApplicationController
  before_action :set_trainer_time_slot, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @trainer_time_slots = TrainerTimeSlot.all
    respond_with(@trainer_time_slots)
  end

  def show
    respond_with(@trainer_time_slot)
  end

  def new
    @trainer_time_slot = TrainerTimeSlot.new
    respond_with(@trainer_time_slot)
  end

  def edit
  end

  def create
    @trainer_time_slot = TrainerTimeSlot.new(trainer_time_slot_params)
    @trainer_time_slot.save
    respond_with(@trainer_time_slot)
  end

  def update
    @trainer_time_slot.update(trainer_time_slot_params)
    respond_with(@trainer_time_slot)
  end

  def destroy
    @trainer_time_slot.destroy
    respond_with(@trainer_time_slot)
  end

  private
    def set_trainer_time_slot
      @trainer_time_slot = TrainerTimeSlot.find(params[:id])
    end

    def trainer_time_slot_params
      params.require(:trainer_time_slot).permit(:trainer_id, :date, :start_time, :end_time, :status, :remarks)
    end
end
