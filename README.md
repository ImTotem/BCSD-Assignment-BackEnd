# BCSD-Assignment-BackEnd
BCSD BackEnd 실습 과제 - 0주차

## 단어 찾기
**주어진 문장에서 특정 단어를 찾고, 해당 단어의 빈도수를 계산하는 프로그램을 작성해보세요.**
1. 사용자로부터 하나의 문장을 입력받습니다.
2. 사용자로부터 찾고자 하는 단어를 입력받습니다.
3. 입력받은 문장에서 해당 단어가 몇 번 나타나는지 계산하고 출력합니다.

- 대소문자를 구분하지 않고 계산합니다. ("Hello"와 "hello"는 같은 단어)
- 단어는 띄어쓰기로 구분하고, 특수문자가 있다면 특수문자까지 함께 하나의 단어로 취급합니다.
- String과 List를 사용하여 작성합니다.
  - String
    - toLowerCase()를 활용하여 대소문자 구분을 없앨 수 있습니다.
    - split()을 활용하여 하나의 문장을 여러 단어로 분리할 수 있습니다.
    - equals(String)을 활용하여 두 단어의 일치 여부를 판단할 수 있습니다.
  - List
    - add(Object)를 활용하여 객체(String 등)를 담을 수 있습니다.
    - for-each문과 함께 사용하여 리스트 요소를 편하게 순회할 수 있습니다.

---
## 입력 예제

### 예제 입력 1
```text
Hello World
hello
```

### 예제 출력 1
```text
단어 'hello'의 빈도수: 1
```

---

### 예제 입력 2
```text
Hello, Gito. Hello, Everyone!
hello,
```

### 예제 출력 2
```text
단어 ‘hello,’의 빈도수: 2
```

---

### 예제 입력 3
```text
apple kiwi banana kiwi bird kiwi.
kiwi
```

### 예제 출력 3
```text
단어 ‘kiwi’의 빈도수: 2
```
