/*
* 문제
문자열 s가 주어집니다. 문자열에는 '*' 문자가 포함될 수 있으며, '*' 문자는 직전의 문자 하나를 삭제하는 역할을 합니다.
모든 '*'이 적용된 결과로 남는 최종 문자열을 반환하세요.

* 조건
1. 1≤s.length≤10^5
2. s는 소문자 알파벳과 '*'로 구성됩니다.
3. '*' 문자가 나타날 때마다 s의 직전 문자도 존재합니다.

* 예시
1. 입력: s = "leet**cod*e" 출력: "lecoe"
	설명: 't'와 'd'가 삭제되며, 남은 문자열은 "lecoe"입니다.

2. 입력: s = "erase*****" 출력: ""
	설명: 모든 문자와 함께 다섯 개의 '*'이 모두 적용되어 빈 문자열이 됩니다.*/

class Solution {
  String removeStars(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      String ch = s[i];
      if (ch == '*') {
        if (stack.isNotEmpty) {
          stack.removeLast();
        }
      } else {
        stack.add(ch);
      }
    }
    return stack.join();
  }
}
