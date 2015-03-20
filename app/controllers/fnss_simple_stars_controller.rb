class FnssSimpleStarsController < ApplicationController
  before_action :set_fnss_simple_star, only: [:show, :edit, :update, :destroy]

  # GET /fnss_simple_stars
  # GET /fnss_simple_stars.json
  def index
    @fnss_simple_stars = FnssSimpleStar.all
  end

  # GET /fnss_simple_stars/1
  # GET /fnss_simple_stars/1.json
  def show
  end

  # GET /fnss_simple_stars/new
  def new
    @fnss_simple_star = FnssSimpleStar.new
  end

  # GET /fnss_simple_stars/1/edit
  def edit
  end

  # POST /fnss_simple_stars
  # POST /fnss_simple_stars.json
  def create
    @fnss_simple_star = FnssSimpleStar.new(fnss_simple_star_params)

    respond_to do |format|
      if @fnss_simple_star.save
        format.html { redirect_to @fnss_simple_star, notice: 'Fnss simple star was successfully created.' }
        format.json { render :show, status: :created, location: @fnss_simple_star }
      else
        format.html { render :new }
        format.json { render json: @fnss_simple_star.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnss_simple_stars/1
  # PATCH/PUT /fnss_simple_stars/1.json
  def update
    respond_to do |format|
      if @fnss_simple_star.update(fnss_simple_star_params)
        format.html { redirect_to @fnss_simple_star, notice: 'Fnss simple star was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnss_simple_star }
      else
        format.html { render :edit }
        format.json { render json: @fnss_simple_star.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnss_simple_stars/1
  # DELETE /fnss_simple_stars/1.json
  def destroy
    @fnss_simple_star.destroy
    respond_to do |format|
      format.html { redirect_to fnss_simple_stars_url, notice: 'Fnss simple star was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnss_simple_star
      @fnss_simple_star = FnssSimpleStar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnss_simple_star_params
      params.require(:fnss_simple_star).permit(:name, :description, :status, :star_node, :generator_id, :type_id, :user_id)
    end
end
