#> pk_better_compass:core/title_show

# Check rotation
execute store result score $rotationY pk.temp run data get entity @s Rotation[0] 10
execute if score $rotationY pk.temp matches ..-1575 run data modify storage pk.be_co:data Temp.Facing set value "North"
execute if score $rotationY pk.temp matches -1574..-1125 run data modify storage pk.be_co:data Temp.Facing set value "North-East"
execute if score $rotationY pk.temp matches -1124..-675 run data modify storage pk.be_co:data Temp.Facing set value "East"
execute if score $rotationY pk.temp matches -674..-225 run data modify storage pk.be_co:data Temp.Facing set value "South-East"
execute if score $rotationY pk.temp matches -224..224 run data modify storage pk.be_co:data Temp.Facing set value "South"
execute if score $rotationY pk.temp matches 225..674 run data modify storage pk.be_co:data Temp.Facing set value "South-West"
execute if score $rotationY pk.temp matches 675..1124 run data modify storage pk.be_co:data Temp.Facing set value "West"
execute if score $rotationY pk.temp matches 1125..1574 run data modify storage pk.be_co:data Temp.Facing set value "North-West"
execute if score $rotationY pk.temp matches 1575.. run data modify storage pk.be_co:data Temp.Facing set value "North"

# Store location
data modify storage pk.be_co:data Temp.Player.Pos set from entity @s Pos
execute store result storage pk.be_co:data Temp.Pos.x int 1 run data get storage pk.be_co:data Temp.Player.Pos[0]
execute store result storage pk.be_co:data Temp.Pos.y int 1 run data get storage pk.be_co:data Temp.Player.Pos[1]
execute store result storage pk.be_co:data Temp.Pos.z int 1 run data get storage pk.be_co:data Temp.Player.Pos[2]

data modify storage pk.be_co:data Backup set from storage pk.be_co:data Temp

# Show title
title @s actionbar [{"text":"X:","color":"white"},{"nbt":"Temp.Pos.x","storage":"pk.be_co:data","color":"yellow"},{"text":" Y:","color":"white"},{"nbt":"Temp.Pos.y","storage":"pk.be_co:data","color":"yellow"},{"text":" Z:","color":"white"},{"nbt":"Temp.Pos.z","storage":"pk.be_co:data","color":"yellow"},{"text": " | ","color":"white"},{"nbt":"Temp.Facing","storage":"pk.be_co:data","color":"white"}]