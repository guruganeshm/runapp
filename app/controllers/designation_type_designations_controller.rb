class DesignationTypeDesignationsController < ApplicationController
  before_action :set_designation_type_designation, only: [:show, :edit, :update, :destroy]

  # GET /designation_type_designations
  # GET /designation_type_designations.json
  def index
    @designation_type_designations = DesignationTypeDesignation.all
  end

  # GET /designation_type_designations/1
  # GET /designation_type_designations/1.json
  def show
  end

  # GET /designation_type_designations/new
  def new
    @designation_type_designation = DesignationTypeDesignation.new
  end

  # GET /designation_type_designations/1/edit
  def edit
  end

  # POST /designation_type_designations
  # POST /designation_type_designations.json
  def create
    @designation_type_designation = DesignationTypeDesignation.new(designation_type_designation_params)

    respond_to do |format|
      if @designation_type_designation.save
        format.html { redirect_to @designation_type_designation, notice: 'Designation type designation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @designation_type_designation }
      else
        format.html { render action: 'new' }
        format.json { render json: @designation_type_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designation_type_designations/1
  # PATCH/PUT /designation_type_designations/1.json
  def update
    respond_to do |format|
      if @designation_type_designation.update(designation_type_designation_params)
        format.html { redirect_to @designation_type_designation, notice: 'Designation type designation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @designation_type_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designation_type_designations/1
  # DELETE /designation_type_designations/1.json
  def destroy
    @designation_type_designation.destroy
    respond_to do |format|
      format.html { redirect_to designation_type_designations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designation_type_designation
      @designation_type_designation = DesignationTypeDesignation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def designation_type_designation_params
      params.require(:designation_type_designation).permit(:designation_type_id, :designation_id)
    end
end
