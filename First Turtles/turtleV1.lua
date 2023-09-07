local fuel_min = 10
local fuel_level = turtle.getFuelLevel()

if (fuel_level > fuel_min) then
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
  end
end

sleep(1)
while( true )
do
  local inspectedFront = false
  local inspectedLeft = false
  local inspectedRight = false
  local inspectedLeft2 = false
  local inspectedRight2 = false
  local inspectedUp = false
  local inspectedDown = false
  local forwardBlock = ""
  local leftBlock = ""
  local rightBlock = ""
  local leftBlock2 = ""
  local rightBlock2 = ""
  local upBlock = ""
  local downBlock = ""

  turtle.refuel()
  local fuel_level2 = turtle.getFuelLevel()
  print(("Level = %d"):format(fuel_level2))

  if not inspectedFront then
    local has_block, data = turtle.inspect()
    if has_block then
      print("Front:")
      print(textutils.serialise(data.name))
      forwardBlock = textutils.serialise(data.name)
      inspectedFront = true
    else
      print("Front:")
      print("No Block")
      forwardBlock = ""
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
      leftBlock = textutils.serialise(data.name)
      inspectedLeft = true
    else
      print("Left:")
      print("No Block")
      leftBlock = ""
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
      rightBlock = textutils.serialise(data.name)
      inspectedRight = true
    else
      print("Right:")
      print("No Block")
      rightBlock = ""
      inspectedRight = true
    end
  else
    printError("Inspection Problem")
  end

  if inspectedRight then
    turtle.turnLeft()
    local has_block, data = turtle.inspectDown()
    if has_block then
      print("Down:")
      print(textutils.serialise(data.name))
      downBlock = textutils.serialise(data.name)
      inspectedDown = true
    else
      print("Down:")
      print("No Block")
      downBlock = ""
      inspectedDown = true
    end
  else
    printError("Inspection Problem")
  end

  turtle.digUp(right)
  turtle.up()

  if inspectedDown then
    turtle.turnLeft()
    local has_block, data = turtle.inspect()
    if has_block then
      print("LeftUp:")
      print(textutils.serialise(data.name))
      leftBlock2 = textutils.serialise(data.name)
      inspectedLeft2 = true
    else
      print("LeftUp:")
      print("No Block")
      leftBlock2 = ""
      inspectedLeft2 = true
    end
  else
    printError("Inspection Problem")
  end

  if inspectedLeft2 then
    turtle.turnRight()
    turtle.turnRight()
    local has_block, data = turtle.inspect()
    if has_block then
      print("RightUp:")
      print(textutils.serialise(data.name))
      rightBlock2 = textutils.serialise(data.name)
      inspectedRight2 = true
    else
      print("RightUp:")
      print("No Block")
      rightBlock2 = ""
      inspectedRight2 = true
    end
  else
    printError("Inspection Problem")
  end

  if inspectedRight2 then
    turtle.turnLeft()
    local has_block, data = turtle.inspectUp()
    if has_block then
      print("Up:")
      print(textutils.serialise(data.name))
      upBlock = textutils.serialise(data.name)
      inspectedUp = true
    else
      print("Up:")
      print("No Block")
      upBlock = ""
      inspectedUp = true
    end
  else
    printError("Inspection Problem")
  end

  sleep(1)

  if leftBlock2 == '"minecraft:deepslate_diamond_ore"' or leftBlock2 == '"minecraft:deepslate_lapis_ore"' or leftBlock2 == '"minecraft:deepslate_emerald_ore"' or leftBlock2 == '"minecraft:deepslate_redstone_ore"' or leftBlock2 == '"minecraft:deepslate_gold_ore"' or leftBlock2 == '"minecraft:deepslate_copper_ore"' or leftBlock2 == '"minecraft:deepslate_iron_ore"' or leftBlock2 == '"minecraft:deepslate_coal_ore"' or leftBlock2 == '"create:deepslate_zinc_ore"' then
    turtle.turnLeft()
    turtle.dig(right)
    turtle.turnRight()
  else
    print("check idiot")
  end

  if rightBlock2 == '"minecraft:deepslate_diamond_ore"' or rightBlock2 == '"minecraft:deepslate_lapis_ore"' or rightBlock2 == '"minecraft:deepslate_emerald_ore"' or rightBlock2 == '"minecraft:deepslate_redstone_ore"' or rightBlock2 == '"minecraft:deepslate_gold_ore"' or rightBlock2 == '"minecraft:deepslate_copper_ore"' or rightBlock2 == '"minecraft:deepslate_iron_ore"' or rightBlock2 == '"minecraft:deepslate_coal_ore"' or rightBlock2 == '"create:deepslate_zinc_ore"' then
    turtle.turnRight()
    turtle.dig(right)
    turtle.turnLeft()
  else
    print("check idiot")
  end

  if upBlock == '"minecraft:deepslate_diamond_ore"' or upBlock == '"minecraft:deepslate_lapis_ore"' or upBlock == '"minecraft:deepslate_emerald_ore"' or upBlock == '"minecraft:deepslate_redstone_ore"' or upBlock == '"minecraft:deepslate_gold_ore"' or upBlock == '"minecraft:deepslate_copper_ore"' or upBlock == '"minecraft:deepslate_iron_ore"' or upBlock == '"minecraft:deepslate_coal_ore"' or upBlock == '"create:deepslate_zinc_ore"' then
    turtle.digUp(right)
  else
    print("check idiot")
  end

  turtle.digDown(right)
  turtle.down()

  sleep(1)

  if leftBlock == '"minecraft:deepslate_diamond_ore"' or leftBlock == '"minecraft:deepslate_lapis_ore"' or leftBlock == '"minecraft:deepslate_emerald_ore"' or leftBlock == '"minecraft:deepslate_redstone_ore"' or leftBlock == '"minecraft:deepslate_gold_ore"' or leftBlock == '"minecraft:deepslate_copper_ore"' or leftBlock == '"minecraft:deepslate_iron_ore"' or leftBlock == '"minecraft:deepslate_coal_ore"' or leftBlock == '"create:deepslate_zinc_ore"' then
    turtle.turnLeft()
    turtle.dig(right)
    turtle.turnRight()
  else
    print("check idiot")
  end

  if rightBlock == '"minecraft:deepslate_diamond_ore"' or rightBlock == '"minecraft:deepslate_lapis_ore"' or rightBlock == '"minecraft:deepslate_emerald_ore"' or rightBlock == '"minecraft:deepslate_redstone_ore"' or rightBlock == '"minecraft:deepslate_gold_ore"' or rightBlock == '"minecraft:deepslate_copper_ore"' or rightBlock == '"minecraft:deepslate_iron_ore"' or rightBlock == '"minecraft:deepslate_coal_ore"' or rightBlock == '"create:deepslate_zinc_ore"' then
    turtle.turnRight()
    turtle.dig(right)
    turtle.turnLeft()
  else
    print("check idiot")
  end

  if downBlock == '"minecraft:deepslate_diamond_ore"' or downBlock == '"minecraft:deepslate_lapis_ore"' or downBlock == '"minecraft:deepslate_emerald_ore"' or downBlock == '"minecraft:deepslate_redstone_ore"' or downBlock == '"minecraft:deepslate_gold_ore"' or downBlock == '"minecraft:deepslate_copper_ore"' or downBlock == '"minecraft:deepslate_iron_ore"' or downBlock == '"minecraft:deepslate_coal_ore"' or downBlock == '"create:deepslate_zinc_ore"' then
    turtle.digDown(right)
  else
    print("check idiot")
  end

  turtle.digUp(right)
  turtle.dig(right)
  repeat
    sleep(1)
    local hasnt_block, data = turtle.inspect()
    if hasnt_block then
      turtle.dig(right)
    else
      turtle.forward()
    end
  until(not hasnt_block)
end
