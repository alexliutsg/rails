class SchoolTimeSlotsController < ApplicationController
  before_action :set_school_time_slot, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @school_time_slots = SchoolTimeSlot.all
    respond_with(@school_time_slots)
  end

  def show
    respond_with(@school_time_slot)
  end

  def new
    @school_time_slot = SchoolTimeSlot.new
    respond_with(@school_time_slot)
  end

  def edit
  end

  def create
    @school_time_slot = SchoolTimeSlot.new(school_time_slot_params)
    @school_time_slot.save
    respond_with(@school_time_slot)
  end

  def update
    @school_time_slot.update(school_time_slot_params)
    respond_with(@school_time_slot)
  end

  def destroy
    @school_time_slot.destroy
    respond_with(@school_time_slot)
  end

  private
    def set_school_time_slot
      @school_time_slot = SchoolTimeSlot.find(params[:id])
    end

    def school_time_slot_params
      params.require(:school_time_slot).permit(:school_id, :date, :start_time, :end_time, :status, :remarks)
    end
end
