data:extend(
{
  {
    type = "fluid",
    name = "sea-water",
    default_temperature = 5,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0.64, b=0.6},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__base__/graphics/icons/fluid/water.png",
    order = "a[fluid]-a[water]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  }
}
)
