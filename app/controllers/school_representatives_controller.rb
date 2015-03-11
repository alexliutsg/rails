class SchoolRepresentativesController < ApplicationController
  before_action :set_school_representative, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @school_representatives = SchoolRepresentative.all
    respond_with(@school_representatives)
  end

  def show
    respond_with(@school_representative)
  end

  def new
    @school_representative = SchoolRepresentative.new
    respond_with(@school_representative)
  end

  def edit
  end

  def create
    @school_representative = SchoolRepresentative.new(school_representative_params)
    @school_representative.save
    respond_with(@school_representative)
  end

  def update
    @school_representative.update(school_representative_params)
    respond_with(@school_representative)
  end

  def destroy
    @school_representative.destroy
    respond_with(@school_representative)
  end

  private
    def set_school_representative
      @school_representative = SchoolRepresentative.find(params[:id])
    end

    def school_representative_params
      params.require(:school_representative).permit(:school_id, :first_name, :last_name, :title)
    end
end
