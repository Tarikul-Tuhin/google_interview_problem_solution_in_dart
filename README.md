This code outlines a solution in Dart that was solved by a google engineer in an YouTube video (Link: https://youtu.be/XKu_SEDAykw)
On that particular video, the solution was shown in a psuedo code. I tried to implement the psuedo code in my own preferred language (Dart) after understanding the psuedo code properly

Qusetion of this problem :  There is a 'List or array' and 'sum number' given by the examinar and we have to find whether two item's sum of that particular List is equal to sum or not.

[1, 6, 4, 4, 5, 16, 12, 4] , sum = 20 ===> return true
[1, 6, 4, 4, 5, 12, 12, 4] , sum = 20 ===> return false

The solution is shown in two approaches. First one is better in terms of time complexity compared to the second one.
The time complexity of first approach is Big O(n)
The time complexity of second approach is Big O(n^2) which is bad
