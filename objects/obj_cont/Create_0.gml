/// @Description Spawn Players

p1 = instance_create_layer(room_width/2-100, 200, "Instances", Kitana)
p2 = instance_create_layer(room_width/2+100, 200, "Instances", Kitana)

p2.image_xscale = -1
p2.controller = CONT_P2

p1.opponent = p2
p2.opponent = p1

p1.character = FANS
p2.character = FANS

//Update Sprites
with p1
	HandleSprites(character)
	
with p2
	HandleSprites(character)