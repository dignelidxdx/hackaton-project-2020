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

    respond_to do |format|
      if @project_interest.save
        format.html { redirect_to @project_interest, notice: 'Project interest was successfully created.' }
        format.json { render :show, status: :created, location: @project_interest }
      else
        format.html { render :new }
        format.json { render json: @project_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_interests/1
  # PATCH/PUT /project_interests/1.json
  def update
    respond_to do |format|
      if @project_interest.update(project_interest_params)
        format.html { redirect_to @project_interest, notice: 'Project interest was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_interest }
      else
        format.html { render :edit }
        format.json { render json: @project_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_interests/1
  # DELETE /project_interests/1.json
  def destroy
    @project_interest.destroy
    respond_to do |format|
      format.html { redirect_to project_interests_url, notice: 'Project interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_project_interest
      @project_interest = ProjectInterest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_interest_params
      params.require(:project_interest).permit(:project_id, :user_id, :favorite, :interest, :status)
    end
end
