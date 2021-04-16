extends TextureRect

var highlight_texture = preload("res://assets/GridPositionHighlight.png")
var error_texture = preload("res://assets/GridPositionError.png")

func _ready():
	self.texture = highlight_texture
