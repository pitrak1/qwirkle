extends Node

class Tile:
	func _init(shape, color):
		self.shape = shape
		self.color = color
		
	var shape
	var color
	
var constants_script = preload("res://src/Constants.gd")
var constants

var stack = []

func _init(shuffle=true):
	self.constants = constants_script.new()
	for color in self.constants.COLORS:
		for shape in self.constants.SHAPES:
			self.stack.append(Tile.new(shape, color))
			self.stack.append(Tile.new(shape, color))
			self.stack.append(Tile.new(shape, color))
	
	if shuffle:
		self.stack.shuffle()
	
func draw():
	return self.stack.pop_back()
