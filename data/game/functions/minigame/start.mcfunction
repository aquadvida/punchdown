#setting basic game rules
    difficulty peaceful
    gamerule doDaylightCycle false
    time set noon
    gamerule keepInventory true
    gamerule spawnRadius 0
    #setting game rules
#creating killcounter
    scoreboard objectives add PlayerKills playerKillCount
    scoreboard objectives setdisplay list PlayerKills
    scoreboard players set @a PlayerKills 0
#changing worldborder size
    worldborder center 0 0
    worldborder set 15
#create starting platform
    fill -1 220 -1 1 220 1 bedrock
    fill -7 215 -7 7 215 7 bedrock
    setblock 0 220 0 command_block{Command:"/function minigame:punchdown/restart"}
    setblock 0 221 0 stone_pressure_plate
    fill -8 216 -8 -8 216 8 barrier
    fill -8 216 8 8 216 8 barrier
    fill 8 216 8 8 216 -8 barrier
    fill 8 216 -8 -8 216 -8 barrier
#teleporting to minigame
    tp @a 0 221 0