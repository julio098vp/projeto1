extends Node 

var h_speed: float = 20.0
var v_speed: float = 100.0
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var ray_cast_2d = $RayCast2D

func _process(delta):
	position.x -= h_speed * delta
	
	if !ray_cast_2d.is_collinding():
		position.y += v_speed * delta
		

func _die():
	v_speed = 0
	h_speed = 0
	animated_sprite_2d.play("dead")
	
func _die_from_hit():
	v_speed = 0
	h_speed = 0
	rotation_degress = 180
	
	var die_twen = get_tree().create_tween()
	die_twen.tween_property(self, "position", position + Vector2(o, -25), 0.2)
		
	
	
	
