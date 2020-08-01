
#modes off
execute if score club pvpmode matches 1 run function games:fight_club/club/deathmatch/off
execute if score club pvpmode matches 2 run function games:fight_club/club/catchman/off

#reset
function games:fight_club/club/reset