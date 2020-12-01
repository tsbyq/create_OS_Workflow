module MeasureSteps
  arr_steps_baseline = [
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Mean Air Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermostat Heating Setpoint Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermostat Cooling Setpoint Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone People Occupant Count","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Electricity:Facility","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Gas:Facility","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Mean Air Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermostat Heating Setpoint Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermostat Cooling Setpoint Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone People Occupant Count","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Electricity:Facility","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Gas:Facility","reporting_frequency"=>"Zone Timestep"}}
  ]

  arr_steps_synthetic_operation_data = [
    {"arguments"=> {},"measure_dir_name"=> "Occupancy_Simulator_Office"},
    {"arguments"=> {},"measure_dir_name"=> "create_lighting_schedule_from_occupant_count"},
    {"arguments"=> {},"measure_dir_name"=> "create_mels_schedule_from_occupant_count"},
    {"arguments"=> {},"measure_dir_name"=> "update_hvac_setpoint_schedule"},
    {"arguments"=> {},"measure_dir_name"=> "add_demand_controlled_ventilation"},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Site Outdoor Air Drybulb Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Site Outdoor Air Dewpoint Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Site Outdoor Air Wetbulb Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Site Outdoor Air Relative Humidity","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Site Horizontal Infrared Radiation Rate per Area","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Site Day Type Index","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"System Node Pressure","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"System Node Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"System Node Mass Flow Rate","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"System Node Relative Humidity","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"System Node Relative Humidity","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Mean Air Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Air Relative Humidity","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermostat Heating Setpoint Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermostat Cooling Setpoint Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Air System Outdoor Air Economizer Status","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Air Terminal VAV Damper Position","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone People Occupant Count","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Electric Equipment Electric Power","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Lights Electric Power","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Fan Electric Power","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Fan Air Mass Flow Rate","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Pump Electric Power","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Pump Mass Flow Rate","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Mechanical Ventilation Mass Flow Rate","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"InteriorLights:Electricity","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"InteriorEquipment:Electricity","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Fans:Electricity","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"ExteriorLights:Electricity","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Heating:Electricity","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Cooling:Electricity","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Gas:HVAC","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Electricity:HVAC","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Pumps:Electricity","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Electricity:Facility","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Gas:Facility","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Site Outdoor Air Drybulb Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Site Outdoor Air Dewpoint Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Site Outdoor Air Wetbulb Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Site Outdoor Air Relative Humidity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Site Horizontal Infrared Radiation Rate per Area","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Site Day Type Index","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"System Node Pressure","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"System Node Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"System Node Mass Flow Rate","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"System Node Relative Humidity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"System Node Relative Humidity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Mean Air Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Air Relative Humidity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermostat Heating Setpoint Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermostat Cooling Setpoint Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Air System Outdoor Air Economizer Status","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Air Terminal VAV Damper Position","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone People Occupant Count","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Electric Equipment Electric Power","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Lights Electric Power","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Fan Electric Power","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Fan Air Mass Flow Rate","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Pump Electric Power","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Pump Mass Flow Rate","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Mechanical Ventilation Mass Flow Rate","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"InteriorLights:Electricity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"InteriorEquipment:Electricity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Fans:Electricity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"ExteriorLights:Electricity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Heating:Electricity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Cooling:Electricity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Gas:HVAC","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Electricity:HVAC","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Pumps:Electricity","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Electricity:Facility","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Gas:Facility","reporting_frequency"=>"Zone Timestep"}}
  ]

  arr_steps_flexibility = [
    {"measure_dir_name"=>"dr_hvac","arguments"=>{}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Mean Air Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermostat Heating Setpoint Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermostat Cooling Setpoint Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone People Occupant Count","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Electricity:Facility","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Gas:Facility","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Mean Air Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermostat Heating Setpoint Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermostat Cooling Setpoint Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone People Occupant Count","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Electricity:Facility","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Gas:Facility","reporting_frequency"=>"Zone Timestep"}}
  ]



  STEPS = {
    'synthetic operation data' => arr_steps_synthetic_operation_data,
    'flexibility' => arr_steps_flexibility,
    'baseline' => arr_steps_baseline,
  }
end
