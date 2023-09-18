public class LocalMusicPlayer implements MusicPlayer {
    String file = null;

    @Override
    public void play() {
        if (file != null) System.out.printf("PC에서 가져온 음악 '%s'를 재생%n", file);
        else System.out.println("파일 없음");
    }

    @Override
    public void pause() {
        if (file != null) System.out.printf("'%s' pause%n", file);
        else System.out.println("파일 없음");
    }

    @Override
    public void stop() {
        if (file != null) {
            System.out.printf("'%s' stop%n", file);
            file = null;
        }
        else System.out.println("파일 없음");
    }

    @Override
    public void getMusic() {
        System.out.println("PC에서 음악 파일 가져오는중");

         file = "PC.mp3";
    }
}
