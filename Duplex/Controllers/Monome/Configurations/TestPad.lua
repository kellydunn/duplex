--[[----------------------------------------------------------------------------
-- Duplex.Monome 
----------------------------------------------------------------------------]]--

duplex_configurations:insert {

  -- configuration properties
  name = "TestPad",
  pinned = true,

  -- device properties
  device = {
    class_name = "Monome",
    display_name = "Monome 128",
    device_prefix = "/duplex",
    device_address = "127.0.0.1",
    device_port_in = "8002",
    device_port_out = "8082",
    control_map = "Controllers/Monome/Controlmaps/m128_TestPad.xml",
    thumbnail = "Controllers/Monome/Monome.bmp",
    protocol = DEVICE_PROTOCOL.OSC,
  },
  applications = {
    TestPad = {
      mappings = {
        xy_pad = {
          group_name = "ADC",
          index = 1,
        },
        label_x = {
          group_name = "Labels",
          index = 1,
        },
        label_y = {
          group_name = "Labels",
          index = 2,
        },
        slider_x = {
          group_name = "SliderX",
          index = 1,
        },
        slider_y = {
          group_name = "SliderY",
          index = 1,
        },
      }
    },


  }
}

