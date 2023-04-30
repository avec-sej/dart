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
  final testFinal = "final test";
  //testFinal = "error";
  final String testFinal2 = "final test 2"; // String 생략가능

  /* late : final | var 앞에 붙일 수 있는 수식어로, 초기데이터 없이 변수를 선언할 수 있음 */
  late final testLate;
  late var testLate2;
  //do something, like go to API
  testLate = "late test";

  /* Constant (const) */
  const testConst = "const Test";
  //testConst = "error";

  /* List */
  var testList = [1,2,3,4,5];
  List<int> testList2 = [1,2,3,4,5]; // 2가지 방법있다. 같은 결과값 나옴.
  testList.add(6); 
  print(testList.first);

}