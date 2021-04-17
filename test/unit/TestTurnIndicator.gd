extends "res://addons/gut/test.gd"

class TestWithoutSettingPlayer:
	extends "res://addons/gut/test.gd"
	
	var constants_script = preload("res://src/Constants.gd")
	var constants

	var turn_indicator_scene = preload("res://src/TurnIndicator.tscn")
	var turn_indicator
	
	func before_each():
		constants = constants_script.new()
		turn_indicator = turn_indicator_scene.instance()
	
	func test_prints_player_name():
		turn_indicator.set_turn("Player X")
		assert_eq(turn_indicator.get_text(), "Player X's turn")
		
class TestWithSettingPlayer:
	extends "res://addons/gut/test.gd"
	
	var constants_script = preload("res://src/Constants.gd")
	var constants

	var turn_indicator_scene = preload("res://src/TurnIndicator.tscn")
	var turn_indicator
	
	func before_each():
		constants = constants_script.new()
		turn_indicator = turn_indicator_scene.instance()
	
	func test_prints_player_name_if_not_set_player():
		turn_indicator.set_player("Player X")
		turn_indicator.set_turn("Player Y")
		assert_eq(turn_indicator.get_text(), "Player Y's turn")
		
	func test_prints_your_turn_if_set_player():
		turn_indicator.set_player("Player X")
		turn_indicator.set_turn("Player X")
		assert_eq(turn_indicator.get_text(), "Your turn")
