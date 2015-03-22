class GeneratorFormsController < ApplicationController
  before_action :set_generator_form, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user

  # GET /generator_forms
  # GET /generator_forms.json
  def index
    @generator_forms = GeneratorForm.all.reverse
    @generator_forms_status_one = GeneratorForm.where(:status => "1")
    @generator_forms_status_zero = GeneratorForm.where(:status => "0", :user_id => current_user.id.to_i)
  end

  # GET /generator_forms/1
  # GET /generator_forms/1.json
  def show
    if @generator_form.generator_id == 3
      @brite_file_path = "../app/temp/#{@generator_form.id}.brite"
	
      return system("cd graph; python britevis.py #{@brite_file_path}")
    elsif @generator_form.generator_id == 4
      @xml_file_path = "../app/xml/#{@generator_form.id}.xml"

      return system("cd graph;python xmlvis.py #{@xml_file_path}")
    end
  end

  # GET /generator_forms/new
  def new
    @generator= params[:generator]
    @type= params[:type]
    @generator_form = GeneratorForm.new   
  end

  # GET /generator_forms/1/edit
  def edit
  end

  # POST /generator_forms
  # POST /generator_forms.json
  def create
    @generator_form = GeneratorForm.new(generator_form_params)
    
    puts "c.....................!"
    p params[:generator_form]
    p params[:generator_form][:generator_id]
    p params[:fnss_simple_types]
    puts "c.....................!"

    respond_to do |format|
      if @generator_form.save
        if params[:generator_form][:type_id] =="1"
          CreateFnssSimpleRing.create(:n=>params[:fnss_simple_types],:generator_form_id=>params[:generator_form][:generator_id])
          puts "c............ifffff.........!"
        elsif params[:generator_form][:type_id] =="2"
          FnssSimpleLine.create(:n=>params[:fnss_simple_types],:generator_form_id=>@generator_form.id)
        elsif params[:generator_form][:type_id] =="3"
          FnssSimpleStar.create(:n=>params[:fnss_simple_types],:generator_form_id=>@generator_form.id)
        elsif params[:generator_form][:type_id] =="4"
          FnssSimpleFullMesh.create(:n=>params[:fnss_simple_types],:generator_form_id=>@generator_form.id)
        elsif params[:generator_form][:type_id] =="5"
          FnssSimpleKaryTree.create(:k_branching_factor=>params[:fnss_simple_types_kary][:k_branching_factor],:h_height_of_tree=>params[:fnss_simple_types_kary][:h_height_of_tree],:generator_form_id=>@generator_form.id)
        elsif params[:generator_form][:type_id] =="6" 
          FnssSimpleDumbbell.create(:mone_nodedumbell=>params[:fnss_simple_types_dumbbell][:mone_nodedumbell],:mtwo_nodedumbell=>params[:fnss_simple_types_dumbbell][:mtwo_nodedumbell],:generator_form_id=>@generator_form.id)
        elsif params[:generator_form][:type_id] =="7" 
          FnssDatacenterTwoTier.create(:n_coretwo_tier=>params[:fnss_simple_types_twotier][:n_coretwo_tier],:n_edgetwo_tier=>params[:fnss_simple_types_twotier][:n_edgetwo_tier],:h_hoststwo_tier=>params[:fnss_simple_types_twotier][:h_hoststwo_tier],:generator_form_id=>@generator_form.id)
        elsif params[:generator_form][:type_id] =="8" 
          FnssDatacenterThreeTier.create(:n_corethree_tier=>params[:fnss_simple_types_threetier][:n_corethree_tier],:n_aggregationthree_tier=>params[:fnss_simple_types_threetier][:n_aggregationthree_tier],:n_edgesthree_tier=>params[:fnss_simple_types_threetier][:n_edgesthree_tier],:n_hoststhree_tier=>params[:fnss_simple_types_threetier][:n_hoststhree_tier],:generator_form_id=>@generator_form.id)
        elsif params[:generator_form][:type_id] =="9" 
          FnssDatacenterBcube.create(:k_bcube=>params[:fnss_simple_types_bcube][:k_bcube],:n_bcube=>params[:fnss_simple_types_bcube][:n_bcube],:generator_form_id=>@generator_form.id)
        elsif params[:generator_form][:type_id] =="10" 
          FnssDatacenterFattree.create(:k_fattree=>params[:fnss_simple_types_fattree][:k_fattree],:generator_form_id=>@generator_form.id)
        elsif params[:generator_form][:type_id] =="11" 
          BriteAsBarabasi.create(:name=>params[:fnss_simple_types_brite_as_barabasi][:Name],
          :n=>params[:fnss_simple_types_brite_as_barabasi][:N],
          :hs=>params[:fnss_simple_types_brite_as_barabasi][:HS],
          :ls=>params[:fnss_simple_types_brite_as_barabasi][:LS],
          :nodeplacement=>params[:fnss_simple_types_brite_as_barabasi][:NodePlacement],
          :m=>params[:fnss_simple_types_brite_as_barabasi][:m],
          :bwdist=>params[:fnss_simple_types_brite_as_barabasi][:BWDist],
          :bwmin=>params[:fnss_simple_types_brite_as_barabasi][:BWMin],
          :bwmax=>params[:fnss_simple_types_brite_as_barabasi][:BWMax],
          :generator_form_id=>@generator_form.id)
          brite_creation(session[:user_id],params[:fnss_simple_types_brite_as_barabasi],@generator_form.id)
        elsif params[:generator_form][:type_id] =="12" 
          BriteAsWaxman.create(:name=>params[:fnss_simple_types_brtite_as_waxman][:Name],
          :n=>params[:fnss_simple_types_brtite_as_waxman][:N],
          :hs=>params[:fnss_simple_types_brtite_as_waxman][:HS],
          :ls=>params[:fnss_simple_types_brtite_as_waxman][:LS],
          :nodeplacement=>params[:fnss_simple_types_brtite_as_waxman][:NodePlacement],
          :growth_type=>params[:fnss_simple_types_brtite_as_waxman][:GrowthType],
          :alpha=>params[:fnss_simple_types_brtite_as_waxman][:alpha],
          :beta=>params[:fnss_simple_types_brtite_as_waxman][:beta],
          :m=>params[:fnss_simple_types_brtite_as_waxman][:m],
          :bwdist=>params[:fnss_simple_types_brtite_as_waxman][:BWDist],
          :bwmin=>params[:fnss_simple_types_brtite_as_waxman][:BWMin],
          :bwmax=>params[:fnss_simple_types_brtite_as_waxman][:BWMax],
          :generator_form_id=>@generator_form.id)
          brite_creation(session[:user_id],params[:fnss_simple_types_brtite_as_waxman],@generator_form.id)
        elsif params[:generator_form][:type_id] =="13" 
          BriteRtBarabasi.create(:name=>params[:fnss_simple_types_brtite_as_rtbarabasi][:Name],
            :n=>params[:fnss_simple_types_brtite_as_rtbarabasi][:N],
            :hs=>params[:fnss_simple_types_brtite_as_rtbarabasi][:HS],
            :ls=>params[:fnss_simple_types_brtite_as_rtbarabasi][:LS],
            :nodeplacement=>params[:fnss_simple_types_brtite_as_rtbarabasi][:NodePlacement],
            :m=>params[:fnss_simple_types_brtite_as_rtbarabasi][:m],
            :bwdist=>params[:fnss_simple_types_brtite_as_rtbarabasi][:BWDist],
            :bwmin=>params[:fnss_simple_types_brtite_as_rtbarabasi][:BWMin],
            :bwmax=>params[:fnss_simple_types_brtite_as_rtbarabasi][:BWMax],
            :generator_form_id=>@generator_form.id)
          brite_creation(session[:user_id],params[:fnss_simple_types_brtite_as_rtbarabasi],@generator_form.id)
        elsif params[:generator_form][:type_id] =="14" 
          BriteRtWaxman.create(:name=>params[:fnss_simple_types_brtite_as_rtwaxman][:Name],
            :n=>params[:fnss_simple_types_brtite_as_rtwaxman][:N],
            :hs=>params[:fnss_simple_types_brtite_as_rtwaxman][:HS],
            :ls=>params[:fnss_simple_types_brtite_as_rtwaxman][:LS],
            :nodeplacement=>params[:fnss_simple_types_brtite_as_rtwaxman][:NodePlacement],
            :growth_type=>params[:fnss_simple_types_brtite_as_rtwaxman][:GrowthType],
            :alpha=>params[:fnss_simple_types_brtite_as_rtwaxman][:alpha],
            :beta=>params[:fnss_simple_types_brtite_as_rtwaxman][:beta],
            :m=>params[:fnss_simple_types_brtite_as_rtwaxman][:m],
            :bwdist=>params[:fnss_simple_types_brtite_as_rtwaxman][:BWDist],
            :bwmin=>params[:fnss_simple_types_brtite_as_rtwaxman][:BWMin],
            :bwmax=>params[:fnss_simple_types_brtite_as_rtwaxman][:BWMax],
            :generator_form_id=>@generator_form.id)
          brite_creation(session[:user_id],params[:fnss_simple_types_brtite_as_rtwaxman],@generator_form.id)
        elsif params[:generator_form][:type_id] =="15" 
          BriteTdAsbarabasiRtWaxman.create(:name=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:Name],
            :edgeconn=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:edgeConn],
            :k=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:k],
            :bwinter=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWInter],
            :bwintermin=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWInterMin],
            :bwintermax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWInterMax],
            :bwintra=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWIntra],
            :bwintramin=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWIntraMin],
            :bwintramax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWIntraMax],
            :Name_router_bar=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:__Name],
            :N_router_bar=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:N],
            :HS_router_bar=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:HS],
            :LS_router_bar=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:LS],
            :NodePlacement_router_bar=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:NodePlacement],
            :m_router_bar=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:m],
            :BWDist_router_bar=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWDist],
            :BWMin_router_bar=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWMin],
            :BWMax_router_bar=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWMax],
            :Name_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:__Name_],
            :N_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:N_],
            :HS_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:HS_],
            :LS_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:LS_],
            :NodePlacement_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:NodePlacement_],
            :GrowthType_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:GrowthType_],
            :m_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:m_],
            :alpha_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:alpha_],
            :beta_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:beta_],
            :BWDist_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWDist_],
            :BWMin_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWMin_],
            :BWMax_router_wax=>params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman][:BWMax_],
            :generator_form_id=>@generator_form.id)
          brite_creation(session[:user_id],params[:fnss_simple_types_brite_td_asbarabasi_rt_waxman],@generator_form.id)
        elsif params[:generator_form][:type_id] =="16"
          BriteTdAswaxmanRtWaxman.create(:name=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:Name],
            :edgeconn=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:edgeConn],
            :k=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:k],
            :bwinter=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWInter],
            :bwintermin=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWInterMin],
            :bwintermax=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWInterMax],
            :bwintra=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWIntra],
            :bwintramin=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWIntraMin],
            :bwintramax=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWIntraMax],
            :name_waxman_one=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:__Name],
            :n=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:N],
            :hs=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:HS],
            :ls=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:LS],
            :nodeplacement=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:NodePlacement],
            :growthtype=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:GrowthType],
            :m=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:m],
            :alpha=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:alpha_],
            :beta=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:beta_],
            :bwdist=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWDist],
            :bwmin=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWMin],
            :bwmax=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWMax],
            :name_rtwaxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:__Name_],
            :n_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:N_],
            :hs_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:HS_],
            :ls_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:LS_],
            :nodeplacement_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:NodePlacement_],
            :growthtype_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:GrowthType_],
            :m_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:m_],
            :alpha_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:alpha_],
            :beta_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:beta_],
            :bwdist_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWDist_],
            :bwmin_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWMin_],
            :bwmax_waxman=>params[:fnss_simple_types_brite_td_waxman_rt_waxman][:BWMax_],
            :generator_form_id=>@generator_form.id)
          brite_creation(session[:user_id],params[:fnss_simple_types_brite_td_waxman_rt_waxman],@generator_form.id)
        elsif params[:generator_form][:type_id] =="17"
          uploaded_io = params[:generator_form][:xml]
          File.open(Rails.root.join('app', 'xml', "#{@generator_form.id}.xml"), 'wb') do |file|
            file.write(uploaded_io.read)
          end
        end

        format.html { redirect_to generator_forms_path, notice: 'Generator form was successfully created.' }
        format.json { render :show, status: :created, location: @generator_form }
      else
        format.html { render :new }
        format.json { render json: @generator_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generator_forms/1
  # PATCH/PUT /generator_forms/1.json
  def update
    respond_to do |format|
      if @generator_form.update(generator_form_params)
        format.html { redirect_to @generator_form, notice: 'Generator form was successfully updated.' }
        format.json { render :show, status: :ok, location: @generator_form }
      else
        format.html { render :edit }
        format.json { render json: @generator_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generator_forms/1
  # DELETE /generator_forms/1.json
  def destroy
    @generator_form.destroy
    respond_to do |format|
      format.html { redirect_to generator_forms_url, notice: 'Generator form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



def brite_creation(u,params,generator_id)

  #@user = u
    @file_conf = file(params)
    @config_file = generator_id.to_s

  File.open("app/temp/"+@config_file+ ".conf", "w") do |f|
      f.write(@file_conf)
    end 
      p @parent_dir = File.expand_path(Dir.getwd)
    
    config_to_brite(@parent_dir+"/app/temp/"+@config_file+ ".conf", @parent_dir+"/app/temp/"+@config_file)
end

  def config_to_brite(config_file, output_file)
    print "PROCESSING: #{config_file} => #{output_file} ********\n" 
    return system("cd external/brite/; java -cp . Main.Brite #{config_file} #{output_file} ./seed_file")
  end
  def file(param)
    file_contents = "BriteConfig\n\nBeginModel\n"
    
    param.each do |field, value|
      puts "fieldfieldfieldfieldfieldfieldfieldfield.........!"
      p field
      p value
      puts "fieldfieldfieldfieldfieldfieldfieldfield.........!"

      file_contents += ">" + field.to_s + " = " + value.to_s + "\n"
    end
    
    file_contents += "EndModel"
    
    file_contents.gsub!(">__","EndModel\n\nBeginModel\n\t")
    file_contents.gsub!("__","EndModel\n\nBeginModel\n\t")
    file_contents.gsub!('>',"\t")
    file_contents.gsub!('_','')
    file_contents.gsub!('{"{:value=	', '')
    file_contents.gsub!('}"=	""}','')
    
    file_contents += "\n\nBeginOutput\n\tBRITE = 1\n\tOTTER = 0\n\tDML = 0\n\tNS = 0\n\tJavasim = 0\nEndOutput"
    
     # add the output choice here
    
    return file_contents
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generator_form
      @generator_form = GeneratorForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generator_form_params
      params.require(:generator_form).permit(:name, :description, :status, :generator_id, :type_id, :user_id, :n)
      params.require(:generator_form).permit(:name, :description, :status, :generator_id, :type_id, :user_id)
    end
end
