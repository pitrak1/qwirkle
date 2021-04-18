extends "res://addons/gut/test.gd"

var board_scene = preload("res://src/Board.tscn")
var board

func before_each():
	board = board_scene.instance()
	add_child(board)
	
func after_each():
	remove_child(board)

func test_creates_board_of_correct_size():
	board.initialize(7)
	assert_not_null(board.get_grid_position(Vector2(0, 0)))
	assert_not_null(board.get_grid_position(Vector2(6, 6)))
	assert_null(board.get_grid_position(Vector2(6, 7)))
	assert_null(board.get_grid_position(Vector2(7, 6)))

func test_sets_start_position_for_center_when_size_is_odd():
	board.initialize(7)
	assert_true(board.get_grid_position(Vector2(3, 3)).is_starting_position())
	
func test_sets_start_position_for_center_when_size_is_even():
	board.initialize(10)
	assert_true(board.get_grid_position(Vector2(5, 5)).is_starting_position())
		
