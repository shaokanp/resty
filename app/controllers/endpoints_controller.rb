class EndpointsController < ApplicationController
  before_action :set_project
  before_action :set_endpoint, only: [:show, :edit, :update, :destroy]

  # GET /endpoints
  # GET /endpoints.json
  def index
    @endpoints = @project.endpoints.all
  end

  # GET /endpoints/1
  # GET /endpoints/1.json
  def show
    @models = @project.models.all
  end

  # GET /endpoints/new
  def new
    @endpoint = @project.endpoints.new
  end

  # GET /endpoints/1/edit
  def edit
  end

  # POST /endpoints
  # POST /endpoints.json
  def create
    @endpoint = @project.endpoints.new(endpoint_params)

    respond_to do |format|
      if @endpoint.save
        format.html { redirect_to [@project,@endpoint], notice: 'Endpoint was successfully created.' }
        format.json { render action: 'show', status: :created, location: [@project,@endpoint] }
      else
        format.html { render action: 'new' }
        format.json { render json: @endpoint.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PATCH/PUT /endpoints/1
  # PATCH/PUT /endpoints/1.json
  def update
    respond_to do |format|
      if @endpoint.update(endpoint_params)
        format.html { redirect_to [@project,@endpoint], notice: 'Endpoint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @endpoint.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # DELETE /endpoints/1
  # DELETE /endpoints/1.json
  def destroy
    @endpoint.destroy
    respond_to do |format|
      format.html { redirect_to endpoints_url }
      format.json { head :no_content }
      format.js
    end
  end

  private
    def set_project
      @project = Project.find(params[:project_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_endpoint
      @endpoint = @project.endpoints.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endpoint_params
      params.require(:endpoint).permit(:description, :method_type, :url, :detail, :resource_id, :project_id)
    end
end
