class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @questionnaires = Questionnaire.all
    respond_with(@questionnaires)
  end

  def show
    respond_with(@questionnaire)
  end

  def new
    @questionnaire = Questionnaire.new
    respond_with(@questionnaire)
  end

  def edit
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    @questionnaire.save
    respond_with(@questionnaire)
  end

  def update
    @questionnaire.update(questionnaire_params)
    respond_with(@questionnaire)
  end

  def destroy
    @questionnaire.destroy
    respond_with(@questionnaire)
  end

  private
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    def questionnaire_params
      params.require(:questionnaire).permit(:type, :course_enrollment_id, :qns_1, :qns_2, :qns_3, :qns_4, :qns_5, :qns_6, :qns_7, :qns_8, :qns_9)
    end
end
