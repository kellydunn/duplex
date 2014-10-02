--[[============================================================================
-- Duplex.Application.TestPad
============================================================================]]--

--[[--
An interactive demo of the various UIComponents.
Inheritance: @{Duplex.Application} > Duplex.Application.TestPad

--]]

--==============================================================================


class 'TestPad' (Application)

TestPad.available_mappings = {

  pad = {},
  label = {},
  slider = {}, 
  slider_2 = {}, 
  slider_3 = {}, 
  slider_4 = {}, 
  slider_5 = {}, 
  slider_6 = {}, 
  slider_7 = {}, 
  slider_8 = {}, 
  slider_9 = {}, 
  set_pos = {},
  set_group = {},
  set_size = {},
  set_active = {},

}

--------------------------------------------------------------------------------

--- Constructor method
-- @param (VarArg)
-- @see Duplex.Application

function TestPad:__init(...)
  TRACE("TestPad:__init()")

  self.current_ctrl = nil
  self.vb = renoise.ViewBuilder()

  self._controls = {}
  Application.__init(self,...)

end

--------------------------------------------------------------------------------

--- inherited from Application
-- @see Duplex.Application.start_app
-- @return bool or nil

function TestPad:start_app()
  TRACE("TestPad:start_app()")

  if not Application.start_app(self) then
    return
  end

  self.current_ctrl = self._controls.pad

  --self.display:set_active_state(false,"pad")
  --self.display:set_active_state(false,"slider_buttons")
  if self._controls.pad then
    self._controls.pad:enable()
  end

  if self._controls.slider then
    self._controls.slider:enable()
  end

  self:show_info()

end

--------------------------------------------------------------------------------

--- inherited from Application
-- @see Duplex.Application._build_app
-- @return bool

