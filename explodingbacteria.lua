mobs:register_mob("livingcavesmobs:explodingbacteria", {
stepheight = 0,
	type = "animal",
	passive = false,
	attack_type = "explode",
	explosion_radius = 2,
	explosion_damage__radius = 6,
	explosion_timer = 2,
	attack_npcs = false,
	attack_animals = false,
	reach = 3,
	damage = 18,
	hp_min = 15,
	hp_max = 30,
	armor = 100,
	collisionbox = {-0.4, -0.01, -0.4,  0.4, 0.4, 0.4},
	visual = "mesh",
	visual_size = {x = 2.6, y = 2.6},
	mesh = "Explodingbacteria.b3d",
	drawtype = "front",
	textures = {
		{"textureexplodingbacteria.png"},

	},
sounds = {
		random = "",},
	makes_footstep_sound = false,
	walk_velocity = 1.5,
	run_velocity = 2,
	runaway = false,
	jump = false,
	jump_height = 6,
	sounds = {
		attack = "livingcavesmobs_explodingbacteria",
		random = "livingcavesmobs_explodingbacteria3",
		damage = "livingcavesmobs_explodingbacteria2",
		distance = 10,
	},
	drops = {
		{name = "tnt:gunpowder", chance = 1, min = 0, max = 1},
	},
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 0,
	animation = {
		speed_normal = 50,
		stand_start = 1,
		stand_end = 100,
		stand1_start = 100,
		stand1_end = 200,
		walk_start = 200,
		walk_end = 300,
		fly_start = 200, -- swim animation
		fly_end = 300,
		punch_start = 300,
		punch_end = 400,
	},
	fly_in = {"air"},
	floats = 1,
	fly = true,
	follow = {"default:stone", "default:coal"},
	view_range = 13,
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 5, 50, false, nil) then return end
	end,
})


if not mobs.custom_spawn_livingcavesmobs then
mobs:spawn({
	name = "livingcavesmobs:explodingbacteria",
	nodes = {"livingcaves:bacteriacave_nest"},
	neighbors = {"livingcaves:bacteriacave_nestfoot"},
	min_light = 0,
	interval = 10,
	chance = 1, 
	active_object_count = 4,
	min_height = -400,
	max_height = -200,
})
end


mobs:register_egg("livingcavesmobs:explodingbacteria", ("Giant Bacteria"), "aexplodingbacteria.png", 0)


mobs:alias_mob("livingcavesmobs:explodingbacteria", "livingcavesmobs:explodingbacteria") -- compatibility