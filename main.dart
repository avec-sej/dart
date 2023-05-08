void main() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }

  //There are two ways.
  var name = 'Seo';
  name = 'Eunji';
  String name2 = "Seo";

  /* dynamic : ideally, you would like to avoid it. Use Dynamic when you really really need it. */
  //var test;
  dynamic test;
  // test = 'strTest';
  // test = 'intTest';
  // test = true;
  if(test is String){
    //check Type of the data
  }
  if(test is int){
    
  }

  /* null safety(?) = nullable  */
  String? nullTest = "hello";
  nullTest = null;
  // if(nullTest != null){
  //   nullTest.isNotEmpty ;
  // }
  nullTest?.isNotEmpty; 

  /* final */
  final finalTest = "final test";
  //testFinal = "error";
  final String finalTest2 = "final test 2"; // String 생략가능

  /* late : final | var 앞에 붙일 수 있는 수식어로, 초기데이터 없이 변수를 선언할 수 있음 */
  late final lateTest;
  late var lateTest2;
  //do something, like go to API
  lateTest = "late test";

  /* Constant (const) */
  const constTest = "const Test";
  //constTest = "error";

  /* List */
  var listTest = [1,2,3,4,5];
  List<int> listTest2 = [1,2,3,4,5]; // 2가지 방법있다. 같은 결과값 나옴.
  listTest.add(6); 
  print(listTest.first); // 1
  listTest.last; //5

  /* Collection If */
  var giveMeFive = true;
  var listTest3 = [
    1,
    2,
    3,
    4,
    if(giveMeFive) 5,
    //if(giveMeFive){listTest3.add(5)} 의 shortcut 
    ];
    print(listTest3);

  /* String Interpolation ($) "" '' Both can be used. */
  var strName = "Eunji";
  var age = 20;
  var greeting = 'Hello, my name is ${strName}. Nice to meet you. I\'m ${age+5}.';
  print(greeting);

  /* Collection For */
  var oldFriends = ['Lynn', 'Colin'];
  var newFriends = [
    'Lewis',
    'Cat',
    'Lee',
    for(var friend in oldFriends) "<3 ${friend}",
  ];
  // for(var friend in oldFriends){
  //   newFriends.add(friend);
  // }
  print(newFriends);

 /* Maps */
  var mapTest = {
    'mapName': 'Lee',
    'mapAge': 25,
    'superPower': false,
  };
  Map<List<int>, bool> mapTest2 = {
    [1,2,3,4]: true,
    [5,6,7,8]: false,
  };



}