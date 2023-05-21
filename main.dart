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
  /* Sets */
    var setTest = {1,2,3,4};
    Set<int> setTest2 = {1,2,3,4}; // all items are unique.
    setTest.add(1);
    setTest.add(1);
    print('setTest: ${setTest}'); //{1, 2, 3, 4}
    List<int> listTest4 = [1,2,3,4];
    listTest4.add(4);
    listTest4.add(4);
    print('listTest4: ${listTest4}'); //[1, 2, 3, 4, 4, 4]

  /* Define a Function */
  print(sayHello('Lee'));
  print(sayHello3('Joe'));

  /* Named parameters */
  //print(yourInfo("Seo", 30, "France"));
  print(yourInfo(
    age: 25, 
    country: "England", 
    name: "Jane",
  ));
  print(yourInfo( 
    country: "Germany", 
  ));
  print(yourInfo2(  // 전부 안적으면 에러남
    country: "France",
    age: 23,
    name: "Zoe", 
  ));

  print(sayHello4("Mimi", 23));
  print(capitalizedName("eunji"));
  print(capitalizedName2(null));
  /* QQ equals */
  String? qqName;
  //'??='은 null인 경우에 대입해라는 뜻 
  qqName ??= "qqName";
  //아래는 실행되지 않는다, 왜냐하면 변수가 null이 아니게 되었기때문에
  qqName ??= "None";
  print("QQ Equals : "+qqName); //expected output : QQ Equals : qqName

  print(reverseListofNum(listTest4));

}


/*===========================out of main()============================== */
/* Define a Function */
String sayHello (String name){
  return "Hello ${name}, nice to meet u";
}

//sayHello = sayHello3
String sayHello3(String name) => "Hello ${name}, nice to meet u";

void sayHello2 (String name){
  print("Hello ${name}, nice to meet u");
}

 /* Named parameters */
//  String yourInfo (String name, int age, String country){
//   return "Hello $name, I'm $age, I'm from $country";
//  }
//  String yourInfo ({String name, int age, String country}){  //null값이 생길 수 있기 때문에 에러남 
//   return "Hello $name, I'm $age, I'm from $country";
//  }
 String yourInfo ({String name="anonymous", int age=10, String country="Korea",}){  //default값 지정해줌 
  return "Hello $name, I'm $age, I'm from $country";
 }
 String yourInfo2  ({required String name, required int age, required String country,}){  //required 지정해줌 
  return "Hello $name, I'm $age, I'm from $country";
 }

 /* Optional positional parameters */
  String sayHello4(
    String name,
    int age,
    [String? country="cuba"]
  ) => "Hello $name, I'm $age, I'm from $country";

  /* QQ operator */
  String capitalizedName(String name)=>name.toUpperCase();
  //capitalizedName2 = '?'를 붙이면 null이 될 수도 있음을 나타냄 
  //long ver.
  String capitalizedName2(String? name){
    if(name != null){
      return name.toUpperCase();
    }else{
      return "ANONYMOUS";
    }
  }
  //short ver.
  String capitalizedName3(String? name)=> name != null ? name.toUpperCase() : "ANONYMOUS";
  //shorter ver.
  String capitalizedName4(String? name)=> name?.toUpperCase() ?? "ANONYMOUS";

  /* Typedof */
  typedef TypeofListInt = List<int>;
  TypeofListInt reverseListofNum(List<int> list){
    var reversed = list.reversed;
    return reversed.toList();
  }
