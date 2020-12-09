module MeasureSteps

  ARR_STEPS_SYNTHETIC_OPERATION_DATA = [
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

  ARR_STEPS_BASELINE = [
    {"arguments"=> {},"measure_dir_name"=> "Occupancy_Simulator_Office_fixed_seed"},
    {"arguments"=> {},"measure_dir_name"=> "create_lighting_schedule_from_occupant_count"},
    {"arguments"=> {},"measure_dir_name"=> "create_mels_schedule_from_occupant_count"},
    {"arguments"=> {},"measure_dir_name"=> "update_hvac_setpoint_schedule"},
    {"arguments"=> {},"measure_dir_name"=> "add_demand_controlled_ventilation"},
    {"arguments"=> {},"measure_dir_name"=> "pmv_bcl"},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Mean Air Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermostat Heating Setpoint Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermostat Cooling Setpoint Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone People Occupant Count","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Facility Total Electric Demand Power","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermal Comfort Fanger Model PMV","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Thermal Comfort Fanger Model PPD","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddOutputVariable","arguments"=>{"variable_name"=>"Zone Operative Temperature","key_value"=>"*","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Electricity:Facility","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"AddMeter","arguments"=>{"meter_name"=>"Gas:Facility","reporting_frequency"=>"timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Mean Air Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermostat Heating Setpoint Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermostat Cooling Setpoint Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone People Occupant Count","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Facility Total Electric Demand Power","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermal Comfort Fanger Model PMV","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Thermal Comfort Fanger Model PPD","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportVariabletoCSV","arguments"=>{"variable_name"=>"Zone Operative Temperature","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Electricity:Facility","reporting_frequency"=>"Zone Timestep"}},
    {"measure_dir_name"=>"ExportMetertoCSV","arguments"=>{"meter_name"=>"Gas:Facility","reporting_frequency"=>"Zone Timestep"}}
  ]


  ARR_STEPS_FLEXIBILITY = [
    # {"measure_dir_name"=>"dr_hvac","arguments"=>{}},
    # {"measure_dir_name"=>"DR_GTA","arguments"=>{}},
    {"measure_dir_name"=>"dr_precool_preheat","arguments"=>{}},
  ] + ARR_STEPS_BASELINE




  STEP_OPTIONS = {
    'synthetic operation data' => ARR_STEPS_SYNTHETIC_OPERATION_DATA,
    'flexibility' => ARR_STEPS_FLEXIBILITY,
    'baseline' => ARR_STEPS_BASELINE,
  }


  FLEXIBLE_MEASURES = {
    "Pre-cooling & Pre-heating" => {
        "measure_dir_name"=>"~Pre-cooling_heating for Specific Temperature Setpoints and Time Period",
        "arguments"=>{"starttime"=>"11:00", "endtime"=>"14:59:00"}
    },
  }


  def self.compose_precooling_heating_options(str_start, str_end)
    return [
      {
        "measure_dir_name"=>"~Pre-cooling_heating for Specific Temperature Setpoints and Time Period",
        "arguments"=>{"starttime"=>str_start, "endtime"=>str_end}
      }
    ] + ARR_STEPS_BASELINE
  end

end
