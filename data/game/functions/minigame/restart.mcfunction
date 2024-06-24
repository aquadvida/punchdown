#preparing for tp
    clear @a
    effect give @a weakness 10 255 true
    effect give @a regeneration 10 255 true
    effect give @a fire_resistance 10 255 true
#clearing old blocks
    fill -7 217 -7 7 219 7 air
    fill -7 221 -7 7 319 7 air
#placing new blocks
    fill 7 220 -7 -7 220 -2 oak_leaves
    fill -7 220 -7 -2 220 7 oak_leaves
    fill -7 220 7 7 220 2 oak_leaves
    fill 7 220 7 2 220 -7 oak_leaves
    fill -7 216 -7 7 216 7 lava
    setblock 0 221 0 stone_pressure_plate
#teleport
    tp @a 0 221 0
    tp @p -5 221 -5
    tp @p 5 221 5
#playing sound and start message
    playsound entity.ender_dragon.ambient ambient @a
    title @a actionbar {"text":"Let the Games begin","color":"dark_red"}
#giving items
    give @a oak_leaves 320
    give @a bow
    give @a arrow 16
    give @a fishing_rod
    give @a flint_and_steel