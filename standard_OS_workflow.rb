# # Change to the path where OS is installed
require 'C:/openstudio-2.9.1/Ruby/openstudio.rb'
require 'C:/Users/hlee9/Documents/GitHub/OpenStudio_related/openstudio-standards/lib/openstudio-standards.rb'
require 'fileutils'
require 'parallel'
require 'json'
require './measure_steps.rb'

################################################################################
def loadOSM(pathStr)
  translator = OpenStudio::OSVersion::VersionTranslator.new
  path = OpenStudio::Path.new(pathStr)
  model = translator.loadModel(path)
  if model.empty?
    raise "Input #{pathStr} is not valid, please check."
  else
    model = model.get
  end
  return model
end

def create_single_osm(building_type, vintage, climate_zone, dir_folder_working, dir_folder_final)
  unless File.directory?(dir_folder_working)
    FileUtils.mkdir_p(dir_folder_working)
  end
  model = OpenStudio::Model::Model.new
  @debug = false
  epw_file = 'Not Applicable'
  model_name = "#{building_type}_#{vintage}_#{climate_zone}"
  prototype_creator = Standard.build("#{vintage}_#{building_type}")
  prototype_creator.model_create_prototype_model(climate_zone, epw_file, dir_folder_working, @debug, model)
  dir_folder_old_osm = File.expand_path(File.join(dir_folder_working, 'SR1/in.osm'))
  dir_folder_old_epw = File.expand_path(File.join(dir_folder_working, 'SR1/in.epw'))
  dir_folder_new_osm = File.expand_path(File.join(dir_folder_final, "#{model_name}.osm"))
  dir_folder_new_epw = File.expand_path(File.join(dir_folder_final, "#{model_name}.epw"))

  # Adjust model as needed
  puts '- ' * 50
  osm = loadOSM(dir_folder_old_osm)
  osm.getSimulationControl.setRunSimulationforSizingPeriods(false)
  osm.getSimulationControl.setRunSimulationforWeatherFileRunPeriods(true)
  # osm.getSimulationControl.setRunSimulationforWeatherFileRunPeriods(false)
  osm.save(dir_folder_new_osm, true)

  # Move the files
  # FileUtils.mv(dir_folder_old_osm, dir_folder_new_osm)
  FileUtils.mv(dir_folder_old_epw, dir_folder_new_epw)
  # FileUtils.rmdir(dir_folder_working)
  return dir_folder_final, model_name
end


def create_single_osw(dir_osm, dir_epw, dir_measures, arr_measure_steps, dir_osw_out)
  folder_osw_out = File.dirname(dir_osw_out)
  unless File.directory?(folder_osw_out)
    FileUtils.mkdir_p(folder_osw_out)
  end
  hash_osw = {
    "weather_file"=> dir_epw,
    "seed_file"=> dir_osm,
    "measure_paths"=> [
      dir_measures
    ],
    "steps"=> arr_measure_steps
  }

  f = File.new(dir_osw_out, "w")
  f.write(JSON.pretty_generate(hash_osw))
  f.close
  return dir_osw_out
end


def run_single_osw(str_os_command, dir_osw)
  command = "#{str_os_command} run -w '#{dir_osw}'"
  puts command
  system command
end

def run_osws(str_os_command, v_osw_paths, number_of_threads)
    n = v_osw_paths.length
    Parallel.each_with_index(v_osw_paths, :in_threads => number_of_threads) do |osw_path, index|
      puts "Running #{index+1}/#{n}"
      command = "#{str_os_command} run -w '#{osw_path}'"
      puts command
      system command
    end
end


################################################################################
# Create a reference model
dir_test = 'C:/Users/hlee9/Documents/GitHub/DOE_SDI/Energy_Flexibility/simulations/med_2A_precool_preheat'
dir_model, str_model_name = create_single_osm(
  building_type = 'MediumOfficeDetailed',
  # building_type = 'SmallOffice',
  vintage = '90.1-2010',
  climate_zone = 'ASHRAE 169-2006-2A',
  dir_folder_working = dir_test,
  dir_folder_final = dir_test
)


# # Create a single osw
# dir_model = 'C:/Users/hlee9/Documents/GitHub/utility/create_OpenStudio_workflow/tests'
# str_model_name = 'MediumOfficeDetailed_90.1-2010_ASHRAE 169-2006-5A'

dir_baseline_osw = create_single_osw(
  dir_osm = File.join(dir_model, "#{str_model_name}.osm"),
  dir_epw = File.join(dir_model, "#{str_model_name}.epw"),
  dir_measures = 'C:/Users/hlee9/Documents/GitHub/OS-measures', 
  arr_measure_steps = MeasureSteps::STEP_OPTIONS['baseline'],
  dir_osw_out = File.join(dir_model, 'baseline', "#{str_model_name}.osw"),
)

dir_flexible_osw = create_single_osw(
  dir_osm = File.join(dir_model, "#{str_model_name}.osm"),
  dir_epw = File.join(dir_model, "#{str_model_name}.epw"),
  dir_measures = 'C:/Users/hlee9/Documents/GitHub/OS-measures', 
  arr_measure_steps = MeasureSteps::STEP_OPTIONS['flexibility'], 
  dir_osw_out = File.join(dir_model, 'flexible', "#{str_model_name}.osw"),
)

# Run the osw(s)
arr_osws = [dir_baseline_osw, dir_flexible_osw]
run_osws('os291', arr_osws, 2)
# run_single_osw('os291', dir_baseline_osw)
# run_single_osw('os291', dir_flexible_osw)
