class FnssSimpleFullMeshesController < ApplicationController
  before_action :set_fnss_simple_full_mesh, only: [:show, :edit, :update, :destroy]

  # GET /fnss_simple_full_meshes
  # GET /fnss_simple_full_meshes.json
  def index
    @fnss_simple_full_meshes = FnssSimpleFullMesh.all
  end

  # GET /fnss_simple_full_meshes/1
  # GET /fnss_simple_full_meshes/1.json
  def show
  end

  # GET /fnss_simple_full_meshes/new
  def new
    @fnss_simple_full_mesh = FnssSimpleFullMesh.new
  end

  # GET /fnss_simple_full_meshes/1/edit
  def edit
  end

  # POST /fnss_simple_full_meshes
  # POST /fnss_simple_full_meshes.json
  def create
    @fnss_simple_full_mesh = FnssSimpleFullMesh.new(fnss_simple_full_mesh_params)

    respond_to do |format|
      if @fnss_simple_full_mesh.save
        format.html { redirect_to @fnss_simple_full_mesh, notice: 'Fnss simple full mesh was successfully created.' }
        format.json { render :show, status: :created, location: @fnss_simple_full_mesh }
      else
        format.html { render :new }
        format.json { render json: @fnss_simple_full_mesh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnss_simple_full_meshes/1
  # PATCH/PUT /fnss_simple_full_meshes/1.json
  def update
    respond_to do |format|
      if @fnss_simple_full_mesh.update(fnss_simple_full_mesh_params)
        format.html { redirect_to @fnss_simple_full_mesh, notice: 'Fnss simple full mesh was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnss_simple_full_mesh }
      else
        format.html { render :edit }
        format.json { render json: @fnss_simple_full_mesh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnss_simple_full_meshes/1
  # DELETE /fnss_simple_full_meshes/1.json
  def destroy
    @fnss_simple_full_mesh.destroy
    respond_to do |format|
      format.html { redirect_to fnss_simple_full_meshes_url, notice: 'Fnss simple full mesh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnss_simple_full_mesh
      @fnss_simple_full_mesh = FnssSimpleFullMesh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnss_simple_full_mesh_params
      params.require(:fnss_simple_full_mesh).permit(:name, :description, :status, :full_mesh_node, :generator_id, :type_id, :user_id)
    end
end
