-----------------------------------
-- Area: Caedarva Mire
--  Mob: Dark Rider
-----------------------------------
local entity = {}

local pathNodes =
{
    [1] =
    {
        { x = 339.6585, y = 6.1829,   z = -704.0828, },
        { x = 332.8661, y = 6.3524,   z = -700.3522, },
        { x = 318.867,  y = 4,        z = -699.939,  },
        { x = 286.8916, y = -3.5762,  z = -704.0229, },
        { x = 264.3528, y = -3.2821,  z = -710.1971, },
        { x = 247.0561, y = -0.1329,  z = -695.1417, },
        { x = 221.1214, y = 0.5,      z = -677.5349, },
        { x = 83.0121,  y = -0.2391,  z = -685.8557, },
        { x = 78.2554,  y = 0.25,     z = -609.3483, },
        { x = 79.8686,  y = 0.3778,   z = -585.9269, wait = 5000 },
        { x = 75.8361,  y = -0.8235,  z = -551.2883, },
        { x = 86.2099,  y = -4.25,    z = -536.1703, },
        { x = 127.6139, y = 0.224,    z = -557.5497, },
        { x = 160.6965, y = 0.109,    z = -554.2266, },
        { x = 161.8229, y = 0,        z = -519.8633, },
        { x = 183.657,  y = 0.5,      z = -520.7543, },
        { x = 223.8048, y = 0.5,      z = -526.0866, },
        { x = 253.9618, y = -0.3983,  z = -505.9199, },
        { x = 277.8683, y = 4,        z = -499.5201, },
        { x = 319.6806, y = -4,       z = -499.456,  },
        { x = 335.3427, y = -1.7929,  z = -500.3404, },
        { x = 340.7414, y = -1.5609,  z = -493.0944, },
        { x = 338.0163, y = -5.7847,  z = -466.976,  },
        { x = 323.2709, y = -9.2696,  z = -430.1199, },
        { x = 318.8441, y = -10,      z = -424.7781, },
        { x = 288.778,  y = -12.4553, z = -412.7433, },
        { x = 264.8977, y = -11.7865, z = -408.6765, },
        { x = 265.3194, y = -12.3335, z = -386.105,  wait = 5000 },
        { x = 242.4288, y = -8,       z = -362.6279, },
        { x = 248.4606, y = -11.5837, z = -347.8423, },
        { x = 262.3498, y = -11.9567, z = -361.6727, },
        { x = 282.5159, y = -16,      z = -362.9248, },
        { x = 292.9759, y = -15.6909, z = -359.5645, },
        { x = 314.4101, y = -15.9024, z = -358.8549, },
        { x = 344.5148, y = -18.6343, z = -371.6712, },
        { x = 368.3772, y = -19.7301, z = -372.0001, },
        { x = 378.0847, y = -18.3754, z = -341.8179, },
        { x = 399.0981, y = -15.9876, z = -324.2269, },
        { x = 426.227,  y = -9.7692,  z = -304.8311, },
        { x = 443.1887, y = -8,       z = -282.6189, },
        { x = 452.3428, y = -7.7304,  z = -279.9566, },
        { x = 473.6283, y = -7.8536,  z = -281.1427, },
        { x = 494.9144, y = -10,      z = -285.547,  },
        { x = 514.7781, y = -15.8544, z = -318.1919, },
        { x = 537.0589, y = -17.9506, z = -334.4308, },
        { x = 546.4603, y = -20.25,   z = -355.3845, wait = 20000 },
    },

    [2] =
    {
        { x = 540.9846, y = -18.675,  z = -402.3327, },
        { x = 545.4078, y = -20.25,   z = -357.4022, },
        { x = 533.1473, y = -17.3235, z = -330.8748, },
        { x = 512.1703, y = -15.5289, z = -322.2338, },
        { x = 482.9106, y = -8,       z = -321.9708, },
        { x = 446.0569, y = -7.8732,  z = -320.2247, },
        { x = 422.6126, y = -10.5848, z = -319.5073, },
        { x = 396.647,  y = -15.75,   z = -329.2428, },
        { x = 377.8816, y = -18.4133, z = -342.4026, },
        { x = 371.8016, y = -19.6807, z = -369.3657, wait = 5000 },
        { x = 348.6353, y = -18.6783, z = -377.7406, },
        { x = 326.1832, y = -15.8653, z = -397.5381, },
        { x = 303.2673, y = -15.5,    z = -400.3094, },
        { x = 279.5955, y = -15.7997, z = -392.7657, },
        { x = 275.585,  y = -15.9356, z = -364.3431, },
        { x = 237.0516, y = -8,       z = -359.2794, },
        { x = 162.5366, y = -8,       z = -361.1404, },
        { x = 143.1628, y = -9.6363,  z = -307.8617, },
        { x = 134.5462, y = -12.25,   z = -277.167,  },
        { x = 155.9529, y = -7.7789,  z = -367.9573, },
        { x = 153.9098, y = -8.1241,  z = -405.3025, },
        { x = 146.1056, y = -12.25,   z = -438.6905, },
        { x = 155.5187, y = -7.9717,  z = -478.6031, wait = 5000 },
        { x = 160.3119, y = -3.5715,  z = -499.6987, },
        { x = 167.722,  y = 0.25,     z = -525.371,  },
        { x = 195.6715, y = 0.4776,   z = -536.7406, },
        { x = 206.4201, y = 0.25,     z = -568.6071, },
        { x = 207.1183, y = 0.103,    z = -616.7535, },
        { x = 201.625,  y = 0.103,    z = -674.3262, },
        { x = 154.165,  y = 0.1016,   z = -683.8493, },
        { x = 102.4219, y = -0.5,     z = -690.9753, },
        { x = 70.2708,  y = -1.7915,  z = -696.3893, },
        { x = 78.8054,  y = 0.25,     z = -668.982,  },
        { x = 80.1821,  y = 0.25,     z = -610.2321, },
        { x = 76.3769,  y = 0,        z = -556.082,  },
        { x = 67.2014,  y = -4.25,    z = -518.3921, },
        { x = 62.6291,  y = -4.1021,  z = -471.9255, },
        { x = 39.3279,  y = -4.25,    z = -454.2495, wait = 20000 },
    },

    [3] =
    {
        { x = -274.1297, y = -2.675,  z = -700.6348, },
        { x = -298.7144, y = -2,      z = -702.0896, },
        { x = -315.2068, y = -0.574,  z = -712.1395, },
        { x = -312.3404, y = -4.2538, z = -744.1488, },
        { x = -323.0291, y = -4.25,   z = -744.6631, },
        { x = -321.1197, y = 0,       z = -722.0392, },
        { x = -335.8353, y = 0.4822,  z = -715.9703, },
        { x = -352.3072, y = 0.229,   z = -716.6363, },
        { x = -379.7196, y = 0.5,     z = -720.4642, },
        { x = -396.8808, y = -0.3133, z = -726.4492, wait = 5000 },
        { x = -410.4023, y = -0.9571, z = -732.2028, },
        { x = -419.1205, y = 0.6846,  z = -735.514,  },
        { x = -407.9469, y = -0.5277, z = -723.315,  },
        { x = -400.3404, y = -0.0087, z = -716.1105, },
        { x = -419.3367, y = 1.1075,  z = -699.2994, },
        { x = -417.4088, y = 3.998,   z = -640.9696, },
        { x = -406.4936, y = 4.0545,  z = -626.3705, },
        { x = -389.4546, y = 4.2998,  z = -617.9129, },
        { x = -379.5009, y = 4.3903,  z = -597.2627, },
        { x = -355.3421, y = 4.9755,  z = -578.7635, },
        { x = -310.1023, y = 5.967,   z = -580.3748, },
        { x = -263.283,  y = 6.5,     z = -580.8331, },
        { x = -259.274,  y = 4.899,   z = -553.5531, },
        { x = -233.991,  y = 5.6072,  z = -533.0642, },
        { x = -217.9731, y = 4.1038,  z = -511.981,  },
        { x = -214.5161, y = 3.9263,  z = -486.8491, },
        { x = -231.4417, y = 4.5,     z = -461.8238, },
        { x = -256.5188, y = 6,       z = -460.1826, },
        { x = -262.5886, y = 4.1846,  z = -452.734,  wait = 5000 },
        { x = -277.0251, y = 3.9289,  z = -457.0432, },
        { x = -290.185,  y = 8.25,    z = -476.9239, },
        { x = -299.9312, y = 5.7351,  z = -501.3265, },
        { x = -310.0422, y = 3.6003,  z = -506.3663, },
        { x = -331.1548, y = 4.4182,  z = -508.404,  },
        { x = -336.7437, y = 4.7701,  z = -534.2155, },
        { x = -361.3234, y = 8.0455,  z = -555.2435, },
        { x = -376.3485, y = 8.0121,  z = -565.5767, },
        { x = -388.0877, y = 7.6768,  z = -575.9753, },
        { x = -413.8564, y = 8,       z = -576.2833, },
        { x = -425.0881, y = 8.1118,  z = -552.8295, },
        { x = -451.2419, y = 6.7248,  z = -552.5185, },
        { x = -459.3972, y = 9.0931,  z = -539.2027, },
        { x = -460.4145, y = 11.5608, z = -527.4645, wait = 20000 },
    },
}

entity.onMobInitialize = function(mob)
    xi.dark_rider.onRiderInitialize(mob)
end

entity.onMobSpawn = function(mob)
    xi.dark_rider.onRiderSpawn(mob, pathNodes)
end

entity.onMobEngaged = function(mob, target)
    xi.dark_rider.onMobEngaged(mob, target)
end

entity.onMobDisengage = function(mob)
    xi.dark_rider.onRiderDisengage(mob, pathNodes)
end

entity.onMobDespawn = function(mob)
    xi.dark_rider.onRiderDespawn(mob, pathNodes)
end

return entity
