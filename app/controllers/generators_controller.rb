class GeneratorsController < ApplicationController
  before_action :set_generator, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user

  # GET /generators
  # GET /generators.json
  def index
    @generators = Generator.all
  end

  # GET /generators/1
  # GET /generators/1.json
  def show
  end

  # GET /generators/new
  def new
    @generator = Generator.new
  end

  # GET /generators/1/edit
  def edit
  end

  # POST /generators
  # POST /generators.json
  def create
    @generator = Generator.new(generator_params)

    respond_to do |format|
      if @generator.save
        format.html { redirect_to @generator, notice: 'Generator was successfully created.' }
        format.json { render :show, status: :created, location: @generator }
      else
        format.html { render :new }
        format.json { render json: @generator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generators/1
  # PATCH/PUT /generators/1.json
  def update
    respond_to do |format|
      if @generator.update(generator_params)
        format.html { redirect_to @generator, notice: 'Generator was successfully updated.' }
        format.json { render :show, status: :ok, location: @generator }
      else
        format.html { render :edit }
        format.json { render json: @generator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generators/1
  # DELETE /generators/1.json
  def destroy
    @generator.destroy
    respond_to do |format|
      format.html { redirect_to generators_url, notice: 'Generator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generator
      @generator = Generator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generator_params
      params.require(:generator).permit(:name)
    end
end
