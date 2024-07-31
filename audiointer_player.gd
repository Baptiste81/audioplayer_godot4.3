class_name AudioInterPlayer extends AudioStreamPlayer


func _on_full_pressed() -> void:
    if has_stream_playback():
        get_stream_playback().switch_to_clip(0)


func _on_drumless_pressed() -> void:
    if has_stream_playback():
        get_stream_playback().switch_to_clip(1)


func _on_guitarless_pressed() -> void:
    if has_stream_playback():
        get_stream_playback().switch_to_clip(2)
