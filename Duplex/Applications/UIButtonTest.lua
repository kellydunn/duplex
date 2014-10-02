--[[============================================================================
-- Duplex.Application.UIButtonTest
============================================================================]]--

--[[--

--]]

--==============================================================================


class 'UIButtonTest' (Application)

UIButtonTest.available_mappings = {
  toggle = {
    description = "UIButtonTest: toggle on/off"
  }
}


--------------------------------------------------------------------------------

--- Constructor method
-- @param (VarArg)
-- @see Duplex.Application

function UIButtonTest:__init(...)

  Application.__init(self,...)

end

--------------------------------------------------------------------------------

--- inherited from Application
-- @see Duplex.Application.start_app
-- @return bool or nil

function UIButtonTest:start_app()

  if not Application.start_app(self) then
    return
  end

end

--------------------------------------------------------------------------------

function UIButtonTest:print_to_console(arg1,arg2,arg3)
  print(arg1,arg2,arg3)
end

--------------------------------------------------------------------------------

--- inherited from Application
-- @see Duplex.Application._build_app
-- @return bool

function UIButtonTest:_build_app()

  local map = self.mappings.toggle
  local c = UIButton(self,map)
  c.on_press = function()
    self.display.scheduler:add_task(
      self,self.print_to_console,1,"One","Two","Three")
  end
  self._toggle = c

  return true

end

