class AudioPlayer{
  late double volume;
  late bool isplaying;

  void play(){
    print(' playing music');
  }
   void stop(){
    print('music stopped');
  }
   void pause(){
    print('music paused');
  }

}

class Visualizer{
  void visualizeAudio(){
    
  }
}

class Equalizer{
  adjustEqualizer(){
    
  }
}
class MusicPlayer extends AudioPlayer implements Visualizer,Equalizer{
 
  void playMusic(){
      play();
  }
  void stopMusic(){
    stop();
  }
  void adujustAudio(){
    adjustEqualizer();
  }
  void showVisualization(){
    visualizeAudio();
  }
  
  @override
  adjustEqualizer() {
   print('adjusting Equalizer settings ');
  }
  
  @override
  void visualizeAudio() {
    print('Audio visualized');
  }
}