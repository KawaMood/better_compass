#> pk_better_compass:core/player_tick

# Update title
function pk_better_compass:core/title_show

# If the player doesn't handle a compass anymore, remove the tag and clear the title
execute if entity @s[predicate=!pk_better_compass:hold/compass] run function pk_better_compass:core/title_hide