--[[----------------------------------------------------------------------------
-- Duplex.Launchpad 
----------------------------------------------------------------------------]]--

duplex_configurations:insert {

  -- configuration properties
  name = "TestPad",
  pinned = true,
  
  -- device properties
  device = {
    class_name = "Launchpad",
    display_name = "Launchpad",
    device_port_in = "Launchpad",
    device_port_out = "Launchpad",
    control_map = "Controllers/Launchpad/Controlmaps/Launchpad_TestPad.xml",
    thumbnail = "Controllers/Launchpad/Launchpad.bmp",
    protocol = DEVICE_PROTOCOL.MIDI,
  },

  applications = {

    --[[
    TestPad = {
      mappings = {

      },
    },
    ]]
    PatternCursor = {
      mappings = {
        prev_line_editstep = {
          group_name = "Controls2",
          index = 1,
        },
        next_line_editstep = {
          group_name = "Controls2",          
          index = 2,
        }
      }
    },
    Mixer = {
      mappings = {
        levels = {
          group_name = "Grid",
        },
        mute = {
          group_name = "Grid",
        },
        solo = {
          group_name = "Grid",
        },
        master = {
          group_name = "Grid",
        },
        --[[
        page = {
          group_name = "Controls",
          index = 3
        },
        ]]
      },

    },

    
    Effect = {
      mappings = {
        parameters = {
          group_name= "Grid2",
        },
        param_prev = {
          group_name = "Controls2",
          index = 3,
        },
        param_next = {
          group_name = "Controls2",
          index = 4,
        },
        device = {
          group_name = "Triggers2",
        },
      },
    },

  }
}

