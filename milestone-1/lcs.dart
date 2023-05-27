import 'dart:io';
int longestCommonSubstringLength(String s1, String s2) {
  int m = s1.length;
  int n = s2.length;
  List<List<int>> dp = List.generate(m + 1, (_) => List.filled(n + 1, 0));
  print(dp);
  int maxLength = 0;
  for (int i = 1; i <= m; i++) {
    for (int j = 1; j <= n; j++) {
      if (s1[i - 1] == s2[j - 1]) {
        dp[i][j] = dp[i - 1][j - 1] + 1;
        if (dp[i][j] > maxLength) {
          maxLength = dp[i][j];
        }
      } else {
        dp[i][j] = 0;
      }
    }
  }
  return maxLength;
}

void main() {
  String s1 = stdin.readLineSync()!;
  String s2 = stdin.readLineSync()!;
  int lcsLength = longestCommonSubstringLength(s1, s2);
  print('The length of the longest common substring is $lcsLength');
}