class BriteAsBarabasisController < ApplicationController
  before_action :set_brite_as_barabasis, only: [:show, :edit, :update, :destroy]

  # GET /brite_as_barabasis
  # GET /brite_as_barabasis.json
  def index
    @brite_as_barabasis = BriteAsBarabasi.all
  end

  # GET /brite_as_barabasis/1
  # GET /brite_as_barabasis/1.json
  def show
  end

  # GET /brite_as_barabasis/new
  def new
    @brite_as_barabasis = BriteAsBarabasi.new
  end

  # GET /brite_as_barabasis/1/edit
  def edit
  end

  # POST /brite_as_barabasis
  # POST /brite_as_barabasis.json
  def create
    @brite_as_barabasis = BriteAsBarabasi.new(brite_as_barabasis_params)

    respond_to do |format|
      if @brite_as_barabasis.save
        format.html { redirect_to @brite_as_barabasis, notice: 'Brite as barabasi was successfully created.' }
        format.json { render :show, status: :created, location: @brite_as_barabasis }
      else
        format.html { render :new }
        format.json { render json: @brite_as_barabasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brite_as_barabasis/1
  # PATCH/PUT /brite_as_barabasis/1.json
  def update
    respond_to do |format|
      if @brite_as_barabasis.update(brite_as_barabasis_params)
        format.html { redirect_to @brite_as_barabasis, notice: 'Brite as barabasi was successfully updated.' }
        format.json { render :show, status: :ok, location: @brite_as_barabasis }
      else
        format.html { render :edit }
        format.json { render json: @brite_as_barabasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brite_as_barabasis/1
  # DELETE /brite_as_barabasis/1.json
  def destroy
    @brite_as_barabasis.destroy
    respond_to do |format|
      format.html { redirect_to brite_as_barabasis_url, notice: 'Brite as barabasi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brite_as_barabasis
      @brite_as_barabasis = BriteAsBarabasi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brite_as_barabasis_params
      params.require(:brite_as_barabasis).permit(:n, :hs, :ls, :nodeplacement, :m, :bwdist, :bwmin, :bwmax, :name, :description, :status, :generator_id, :type_id, :user_id)
    end
end
