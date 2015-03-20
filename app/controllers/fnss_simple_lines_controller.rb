class FnssSimpleLinesController < ApplicationController
  before_action :set_fnss_simple_line, only: [:show, :edit, :update, :destroy]

  # GET /fnss_simple_lines
  # GET /fnss_simple_lines.json
  def index
    @fnss_simple_lines = FnssSimpleLine.all
  end

  # GET /fnss_simple_lines/1
  # GET /fnss_simple_lines/1.json
  def show
  end

  # GET /fnss_simple_lines/new
  def new
    @fnss_simple_line = FnssSimpleLine.new
  end

  # GET /fnss_simple_lines/1/edit
  def edit
  end

  # POST /fnss_simple_lines
  # POST /fnss_simple_lines.json
  def create
    @fnss_simple_line = FnssSimpleLine.new(fnss_simple_line_params)

    respond_to do |format|
      if @fnss_simple_line.save
        format.html { redirect_to @fnss_simple_line, notice: 'Fnss simple line was successfully created.' }
        format.json { render :show, status: :created, location: @fnss_simple_line }
      else
        format.html { render :new }
        format.json { render json: @fnss_simple_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnss_simple_lines/1
  # PATCH/PUT /fnss_simple_lines/1.json
  def update
    respond_to do |format|
      if @fnss_simple_line.update(fnss_simple_line_params)
        format.html { redirect_to @fnss_simple_line, notice: 'Fnss simple line was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnss_simple_line }
      else
        format.html { render :edit }
        format.json { render json: @fnss_simple_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnss_simple_lines/1
  # DELETE /fnss_simple_lines/1.json
  def destroy
    @fnss_simple_line.destroy
    respond_to do |format|
      format.html { redirect_to fnss_simple_lines_url, notice: 'Fnss simple line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnss_simple_line
      @fnss_simple_line = FnssSimpleLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnss_simple_line_params
      params.require(:fnss_simple_line).permit(:name, :description, :status, :line_node, :generator_id, :type_id, :user_id)
    end
end