function TestPad:_build_app()
  TRACE("TestPad:_build_app()")

  -- UILabel

  local map = self.mappings.label
  if map.group_name then
    self._controls.label = UILabel(self,map)
  end


  -- UIPad

  local map = self.mappings.pad
  if map.group_name then
    local c = UIPad(self,map)
    c.ceiling = 1
    c.on_change = function(obj)
      local msg = self.display.device.message_stream.current_msg
      --print("Testpad - pad.on_change",obj,msg)
      self:show_info(c)
      renoise.app():show_status("state_ids: "..table.concat(msg.xarg.state_ids,","))
    end
    self._controls.pad = c
  end


  -- UISlider

  local map = self.mappings.slider
  if map.group_name then
    local c = UISlider(self,map)
    c.floor = -64
    c.ceiling = 64
    c.on_change = function(obj)
      --local msg = self.display.device.message_stream.current_msg
      --renoise.app():show_status("state_ids: "..table.concat(msg.xarg.state_ids,","))
      self:show_info(c)
    end
    c.on_press = function(obj)
      self:show_info(c)
    end
    self._controls.slider = c
  end

  local map = self.mappings.slider_2
  if map.group_name then
    local c = UISlider(self,map)
    c.floor = -64
    c.ceiling = 64
    c.on_change = function(obj)
      --local msg = self.display.device.message_stream.current_msg
      --renoise.app():show_status("state_ids: "..table.concat(msg.xarg.state_ids,","))
      self:show_info(c)
    end
    c.on_press = function(obj)
      self:show_info(c)
    end
    self._controls.slider_2 = c
  end

  local map = self.mappings.slider_3
  if map.group_name then
    local c = UISlider(self,map)
    c.floor = -64
    c.ceiling = 64
    c.on_change = function(obj)
      --local msg = self.display.device.message_stream.current_msg
      --renoise.app():show_status("state_ids: "..table.concat(msg.xarg.state_ids,","))
      self:show_info(c)
    end
    c.on_press = function(obj)
      self:show_info(c)
    end
    self._controls.slider_3 = c
  end

  local map = self.mappings.slider_4
  if map.group_name then
    local c = UISlider(self,map)
    c.floor = -64
    c.ceiling = 64
    c.on_change = function(obj)
      --local msg = self.display.device.message_stream.current_msg
      --print("slider_4 - "..tostring(obj.value)..", state_ids: "..table.concat(msg.xarg.state_ids,","))
    end
    self._controls.slider_4 = c
  end

  local map = self.mappings.slider_5
  if map.group_name then
    local c = UISlider(self,map)
    c.floor = -64
    c.ceiling = 64
    c.on_change = function(obj)
      --local msg = self.display.device.message_stream.current_msg
      --print("slider_5 - "..tostring(obj.value)..", state_ids: "..table.concat(msg.xarg.state_ids,","))
    end
    self._controls.slider_5 = c
  end

  local map = self.mappings.slider_6
  if map.group_name then
    local c = UISlider(self,map)
    c.floor = -64
    c.ceiling = 64
    c.on_change = function(obj)
      --local msg = self.display.device.message_stream.current_msg
      --print("slider_6 - "..tostring(obj.value)..", state_ids: "..table.concat(msg.xarg.state_ids,","))
    end
    self._controls.slider_6 = c
  end

  -- UIPitchBend

  local map = self.mappings.slider_7
  if map.group_name then
    local c = UIPitchBend(self,map)
    c.floor = -64
    c.ceiling = 64
    c.on_change = function(obj)
      --local msg = self.display.device.message_stream.current_msg
      --print("slider_7 - "..tostring(obj.value)..", state_ids: "..table.concat(msg.xarg.state_ids,","))
    end
    self._controls.slider_7 = c
  end

  local map = self.mappings.slider_8
  if map.group_name then
    local c = UIPitchBend(self,map)
    c.floor = -64
    c.ceiling = 64
    c.on_change = function(obj)
      --local msg = self.display.device.message_stream.current_msg
      --print("slider_8 - "..tostring(obj.value)..", state_ids: "..table.concat(msg.xarg.state_ids,","))
    end
    self._controls.slider_8 = c
  end

  local map = self.mappings.slider_9
  if map.group_name then
    local c = UIPitchBend(self,map)
    c.floor = -64
    c.ceiling = 64
    c.on_change = function(obj)
      --local msg = self.display.device.message_stream.current_msg
      --print("slider_9 - "..tostring(obj.value)..", state_ids: "..table.concat(msg.xarg.state_ids,","))
    end
    self._controls.slider_9 = c
  end

  -- Controls 

  local map = self.mappings.set_pos
  if map.group_name then
    local c = UIButton(self,map)
    c:set({text="Pos"})
    c:disable()
    c.on_press = function() 
      self:ctrl_set_pos()
    end
    self._controls.set_pos = c
  end

  local map = self.mappings.set_size
  if map.group_name then
    local c = UIButton(self,map)
    c:set({text="Size"})
    c:disable()
    c.on_press = function() 
      self:ctrl_set_size(c)
    end
    self._controls.set_size = c
  end

  local map = self.mappings.set_group
  if map.group_name then
    local c = UIButton(self,map)
    c:set({text="Group"})
    c:disable()
    c.on_press = function() 
      self:ctrl_set_group(c)
    end
    self._controls.set_group = c
  end

  return true

end

--------------------------------------------------------------------------------

