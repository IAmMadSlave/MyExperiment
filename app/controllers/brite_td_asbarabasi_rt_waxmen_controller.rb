class BriteTdAsbarabasiRtWaxmenController < ApplicationController
  before_action :set_brite_td_asbarabasi_rt_waxman, only: [:show, :edit, :update, :destroy]

  # GET /brite_td_asbarabasi_rt_waxmen
  # GET /brite_td_asbarabasi_rt_waxmen.json
  def index
    @brite_td_asbarabasi_rt_waxmen = BriteTdAsbarabasiRtWaxman.all
  end

  # GET /brite_td_asbarabasi_rt_waxmen/1
  # GET /brite_td_asbarabasi_rt_waxmen/1.json
  def show
  end

  # GET /brite_td_asbarabasi_rt_waxmen/new
  def new
    @brite_td_asbarabasi_rt_waxman = BriteTdAsbarabasiRtWaxman.new
  end

  # GET /brite_td_asbarabasi_rt_waxmen/1/edit
  def edit
  end

  # POST /brite_td_asbarabasi_rt_waxmen
  # POST /brite_td_asbarabasi_rt_waxmen.json
  def create
    @brite_td_asbarabasi_rt_waxman = BriteTdAsbarabasiRtWaxman.new(brite_td_asbarabasi_rt_waxman_params)

    respond_to do |format|
      if @brite_td_asbarabasi_rt_waxman.save
        format.html { redirect_to @brite_td_asbarabasi_rt_waxman, notice: 'Brite td asbarabasi rt waxman was successfully created.' }
        format.json { render :show, status: :created, location: @brite_td_asbarabasi_rt_waxman }
      else
        format.html { render :new }
        format.json { render json: @brite_td_asbarabasi_rt_waxman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brite_td_asbarabasi_rt_waxmen/1
  # PATCH/PUT /brite_td_asbarabasi_rt_waxmen/1.json
  def update
    respond_to do |format|
      if @brite_td_asbarabasi_rt_waxman.update(brite_td_asbarabasi_rt_waxman_params)
        format.html { redirect_to @brite_td_asbarabasi_rt_waxman, notice: 'Brite td asbarabasi rt waxman was successfully updated.' }
        format.json { render :show, status: :ok, location: @brite_td_asbarabasi_rt_waxman }
      else
        format.html { render :edit }
        format.json { render json: @brite_td_asbarabasi_rt_waxman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brite_td_asbarabasi_rt_waxmen/1
  # DELETE /brite_td_asbarabasi_rt_waxmen/1.json
  def destroy
    @brite_td_asbarabasi_rt_waxman.destroy
    respond_to do |format|
      format.html { redirect_to brite_td_asbarabasi_rt_waxmen_url, notice: 'Brite td asbarabasi rt waxman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brite_td_asbarabasi_rt_waxman
      @brite_td_asbarabasi_rt_waxman = BriteTdAsbarabasiRtWaxman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brite_td_asbarabasi_rt_waxman_params
      params.require(:brite_td_asbarabasi_rt_waxman).permit(:name, :edgeconn, :k, :bwinter, :bwintermin, :bwintermax, :bwintra, :bwintramin, :bwintramax, :name, :description, :status, :generator_id, :type_id, :user_id)
    end
end
