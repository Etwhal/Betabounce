extends CharacterBody3D

@export_range(15,45) var speedBall: float
var gameContinue: bool = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if gameContinue:
		move_and_collide(Vector3(get_input() * speedBall * delta, 0, 0))
	
func get_input() -> float:
	return Input.get_axis("ui_left", "ui_right")
