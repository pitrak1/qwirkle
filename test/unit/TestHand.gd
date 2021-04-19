extends "res://addons/gut/test.gd"

var hand_scene = preload("res://src/Hand.tscn")
var hand

func before_each():
	hand = hand_scene.instance()
	add_child(hand)
	
func after_each():
	remove_child(hand)

func test_creates_hand_of_correct_size():
	hand.initialize(9)
	assert_not_null(hand.get_grid_position(0))
	assert_not_null(hand.get_grid_position(8))
	assert_null(hand.get_grid_position(-1))
	assert_null(hand.get_grid_position(9))
		
