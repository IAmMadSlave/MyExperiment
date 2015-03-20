class FnssDatacenterTwoTiersController < ApplicationController
  before_action :set_fnss_datacenter_two_tier, only: [:show, :edit, :update, :destroy]

  # GET /fnss_datacenter_two_tiers
  # GET /fnss_datacenter_two_tiers.json
  def index
    @fnss_datacenter_two_tiers = FnssDatacenterTwoTier.all
  end

  # GET /fnss_datacenter_two_tiers/1
  # GET /fnss_datacenter_two_tiers/1.json
  def show
  end

  # GET /fnss_datacenter_two_tiers/new
  def new
    @fnss_datacenter_two_tier = FnssDatacenterTwoTier.new
  end

  # GET /fnss_datacenter_two_tiers/1/edit
  def edit
  end

  # POST /fnss_datacenter_two_tiers
  # POST /fnss_datacenter_two_tiers.json
  def create
    @fnss_datacenter_two_tier = FnssDatacenterTwoTier.new(fnss_datacenter_two_tier_params)

    respond_to do |format|
      if @fnss_datacenter_two_tier.save
        format.html { redirect_to @fnss_datacenter_two_tier, notice: 'Fnss datacenter two tier was successfully created.' }
        format.json { render :show, status: :created, location: @fnss_datacenter_two_tier }
      else
        format.html { render :new }
        format.json { render json: @fnss_datacenter_two_tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnss_datacenter_two_tiers/1
  # PATCH/PUT /fnss_datacenter_two_tiers/1.json
  def update
    respond_to do |format|
      if @fnss_datacenter_two_tier.update(fnss_datacenter_two_tier_params)
        format.html { redirect_to @fnss_datacenter_two_tier, notice: 'Fnss datacenter two tier was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnss_datacenter_two_tier }
      else
        format.html { render :edit }
        format.json { render json: @fnss_datacenter_two_tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnss_datacenter_two_tiers/1
  # DELETE /fnss_datacenter_two_tiers/1.json
  def destroy
    @fnss_datacenter_two_tier.destroy
    respond_to do |format|
      format.html { redirect_to fnss_datacenter_two_tiers_url, notice: 'Fnss datacenter two tier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnss_datacenter_two_tier
      @fnss_datacenter_two_tier = FnssDatacenterTwoTier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnss_datacenter_two_tier_params
      params.require(:fnss_datacenter_two_tier).permit(:name, :description, :status, :n_coretwo_tier, :n_edgetwo_tier, :h_hoststwo_tier, :generator_id, :type_id, :user_id)
    end
end
