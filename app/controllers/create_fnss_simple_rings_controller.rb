class CreateFnssSimpleRingsController < ApplicationController
  before_action :set_create_fnss_simple_ring, only: [:show, :edit, :update, :destroy]

  # GET /create_fnss_simple_rings
  # GET /create_fnss_simple_rings.json
  def index
    @create_fnss_simple_rings = CreateFnssSimpleRing.all
  end

  # GET /create_fnss_simple_rings/1
  # GET /create_fnss_simple_rings/1.json
  def show
  end

  # GET /create_fnss_simple_rings/new
  def new
    @create_fnss_simple_ring = CreateFnssSimpleRing.new
  end

  # GET /create_fnss_simple_rings/1/edit
  def edit
  end

  # POST /create_fnss_simple_rings
  # POST /create_fnss_simple_rings.json
  def create
    @create_fnss_simple_ring = CreateFnssSimpleRing.new(create_fnss_simple_ring_params)

    respond_to do |format|
      if @create_fnss_simple_ring.save
        format.html { redirect_to @create_fnss_simple_ring, notice: 'Create fnss simple ring was successfully created.' }
        format.json { render :show, status: :created, location: @create_fnss_simple_ring }
      else
        format.html { render :new }
        format.json { render json: @create_fnss_simple_ring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_fnss_simple_rings/1
  # PATCH/PUT /create_fnss_simple_rings/1.json
  def update
    respond_to do |format|
      if @create_fnss_simple_ring.update(create_fnss_simple_ring_params)
        format.html { redirect_to @create_fnss_simple_ring, notice: 'Create fnss simple ring was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_fnss_simple_ring }
      else
        format.html { render :edit }
        format.json { render json: @create_fnss_simple_ring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_fnss_simple_rings/1
  # DELETE /create_fnss_simple_rings/1.json
  def destroy
    @create_fnss_simple_ring.destroy
    respond_to do |format|
      format.html { redirect_to create_fnss_simple_rings_url, notice: 'Create fnss simple ring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_fnss_simple_ring
      @create_fnss_simple_ring = CreateFnssSimpleRing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_fnss_simple_ring_params
      params.require(:create_fnss_simple_ring).permit(:n)
    end
end
