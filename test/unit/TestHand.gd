extends "res://addons/gut/test.gd"

var hand_scene = preload("res://src/Hand.tscn")
var hand

var tile_stack_scene = preload("res://src/TileStack.tscn")
var tile_stack

func before_each():
	tile_stack = tile_stack_scene.instance()
	add_child(tile_stack)
	hand = hand_scene.instance()
	add_child(hand)
	
func after_each():
	remove_child(hand)
	remove_child(tile_stack)

func test_creates_hand_of_correct_size():
	hand.initialize(9, tile_stack)
	assert_not_null(hand.get_grid_position(0))
	assert_not_null(hand.get_grid_position(8))
	assert_null(hand.get_grid_position(-1))
	assert_null(hand.get_grid_position(9))
	
func test_populates_hand_with_tiles():
	hand.initialize(9, tile_stack)
	for i in range(0, 9):
		assert_not_null(hand.get_grid_position(i).get_shape())
	
func test_draws_for_position():
	hand.initialize(9, tile_stack)
	var _shape = hand.get_grid_position(3).get_shape()
	var _color = hand.get_grid_position(3).get_shape_color()
	hand.draw(3)
	assert_ne(_shape, hand.get_grid_position(3).get_shape())
	assert_ne(_color, hand.get_grid_position(3).get_shape_color())
		
