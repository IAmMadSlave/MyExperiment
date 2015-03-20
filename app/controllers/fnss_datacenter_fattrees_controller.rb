class FnssDatacenterFattreesController < ApplicationController
  before_action :set_fnss_datacenter_fattree, only: [:show, :edit, :update, :destroy]

  # GET /fnss_datacenter_fattrees
  # GET /fnss_datacenter_fattrees.json
  def index
    @fnss_datacenter_fattrees = FnssDatacenterFattree.all
  end

  # GET /fnss_datacenter_fattrees/1
  # GET /fnss_datacenter_fattrees/1.json
  def show
  end

  # GET /fnss_datacenter_fattrees/new
  def new
    @fnss_datacenter_fattree = FnssDatacenterFattree.new
  end

  # GET /fnss_datacenter_fattrees/1/edit
  def edit
  end

  # POST /fnss_datacenter_fattrees
  # POST /fnss_datacenter_fattrees.json
  def create
    @fnss_datacenter_fattree = FnssDatacenterFattree.new(fnss_datacenter_fattree_params)

    respond_to do |format|
      if @fnss_datacenter_fattree.save
        format.html { redirect_to @fnss_datacenter_fattree, notice: 'Fnss datacenter fattree was successfully created.' }
        format.json { render :show, status: :created, location: @fnss_datacenter_fattree }
      else
        format.html { render :new }
        format.json { render json: @fnss_datacenter_fattree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnss_datacenter_fattrees/1
  # PATCH/PUT /fnss_datacenter_fattrees/1.json
  def update
    respond_to do |format|
      if @fnss_datacenter_fattree.update(fnss_datacenter_fattree_params)
        format.html { redirect_to @fnss_datacenter_fattree, notice: 'Fnss datacenter fattree was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnss_datacenter_fattree }
      else
        format.html { render :edit }
        format.json { render json: @fnss_datacenter_fattree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnss_datacenter_fattrees/1
  # DELETE /fnss_datacenter_fattrees/1.json
  def destroy
    @fnss_datacenter_fattree.destroy
    respond_to do |format|
      format.html { redirect_to fnss_datacenter_fattrees_url, notice: 'Fnss datacenter fattree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnss_datacenter_fattree
      @fnss_datacenter_fattree = FnssDatacenterFattree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnss_datacenter_fattree_params
      params.require(:fnss_datacenter_fattree).permit(:k_fattree, :name, :description, :status, :generator_id, :type_id, :user_id)
    end
end
