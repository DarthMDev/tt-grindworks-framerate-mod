extends CanvasLayer

var label := Label.new()

func _ready() -> void:
	# top level node so it doesn't get destroyed when switching scenes
	label.set_as_top_level(true)
	name = "FramerateMeter"
	var screen_size = DisplayServer.window_get_size()
	label.set_position(Vector2(screen_size.x - 100, 0))
	add_child(label)
	visible = false # hide the framerate meter by default
	set_process(true)

func _process(_delta):
	label.set_text(str(round(Engine.get_frames_per_second())) + " FPS")
