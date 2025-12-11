/// @Description Spawn Players

p1 = instance_create_layer(room_width/2-142, 215, "instances_1", oGlacius)
p2 = instance_create_layer(room_width/2+142, 215, "instances_2", oGlacius)

p1.controller = CONT_P1

p2.image_xscale = -1
p2.controller = global.opp_type

p1.opponent = p2
p2.opponent = p1

p1.character = GLACIUS
p2.character = GLACIUS

//Update Sprites