import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// Singleton instance of AudioPlayer
class AudioManager {
  static final AudioPlayer player = AudioPlayer();
  static final ValueNotifier<String?> currentPlayingUrl = ValueNotifier<String?>(null);
}

class PlayArrowButton extends StatefulWidget {
  final String url;

  PlayArrowButton({Key? key, required this.url}) : super(key: key);

  @override
  State<PlayArrowButton> createState() => _PlayArrowButtonState();
}

class _PlayArrowButtonState extends State<PlayArrowButton> {
  late bool isCurrentlyPlaying;

  @override
  void initState() {
    super.initState();
    isCurrentlyPlaying = widget.url == AudioManager.currentPlayingUrl.value;
    AudioManager.currentPlayingUrl.addListener(_handleCurrentPlayingUrlChanged);
  }

  @override
  void dispose() {
    AudioManager.currentPlayingUrl.removeListener(_handleCurrentPlayingUrlChanged);
    _stopAudio(); 
    super.dispose();
  }

  void _handleCurrentPlayingUrlChanged() {
    setState(() {
      // Update the state based on the current playing URL change
      isCurrentlyPlaying = widget.url == AudioManager.currentPlayingUrl.value;
    });
  }

  Future<void> _stopAudio() async {
    await AudioManager.player.stop();
    AudioManager.currentPlayingUrl.value = null;
  }

  @override
  Widget build(BuildContext context) {
    return widget.url.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () async {
                if (isCurrentlyPlaying) {
                  await AudioManager.player.pause();
                  AudioManager.currentPlayingUrl.value = null;
                } else {
                  await _stopAudio(); // Stop any currently playing audio
                  await AudioManager.player.play(UrlSource(widget.url));
                  AudioManager.currentPlayingUrl.value = widget.url;
                }
              },
              child: Icon(
                isCurrentlyPlaying ? Icons.pause : Icons.play_arrow,
                color: Theme.of(context).colorScheme.primary,
                size: 30,
              ),
            ),
          )
        : const SizedBox();
  }
}
