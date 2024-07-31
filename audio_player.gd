extends Node

@export var player_to_test: AudioStreamPlayer;
@export var sync_player: AudioStreamPlayer;
@export var inter_player: AudioStreamPlayer;

@onready var drumless:Button = $Control/drumless;
@onready var guitarless:Button = $Control/guitarless;
@onready var bass:Button = $Control/bass;
@onready var guitar:Button = $Control/guitar;
@onready var hh:Button = $Control/hh;
@onready var snare:Button = $Control/snare;
@onready var kick:Button = $Control/kick;

func _ready() -> void:
    drumless.disabled = player_to_test == sync_player;
    guitarless.disabled = player_to_test == sync_player;
    bass.disabled = player_to_test == inter_player;
    guitar.disabled = player_to_test == inter_player;
    hh.disabled = player_to_test == inter_player;
    snare.disabled = player_to_test == inter_player;
    kick.disabled = player_to_test == inter_player;


func _on_play_pressed() -> void:
    player_to_test.play()


func _on_pause_toggled(toggled) -> void:
    player_to_test.set_stream_paused(toggled)


func _on_stop_pressed() -> void:
    player_to_test.stop()
