import 'package:flutter_template/app/data/model/quiz.dart';

class QuizUseCase {
  Future<List<Quiz>> getQuizList() async {
    return [
      Quiz(
          question: 'Flutter란 무엇인가요?',
          answer:
              'Flutter는 Google에서 개발한 오픈 소스 UI 소프트웨어 개발 키트(SDK)로, 하나의 코드베이스로 Android, iOS, 웹, 데스크탑 애플리케이션을 개발할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 주요 장점은 무엇인가요?',
          answer:
              '단일 코드베이스로 멀티 플랫폼 지원, 빠른 개발을 위한 Hot Reload 기능, 우수한 성능, 풍부한 위젯과 커스터마이징 가능, 강력한 커뮤니티와 패키지 지원'),
      Quiz(
          question: 'Dart 언어의 특징은 무엇인가요?',
          answer:
              'Dart는 Google이 개발한 프로그래밍 언어로, JIT(Just-In-Time) 및 AOT(Ahead-Of-Time) 컴파일을 지원하며, 간결한 문법과 강력한 타입 시스템을 갖추고 있습니다.'),
      Quiz(
          question: 'Flutter와 React Native의 차이점은 무엇인가요?',
          answer:
              'Flutter는 Dart 언어를 사용하고, React Native는 JavaScript를 사용합니다. Flutter는 모든 UI를 자체 위젯으로 제공하며, React Native는 네이티브 컴포넌트를 래핑하여 사용합니다. Flutter는 Hot Reload가 더 빠르고, 성능이 더 우수합니다.'),
      Quiz(
          question: 'StatefulWidget과 StatelessWidget의 차이점은 무엇인가요?',
          answer:
              'StatelessWidget은 변경되지 않는 위젯입니다. StatefulWidget은 상태를 가지고 있으며, 상태 변화에 따라 UI가 업데이트됩니다.'),
      Quiz(
          question: 'Flutter에서 상태 관리를 어떻게 하나요?',
          answer:
              '상태 관리는 setState(), InheritedWidget, Provider, Riverpod, BLoC 등 다양한 방법으로 할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 위젯 트리 구조에 대해 설명해 주세요.',
          answer:
              'Flutter 앱은 위젯 트리로 구성되며, 각 위젯은 자식 위젯을 가질 수 있습니다. 위젯 트리는 부모-자식 관계를 통해 UI를 구성합니다.'),
      Quiz(
          question: 'Flutter의 Hot Reload 기능에 대해 설명해 주세요.',
          answer:
              'Hot Reload는 코드 변경 사항을 즉시 반영하여 애플리케이션을 재시작하지 않고도 UI를 업데이트할 수 있게 합니다.'),
      Quiz(
          question: 'Flutter에서 레이아웃을 구성하는 방법에 대해 설명해 주세요.',
          answer:
              'Flutter는 Row, Column, Stack, Container 등 다양한 레이아웃 위젯을 제공하여 UI를 구성합니다.'),
      Quiz(
          question: 'Material Design과 Cupertino 위젯의 차이점은 무엇인가요?',
          answer:
              'Material Design 위젯은 Android 스타일을 따릅니다. Cupertino 위젯은 iOS 스타일을 따릅니다.'),
      Quiz(
          question: 'Flutter에서 비동기 프로그래밍을 어떻게 하나요?',
          answer: 'Dart의 async, await 키워드를 사용하여 비동기 프로그래밍을 할 수 있습니다.'),
      Quiz(
          question: 'Future와 Stream의 차이점은 무엇인가요?',
          answer: 'Future는 단일 비동기 결과를 반환합니다. Stream은 여러 비동기 결과를 순차적으로 반환합니다.'),
      Quiz(
          question: 'Flutter의 Navigator와 Routing 시스템에 대해 설명해 주세요.',
          answer:
              'Navigator는 화면 전환을 관리하는 클래스이며, push, pop 메서드를 사용하여 화면을 추가하거나 제거할 수 있습니다. Routing 시스템은 각 화면을 경로로 정의하고, MaterialApp 위젯의 initialRoute와 routes 속성을 사용하여 네비게이션을 설정할 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 애니메이션을 구현하는 방법에 대해 설명해 주세요.',
          answer: 'AnimationController와 다양한 애니메이션 위젯을 사용하여 애니메이션을 구현할 수 있습니다.'),
      Quiz(
          question: 'InheritedWidget의 역할과 사용법에 대해 설명해 주세요.',
          answer: 'InheritedWidget은 위젯 트리 하위에 있는 위젯들에게 데이터를 전달하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter에서 사용자 입력을 처리하는 방법에 대해 설명해 주세요.',
          answer:
              'TextField, GestureDetector, Form 위젯 등을 사용하여 사용자 입력을 처리할 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 HTTP 요청을 보내는 방법에 대해 설명해 주세요.',
          answer: 'http 패키지를 사용하여 GET, POST 등의 HTTP 요청을 보낼 수 있습니다.'),
      Quiz(
          question: 'JSON 데이터를 처리하는 방법에 대해 설명해 주세요.',
          answer:
              'jsonDecode, jsonEncode 함수를 사용하여 JSON 데이터를 디코딩하거나 인코딩할 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 폼(validation 포함)을 처리하는 방법에 대해 설명해 주세요.',
          answer:
              'Form 위젯과 TextFormField를 사용하여 폼을 구성하고, validate 메서드를 사용하여 유효성을 검사할 수 있습니다.'),
      Quiz(
          question: 'Provider 패키지의 역할과 사용법에 대해 설명해 주세요.',
          answer: 'Provider는 상태 관리를 위한 패키지로, 위젯 트리에서 상태를 효율적으로 공유할 수 있게 합니다.'),
      Quiz(
          question: 'BLoC 패턴의 개념과 사용법에 대해 설명해 주세요.',
          answer:
              'BLoC(Business Logic Component) 패턴은 비즈니스 로직을 별도의 컴포넌트로 분리하여 코드의 재사용성과 테스트 용이성을 높이는 패턴입니다.'),
      Quiz(
          question: 'Flutter의 테스트 방법에 대해 설명해 주세요.',
          answer:
              'Flutter는 Unit Test, Widget Test, Integration Test를 지원하며, 각각의 테스트는 테스트할 대상에 따라 다릅니다.'),
      Quiz(
          question: 'Unit Test와 Widget Test, Integration Test의 차이점은 무엇인가요?',
          answer:
              'Unit Test는 개별 함수나 클래스의 단위 기능을 테스트합니다. Widget Test는 개별 위젯의 UI와 동작을 테스트합니다. Integration Test는 앱의 여러 부분을 통합하여 전체적인 동작을 테스트합니다.'),
      Quiz(
          question: 'Flutter에서 패키지를 사용하는 방법에 대해 설명해 주세요.',
          answer:
              'pubspec.yaml 파일에 패키지를 추가하고, flutter pub get 명령어를 실행하여 패키지를 가져옵니다.'),
      Quiz(
          question: 'Flutter 프로젝트에서의 폴더 구조를 설명해 주세요.',
          answer:
              '기본적으로 lib 폴더에 주요 코드가 위치하며, main.dart 파일이 앱의 진입점입니다. assets 폴더에는 리소스 파일이, test 폴더에는 테스트 코드가 위치합니다.'),
      Quiz(
          question: 'CustomPainter 위젯의 사용법에 대해 설명해 주세요.',
          answer:
              'CustomPainter는 커스텀 그래픽을 그리는 데 사용되며, Paint 객체를 사용하여 다양한 도형을 그릴 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 다국어 지원을 구현하는 방법에 대해 설명해 주세요.',
          answer:
              'intl 패키지를 사용하여 다국어 지원을 구현할 수 있습니다. 각 언어별로 번역된 문자열을 ARB 파일에 정의합니다.'),
      Quiz(
          question: '플랫폼 채널(Platform Channel)에 대해 설명해 주세요.',
          answer:
              '플랫폼 채널은 Flutter와 네이티브 코드(Android, iOS) 간의 통신을 가능하게 하는 메커니즘입니다.'),
      Quiz(
          question: 'Flutter 앱의 성능 최적화 방법에 대해 설명해 주세요.',
          answer:
              '불필요한 빌드를 피하기 위해 const 생성자 사용, 적절한 위젯 트리 구조 설계, Lazy loading 사용, 이미지 캐싱'),
      Quiz(
          question: 'Flutter에서 State Restoration이란 무엇인가요?',
          answer: 'State Restoration은 앱이 종료되었다가 다시 시작되었을 때 이전 상태를 복원하는 기능입니다.'),
      Quiz(
          question: 'Null Safety에 대해 설명해 주세요.',
          answer:
              'Dart의 Null Safety는 변수에 null 값을 허용하지 않도록 하여 NullPointerException을 방지하는 기능입니다.'),
      Quiz(
          question: 'Flutter의 build 메서드에 대해 설명해 주세요.',
          answer: 'build 메서드는 위젯의 UI를 구성하며, 매번 상태가 변경될 때마다 호출됩니다.'),
      Quiz(
          question: 'GestureDetector 위젯의 역할과 사용법에 대해 설명해 주세요.',
          answer:
              'GestureDetector는 터치 이벤트를 감지하여 다양한 제스처(탭, 드래그, 스와이프 등)를 처리할 수 있게 합니다.'),
      Quiz(
          question: 'Flutter에서 MediaQuery의 역할은 무엇인가요?',
          answer:
              'MediaQuery는 화면의 크기, 방향, 해상도 등의 정보를 제공하여 반응형 UI를 구성할 때 사용됩니다.'),
      Quiz(
          question: 'Flutter에서 앱 테마를 설정하는 방법에 대해 설명해 주세요.',
          answer:
              'ThemeData를 사용하여 전역 테마를 설정하고, MaterialApp 위젯의 theme 속성에 적용합니다.'),
      Quiz(
          question: 'Flutter에서 이미지와 아이콘을 사용하는 방법에 대해 설명해 주세요.',
          answer:
              'Image.asset, Image.network, Icon 위젯을 사용하여 이미지를 로드하고 아이콘을 표시할 수 있습니다.'),
      Quiz(
          question: 'Draggable과 DragTarget 위젯의 사용법에 대해 설명해 주세요.',
          answer:
              'Draggable은 드래그할 수 있는 위젯을, DragTarget은 드래그된 위젯을 수신하는 영역을 정의합니다.'),
      Quiz(
          question: 'Hero 애니메이션의 구현 방법에 대해 설명해 주세요.',
          answer: 'Hero 위젯을 사용하여 화면 전환 시 요소 간의 애니메이션을 구현할 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 ListView와 GridView의 차이점은 무엇인가요?',
          answer:
              'ListView는 수직 또는 수평으로 항목을 나열합니다. GridView는 격자 형태로 항목을 배치합니다.'),
      Quiz(
          question: 'Sliver 위젯의 역할과 사용법에 대해 설명해 주세요.',
          answer:
              'Sliver 위젯은 스크롤 가능한 영역을 유연하게 구성할 수 있게 합니다. CustomScrollView와 함께 사용됩니다.'),
      Quiz(
          question: 'Flutter 앱에서 Push Notification을 구현하는 방법에 대해 설명해 주세요.',
          answer: 'firebase_messaging 패키지를 사용하여 푸시 알림을 구현할 수 있습니다.'),
      Quiz(
          question: 'SharedPreferences 패키지의 역할과 사용법에 대해 설명해 주세요.',
          answer: 'SharedPreferences는 간단한 키-값 쌍을 로컬 저장소에 저장하는 데 사용됩니다.'),
      Quiz(
          question: 'Isolates와 compute 함수의 차이점은 무엇인가요?',
          answer:
              'Isolates는 Dart의 경량 스레드로, 서로 메모리를 공유하지 않고 독립적으로 실행됩니다. compute 함수는 간단한 병렬 처리를 위해 Isolate를 쉽게 사용할 수 있도록 도와줍니다.'),
      Quiz(
          question: 'Flutter 앱에서 데이터베이스를 사용하는 방법에 대해 설명해 주세요.',
          answer: 'sqflite 패키지를 사용하여 SQLite 데이터베이스를 Flutter 앱에서 사용할 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 화면 크기에 따라 반응형 레이아웃을 구현하는 방법에 대해 설명해 주세요.',
          answer:
              'MediaQuery와 LayoutBuilder를 사용하여 화면 크기에 따라 레이아웃을 동적으로 조정할 수 있습니다.'),
      Quiz(
          question: 'CustomScrollView와 NestedScrollView의 차이점은 무엇인가요?',
          answer:
              'CustomScrollView는 여러 Sliver 위젯을 조합하여 스크롤 가능한 영역을 구성하는 데 사용됩니다. NestedScrollView는 내부 스크롤 가능한 영역이 있는 복잡한 스크롤 동작을 구현할 때 사용됩니다.'),
      Quiz(
          question: 'Flutter의 lifecycle에 대해 설명해 주세요.',
          answer:
              'Flutter 위젯의 생명 주기는 createState(), initState(), didChangeDependencies(), build(), didUpdateWidget(), deactivate(), dispose() 단계로 구성됩니다.'),
      Quiz(
          question: 'Accessibility(접근성)를 고려한 Flutter 앱 개발 방법에 대해 설명해 주세요.',
          answer:
              'Semantics 위젯을 사용하여 화면 리더와 호환되도록 하고, 충분한 대비 색상을 사용하여 접근성을 높일 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 로컬 저장소에 데이터를 저장하는 방법에 대해 설명해 주세요.',
          answer: 'shared_preferences 패키지를 사용하여 간단한 데이터를 로컬 저장소에 저장할 수 있습니다.'),
      Quiz(
          question: 'Flutter 앱을 배포하는 과정에 대해 설명해 주세요.',
          answer: '앱 배포를 위해 앱 서명, 빌드 구성, 스토어 등록, 업로드 및 배포 단계를 거칩니다.'),
      Quiz(
          question: 'Flutter에서 에러 처리 방법에 대해 설명해 주세요.',
          answer:
              'try-catch 문을 사용하여 에러를 처리하고, FlutterError.onError를 사용하여 전역 에러를 처리할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 기본 제공 위젯 중 자주 사용하는 것 5가지를 설명해 주세요.',
          answer: 'Container, Row, Column, Stack, Text 위젯이 자주 사용됩니다.'),
      Quiz(
          question: 'Dart의 null-aware 연산자에 대해 설명해 주세요.',
          answer: 'null-aware 연산자는 ?. , ??, ??= 등이 있으며, null 값 처리를 간편하게 해줍니다.'),
      Quiz(
          question: 'Flutter의 widget lifecycle에 대해 설명해 주세요.',
          answer:
              'Flutter 위젯의 생명 주기는 createState(), initState(), didChangeDependencies(), build(), didUpdateWidget(), deactivate(), dispose() 단계로 구성됩니다.'),
      Quiz(
          question: 'Flutter에서 MediaQuery와 LayoutBuilder의 차이점은 무엇인가요?',
          answer:
              'MediaQuery는 화면 크기와 관련된 정보를 제공하며, LayoutBuilder는 부모 위젯의 크기에 따라 빌더 함수를 호출하여 위젯을 구성합니다.'),
      Quiz(
          question: 'FutureBuilder와 StreamBuilder의 차이점은 무엇인가요?',
          answer:
              'FutureBuilder는 Future의 결과를 기반으로 위젯을 빌드하고, StreamBuilder는 Stream의 데이터 이벤트를 기반으로 위젯을 빌드합니다.'),
      Quiz(
          question: 'Flutter의 ScopedModel 패키지에 대해 설명해 주세요.',
          answer:
              'ScopedModel은 상태 관리를 위한 패키지로, InheritedWidget을 기반으로 하여 상태를 위젯 트리에 쉽게 전달할 수 있게 합니다.'),
      Quiz(
          question: 'Flutter의 Redux 패턴에 대해 설명해 주세요.',
          answer:
              'Redux는 상태 관리를 위한 패턴으로, 애플리케이션의 상태를 단일 스토어에서 관리하고, 상태 변경은 리듀서 함수를 통해 수행됩니다.'),
      Quiz(
          question: 'Flutter에서 네이티브 모듈을 호출하는 방법에 대해 설명해 주세요.',
          answer:
              '플랫폼 채널을 사용하여 Flutter와 네이티브 코드(Android, iOS) 간의 통신을 구현할 수 있습니다.'),
      Quiz(
          question: 'Dart의 async와 await 키워드에 대해 설명해 주세요.',
          answer:
              'async 키워드는 함수가 비동기 함수임을 나타내고, await 키워드는 Future의 완료를 기다린 후 결과를 반환합니다.'),
      Quiz(
          question: 'Flutter 앱에서 커스텀 폰트를 사용하는 방법에 대해 설명해 주세요.',
          answer:
              'pubspec.yaml 파일에 폰트 파일을 추가하고, TextStyle의 fontFamily 속성을 설정하여 사용할 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 리소스(images, fonts 등)를 관리하는 방법에 대해 설명해 주세요.',
          answer:
              'pubspec.yaml 파일에 assets 섹션을 추가하여 리소스를 정의하고, AssetImage, Font 등을 사용하여 리소스를 로드할 수 있습니다.'),
      Quiz(
          question:
              'Flutter의 ListView.builder와 ListView.separated의 차이점은 무엇인가요?',
          answer:
              'ListView.builder는 동적으로 리스트 아이템을 생성하며, ListView.separated는 아이템 사이에 구분선을 추가할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 BoxDecoration 위젯에 대해 설명해 주세요.',
          answer:
              'BoxDecoration은 Container 위젯의 decoration 속성에 사용되며, 배경 색상, 이미지, 경계선, 그림자 등을 설정할 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 PageView 위젯을 사용하는 방법에 대해 설명해 주세요.',
          answer:
              'PageView 위젯은 페이지 스크롤을 구현하는 데 사용되며, PageController를 사용하여 페이지를 제어할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 SafeArea 위젯의 역할은 무엇인가요?',
          answer: 'SafeArea는 화면의 안전 영역을 고려하여 위젯을 배치하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter에서 ScrollController의 역할과 사용법에 대해 설명해 주세요.',
          answer:
              'ScrollController는 스크롤 가능한 위젯의 스크롤 동작을 제어하고, 스크롤 위치를 모니터링하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter의 AnimatedBuilder와 AnimatedWidget의 차이점은 무엇인가요?',
          answer:
              'AnimatedBuilder는 애니메이션 위젯을 빌드하는 데 사용되고, AnimatedWidget은 애니메이션을 적용할 위젯을 정의하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter에서 HTTP 요청에 대한 에러를 처리하는 방법에 대해 설명해 주세요.',
          answer: 'try-catch 문을 사용하여 HTTP 요청 중 발생하는 에러를 처리할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 AssetImage와 NetworkImage의 차이점은 무엇인가요?',
          answer:
              'AssetImage는 로컬에 저장된 이미지를 로드하고, NetworkImage는 네트워크에서 이미지를 로드합니다.'),
      Quiz(
          question: 'Flutter의 BottomNavigationBar 위젯을 사용하는 방법에 대해 설명해 주세요.',
          answer:
              'BottomNavigationBar는 하단에 네비게이션 바를 생성하는 데 사용되며, items 속성을 통해 각 아이템을 정의할 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 다크 모드를 지원하는 방법에 대해 설명해 주세요.',
          answer:
              'ThemeData의 brightness 속성을 Brightness.dark로 설정하여 다크 모드를 지원할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 IndexedStack 위젯에 대해 설명해 주세요.',
          answer: 'IndexedStack은 여러 자식 위젯 중 하나만을 선택적으로 표시할 수 있는 위젯입니다.'),
      Quiz(
          question: 'Flutter의 ClipRRect 위젯의 역할과 사용법에 대해 설명해 주세요.',
          answer: 'ClipRRect는 자식 위젯을 둥근 사각형 모양으로 자르는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter의 PopupMenuButton 위젯을 사용하는 방법에 대해 설명해 주세요.',
          answer: 'PopupMenuButton은 클릭 시 팝업 메뉴를 표시하는 버튼을 생성하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter에서 비동기 데이터 로딩을 처리하는 방법에 대해 설명해 주세요.',
          answer: 'FutureBuilder를 사용하여 비동기 데이터 로딩을 처리할 수 있습니다.'),
      Quiz(
          question: 'Dart의 generic 타입에 대해 설명해 주세요.',
          answer: 'Dart의 제네릭 타입은 클래스나 함수를 정의할 때 타입을 매개변수로 사용할 수 있게 합니다.'),
      Quiz(
          question: 'Flutter의 Table 위젯에 대해 설명해 주세요.',
          answer: 'Table 위젯은 행과 열로 구성된 표를 생성하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter에서 반응형 텍스트 크기를 설정하는 방법에 대해 설명해 주세요.',
          answer: 'MediaQuery를 사용하여 화면 크기에 따라 텍스트 크기를 동적으로 조정할 수 있습니다.'),
      Quiz(
          question:
              'Flutter의 GestureDetector 위젯을 사용하여 드래그 앤 드롭을 구현하는 방법에 대해 설명해 주세요.',
          answer:
              'GestureDetector의 onPanUpdate 콜백을 사용하여 드래그 앤 드롭을 구현할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 Placeholder 위젯의 역할은 무엇인가요?',
          answer: 'Placeholder는 임시로 사용되는 자리 표시자 위젯입니다.'),
      Quiz(
          question: 'Flutter의 Flexible과 Expanded 위젯의 차이점은 무엇인가요?',
          answer:
              'Flexible은 자식 위젯이 주어진 공간 내에서 유연하게 크기를 조정할 수 있게 하고, Expanded는 자식 위젯이 가능한 모든 공간을 차지하게 합니다.'),
      Quiz(
          question: 'Dart의 mixin에 대해 설명해 주세요.',
          answer:
              'Dart의 mixin은 여러 클래스에 공통 기능을 추가하기 위해 사용되는 재사용 가능한 클래스 코드 조각입니다.'),
      Quiz(
          question: 'Flutter에서 커스텀 위젯을 만드는 방법에 대해 설명해 주세요.',
          answer:
              'StatefulWidget 또는 StatelessWidget을 상속받아 새로운 위젯 클래스를 정의하고, build 메서드를 구현하여 UI를 구성합니다.'),
      Quiz(
          question: 'Flutter의 ThemeData를 사용하는 방법에 대해 설명해 주세요.',
          answer:
              'ThemeData를 사용하여 전역 테마를 정의하고, MaterialApp의 theme 속성에 적용할 수 있습니다.'),
      Quiz(
          question: 'Flutter에서 ListTile 위젯을 사용하는 방법에 대해 설명해 주세요.',
          answer:
              'ListTile은 간단한 리스트 항목을 생성하는 데 사용되며, 제목, 부제목, 아이콘 등을 설정할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 Slider 위젯을 사용하는 방법에 대해 설명해 주세요.',
          answer: 'Slider는 사용자가 값을 선택할 수 있는 슬라이더 위젯입니다.'),
      Quiz(
          question: 'Flutter에서 애플리케이션의 AppBar를 커스터마이징하는 방법에 대해 설명해 주세요.',
          answer: 'AppBar 위젯의 다양한 속성을 설정하여 제목, 아이콘, 배경색 등을 커스터마이징할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 Card 위젯에 대해 설명해 주세요.',
          answer: 'Card 위젯은 내용이 포함된 카드를 생성하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter의 Opacity 위젯의 역할은 무엇인가요?',
          answer: 'Opacity는 자식 위젯의 투명도를 조정하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter에서 Future.delayed를 사용하는 방법에 대해 설명해 주세요.',
          answer: 'Future.delayed를 사용하여 특정 시간 후에 코드를 실행할 수 있습니다.'),
      Quiz(
          question:
              'Flutter의 MediaQuery.of(context).size를 사용하는 방법에 대해 설명해 주세요.',
          answer:
              'MediaQuery.of(context).size를 사용하여 화면의 크기를 가져와 반응형 레이아웃을 구성할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 ExpansionPanelList 위젯에 대해 설명해 주세요.',
          answer:
              'ExpansionPanelList는 확장 가능한 패널 리스트를 생성하는 데 사용되며, ExpansionPanel 위젯과 함께 사용됩니다.'),
      Quiz(
          question: 'Flutter에서 커스텀 다이얼로그를 만드는 방법에 대해 설명해 주세요.',
          answer: 'showDialog 함수와 AlertDialog 위젯을 사용하여 커스텀 다이얼로그를 만들 수 있습니다.'),
      Quiz(
          question: 'Flutter의 StreamController에 대해 설명해 주세요.',
          answer:
              'StreamController는 Dart의 Stream을 제어하고, 데이터를 추가하거나 스트림을 닫는 등의 작업을 수행할 수 있게 합니다.'),
      Quiz(
          question: 'Dart의 factory constructor에 대해 설명해 주세요.',
          answer:
              'factory constructor는 기존 객체를 반환하거나, 특정 조건에 따라 새로운 객체를 생성할 수 있는 생성자입니다.'),
      Quiz(
          question: 'Flutter의 Drawer 위젯을 사용하는 방법에 대해 설명해 주세요.',
          answer: 'Drawer 위젯은 앱의 측면에서 슬라이딩 메뉴를 제공하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter의 SnackBar 위젯을 사용하는 방법에 대해 설명해 주세요.',
          answer: 'SnackBar 위젯은 화면 하단에 일시적인 메시지를 표시하는 데 사용됩니다.'),
      Quiz(
          question: 'Flutter에서 애니메이션을 순차적으로 실행하는 방법에 대해 설명해 주세요.',
          answer:
              'AnimationController와 TweenSequence를 사용하여 애니메이션을 순차적으로 실행할 수 있습니다.'),
      Quiz(
          question: 'Flutter의 ReorderableListView 위젯에 대해 설명해 주세요.',
          answer:
              'ReorderableListView는 사용자가 항목을 드래그하여 순서를 변경할 수 있는 리스트를 생성하는 데 사용됩니다.')
    ].toList();
  }
}
