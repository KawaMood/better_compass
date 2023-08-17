#> pk_better_compass:base/tick
# Main tick

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Actions:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Switching compass
execute as @a[tag=!pk.be_co.hold.compass,predicate=pk_better_compass:hold/compass] run tag @s add pk.be_co.hold.compass
execute as @a[tag=pk.be_co.hold.compass] run function pk_better_compass:core/player_tick
# Using my.pos trigger command (any value)
execute as @a[scores={my.pos=1..}] run function pk_better_compass:trigger/send_coordinates