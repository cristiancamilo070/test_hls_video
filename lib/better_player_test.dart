import 'package:better_player_enhanced/better_player.dart';
import 'package:flutter/material.dart';

class BetterPlayerTest extends StatelessWidget {
  const BetterPlayerTest({super.key});

  @override
  Widget build(BuildContext context) {
    // Configuración del reproductor
    final betterPlayerConfiguration = BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      autoDispose: true,
      autoDetectFullscreenAspectRatio: true,
      fullScreenByDefault: true,
      fullScreenAspectRatio: 16 / 9,
      controlsConfiguration: const BetterPlayerControlsConfiguration(
        enablePip: false, // Deshabilita Picture in Picture
        enableFullscreen: true, // Habilita pantalla completa
        enableSubtitles: false, // Deshabilita subtítulos
        loadingColor: Colors.deepOrange, // Color del indicador de carga
        progressBarBufferedColor: Colors.red, // Color del buffer
        progressBarHandleColor: Colors.blue, // Color del indicador de progreso
        progressBarBackgroundColor:
            Colors.white, // Fondo de la barra de progreso
      ),
    );

    // Configuración de la fuente de datos
    final betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      'https://live.socialverse.proximaxtest.com/streamerc_app/10000/10000.m3u8',
      bufferingConfiguration: const BetterPlayerBufferingConfiguration(
        minBufferMs: 5000, // Buffer mínimo (5s)
        maxBufferMs: 131072, // Buffer máximo (131s)
        bufferForPlaybackMs: 2500, // Buffer para iniciar reproducción (2.5s)
        bufferForPlaybackAfterRebufferMs: 5000, // Buffer tras interrupción (5s)
      ),
      cacheConfiguration: const BetterPlayerCacheConfiguration(
        useCache: true, // Habilita el caché
        maxCacheSize: 10 * 1024 * 1024, // Tamaño máximo del caché (10MB)
        maxCacheFileSize: 10 * 1024 * 1024, // Tamaño máximo por archivo (10MB)
        preCacheSize: 3 * 1024 * 1024, // Tamaño de precarga (3MB)
      ),
    );

    // Creación del controlador
    final betterPlayerController = BetterPlayerController(
      betterPlayerConfiguration,
      betterPlayerDataSource: betterPlayerDataSource,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Stream Player'),
      ),
      body: BetterPlayer(
        controller: betterPlayerController,
      ),
    );
  }
}
