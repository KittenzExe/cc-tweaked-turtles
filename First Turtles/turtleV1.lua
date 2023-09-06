local fuel_min = 10
local fuel_level = turtle.getFuelLevel()
local ready = false
local runCheck = false

if (fuel_level > fuel_min) then
  ready = true
  print("deebug")
  print(("Level = %d"):format(fuel_level))
else
  local ok, err = turtle.refuel()
  if ok then
    local new_level = turtle.getFuelLevel()
    print(("Refuelled %d, current level is %d"):format(new_level - level, new_level))
  else
    printError(err)
    local fuel_level = turtle.getFuelLevel()
    print(("Level = %d"):format(fuel_level))
    ready = true
  end
end

sleep(1)

if ready then
  runCheck = true
  ready = false
else
  print("nuh uh")
  print(("Level = %d"):format(fuel_level))
end

if runCheck then
  local inspectedFront = false
  local inspectedLeft = false
  local inspectedRight = false
  local inspectedUp = false
  local inspectedDown = false

  if not inspectedFront then
    local has_block, data = turtle.inspect()
    if has_block then
      print("Front:")
      print(textutils.serialise(data.name))
      inspectedFront = true
    else
      print("Front:")
      print("No Block")
      inspectedFront = true
    end
  else
    printError("Inspection Problem")
  end

  if inspectedFront then
    turtle.turnLeft()
    local has_block, data = turtle.inspect()
    if has_block then
      print("Left:")
      print(textutils.serialise(data.name))
      inspectedLeft = true
    else
      print("Left:")
      print("No Block")
      inspectedLeft = true
    end
  else
    printError("Inspection Problem")
  end

  if inspectedLeft then
    turtle.turnRight()
    turtle.turnRight()
    local has_block, data = turtle.inspect()
    if has_block then
      print("Right:")
      print(textutils.serialise(data.name))
      inspectedRight = true
    else
      print("Right:")
      print("No Block")
      inspectedRight = true
    end
  else
    printError("Inspection Problem")
  end

  if inspectedRight then
    turtle.turnLeft()
    local has_block, data = turtle.inspectUp()
    if has_block then
      print("Up:")
      print(textutils.serialise(data.name))
      inspectedUp = true
    else
      print("Up:")
      print("No Block")
      inspectedUp = true
    end
  else
    printError("Inspection Problem")
  end

  if inspectedUp then
    local has_block, data = turtle.inspectDown()
    if has_block then
      print("Down:")
      print(textutils.serialise(data.name))
      inspectedDown = true
    else
      print("Down:")
      print("No Block")
      inspectedDown = true
    end
  else
    printError("Inspection Problem")
  end

  print("All done!")
  runCheck = false
  sleep(1)
  ready = true

else
  print("runCheck problem")
end