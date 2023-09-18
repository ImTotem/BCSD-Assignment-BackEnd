public class Main {
    public static void main(String[] args) {
        StreamingMusicPlayer streamingMusicPlayer = new StreamingMusicPlayer();

        streamingMusicPlayer.getMusic(); // 인터넷에서 음악 파일 가져오는중
        streamingMusicPlayer.play(); // 인터넷에서 가져온 음악 'Streaming.mp3'를 재생
        streamingMusicPlayer.pause(); // 'Streaming.mp3' pause
        streamingMusicPlayer.stop(); // 'Streaming.mp3' stop

        streamingMusicPlayer.play(); // 파일 없음
        streamingMusicPlayer.pause(); // 파일 없음
        streamingMusicPlayer.stop(); // 파일 없음

        System.out.println("=================================");

        LocalMusicPlayer localMusicPlayer = new LocalMusicPlayer();

        localMusicPlayer.getMusic(); // PC에서 음악 파일 가져오는중
        localMusicPlayer.play(); // PC에서 가져온 음악 'PC.mp3'를 재생
        localMusicPlayer.pause(); // 'PC.mp3' pause
        localMusicPlayer.stop(); // 'PC.mp3' stop

        localMusicPlayer.play(); // 파일 없음
        localMusicPlayer.pause(); // 파일 없음
        localMusicPlayer.stop(); // 파일 없음
    }
}