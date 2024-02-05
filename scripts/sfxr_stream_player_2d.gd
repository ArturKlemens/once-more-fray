extends AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var playing: bool = true
	if playing:
		_sample()
		playing = false

func _sample():
	self.playing = true
	self.pitch_scale = 1
	await get_tree().create_timer(0.5).timeout
	self.playing = false
	self.pitch_scale = self.pitch_scale * 1.15
	await get_tree().create_timer(0.50).timeout
	self.playing = true
	await get_tree().create_timer(0.5).timeout
	self.playing = false
	self.pitch_scale = 1