function TestPad:ctrl_set_pos()
  TRACE("TestPad:ctrl_set_pos()")

  local ctrl = self.current_ctrl
  --print("ctrl",ctrl)

  local title = "Set UIComponent position"
  local buttons = {"OK","Cancel"}
  local content_view = self.vb.views.ctrl_set_pos

  if not content_view then
    content_view = self.vb:column{
      id = "ctrl_set_pos",
      --style = "group",
      margin = 10,
      self.vb:text{
        text = "Enter the index (1 value) or the x/y position (2 values)",
      },
      self.vb:textfield{
        id = "ctrl_set_pos_textfield",
        width = "100%",
      } 
    }
  end

  local textfield = self.vb.views.ctrl_set_pos_textfield
  textfield.value = ("%d,%d"):format(ctrl.x_pos,ctrl.y_pos)
  --print("textfield.value",textfield.value)

  local choice = renoise.app():show_custom_prompt(title, content_view, buttons)
  if (choice == "OK") then

    local values = table.create()
    for i,v in string.gmatch(textfield.value,"[%d]+") do 
      values:insert(tonumber(i)) 
    end

    --print("set values",rprint(values))

    if (#values == 1) then
      ctrl:set_pos(values[1])
    elseif (#values == 2) then
      ctrl:set_pos(values[1],values[2])
    end

  end
  

end

--------------------------------------------------------------------------------

function TestPad:ctrl_set_group()
  TRACE("TestPad:ctrl_set_group()")

  local ctrl = self.current_ctrl
  --print("ctrl",ctrl)

  local title = "Set UIComponent group name"
  local buttons = {"OK","Cancel"}
  local content_view = self.vb.views.ctrl_set_group

  if not content_view then
    content_view = self.vb:column{
      id = "ctrl_set_group",
      margin = 10,
      self.vb:text{
        text = "Enter the name of the group",
      },
      self.vb:textfield{
        id = "ctrl_set_group_textfield",
        width = "100%",
      } 
    }
  end

  local textfield = self.vb.views.ctrl_set_group_textfield
  textfield.value = ("%s"):format(ctrl.group_name)
  --print("textfield.value",textfield.value)

  local choice = renoise.app():show_custom_prompt(title, content_view, buttons)
  if (choice == "OK") then

    if not (textfield.value == "") then
      ctrl:set_group(textfield.value)
    end

  end
  

end

--------------------------------------------------------------------------------

function TestPad:ctrl_set_size(ctrl)
  TRACE("TestPad:ctrl_set_size(ctrl)",ctrl)

  local ctrl = self.current_ctrl
  --print("ctrl",ctrl)

  local title = "Set UIComponent size"
  local buttons = {"OK","Cancel"}
  local content_view = self.vb.views.ctrl_set_size

  if not content_view then
    content_view = self.vb:column{
      id = "ctrl_set_size",
      --style = "group",
      margin = 10,
      self.vb:text{
        text = "Enter the size in units (single value)",
      },
      self.vb:textfield{
        id = "ctrl_set_size_textfield",
        width = "100%",
      } 
    }
  end

  local textfield = self.vb.views.ctrl_set_size_textfield
  textfield.value = ("%d,%d"):format(ctrl.width,ctrl.height)
  --("textfield.value",textfield.value)

  local choice = renoise.app():show_custom_prompt(title, content_view, buttons)
  if (choice == "OK") then

    local values = table.create()
    for i,v in string.gmatch(textfield.value,"[%d]+") do 
      values:insert(tonumber(i)) 
    end

    -- sliders are resized in one dimension
    if (#values == 1) then
      ctrl:set_size(values[1])
    end

  end
  

end

--------------------------------------------------------------------------------

function TestPad:enable_option_buttons()
  TRACE("TestPad:enable_option_buttons()")

  if self._controls.set_pos then self._controls.set_pos:enable() end
  if self._controls.set_size then self._controls.set_size:enable() end
  if self._controls.set_group then self._controls.set_group:enable() end

end

--------------------------------------------------------------------------------

function TestPad:show_info(ctrl)
  TRACE("TestPad:show_info(ctrl)",ctrl)

  if not ctrl then
    return
  end

  if self._controls.set_group then
    self._controls.set_group:enable()
  end

  if (type(ctrl) == "UIPad") then
    self:show_pad_info()
    if self._controls.set_group then self._controls.set_group:disable() end
    if self._controls.set_size then self._controls.set_size:disable() end
  elseif (type(ctrl) == "UISlider") then
    self:show_slider_info()
  end

end

--------------------------------------------------------------------------------

function TestPad:show_slider_info()
  TRACE("TestPad:show_slider_info()")

  local ctrl = self._controls.slider
  if ctrl then
    local str = ("type: slider"
                .."\nvalue: %.4f"
                .."\nfloor: %.4f"
                .."\nceiling: %.4f"):format(ctrl.value,ctrl.floor,ctrl.ceiling)

    self:show_options(ctrl,str)
  end

end


--------------------------------------------------------------------------------

function TestPad:show_pad_info()
  TRACE("TestPad:show_pad_info()")

  local ctrl = self._controls.pad
  if ctrl then
    local str = ("type: xypad"
                .."\nvalue[1]: %.4f"
                .."\nvalue[2]: %.4f"
                .."\nfloor: %.4f"
                .."\nceiling: %.4f"):format(ctrl.value[1],ctrl.value[2],ctrl.floor,ctrl.ceiling)
    
    self:show_options(ctrl,str)
  end

end

--------------------------------------------------------------------------------

function TestPad:show_options(ctrl,str)
  TRACE("TestPad:show_options(ctrl,str)",ctrl,str)

  if self._controls.label then
    str = str ..("\nx_pos: %d"
                .."\ny_pos: %d"
                .."\nwidth: %d"
                .."\nheight: %d"
                .."\ngroup_name: %s"):format(ctrl.x_pos,ctrl.y_pos,ctrl.width,ctrl.height,ctrl.group_name)

    self._controls.label:set_text(str)
  end

  self.current_ctrl = ctrl
  self:enable_option_buttons()

end

