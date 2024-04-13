import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_epam_kazakh/src/app/di/app_scope.dart';
import 'package:flutter_epam_kazakh/src/map/bloc/audio_bloc.dart';
import 'package:flutter_epam_kazakh/src/map/bloc/map_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as perm;
import 'package:provider/provider.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  static const String routeName = '/map';

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Location _location = Location();
  late GoogleMapController _mapController;
  late CameraPosition _initialCameraPosition;
  late LocationData _locationData;

  late final MapBloc _mapBloc;
  late final AudioBloc _audioBloc;

  bool _isRecordReady = false;

  final AudioPlayer audioPlayer = AudioPlayer();

  Future<void> playLocalAudio(String filePath) async {
    try {
      // Ensure the file has a correct extension if known, e.g., .mp3, .wav
      await audioPlayer.setFilePath(filePath);
      audioPlayer.play();
    } catch (e) {
      print("Failed to play audio: $e");
    }
  }

  FlutterSoundRecorder recorder = FlutterSoundRecorder();

  @override
  void initState() {
    super.initState();
    _mapBloc = context.read<IAppScope>().mapBloc;
    _audioBloc = context.read<IAppScope>().audioBloc;

    _initialCameraPosition = const CameraPosition(
      target: LatLng(0, 0),
      zoom: 15,
    );
    _getCurrentLocation();
    initRecorder();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await _location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _location.changeSettings(accuracy: LocationAccuracy.low);
    _locationData = await _location.getLocation();

    _mapBloc.add(MapEvent.getNearByPlaces(
      latitude: _locationData.latitude!,
      longitude: _locationData.longitude!,
    ));
    setState(() {
      _mapController.animateCamera(
        CameraUpdate.newLatLng(
            LatLng(_locationData.latitude!, _locationData.longitude!)),
      );
    });
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _mapController = controller;
  }

  Future<void> initRecorder() async {
    final status = await perm.Permission.microphone.request();

    if (status.isGranted) {
      await recorder.openRecorder();

      setState(() {
        _isRecordReady = true;
      });
    } else {
      throw Exception('Microphone permission is not granted');
    }
    await recorder.setSubscriptionDuration(const Duration(milliseconds: 10));
  }

  @override
  void dispose() {
    super.dispose();
    _mapController.dispose();
    recorder.closeRecorder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (!_isRecordReady) return;

          if (recorder.isRecording) {
            final path = await recorder.stopRecorder();
            final audioFile = File(path!);

            print('SLDCMSLKMCVLKSFMV');
            _audioBloc.add(AudioEvent.sendAudioEvent(audioFile: audioFile));

            // playLocalAudio(audioFile.path);

            // bool doesExist = await audioFile.exists();
            // if (!doesExist) {
            //   print("File does not exist: $path");
            // } else {
            //   print("File exists, proceeding to play.");
            //   await playLocalAudio(audioFile.path);
            // }

            setState(() {});

            print('Recorded audio file: $audioFile');
          } else {
            await recorder.startRecorder(
              toFile: 'audio-file.wav',
            );

            setState(() {});
          }
        },
        child: Icon(recorder.isRecording ? Icons.stop : Icons.mic),
      ),
      body: GoogleMap(
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        zoomControlsEnabled: true,
        scrollGesturesEnabled: true,
        onMapCreated: _onMapCreated,
        initialCameraPosition: _initialCameraPosition,
        // markers: {_currentLocationMarker},
      ),
    );
  }
}
