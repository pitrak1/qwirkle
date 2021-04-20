extends Control

var constants_script = preload("res://src/Constants.gd")
var constants

func _ready():
	constants = constants_script.new()
	$TurnIndicator.set_turn("Player 1")
	$Board.initialize(constants.BOARD_SIZE)
	$Player1Hand.initialize(constants.HAND_SIZE, $TileStack)
	$Player2Hand.initialize(constants.HAND_SIZE, $TileStack)


