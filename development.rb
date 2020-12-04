# # Change to the path where OS is installed
# require 'C:/openstudio-2.9.1/Ruby/openstudio.rb'
# require 'C:/Users/hlee9/Documents/GitHub/OpenStudio_related/openstudio-standards/lib/openstudio-standards.rb'
# require 'fileutils'
# require 'parallel'
require 'json'
require 'time'
require './measure_steps.rb'

arr_measure_steps = MeasureSteps::STEP_OPTIONS['flexibility']

# puts MeasureSteps::compose_options('Pre-cooling & Pre-heating')
# puts MeasureSteps::compose_precooling_heating_options("11:00", "13:00")
# puts MeasureSteps::compose_precooling_heating_options("10:00", "14:00")


pre_condition_start_times = ["6:00", "6:30", "7:00", "7:30", "8:00", "8:30", "9:00", "9:30", "10:00", "10:30", "11:00", "11:30", "12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00", "16:30", "17:00", "17:30", "18:00"]
pre_condition_durations = [1, 2, 3]

pre_condition_start_times.each_with_index do |str_start, i|
  t_start =  Time.strptime(str_start, "%H:%M")
  pre_condition_durations.each do |hr_duration|
    t_end =  Time.strptime(str_start, "%H:%M") + (hr_duration*3600)
    str_end = t_end.strftime("%H:%M")
    puts '- ' * 50
    puts "start = #{str_start}, end = #{str_end}"
    puts MeasureSteps::compose_precooling_heating_options(str_start, str_end)
  end
  
end

