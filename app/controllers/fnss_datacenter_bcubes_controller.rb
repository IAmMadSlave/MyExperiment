class FnssDatacenterBcubesController < ApplicationController
  before_action :set_fnss_datacenter_bcube, only: [:show, :edit, :update, :destroy]

  # GET /fnss_datacenter_bcubes
  # GET /fnss_datacenter_bcubes.json
  def index
    @fnss_datacenter_bcubes = FnssDatacenterBcube.all
  end

  # GET /fnss_datacenter_bcubes/1
  # GET /fnss_datacenter_bcubes/1.json
  def show
  end

  # GET /fnss_datacenter_bcubes/new
  def new
    @fnss_datacenter_bcube = FnssDatacenterBcube.new
  end

  # GET /fnss_datacenter_bcubes/1/edit
  def edit
  end

  # POST /fnss_datacenter_bcubes
  # POST /fnss_datacenter_bcubes.json
  def create
    @fnss_datacenter_bcube = FnssDatacenterBcube.new(fnss_datacenter_bcube_params)

    respond_to do |format|
      if @fnss_datacenter_bcube.save
        format.html { redirect_to @fnss_datacenter_bcube, notice: 'Fnss datacenter bcube was successfully created.' }
        format.json { render :show, status: :created, location: @fnss_datacenter_bcube }
      else
        format.html { render :new }
        format.json { render json: @fnss_datacenter_bcube.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnss_datacenter_bcubes/1
  # PATCH/PUT /fnss_datacenter_bcubes/1.json
  def update
    respond_to do |format|
      if @fnss_datacenter_bcube.update(fnss_datacenter_bcube_params)
        format.html { redirect_to @fnss_datacenter_bcube, notice: 'Fnss datacenter bcube was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnss_datacenter_bcube }
      else
        format.html { render :edit }
        format.json { render json: @fnss_datacenter_bcube.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnss_datacenter_bcubes/1
  # DELETE /fnss_datacenter_bcubes/1.json
  def destroy
    @fnss_datacenter_bcube.destroy
    respond_to do |format|
      format.html { redirect_to fnss_datacenter_bcubes_url, notice: 'Fnss datacenter bcube was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnss_datacenter_bcube
      @fnss_datacenter_bcube = FnssDatacenterBcube.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnss_datacenter_bcube_params
      params.require(:fnss_datacenter_bcube).permit(:k_bcube, :n_bcube, :name, :description, :status, :generator_id, :type_id, :user_id)
    end
end
