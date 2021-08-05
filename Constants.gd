extends Node

export var ip_address = "localhost" # The IP address or DNS name for your server
export var port = 1234 # The port to communicate through

export var starting_camera_position = Vector2(640, 360) # The starting position of the game camera
export var camera_pan_increment = 256 # The amount to pan the camera on a Pan action
export var camera_zoom_factor = 0.2 # The amount to zoom on a Zoom action

export var client_start_state = <REQUIRED> # The scene to use as your starting scene for the client
export var server_start_state = "res:/addons/ProjectBootstrap/Server.tscn" # The scene to use as your starting scene for the server.  You can change this if you want to write your own.
export var player_scene = <REQUIRED> # The scene to use to represent a player, a client, a person on the network using your server.  You should write your own and inherit from Player.gd.
export var game_scene = <REQUIRED> # The scene to use to represent a game, a lobby, a grouping of people on your server.  You should write your own and inherit from Game.gd.
