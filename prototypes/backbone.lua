-- Research
data:extend(
{

  {
    type = "technology",
    name = "factory-backbone",
    icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon-128.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "factory-backbone"
      },
	  {
        type = "unlock-recipe",
        recipe = "factory-backbone-2"
      }
    },
    prerequisites = {"electric-energy-distribution-2", "optics", "logistic-robotics", "construction-robotics", "advanced-electronics-2"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-e-d"
  }

}
)
-- Factory Backbone Recipe
data:extend(
{
  {
    type = "recipe",
    name = "factory-backbone",
    icon_size = 32,
	enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {"processing-unit", 10},
      {"steel-plate", 15},
	  {"small-lamp", 5},
	  {"battery", 5}
    },
    result = "factory-backbone",

    icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon.png",

  },
  
    {
    type = "recipe",
    name = "factory-backbone-2",
    icon_size = 32,
	enabled = "false",
    energy_required = 60,
    ingredients =
    {
      {"processing-unit", 10},
      {"steel-plate", 15},
	  {"small-lamp", 5},
	  {"radar", 1}
    },
    result = "factory-backbone-2",

    icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon-2.png",

  }
  
}
)
-- Items
data:extend(
{

  {
    type = "item",
    name = "factory-backbone",
    icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon.png",
    icon_size = 32,
	--flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-e[factory-backbone]",
    place_result = "factory-backbone",
    stack_size = 50
  },
  {
		type = "item",
		name = "backbone-light",
		icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon.png",
		icon_size = 32,
		flags = {"hidden"},
		subgroup = "energy",
		order = "a[energy]-e[factory-backbone]",
		place_result = "backbone-light",
		stack_size = 50
   },
	{
		type = "item",
		name = "backbone-logistics",
		icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon.png",
		icon_size = 32,
		flags = {"hidden"},
		subgroup = "energy",
		order = "a[energy]-e[factory-backbone]",
		place_result = "backbone-logistics",
		stack_size = 50
	},
	{
	    type = "item",
    name = "factory-backbone-2",
    icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon-2.png",
    icon_size = 32,
	--flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-e[factory-backbone]",
    place_result = "factory-backbone-2",
    stack_size = 50
  },
  {
		type = "item",
		name = "backbone-light-2",
		icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon-2.png",
		icon_size = 32,
		flags = {"hidden"},
		subgroup = "energy",
		order = "a[energy]-e[factory-backbone]",
		place_result = "backbone-light-2",
		stack_size = 50
   },
	{
		type = "item",
		name = "backbone-logistics-2",
		icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon-2.png",
		icon_size = 32,
		flags = {"hidden"},
		subgroup = "energy",
		order = "a[energy]-e[factory-backbone]",
		place_result = "backbone-logistics-2",
		stack_size = 50
	},
	{
		type = "item",
		name = "backbone-radar",
		icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon-2.png",
		icon_size = 32,
		flags = {"hidden"},
		subgroup = "energy",
		order = "a[energy]-e[factory-backbone]",
		place_result = "backbone-radar",
		stack_size = 50
	}
	
 }
)
-- Entities
data:extend(
{
  {
    type = "electric-pole",
    name = "factory-backbone",
	icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon.png",
    icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 1.5, result = "factory-backbone"},
    max_health = 350,
    corpse = "small-remnants",
    track_coverage_during_build_by_moving = true,
	collision_box = {{-0.05, -0.05}, {0.05, 0.05}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -2.6}, {0.5, 0.5}},
    maximum_wire_distance = 50,
    supply_area_distance = 24.5,

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 1.0 },
    pictures =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/backbone.png",
      priority = "extra-high",
      width = 256,
      height = 256,
	  axially_symmetrical = false,
	  direction_count = 1,
	  scale = 0.45,
      shift = {0, -1.25},
    },
		connection_points =
		{
			{
				shadow =
				{
					copper = {0.6, -0.6},
					green = {0.6, -0.6},
					red = {0.6, -0.6}
				},
				wire =
				{
					copper = {0.6, -2.25},
					green = {0.6,-2.25},
					red = {0.6,-2.25}
				}
			},
		},

		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
			width = 12,
			height = 12
		}

	},
	
  {
    type = "lamp",
    name = "backbone-light",
    icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon.png",
    icon_size = 32,
	flags = {"placeable-neutral","placeable-off-grid", "not-blueprintable"},
    minable = {hardness = 0.2, mining_time = 5},
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.25, (-0.25)-0.5 }, {0.25, (0.25)-0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "lamp"
    },
    energy_usage_per_tick = "50KW",
    light = {intensity = 0.9, size = 160},
    light_when_colored = {intensity = 1, size = 6},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      priority = "medium",
      width = 1,
      height = 1,
	  axially_symmetrical = false,
	  direction_count = 1,
