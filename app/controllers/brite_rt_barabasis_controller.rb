class BriteRtBarabasisController < ApplicationController
  before_action :set_brite_rt_barabasis, only: [:show, :edit, :update, :destroy]

  # GET /brite_rt_barabasis
  # GET /brite_rt_barabasis.json
  def index
    @brite_rt_barabasis = BriteRtBarabasi.all
  end

  # GET /brite_rt_barabasis/1
  # GET /brite_rt_barabasis/1.json
  def show
  end

  # GET /brite_rt_barabasis/new
  def new
    @brite_rt_barabasis = BriteRtBarabasi.new
  end

  # GET /brite_rt_barabasis/1/edit
  def edit
  end

  # POST /brite_rt_barabasis
  # POST /brite_rt_barabasis.json
  def create
    @brite_rt_barabasis = BriteRtBarabasi.new(brite_rt_barabasis_params)

    respond_to do |format|
      if @brite_rt_barabasis.save
        format.html { redirect_to @brite_rt_barabasis, notice: 'Brite rt barabasi was successfully created.' }
        format.json { render :show, status: :created, location: @brite_rt_barabasis }
      else
        format.html { render :new }
        format.json { render json: @brite_rt_barabasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brite_rt_barabasis/1
  # PATCH/PUT /brite_rt_barabasis/1.json
  def update
    respond_to do |format|
      if @brite_rt_barabasis.update(brite_rt_barabasis_params)
        format.html { redirect_to @brite_rt_barabasis, notice: 'Brite rt barabasi was successfully updated.' }
        format.json { render :show, status: :ok, location: @brite_rt_barabasis }
      else
        format.html { render :edit }
        format.json { render json: @brite_rt_barabasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brite_rt_barabasis/1
  # DELETE /brite_rt_barabasis/1.json
  def destroy
    @brite_rt_barabasis.destroy
    respond_to do |format|
      format.html { redirect_to brite_rt_barabasis_url, notice: 'Brite rt barabasi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brite_rt_barabasis
      @brite_rt_barabasis = BriteRtBarabasi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brite_rt_barabasis_params
      params.require(:brite_rt_barabasis).permit(:n, :hs, :ls, :nodeplacement, :m, :bwdist, :bwmin, :bwmax, :name, :description, :status, :generator_id, :type_id, :user_id)
    end
end
