--[[----------------------------------------------------------------------------
-- Duplex.Monome 
----------------------------------------------------------------------------]]--

duplex_configurations:insert {

  -- configuration properties
  name = "Monome TestPad",
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
        label = {
          group_name = "label",
          index = 1,
        },
        pad = {
          group_name = "pad",
          index = 2,
        },
        slider = {
          group_name = "slider_buttons",
          orientation = ORIENTATION.VERTICAL,
          index = 2,
          size = 4,
        },
        --[[
        slider = {
          group_name = "slider",
        },
        ]]

        switcher = {
          group_name = "switcher",
          --index = 1,
        },

        set_pos = {
          group_name = "options",
          index = 1,
        },
        set_group = {
          group_name = "options",
          index = 2,
        },
        set_size = {
          group_name = "options",
          index = 3,
        },
        set_active = {
          group_name = "options",
          index = 4,
        },

      }
    },


  }
}

