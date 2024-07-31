class_name AudioSyncPlayer extends AudioStreamPlayer

func _on_bass_toggled(toggled) -> void:
    var synchrostream : AudioStreamSynchronized = stream as AudioStreamSynchronized
    var tween : Tween = create_tween()

    if !toggled:
        tween.tween_property(synchrostream, "stream_0/volume", 0.0, 3.0)
    else:
        tween.tween_property(synchrostream, "stream_0/volume", -60.0, 3.0)


func _on_guitar_toggled(toggled) -> void:
    var synchrostream : AudioStreamSynchronized = stream as AudioStreamSynchronized
    var tween : Tween = create_tween()

    if !toggled:
        tween.tween_property(synchrostream, "stream_1/volume", 0.0, 3.0)
    else:
        tween.tween_property(synchrostream, "stream_1/volume", -30.0, 3.0)


func _on_hh_toggled(toggled) -> void:
    var synchrostream : AudioStreamSynchronized = stream as AudioStreamSynchronized
    var tween : Tween = create_tween()

    if !toggled:
        tween.tween_property(synchrostream, "stream_2/volume", 0.0, 3.0)
    else:
        tween.tween_property(synchrostream, "stream_2/volume", -60.0, 3.0)


func _on_snare_toggled(toggled) -> void:
    var synchrostream : AudioStreamSynchronized = stream as AudioStreamSynchronized
    var tween : Tween = create_tween()

    if !toggled:
        tween.tween_property(synchrostream, "stream_3/volume", 0.0, 3.0)
    else:
        tween.tween_property(synchrostream, "stream_3/volume", -60.0, 3.0)


func _on_kick_toggled(toggled) -> void:
    var synchrostream : AudioStreamSynchronized = stream as AudioStreamSynchronized
    var tween : Tween = create_tween()

    if !toggled:
        tween.tween_property(synchrostream, "stream_4/volume", 0.0, 3.0)
    else:
        tween.tween_property(synchrostream, "stream_4/volume", -60.0, 3.0)
