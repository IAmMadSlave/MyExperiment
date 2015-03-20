class FnssSimpleDumbbellsController < ApplicationController
  before_action :set_fnss_simple_dumbbell, only: [:show, :edit, :update, :destroy]

  # GET /fnss_simple_dumbbells
  # GET /fnss_simple_dumbbells.json
  def index
    @fnss_simple_dumbbells = FnssSimpleDumbbell.all
  end

  # GET /fnss_simple_dumbbells/1
  # GET /fnss_simple_dumbbells/1.json
  def show
  end

  # GET /fnss_simple_dumbbells/new
  def new
    @fnss_simple_dumbbell = FnssSimpleDumbbell.new
  end

  # GET /fnss_simple_dumbbells/1/edit
  def edit
  end

  # POST /fnss_simple_dumbbells
  # POST /fnss_simple_dumbbells.json
  def create
    @fnss_simple_dumbbell = FnssSimpleDumbbell.new(fnss_simple_dumbbell_params)

    respond_to do |format|
      if @fnss_simple_dumbbell.save
        format.html { redirect_to @fnss_simple_dumbbell, notice: 'Fnss simple dumbbell was successfully created.' }
        format.json { render :show, status: :created, location: @fnss_simple_dumbbell }
      else
        format.html { render :new }
        format.json { render json: @fnss_simple_dumbbell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnss_simple_dumbbells/1
  # PATCH/PUT /fnss_simple_dumbbells/1.json
  def update
    respond_to do |format|
      if @fnss_simple_dumbbell.update(fnss_simple_dumbbell_params)
        format.html { redirect_to @fnss_simple_dumbbell, notice: 'Fnss simple dumbbell was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnss_simple_dumbbell }
      else
        format.html { render :edit }
        format.json { render json: @fnss_simple_dumbbell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnss_simple_dumbbells/1
  # DELETE /fnss_simple_dumbbells/1.json
  def destroy
    @fnss_simple_dumbbell.destroy
    respond_to do |format|
      format.html { redirect_to fnss_simple_dumbbells_url, notice: 'Fnss simple dumbbell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnss_simple_dumbbell
      @fnss_simple_dumbbell = FnssSimpleDumbbell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnss_simple_dumbbell_params
      params.require(:fnss_simple_dumbbell).permit(:name, :description, :status, :mone_nodedumbell, :mtwo_nodedumbell, :generator_id, :type_id, :user_id)
    end
end
