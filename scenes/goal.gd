extends Area2D
signal hit
# this doesn't work; the parent (Area2D) overrides what the CollisionShape2D does
@onready var player: CharacterBody2D = $Player
@onready var content: Sprite2D = get_child(1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(player):
	content.position.y -= 10
