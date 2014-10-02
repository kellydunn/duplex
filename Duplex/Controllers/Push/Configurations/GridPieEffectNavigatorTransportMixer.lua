--[[----------------------------------------------------------------------------
-- Duplex.Push
----------------------------------------------------------------------------]]--

-- setup "GridPie + Effect + Navigator + Transport + Mixer",

duplex_configurations:insert {

  -- configuration properties
  name = "Transport",
  pinned = true,
  
  -- device properties
  device = {
    class_name = "Push",
    display_name = "Push",
    device_port_in = "Ableton Push MIDI 1",
    device_port_out = "Ableton Push MIDI 1",
    control_map = "Controllers/Push/Controlmaps/Push.xml",
    protocol = DEVICE_PROTOCOL.MIDI,
  },

  applications = {
    Transport = {
      mappings = {
        metronome_toggle = {
          group_name = "Tempo",
          index = 1,
        },
        edit_mode = {
           group_name = "Transport",
           index = 1,
        },
        start_playback = {
           group_name = "Transport",
           index = 2,
        },
      },
      options = {
         pattern_play = 3,
      },
    },
    GridPie = {
      mappings = {
        grid = {
          group_name = "Pads",
        },
      },
    },
  },
}
