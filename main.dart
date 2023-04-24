void main() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }

  //There are two ways.
  var name = 'Seo';
  name = 'Eunji';
  String name2 = "Seo";

  //dynamic : ideally, you would like to avoid it. Use Dynamic when you really really need it.
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


  //null safety(?) = nullable 
  String? nullTest = "hello";
  nullTest = null;
  // if(nullTest != null){
  //   nullTest.isNotEmpty ;
  // }
  nullTest?.isNotEmpty; 
}