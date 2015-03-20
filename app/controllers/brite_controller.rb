class BriteController < ApplicationController
	before_action :signed_in_user
	
	def index
		@form_type = params[:form_type].to_i
	end
	def new

	end

	def create
		if params[:tww_button]
			@all_params = params[:tww_form]
		elsif params[:tbw_button]
			@all_params = params[:tbw_form]
		elsif params[:asw_button]
			@all_params = params[:aswaxman_form]
		elsif params[:rtb_button]
			@all_params = params[:rtbarabasi_form]
		elsif params[:rtw_button]
			@all_params = params[:rtwaxman_form]
		end
		
		@user = current_user.id.to_s
		@file_conf = file(@all_params)
		@config_file = @user
		File.open("app/temp/"+@config_file+ ".conf", "w") do |f|
			f.write(@file_conf)
		end	
		
		#success = config_file("app/temp/td_asw_rtw.conf")
		#if success
			# import to FNSS
			# generate DOT
			# generate XML
		#end
		
		@parent_dir = File.expand_path(Dir.getwd)
		
		if config_to_brite(@parent_dir+"/app/temp/"+@config_file+ ".conf", @parent_dir+"/app/temp/"+@config_file)
			print "____________YES_____________\n"
		else
			print "____________FAIL_____________\n"
		end
		redirect_to url_for(:controller => 'users', :action => 'models')
	end
	
	def file(param)
		file_contents = "BriteConfig\n\nBeginModel\n"
		
		param.each do |field, value|
			file_contents += ">" + field + " = " + value + "\n"
		end
		
		file_contents += "EndModel"
		
		file_contents.gsub!(">__","EndModel\n\nBeginModel\n\t")
		file_contents.gsub!("__","EndModel\n\nBeginModel\n\t")
		file_contents.gsub!('>',"\t")
		file_contents.gsub!('_','')
		
		file_contents += "\n\nBeginOutput\n\tBRITE = 1\n\tOTTER = 0\n\tDML = 0\n\tNS = 0\n\tJavasim = 0\nEndOutput"
		
		 # add the output choice here
		
		return file_contents
	end
	
	def config_to_brite(config_file, output_file)
		print "PROCESSING: #{config_file} => #{output_file} ********\n"	
		return system("cd external/brite/; java -cp . Main.Brite #{config_file} #{output_file} ./seed_file")
	end
	
	
end
