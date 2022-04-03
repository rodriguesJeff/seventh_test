import 'package:chewie/chewie.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:seventh_test/app/modules/home/home_repository.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeRepository repository;
  late VideoPlayerController _controller;
  late ChewieController chewieController;
  String url = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    repository = HomeRepository(dio: Dio());
    getVideo().then((value) {
      _controller = VideoPlayerController.network(value)
        ..initialize().then((_) {
          setState(() {
            isLoading = false;
          });
        });
      chewieController = ChewieController(
        videoPlayerController: _controller,
        aspectRatio: _controller.value.aspectRatio,
        autoPlay: true,
        looping: true,
      );
    });
  }

  Future<String> getVideo() async {
    final response = await repository.getVideo();
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Bem vindo ao nosso sistema de segurança',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.all(8),
                child: isLoading
                    ? const CircularProgressIndicator()
                    : _controller.value.isInitialized
                        ? Chewie(controller: chewieController)
                        : const Text('Erro ao carregar o video'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
