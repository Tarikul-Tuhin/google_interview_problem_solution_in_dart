// # This code outlines a solution in Dart that was solved by a google engineer in an YouTube video (Link: https://youtu.be/XKu_SEDAykw)
// # On that particular video, the solution was shown in a psuedo code
// # I tried to implement the psuedo code in my own preferred language (Dart) after understanding the psuedo code properly

// # Qusetion of this problem :  There is a 'List or array' and 'sum number' given by the examinar and we have to find whether two item's sum
// of that particular List is equal to sum or not.

// [1, 6, 4, 4, 5, 16, 12, 4] , sum = 20 ===> return true
// [1, 6, 4, 4, 5, 12, 12, 4] , sum = 20 ===> return false

// The solution is shown in two approaches. First one is better in terms of time complexity compared to the second one.
// The time complexity of first approach is Big O(n)
// The time complexity of second approach is Big O(n^2) which is bad

void main() {
  /////////// First Approach //////////////////////

  ///   Let's say our sum is 20. and The list is [1, 6, 4, 4, 5, 16, 12, 4]
  /// if we substract 20 with the first element of the list which is 20 - 1 = 19. it will check whether  1 is in the set or not. if yes, it will return true. here 19 is not in the set. so it does not return nothing. here it won't enter into the if statement and return nothing {19}
  /// if we substract 20 with the second element of the list which is 20 - 6 = 14. it will check whether 6 is in the set or not. if yes, it will return true. here 14 is not in the set. so it does not return anything. here it won't enter into the if statement and return nothing {19, 14}
  /// 20 - 4 = 16 ==> {19, 14, 16}
  /// 20 - 4 = 16 ==> {19, 14, 16} . It is a set. so it will not put common elements again. so we can see only one 16 here. We could have used List instead of set. Then we can observe the difference between set and list.
  /// 20 - 5 = 15 ==> {19, 14, 16, 15}
  /// then 6th item is 16. 20-16 =4, So the 'if statement' will check 16 is avaialable in the set or not. it is available in the set. so it will return true
  /// Here is the mathematical terms behind it. 20 = 16+4 .
  /// In this solution, 16 and 4 is a pair of sum for 20. if we substract 20-4 = 16 in the third element of list, then it will be saved in the set and look for 16. When we got 16 in the 5th element before substracting, it finally found the second number of the pair 16. remeber, the first number of pair we found was 4. but we are putting the substracting element i.e. 16 in the set to get the pair element of 4, which is 16. so before substracting with the 5th element, we checked the 5th element 16 is in the set or not. It found and return true. Exit from the loop

  bool hasPairWithSum(arr, sum) {
    final Set newSet = {};
    final len = arr.length;
    for (int i = 0; i < len; i++) {
      // iterating over the whole array
      if (newSet.contains(arr[i])) {
        // if it finds any repeated numbers before substracting sum with each element of the List, it will return true
        print('true');
        return true;
      }
      newSet.add(sum - arr[i]); // Substracting each element of list with sum.
      print(newSet);
    }

    return false;
  }

  hasPairWithSum([1, 6, 4, 4, 5, 16, 12, 4], 20);

  /////////// Second Approach //////////////////////

  bool hasPairWithSum2(arr, sum) {
    print('\n Second Approad');
    var len = arr.length;
    for (var i = 0; i < len - 1; i++) {
      for (var j = i + 1; j < len; j++) {
        if (arr[i] + arr[j] == sum) {
          print(arr[i]);
          print(arr[j]);
          print('true');
          return true;
        }
      }
    }
    return false;
  }

  hasPairWithSum2([6, 4, 2, 2, 5, 7], 9);
}


/* output of this problem is: 
  {19}
  {19, 14}
  {19, 14, 16}
  {19, 14, 16}
  {19, 14, 16, 15}
  true

  Second Approad
  4
  5
  true

*/