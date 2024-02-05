extends Node2D

@onready var camera = $Camera2D
@onready var player = $Player.get_node("CharacterBody2D") # because the child node of Player has a script & is moving
@onready var waypoint_1 = $Waypoints.get_node("position_1")
@onready var waypoint_2 = $Waypoints.get_node("position_2")

var pause: bool = true
var is_moved: bool = false
var camera_tween: Tween
var player_tween: Tween

# Called when the node enters the scene tree for the first time.
func _ready():
	#camera_tween = get_tree().create_tween()
	#player_tween = get_tree().create_tween()
	#player_tween.tween_property(player, "global_position:x", waypoint_1.global_position.x, 1).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	#await get_tree().create_timer(2.0).timeout
	#camera_tween.tween_property(camera, "global_position:x", waypoint_2.global_position.x, 3).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	#if camera_tween:
	#	camera_tween.kill()
	#camera_tween = get_tree().create_tween()
	#camera_tween.tween_property(camera, "global_position:x", player.global_position.x, 3).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	pass
func kill_camera_tween():
	if camera_tween:
		camera_tween.kill()
	camera_tween = get_tree().create_tween()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#player.allow_input = !pause
	pass

	
