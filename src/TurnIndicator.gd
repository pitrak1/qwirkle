extends Node

var __player_name

func _ready():
	$Label.text = ""
	
func get_text():
	return $Label.text

func set_player(player_name):
	self.__player_name = player_name
	
func set_turn(player_name):
	if (self.__player_name == player_name):
		$Label.text = "Your turn"
	else:
		$Label.text = player_name + "'s turn"