--      shift = {1, -0.75},
    },
    picture_on =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/backbonelighton.png",
      priority = "high",
      width = 256,
      height = 256,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  scale = 0.45,
      shift = {0, -1.25},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },

    circuit_wire_connection_point =
    {
      shadow =
      {
        green = {0.6, -0.6},
		red = {0.6, -0.6},
      },
      wire =
      {
        green = {0.6,-2.25},
		red = {0.6,-2.25},
      }
    },
 --   circuit_connector_sprites = get_circuit_connector_sprites({0.30, -0.50}, {0.30, -0.50}, 18),
    circuit_wire_max_distance = 50

  },

  {
    type = "roboport",
    name = "backbone-logistics",
    icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon.png",
    icon_size = 32,
	flags = {"placeable-neutral", "placeable-off-grid", "not-blueprintable"},
    minable = {hardness = 0.2, mining_time = 5},
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.25, -0.25}, {0.25, 0.25}},
	logistics_radius = 24.5,
    construction_radius = 50,
	energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
	  input_flow_limit = "75MW",
      buffer_capacity = "100MJ"
    },
	recharge_minimum = "5MJ",
    energy_usage = "50KW",
	charging_energy = "7.5MW",
	robot_slots_count = 0,
    material_slots_count = 0,
	charge_approach_distance = 5,
	charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5},
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 1.0 },
    base =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
--      shift = {1, -0.75}

    },
    base_animation =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      priority = "medium",
      width = 1,
      height = 1,
      frame_count = 1
    },
    base_patch =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
      frame_count = 1
    },
    door_animation_up =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
      frame_count = 1
    },
    door_animation_down =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
      frame_count = 1
    },
    recharging_animation =
    {
       filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
      frame_count = 1
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 1.75,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
	circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.6, -0.6},
        green = {0.6, -0.6},
      },
      wire =
      {
        green = {0.6,-2.25},
		red = {0.6,-2.25},
      }
    },
     circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = 50,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},

  },

  {
    type = "electric-pole",
    name = "factory-backbone-2",
	icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon-2.png",
    icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 1.5, result = "factory-backbone-2"},
    max_health = 750,
    corpse = "medium-remnants",
    track_coverage_during_build_by_moving = true,
	collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	-- selection_box = bottom left {{-1, -0}, {0, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    maximum_wire_distance = 64,
    supply_area_distance = 32,

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 1.0 },
    pictures =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/backbone-2.png",
      priority = "extra-high",
      width = 256,
      height = 256,
	  axially_symmetrical = false,
	  direction_count = 1,
	  scale = 0.9,
      shift = {0, -2.5},
    },
		connection_points =
		{
			{
				shadow =
				{
					copper = {1.5, -4.65},
					green = {1.5, -4.65},
					red = {1.5, -4.65}
				},
				wire =
				{
					copper = {1.5, -4.65},
					green = {1.5,-4.65},
					red = {1.5,-4.65}
				}
			},
		},
