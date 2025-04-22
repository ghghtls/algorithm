class Solution {
  int compress(List<String> chars) {
    int write = 0; //쓰는 위치
    int read = 0; // 읽는 위치

    while (read < chars.length) {
      String currentChar = chars[read];
      int count = 0;

      //현재 문자와 같은 것들 세기
      while (read < chars.length && chars[read] == currentChar) {
        read++;
        count++;
      }

      //문자쓰기
      chars[write] = currentChar;
      write++;

      //카운트가 1이상일 경우만 숫자 붙이기
      if (count > 1) {
        for (String digit in count.toString().split('')) {
          chars[write] = digit;
          write++;
        }
      }
    }
    return write;
  }
}

/*
주어진 chars 배열에서 연속된 문자를 압축하는 알고리즘을 작성하라는 거야. 단, 압축된 결과를 새로 만드는 게 아니라, 기존 배열 chars에 덮어쓰기해야 해. 또, 추가적인 공간은 O(1) (즉, 상수 공간만 사용해야 함).

압축 방식:
문자가 한 번만 등장하면 그대로.

예: ['a'] → 'a'

연속되면 문자 뒤에 숫자 붙임.

예: ['a', 'a', 'a'] → 'a3'

숫자는 각 자리 숫자를 분리해서 넣음.

예: 12 → '1', '2'로 분리해서 chars에 저장

최종적으로 chars를 수정하고, 수정된 길이를 반환.


 */

/*
부분 | 설명
write | 압축된 데이터를 chars에 덮어쓸 때의 인덱스
read | 원래 데이터를 읽어오는 인덱스
while (read < chars.length) | 끝날 때까지 반복
count.toString().split('') | 12같은 숫자는 ['1','2']로 나누기 위해 
*/
