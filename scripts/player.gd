extends CharacterBody2D

var speed: int = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction: int = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	move_and_slide()
