# BCSD-Assignment-BackEnd
BCSD BackEnd 실습 과제 - 1주차

## 뮤직 플레이어 만들기
1. **`MusicPlayer` 인터페이스**를 정의합니다. 이 인터페이스는 다음과 같은 추상 메서드를 가져야 합니다.
   - `void play()`: 음악을 재생하는 기능을 구현합니다.
   - `void pause()`: 음악을 일시 정지하는 기능을 구현합니다.
   - `void stop()`: 음악을 정지하는 기능을 구현합니다.
     <br><br>
2. `MusicPlayer` 인터페이스를 구현하는 두 개의 클래스를 만듭니다.
   - `StreamingMusicPlayer`와 `LocalMusicPlayer`
   - `StreamingMusicPlayer` 클래스: 인터넷을 통해 음악을 스트리밍하는 기능을 추가로 구현합니다.
   - `LocalMusicPlayer` 클래스: 로컬에서 저장된 음악 파일을 재생하는 기능을 추가로 구현합니다.
     <br><br>
3. 각 클래스의 메서드는 단순히 **메세지 출력**하는 형태로 구현합니다.
   - 예를 들어, `play()` 메서드에서는 `"PC에 저장된 음악을 재생합니다."`와 같은 문장을 출력합니다.
     <br><br>
4. `MusicPlayer`를 테스트하는 클래스인 **`Main` 클래스**를 만듭니다. `Main` 클래스에서는 다음과 같은 동작을 수행합니다.
   - `StreamingMusicPlayer`와 `LocalMusicPlayer` **객체**를 **생성**합니다.
   - 두 객체의 `play()`, `pause()`, `stop()` 메서드를 순서대로 **호출**하여 동작을 확인합니다.
   - 만약 `StreamingMusicPlayer`나 `LocalMusicPlayer` 클래스에서 새로운 메서드를 추가로 구현했다면 해당 기능도 테스트합니다.
