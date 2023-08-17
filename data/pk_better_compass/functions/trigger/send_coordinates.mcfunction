#> pk_better_compass:trigger/send_coordinates

# Reset score
scoreboard players reset @s my.pos
scoreboard players enable @s my.pos

# Store location
data modify storage pk.be_co:data Temp.Player.Pos set from entity @s Pos
execute store result storage pk.be_co:data Temp.Pos.x int 1 run data get storage pk.be_co:data Temp.Player.Pos[0]
execute store result storage pk.be_co:data Temp.Pos.y int 1 run data get storage pk.be_co:data Temp.Player.Pos[1]
execute store result storage pk.be_co:data Temp.Pos.z int 1 run data get storage pk.be_co:data Temp.Player.Pos[2]

# Store dimension
data modify storage pk.be_co:data Temp.Dimension set from entity @s Dimension
execute if data storage pk.be_co:data Temp{Dimension:"minecraft:overworld"} run data modify storage pk.be_co:data Temp.Dimension set value "Overworld"
execute if data storage pk.be_co:data Temp{Dimension:"minecraft:the_nether"} run data modify storage pk.be_co:data Temp.Dimension set value "the Nether"
execute if data storage pk.be_co:data Temp{Dimension:"minecraft:the_end"} run data modify storage pk.be_co:data Temp.Dimension set value "the End"

# Send coordinates
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" currently is at X:","color":"white"},{"nbt":"Temp.Pos.x","storage":"pk.be_co:data","color":"yellow"},{"text":" Y:","color":"white"},{"nbt":"Temp.Pos.y","storage":"pk.be_co:data","color":"yellow"},{"text":" Z:","color":"white"},{"nbt":"Temp.Pos.z","storage":"pk.be_co:data","color":"yellow"},{"text": " in ","color":"white"},{"nbt":"Temp.Dimension","storage":"pk.be_co:data","color":"yellow"}]