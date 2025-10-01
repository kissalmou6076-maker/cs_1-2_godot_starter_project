extends Area2D

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	pass
func _physics_process(delta: float):
	position+= speed*direction*delta
	
	
#func direction
