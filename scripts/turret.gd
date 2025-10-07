extends CharacterBody2D
var projectile_original = preload("res://scenes/enemy_projectile.tscn")
var start_time=2
var timer=start_time
var in_range=false
var Player
func _ready():
	
	pass

func _process(delta: float) -> void:
	pass
	if in_range:
		timer-=delta
		if timer<0:
			shoot(Player.position)
			timer = start_time

	


func _on_area_2d_body_entered(body: Node2D) -> void:
	
	if body.name=="Player":
		Player=body
		in_range=true

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name=="Player":
		Player=body
		in_range=false
	pass # Replace with function body.
func shoot(target):
	var projectile_clone = projectile_original.instantiate()
	
	# TODO: Set projectile position to player position
	projectile_clone.global_position = position
	
	#

	projectile_clone.set_direction(target)
	# TODO: Add projectile to the game world
	get_tree().get_root().add_child(projectile_clone)
	pass # Replace with function body.
