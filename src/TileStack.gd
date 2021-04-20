extends Node

class Tile:
	func _init(_shape, _color):
		self.shape = _shape
		self.color = _color
		
	var shape
	var color
	
var constants_script = preload("res://src/Constants.gd")
var constants

var stack = []

func _ready():
	self.constants = constants_script.new()
	for color in range(0, self.constants.COLORS.size()):
		for shape in range(0, self.constants.SHAPES.size()):
			self.stack.append(Tile.new(shape, color))
			self.stack.append(Tile.new(shape, color))
			self.stack.append(Tile.new(shape, color))

	self.stack.shuffle()
	
func draw():
	if self.stack.size():
		var tile = self.stack.pop_back()
		get_tree().call_group("DrawTileListener", "draw_tile_handler", tile, self.stack.size())
		return tile
	else:
		return null
