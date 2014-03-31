class DesignationTypesController < ApplicationController
  before_action :set_designation_type, only: [:show, :edit, :update, :destroy]

  # GET /designation_types
  # GET /designation_types.json
  def index
    @designation_types = DesignationType.all
  end

  # GET /designation_types/1
  # GET /designation_types/1.json
  def show
  end

  # GET /designation_types/new
  def new
    @designation_type = DesignationType.new
  end

  # GET /designation_types/1/edit
  def edit
  end

  # POST /designation_types
  # POST /designation_types.json
  def create
    @designation_type = DesignationType.new(designation_type_params)

    respond_to do |format|
      if @designation_type.save
        format.html { redirect_to @designation_type, notice: 'Designation type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @designation_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @designation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designation_types/1
  # PATCH/PUT /designation_types/1.json
  def update
    respond_to do |format|
      if @designation_type.update(designation_type_params)
        format.html { redirect_to @designation_type, notice: 'Designation type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @designation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designation_types/1
  # DELETE /designation_types/1.json
  def destroy
    @designation_type.destroy
    respond_to do |format|
      format.html { redirect_to designation_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designation_type
      @designation_type = DesignationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def designation_type_params
      params.require(:designation_type).permit(:name)
    end
end
