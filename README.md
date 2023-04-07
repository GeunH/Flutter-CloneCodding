# Flutter-using-dart
use Flutter with dart programming language.

2023-04-06 Dart 프로그래밍 언어 익히기

     변수의 재할당이 되지 못하도록 하는 예약어 final 
     
     dynamic - 어떤 변수형이 들어올지 모를때 사용
     if( dynamic 변수  is string ) 뒤로 함수 사용
     
     late  : api에서 데이터를 가져올 때 나중에 변수를 사용,
     정의되지 않았으면 접근 불가능.
     
     const : 컴파일 할때 값을 알고 있는 변수를 생성
     
     null safety : 어떤 변수가 null이 될 수 있음.
     -> String ? name : name은 NULL일수도 있음.
     -> name?.isEmpty
     
     변수형 : String, int, double, bool
     
     모든 변수는 객체임. Dart는 객체지향 언어.
     
     num 은 int or double이 될 수 있음.
     num은 int, double의 부모 class임.

2023-04-07 
     List 이해하기 
     선언 -> List<int> 변수명 = [초기값];
     
     collection if 문을 사용하여 초기화에 if 문 사용가능
     collection if      
        var numbers [ 
        1,
        if(true) 5 가 가능함.
        ];     
     var 변수형이 String일때 ex) "Hello My name is $name "형태라면 $뒤에 이미 존재하는 변수를 사용하여 추가가 가능.
     
     collection for문을 사용하여 이미 있는 변수를 끌어다 List에 추가 가능.
     var oldFriends = ['nico', 'lynn'];
     var newFriends = [
          'lewis',
          'ralph',
          'darren',
          for(var friend in oldFriends) " $friend",
     ];
     
     
     
     
