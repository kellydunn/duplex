duplex_configurations:insert {

  -- configuration properties
  name = "Mixer, GridPie & Effects",
  pinned = true,

  -- device properties
  device = {
    class_name = "OhmRGB",          
    display_name = "OhmRGB",
    device_port_in = "OhmRGB MIDI 1",
    device_port_out = "OhmRGB MIDI 1",
    control_map = "Controllers/OhmRGB/Controlmaps/OhmRGB.xml",
    thumbnail = "Controllers/OhmRGB/OhmRGB.bmp",
    protocol = DEVICE_PROTOCOL.MIDI
  },
  
  applications = {
    Mixer = {
      mappings = {
        panning = {
          group_name = "Panning_*",
        },
        levels = {
          group_name = "Volume_*",
        },
        mute = {
          group_name = "Buttons_*",
        },
      },
      options = {
        invert_mute = 1,
        follow_track = 1,
        page_size = 5,
      }
    },

    GridPie = {
      mappings = {
        grid = {
          group_name = "Grid",
        },
        v_prev = {
          group_name = "Grid2",
          index = 1,
        },
        v_next = {
          group_name = "Grid2",
          index = 2,
        },
        h_prev = { 
          group_name = "Grid2",
          index = 3,
        },
        h_next = {
          group_name = "Grid2",
          index = 4,
        },
      },
      options = {
        v_step = 5,     -- every 4th
        h_step = 3,     -- every 2nd
        follow_pos = 2, -- disable follow
      },
      palette = {
        -- pattern matrix
        out_of_bounds       = { color={0x00,0x00,0x00}},
        slot_empty          = { color={0x00,0x00,0x00}},
        slot_empty_muted    = { color={0x00,0x00,0x00}},
        slot_filled         = { color={0xff,0xff,0x00}},
        slot_filled_muted   = { color={0xff,0x00,0x00}},
        slot_master_filled  = { color={0xff,0xff,0x00}},
        slot_master_empty   = { color={0xff,0x00,0x00}},
        -- pattern sequence (buttonstrip)
        trigger_active      = { color={0xff,0xff,0xff}},
        trigger_loop        = { color={0x00,0xff,0xff}},
        trigger_back        = { color={0x00,0x00,0x00}},
        -- pattern sequence navigation (prev/next)
        --[[
        prev_seq_on         = { color={0xFF,0xFF,0xFF}},
        prev_seq_off        = { color={0x00,0x00,0x00}},
        next_seq_on         = { color={0xFF,0xFF,0xFF}},
        next_seq_off        = { color={0x00,0x00,0x00}},
        -- track navigation (prev/next)
        prev_track_on       = { color={0xFF,0xFF,0xFF}},
        prev_track_off      = { color={0x00,0x00,0x00}},
        next_track_on       = { color={0xFF,0xFF,0xFF}},
        next_track_off      = { color={0x00,0x00,0x00}},
        ]]
      
      }
    },

    --[[
    Effect = {
      mappings = {
        parameters = {
          group_name= "EncodersEffect",
        },
        param_prev = {
          group_name = "ControlsRight",
          index = 5,
        },
        param_next = {
          group_name = "ControlsRight",
          index = 6,
        },
      }
    },

    Transport = {
      mappings = {
        goto_previous = {
          group_name = "CrossFader",
          index = 1,
        },
        goto_next = {
          group_name = "CrossFader",
          index = 3,
        },
        start_playback = {
          group_name = "BigButton",
          index = 1,
        },        
      },
      options = {
        pattern_play = 3,
      }
    },
    ]]

  }
}



