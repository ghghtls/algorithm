class Solution {
  String decodeString(String s) {
    List<String> stack = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] != ']') {
        //현재 문자가 ']' 가 아닐 경우 (문자,숫자 '[',포함)
        stack.add(s[i]);
      } else {
        //']'
        String decodedPart = ''; //반복할 문자열을 처리 시작
        //'['를 만날때까지 stack에서 pop하며 문자열을구성
        while (stack.isNotEmpty && stack.last != '[') {
          decodedPart = stack.removeLast() + decodedPart;
        }
        //'['도제거
        stack.removeLast();

        //숫자부분 추출
        String numStr = '';
        while (stack.isNotEmpty && RegExp(r'\d').hasMatch(stack.last)) {
          numStr = stack.removeLast() + numStr;
        }
        // 추출한 숫자를 정수로 변환
        int repeat = int.parse(numStr);
        //decodePart를 repeat만큼 반복한 뒤 stack에 push
        stack.add(decodedPart * repeat);
      }
    }
    //stack에 남은 문자열을 합쳐 반환
    return stack.join();
  }
}


/*
* 문제
문자열 s가 주어졌을 때, 다음 규칙을 기반으로 문자열을 디코딩하세요:

k[encoded_string] 형식에서 encoded_string이 k번 반복됩니다.
중첩된 패턴이 포함될 수 있습니다.
디코딩된 문자열을 반환하세요.

* 조건
1. 1≤s.length≤30
2. s는 소문자, 숫자, 그리고 [와 ]로만 구성됩니다.
3. 주어진 입력은 항상 올바르게 형식화된 입력입니다.
4. 모든 숫자는 1 이상 300 이하입니다.

* 예시
1. 입력: s = "3[a]2[bc]" 출력: "aaabcbc"
	설명: "a"가 3번, "bc"가 2번 반복됩니다.

2. 입력: s = "3[a2[c]]" 출력: "accaccacc"
	설명: a2[c]가 "acc"로 변환되며, 이 결과가 3번 반복됩니다.

3. 입력: s = "2[abc]3[cd]ef" 출력: "abcabccdcdcdef"
	설명: "abc"가 2번, "cd"가 3번 반복되고, "ef"가 이어집니다.
*/