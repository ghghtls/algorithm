/*
* 문제
주어진 문자열 s에서 단어들의 순서를 뒤집어 반환하세요.
단어는 하나 이상의 문자가 공백(' ')으로 구분된 문자열입니다.
각 단어는 정확히 하나의 공백으로 구분되어야 하며, 앞이나 뒤에 불필요한 공백이 없어야 합니다.

* 조건
1. s.length는 1 이상 10^4 이하입니다.
2. s에는 영문자, 숫자, 공백(' ')이 포함될 수 있습니다.
3. 공백은 단어 사이에만 존재합니다.

* 예시
1. 입력: s = "the sky is blue" 출력: "blue is sky the"

2. 입력: s = " hello world " 출력: "world hello"
	설명: 앞과 뒤의 공백은 제거되고, 단어 사이에 정확히 하나의 공백이 남아 있어야 합니다.

3. 입력: s = "a good   example" 출력: "example good a"
	설명: 중간에 여러 개의 공백이 존재하더라도, 단어 사이에는 하나의 공백만 있어야 합니다.
  */

class Solution {
  String reverseWords(String s) {
    List<String> words = s.trim().split(RegExp(r'\s+'));
    List<String> reversed = words.reversed.toList();
    return reversed.join(' ');
  }

  ///앞뒤 공백제거 공백으로 스플릿해서 나누기
  ///리버스트.투리스트 자체는 순서 뒤집는 함수임
  ///마지막은 역순으로 된거 공백으로 합치기
}
