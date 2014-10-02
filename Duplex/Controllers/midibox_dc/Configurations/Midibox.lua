--[[----------------------------------------------------------------------------
-- Duplex.Mackie-Control
----------------------------------------------------------------------------]]--
 
duplex_configurations:insert {
 
  -- configuration properties
  name = "Mixer + Transport",
  pinned = true,
 
  -- device properties
  device = {
    class_name = "MidiboxDC",          
    display_name = "midibox_dc",
    device_port_in = "",
    device_port_out = "",
    control_map = "Controllers/midibox_dc/Controlmaps/midibox_dc.xml",
    thumbnail = "",
    protocol = DEVICE_PROTOCOL.MIDI
  },
 
  applications = {
    Mixer = {
      mappings = {
        solo = {
          group_name = "Select2",
        },
        mute = {
          group_name = "Select1",
        },
        panning = {
          group_name = "ENC6a",
        },
       
        levels = {
          group_name = "Faders",
        },
      },
      options = {
        invert_mute = 1,
        follow_track = 1,
        take_over_volumes = 2,
      }
    },
   
    Transport = {
      mappings = {
       
        goto_previous = {
          group_name = "Transport",
          index = 5,
        },
        goto_next = {
          group_name = "Transport",
          index = 4,
        },
        stop_playback = {
          group_name = "Transport",
          index = 3,
        },
        start_playback = {
          group_name = "Transport",
          index = 2,
        },
        edit_mode = {
          group_name = "Transport",
          index = 1,
        },
        loop_pattern = {
          group_name = "Transport",
          index = 6,
        },
        block_loop = {
          group_name = "Transport",
          index = 7,
        },
        metronome_toggle = {
          group_name = "Transport",
          index = 8,
        },
      },
      options = {
      }
    },
   
    TrackSelector = {
      mappings = {
        select_track = {
          group_name = "Select5",
          index = 1,
        },
        prev_page = {
          group_name = "Function2",
          index = 1,
        },
        next_page = {
          group_name = "Function2",
          index = 2,
        },
      },
      options = {
      },
    },

    Effect = {
      mappings = {
        parameters = {
          group_name= "ENC345a",
        },
        device_prev = {
          group_name = "Function2",
          index = 7
        },
        device_next = {
          group_name = "Function2",
          index = 8
        },
        device = {
          group_name = "Select4_3",
        }
      }
    },

  }
}