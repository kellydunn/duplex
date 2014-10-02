--[[----------------------------------------------------------------------------
-- Duplex.Launchpad 
----------------------------------------------------------------------------]]--

duplex_configurations:insert {

  -- configuration properties
  name = "UIButtonTest",
  pinned = true,
  
  -- device properties
  device = {
    class_name = "Launchpad",
    display_name = "Launchpad",
    device_port_in = "Launchpad",
    device_port_out = "Launchpad",
    control_map = "Controllers/Launchpad/Controlmaps/Launchpad.xml",
    thumbnail = "Controllers/Launchpad/Launchpad.bmp",
    protocol = DEVICE_PROTOCOL.MIDI,
  },

  applications = {

    UIButtonTest = {
      mappings = {
        toggle = {
          group_name = "Controls",
          index = 1,
        },
      }
    },

  }
}

