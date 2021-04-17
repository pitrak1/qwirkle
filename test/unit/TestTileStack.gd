extends "res://addons/gut/test.gd"

var constants_script = preload("res://src/Constants.gd")
var constants

var tile_stack_script = preload("res://src/TileStack.gd")
var tile_stack

func before_each():
	constants = constants_script.new()
	tile_stack = tile_stack_script.new()
	
func test_creates_three_of_each_shape_and_color():
	var colors = [0, 0, 0, 0, 0, 0]
	var shapes = [0, 0, 0, 0, 0, 0]
	
	var tile = tile_stack.draw()
	while tile:
		colors[tile.color] += 1
		shapes[tile.shape] += 1
		tile = tile_stack.draw()
	
	for i in range(0, 6):
		assert_eq(colors[i], 18)
	
	for i in range(0, 6):
		assert_eq(shapes[i], 18)
