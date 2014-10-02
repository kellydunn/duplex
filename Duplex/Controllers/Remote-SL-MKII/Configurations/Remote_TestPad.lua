
duplex_configurations:insert {

  -- configuration properties
  name = "Remote TestPad",
  pinned = true,

  -- device properties
  device = {
    class_name = nil,          
    display_name = "Remote SL MKII Automap",
    device_port_in = "Automap MIDI",
    device_port_out = "Automap MIDI",
    control_map = "Controllers/Remote-SL-MKII/Controlmaps/Remote_TestPad.xml",
    thumbnail = "Controllers/Remote-SL-MKII/Remote-SL-MKII.bmp",
    protocol = DEVICE_PROTOCOL.MIDI,
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
        --[[
        ]]
        slider = {
          group_name = "sliders_1",
          index = 2,
        },
        slider_2 = {
          group_name = "sliders_2",
          index = 2,
        },
        slider_3 = {
          group_name = "sliders_3",
          index = 2,
        },
        slider_4 = {
          group_name = "sliders_abc",
          index = 2,
        },
        slider_5 = {
          group_name = "sliders_abc", 
          index = 3,
        },
        slider_6 = {
          group_name = "sliders_abc", 
          index = 4,
        },
        slider_7 = {
          group_name = "sliders_pb", 
          index = 1,
        },
        slider_8 = {
          group_name = "sliders_pb", 
          index = 2,
        },
        slider_9 = {
          group_name = "sliders_pb", 
          index = 3,
        },

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
        --[[
        ]]

      }
    },


  }
}

