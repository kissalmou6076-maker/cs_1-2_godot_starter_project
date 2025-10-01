extends CharacterBody2D
var projectile_original = preload("res://scenes/projectile.tscn")

func _ready():
	
	pass

func _process(delta: float) -> void:
	pass


	


func _on_area_2d_body_entered(body: Node2D) -> void:
	
	var projectile_clone = projectile_original.instantiate()
	
	# TODO: Set projectile position to player position
	projectile_clone.global_position = position
	
	#

	projectile_clone.set_direction(facing)
	# TODO: Add projectile to the game world
	get_tree().get_root().add_child(projectile_clone)
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
