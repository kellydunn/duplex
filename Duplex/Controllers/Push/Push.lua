--[[----------------------------------------------------------------------------
-- Duplex.Push
----------------------------------------------------------------------------]]--

--[[

Inheritance: Push > MidiDevice > Device

Device class for the Ableton Push

--]]


--==============================================================================

class "Push" (MidiDevice)

function Push:__init(display_name, message_stream, port_in, port_out)
  TRACE("Push:__init", display_name, message_stream, port_in, port_out)

  MidiDevice.__init(self, display_name, message_stream, port_in, port_out)

  -- set device to "mode 0" (Ableton native mode)
  self:send_sysex_message(240,71,127,21,  98,0,1, 0)

  -- define a default colorspace
  self.colorspace = {1, 1, 1}

end

function Push:point_to_value(pt,elm,ceiling)

   if (pt.pushcolor) then
      return pt.pushcolor
   else
      return MidiDevice:point_to_value(pt,elm,ceiling)
   end

end