-- 1.5, -4.75
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
			width = 12,
			height = 12
		}

	},
	
  {
    type = "lamp",
    name = "backbone-light-2",
    icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon-2.png",
    icon_size = 32,
	flags = {"placeable-neutral","placeable-off-grid", "not-blueprintable"},
    minable = {hardness = 0.2, mining_time = 5},
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{-0, -0}, {0, 0}},
	selection_box = {{-1, -1}, {0, 0}},
    --selection_box = top left
    energy_source =
    {
      type = "electric",
      usage_priority = "lamp"
    },
    energy_usage_per_tick = "250KW",
    light = {intensity = 0.9, size = 160},
    light_when_colored = {intensity = 1, size = 6},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      priority = "medium",
      width = 1,
      height = 1,
	  axially_symmetrical = false,
	  direction_count = 1,
--      shift = {1, -0.75},
    },
    picture_on =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/backbonelighton.png",
      priority = "high",
      width = 256,
      height = 256,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  scale = 0.90,
      shift = {0, -2.5},
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },

    circuit_wire_connection_point =
    {
      shadow =
      {
        green = {1.5, -4.65},
		red = {1.5, -4.65},
      },
      wire =
      {
        green = {1.5,-4.65},
		red = {1.5,-4.65},
      }
    },
 --   circuit_connector_sprites = get_circuit_connector_sprites({0.30, -0.50}, {0.30, -0.50}, 18),
    circuit_wire_max_distance = 100

  },

  {
    type = "roboport",
    name = "backbone-logistics-2",
    icon = "__factory_backbone_jacobg__/graphics/icons/backbone-icon-2.png",
    icon_size = 32,
	flags = {"placeable-neutral", "placeable-off-grid", "not-blueprintable"},
    minable = {hardness = 0.2, mining_time = 5},
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{0, -0}, {0, 0}},
    selection_box = {{-0, -1}, {1, 0}},
	--selection_box = bottom right
	logistics_radius = 32,
    construction_radius = 64,
	energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
	  input_flow_limit = "75MW",
      buffer_capacity = "100MJ"
    },
	recharge_minimum = "5MJ",
    energy_usage = "50KW",
	charging_energy = "7.5MW",
	robot_slots_count = 2,
    material_slots_count = 2,
	charge_approach_distance = 15,
	charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5},
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 1.0 },
    base =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
--      shift = {1, -0.75}

    },
    base_animation =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      priority = "medium",
      width = 1,
      height = 1,
      frame_count = 1
    },
    base_patch =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
      frame_count = 1
    },
    door_animation_up =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
      frame_count = 1
    },
    door_animation_down =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
      frame_count = 1
    },
    recharging_animation =
    {
       filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
      frame_count = 1
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 1.75,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
	circuit_wire_connection_point =
    {
      shadow =
      {
        green = {1.5, -4.65},
		red = {1.5, -4.65},
      },
      wire =
      {
        green = {1.5,-4.65},
		red = {1.5,-4.65},
      }
    },
     circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = 100,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},

  },
    {
    type = "radar",
    name = "backbone-radar",
    icon = "__base__/graphics/icons/radar.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-off-grid", "not-blueprintable"},
    minable = {hardness = 0.2, mining_time = 5},
    max_health = 250,
    corpse = "radar-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{-0, -0}, {1, 1}},
	--selection_box = top right
    energy_per_sector = "1MJ",
    max_distance_of_sector_revealed = 1,
    max_distance_of_nearby_sector_revealed = 1,
    energy_per_nearby_scan = "2kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "30kW",
    integration_patch =
    {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      priority = "low",
      width = 1,
      height = 1,
      direction_count = 1,
      shift = util.by_pixel(1.5, 4),
      hr_version =
      {
        filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
        priority = "low",
        width = 1,
        height = 1,
        direction_count = 1,
        shift = util.by_pixel(1.5, 4),
        scale = 0.5
      }
    },
    pictures =
    {
      layers =
      {
        {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
	  direction_count = 1,
      frame_count = 1
    },
        {
      filename = "__factory_backbone_jacobg__/graphics/entity/blank.png",
      width = 1,
      height = 1,
	  direction_count = 1,
      frame_count = 1
    }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 0.5
    },
    radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
    rotation_speed = 0.01
  }

}
)

