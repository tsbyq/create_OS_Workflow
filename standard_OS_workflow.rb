# # Change to the path where OS is installed
require 'C:/openstudio-2.9.1/Ruby/openstudio.rb'
require 'C:/Users/hlee9/Documents/GitHub/OpenStudio_related/openstudio-standards/lib/openstudio-standards.rb'
require 'fileutils'
require 'parallel'
require 'json'
require 'time'
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
# Demonstration
# Create a reference model
str_climate = '2A'
dir_test = "C:/Users/hlee9/Documents/GitHub/DOE_SDI/Energy_Flexibility/simulations/med_#{str_climate}_precondition"
dir_model, str_model_name = create_single_osm(
  building_type = 'MediumOfficeDetailed',
  # building_type = 'SmallOffice',
  vintage = '90.1-2010',
  climate_zone = "ASHRAE 169-2006-#{str_climate}",
  dir_folder_working = dir_test,
  dir_folder_final = dir_test
)


# # Create a single osw
dir_model = dir_test
str_model_name = "MediumOfficeDetailed_90.1-2010_ASHRAE 169-2006-#{str_climate}"

# dir_baseline_osw = create_single_osw(
#   dir_osm = File.join(dir_model, "#{str_model_name}.osm"),
#   dir_epw = File.join(dir_model, "#{str_model_name}.epw"),
#   dir_measures = 'C:/Users/hlee9/Documents/GitHub/OS-measures', 
#   arr_measure_steps = MeasureSteps::STEP_OPTIONS['baseline'],
#   dir_osw_out = File.join(dir_model, 'baseline', "#{str_model_name}.osw"),
# )

# dir_flexible_osw = create_single_osw(
#   dir_osm = File.join(dir_model, "#{str_model_name}.osm"),
#   dir_epw = File.join(dir_model, "#{str_model_name}.epw"),
#   dir_measures = 'C:/Users/hlee9/Documents/GitHub/OS-measures', 
#   arr_measure_steps = MeasureSteps::STEP_OPTIONS['flexibility'], 
#   dir_osw_out = File.join(dir_model, 'flexible', "#{str_model_name}.osw"),
# )
# 
# # Run the osw(s)
# arr_osws = [dir_baseline_osw, dir_flexible_osw]
# # run_osws('os291', arr_osws, 2)
# # run_single_osw('os291', dir_baseline_osw)
# # run_single_osw('os291', dir_flexible_osw)
# puts arr_osws
################################################################################
# ---------------------------------------------------------------------------- #
# Pre-condition case
pre_condition_start_times = ["6:00", "6:10", "6:20", "6:30", "6:40", "6:50", "7:00", "7:10", "7:20", "7:30", "7:40", "7:50", "8:00", "8:10", "8:20", "8:30", "8:40", "8:50", "9:00", "9:10", "9:20", "9:30", "9:40", "9:50", "10:00", "10:10", "10:20", "10:30", "10:40", "10:50", "11:00", "11:10", "11:20", "11:30", "11:40", "11:50", "12:00", "12:10", "12:20", "12:30", "12:40", "12:50", "13:00", "13:10", "13:20", "13:30", "13:40", "13:50", "14:00", "14:10", "14:20", "14:30", "14:40", "14:50", "15:00", "15:10", "15:20", "15:30", "15:40", "15:50", "16:00", "16:10", "16:20", "16:30", "16:40", "16:50", "17:00", "17:10", "17:20", "17:30", "17:40", "17:50", "18:00", "18:10", "18:20", "18:30", "18:40", "18:50", "19:00", "19:10", "19:20", "19:30", "19:40", "19:50", "20:00", "20:10", "20:20", "20:30", "20:40", "20:50", "21:00", "21:10", "21:20", "21:30", "21:40", "21:50", "22:00", "22:10", "22:20", "22:30", "22:40", "22:50", "23:00", "23:10", "23:20", "23:30", "23:40", "23:50", "0:00", "0:10", "0:20", "0:30", "0:40", "0:50", "1:00", "1:10", "1:20", "1:30", "1:40", "1:50", "2:00", "2:10", "2:20", "2:30", "2:40", "2:50", "3:00", "3:10", "3:20", "3:30", "3:40", "3:50", "4:00", "4:10", "4:20", "4:30", "4:40", "4:50", "5:00", "5:10", "5:20", "5:30", "5:40", "5:50", "6:00", "6:10", "6:20", "6:30", "6:40", "6:50", "7:00", "7:10", "7:20", "7:30", "7:40", "7:50", "8:00", "8:10", "8:20", "8:30", "8:40", "8:50", "9:00", "9:10", "9:20", "9:30", "9:40", "9:50", "10:00", "10:10", "10:20", "10:30", "10:40", "10:50", "11:00", "11:10", "11:20", "11:30", "11:40", "11:50", "12:00", "12:10", "12:20", "12:30", "12:40", "12:50", "13:00", "13:10", "13:20", "13:30", "13:40", "13:50", "14:00", "14:10", "14:20", "14:30", "14:40", "14:50", "15:00", "15:10", "15:20", "15:30", "15:40", "15:50", "16:00", "16:10", "16:20", "16:30", "16:40", "16:50", "17:00", "17:10", "17:20", "17:30", "17:40", "17:50", "18:00"]
pre_condition_start_times = ["6:00", "6:30", "7:00", "7:30", "8:00", "8:30", "9:00", "9:30", "10:00", "10:30", "11:00", "11:30", "12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00", "16:30", "17:00", "17:30", "18:00"]
# pre_condition_start_times = ["6:00", "6:30"]
pre_condition_durations = [1, 2, 3]
arr_osws = []

dir_baseline_osw = create_single_osw(
  dir_osm = File.join(dir_model, "#{str_model_name}.osm"),
  dir_epw = File.join(dir_model, "#{str_model_name}.epw"),
  dir_measures = 'C:/Users/hlee9/Documents/GitHub/OS-measures', 
  arr_measure_steps = MeasureSteps::STEP_OPTIONS['baseline'],
  dir_osw_out = File.join(dir_model, 'baseline', "#{str_model_name}.osw"),
)

arr_osws << dir_baseline_osw

pre_condition_start_times.each_with_index do |str_start, i|
  t_start =  Time.strptime(str_start, "%H:%M")
  pre_condition_durations.each do |hr_duration|
    t_end =  Time.strptime(str_start, "%H:%M") + (hr_duration*3600)
    str_end = t_end.strftime("%H:%M")
    puts '- ' * 50
    puts "start = #{str_start}, end = #{str_end}"
    str_s = str_start.gsub(":", '')
    str_e = str_end.gsub(":", '')
    dir_precondition_osw = create_single_osw(
      dir_osm = File.join(dir_model, "#{str_model_name}.osm"),
      dir_epw = File.join(dir_model, "#{str_model_name}.epw"),
      dir_measures = 'C:/Users/hlee9/Documents/GitHub/OS-measures', 
      arr_measure_steps = MeasureSteps::compose_precooling_heating_options(str_start, str_end),
      dir_osw_out = File.join(dir_model, "precondition_#{str_s}_#{str_e}", "#{str_model_name}.osw"),
    )
    arr_osws << dir_precondition_osw
  end
end

File.open(File.join(dir_test, "pre_condition.json"), "w") do |f|
   f.write(arr_osws.to_json)
end
# ---------------------------------------------------------------------------- #