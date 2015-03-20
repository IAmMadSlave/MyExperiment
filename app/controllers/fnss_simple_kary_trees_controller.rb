class FnssSimpleKaryTreesController < ApplicationController
  before_action :set_fnss_simple_kary_tree, only: [:show, :edit, :update, :destroy]

  # GET /fnss_simple_kary_trees
  # GET /fnss_simple_kary_trees.json
  def index
    @fnss_simple_kary_trees = FnssSimpleKaryTree.all
  end

  # GET /fnss_simple_kary_trees/1
  # GET /fnss_simple_kary_trees/1.json
  def show
  end

  # GET /fnss_simple_kary_trees/new
  def new
    @fnss_simple_kary_tree = FnssSimpleKaryTree.new
  end

  # GET /fnss_simple_kary_trees/1/edit
  def edit
  end

  # POST /fnss_simple_kary_trees
  # POST /fnss_simple_kary_trees.json
  def create
    @fnss_simple_kary_tree = FnssSimpleKaryTree.new(fnss_simple_kary_tree_params)

    respond_to do |format|
      if @fnss_simple_kary_tree.save
        format.html { redirect_to @fnss_simple_kary_tree, notice: 'Fnss simple kary tree was successfully created.' }
        format.json { render :show, status: :created, location: @fnss_simple_kary_tree }
      else
        format.html { render :new }
        format.json { render json: @fnss_simple_kary_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnss_simple_kary_trees/1
  # PATCH/PUT /fnss_simple_kary_trees/1.json
  def update
    respond_to do |format|
      if @fnss_simple_kary_tree.update(fnss_simple_kary_tree_params)
        format.html { redirect_to @fnss_simple_kary_tree, notice: 'Fnss simple kary tree was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnss_simple_kary_tree }
      else
        format.html { render :edit }
        format.json { render json: @fnss_simple_kary_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnss_simple_kary_trees/1
  # DELETE /fnss_simple_kary_trees/1.json
  def destroy
    @fnss_simple_kary_tree.destroy
    respond_to do |format|
      format.html { redirect_to fnss_simple_kary_trees_url, notice: 'Fnss simple kary tree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnss_simple_kary_tree
      @fnss_simple_kary_tree = FnssSimpleKaryTree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnss_simple_kary_tree_params
      params.require(:fnss_simple_kary_tree).permit(:name, :description, :status, :k_branching_factor, :generator_id, :type_id, :user_id)
    end
end
