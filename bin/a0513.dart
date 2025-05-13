class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    List<int> stack = [];

    for (int asteroid in asteroids) {
      bool destroyed = false;

      while (stack.isNotEmpty && asteroid < 0 && stack.last > 0) {
        if (stack.last < -asteroid) {
          stack.removeLast(); //작은 오른쪽 소행성제거거
          continue;
        } else if (stack.last == -asteroid) {
          stack.removeLast(); // //같은 크기 소행성 제거

          destroyed = true;
          break;
        } else {
          //stack.last이 더 크면 asteroid는 파괴됨
          destroyed = true;
          break;
        }
      }
      if (!destroyed) {
        stack.add(asteroid);
      }
    }
    return stack;
  }
}
