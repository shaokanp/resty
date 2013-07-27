class ParametersController < ApplicationController
  before_action :set_param_container
  before_action :set_parameter, only: [:show, :edit, :update, :destroy]

  # GET /parameters
  # GET /parameters.json
  def index
    @parameters = @param_container.parameters.all
  end

  # GET /parameters/1
  # GET /parameters/1.json
  def show
  end

  # GET /parameters/new
  def new
    @parameter = Parameter.new
  end

  # GET /parameters/1/edit
  def edit
  end

  # POST /parameters
  # POST /parameters.json
  def create
    @parameter = @param_container.parameters.new(parameter_params)

    respond_to do |format|
      if @parameter.save
        format.html { redirect_to [@project, @param_container, @parameter], notice: 'Parameter was successfully created.' }
        format.json { render action: 'show', status: :created, location: [@project, @param_container, @parameter] }
      else
        format.html { render action: 'new' }
        format.json { render json: @parameter.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PATCH/PUT /parameters/1
  # PATCH/PUT /parameters/1.json
  def update
    respond_to do |format|
      if @parameter.update(parameter_params)
        format.html { redirect_to [@project, @param_container, @parameter], notice: 'Parameter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parameter.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # DELETE /parameters/1
  # DELETE /parameters/1.json
  def destroy
    @parameter.destroy
    respond_to do |format|
      format.html { redirect_to parameters_url }
      format.json { head :no_content }
      format.js
    end
  end

  private

    def set_param_container
      @project = Project.find(params[:project_id])
      if params.has_key?(:endpoint_id)
        @param_container = @project.endpoints.find(params[:endpoint_id])
      end
      if params.has_key?(:model_id)
        @param_container = @project.models.find(params[:model_id])
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_parameter
      @parameter = @param_container.parameters.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parameter_params
      params.require(:parameter).permit(:name, :optional, :example_value, :param_container_id, :param_container_type, :description, :project_id)
    end
end
