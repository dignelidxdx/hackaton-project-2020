class ProjectInterestsController < ApplicationController
  before_action :set_project_interest, only: [:show, :edit, :update, :destroy]

  # GET /project_interests
  # GET /project_interests.json
  def index
    @project_interests = ProjectInterest.all
  end

  # GET /project_interests/1
  # GET /project_interests/1.json
  def show
    @projects = Project.last(3)
  end

  # GET /project_interests/new
  def new
    @project_interest = ProjectInterest.new
  end

  # GET /project_interests/1/edit
  def edit
  end

  # POST /project_interests
  # POST /project_interests.json
  def create
    @project_interest = ProjectInterest.new(project_interest_params)
    @project_interest.interest = true

    if @project_interest.save
      redirect_to @project_interest, notice: '¡Tu aplicación fue enviada con éxito!'
    else
      redirect_to project_path(@project_interest.project), notice: 'Hubo un error. Por favor contacta a nuestro equipo'
    end
  end

  # PATCH/PUT /project_interests/1
  # PATCH/PUT /project_interests/1.json
  def update
    if @project_interest.update(project_interest_params)
      redirect_to dashboard_path, notice: '¡Actualizado con éxito!'
    else
      redirect_to dashboard_path, notice: 'Hubo un error. Por favor contacta a nuestro equipo'
    end
  end

  # DELETE /project_interests/1
  # DELETE /project_interests/1.json
  def destroy
    @project_interest.destroy
    redirect_to dashboard_path, notice: '¡Borrado con éxito!'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_project_interest
    @project_interest = ProjectInterest.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def project_interest_params
    params.require(:project_interest).permit(:project_id, :user_id, :status)
  end
end
