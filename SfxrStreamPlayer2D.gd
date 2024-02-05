extends AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	self.playing = true
	self.pitch_scale = 1
	await get_tree().create_timer(1.5).timeout
	self.playing = false
	self.pitch_scale = self.pitch_scale * 1.15
	await get_tree().create_timer(2.0).timeout
	self.playing = true
	await get_tree().create_timer(1.5).timeout
	self.playing = false
	self.pitch_scale = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
