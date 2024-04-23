### flutter_template
<p align="left">
  <img src="https://github.com/DevHyeon0312/flutter_template/assets/122590623/7828f57d-e836-4bbd-a446-ff1077f40a23" width="300">
  <img src="https://github.com/DevHyeon0312/flutter_template/assets/122590623/505b4ed7-5fe7-446f-8020-3aedf9e959b1" width="300">
</p>

#### Spec
- [get](https://pub.dev/packages/get) - Routing Management
- [riverpod](https://pub.dev/packages/flutter_riverpod) - State Management


#### App Package Name Change
```bash
flutter pub run now.package.name:main new.package.name
```

#### App Name Change
```bash
flutter pub run rename_app:main all="New App Name"
```

#### App Icon Change
```bash
flutter pub run flutter_launcher_icons:main
```

#### Project Structure
```dart
.
├── assets(Assets)
│   ├── config(Env File)
│   │   ├── .env.dev
│   │   ├── .env.stage
│   │   └── .env.prod
│   │
│   ├── fonts(Fonts)
│   │   └── ...
│   │
│   ├── icons(Icons)
│   │   └── ...
│   │
│   ├── images(Images)
│   │   └── ...
│   └── ...
│
└── lib(Entry Point)
    ├── app(My App)
    │   ├── data(My App Data)
    │   │   ├── enums
    │   │   └── model
    │   │
    │   ├── route(App Route)
    │   │   ├── app_page.dart
    │   │   └── app_route.dart
    │   │
    │   ├── ui(My App UI)
    │   │   ├── component(Reusable Component)
    │   │   │   └── ... [TODO]
    │   │   │
    │   │   ├── main(Main Page)
    │   │   │   ├── provider(Main Provider)
    │   │   │   │   ├── main_tab_provider.dart
    │   │   │   │   └── ...
    │   │   │   │
    │   │   │   └── main_page.dart
    │   │   │       
    │   │   └── page(Page)
    │   │       ├── screen_home(Home Page)
    │   │       │   ├── widget(Home Page Widget)
    │   │       │   │   └── ...
    │   │       │   │
    │   │       │   ├── provider(Home Page Provider)
    │   │       │   │   └── ...
    │   │       │   │
    │   │       │   ├── viewmodel(Home Page ViewModel)
    │   │       │   │   └── ...
    │   │       │   │   
    │   │       │   └── home_page.dart
    │   │       │
    │   │       ├── detail_elevated_button(Detail Elevated Button Page)
    │   │       │   ├── widget(Detail Elevated Button Page Widget)
    │   │       │   │   └── ...
    │   │       │   │
    │   │       │   ├── provider(Detail Elevated Button Page Provider)
    │   │       │   │   └── ...
    │   │       │   │
    │   │       │   ├── viewmodel(Detail Elevated Button Page ViewModel)
    │   │       │   │   └── ...
    │   │       │   │
    │   │       │   └── elevated_button_detail_page.dart
    │   │       │
    │   │       └── ...
    │   │
    │   └── usecase(App UseCase - Business Logic : Used Local Repository & Network Repository)
    │         └── ...
    │
    ├── config(My App Config)
    │   ├── app_config.dart
    │   └── build_config.dart
    │
    ├── local(Local Storage)
    │   ├── db(Database)
    │   │   ├── dao(Database Access Object)
    │   │   │    └── ...
    │   │   ├── database(My Database)
    │   │   │    └── ...
    │   │   ├── entity(Database Entity)
    │   │   │    └── ...
    │   │   ├── repository(Database Repository)
    │   │   │    └── ...
    │   │   │
    │   │   └── database_module.dart
    │   │
    │   └── shared_preference(Shared Preference)
    │       ├── entity(Shared Preference Entity)
    │       │    └── ...
    │       ├── enums(Shared Preference Enums)
    │       │    └── ...
    │       ├── repository(Shared Preference Repository)
    │       │    └── ...
    │       │
    │       └── shared_preference_module.dart
    │
    ├── network(Network Service)
    │   ├── firebase(Firebase Service)
    │   │   ├── entity(Firebase Entity)
    │   │   │    └── ...
    │   │   ├── enums(Firebase Enums)
    │   │   │    └── ...
    │   │   ├── repository(Firebase Repository)
    │   │   │    └── ...
    │   │   │
    │   │   └── firebase_module.dart
    │   │
    │   ├── my_server_api(My Server API Service)
    │   │   ├── entity(My Server API Entity)
    │   │   │    └── ...
    │   │   ├── enums(My Server API Enums)
    │   │   │    └── ...
    │   │   ├── repository(My Server API Repository)
    │   │   │    └── ...
    │   │   │
    │   │   └── my_api_module.dart
    │   │
    │   └── ...(Other Network Service)
    │
    ├── style(My App Style)
    │   ├── color(App Color)
    │   │     └── ...
    │   ├── string(App String)
    │   │     └── ...
    │   └── theme(App Theme)
    │         ├── ...
    │         └── app_theme.dart
    │
    └── util(My App Util)
        └── ...
```


#### FireBase
```bash (terminal)
curl -sL https://firebase.tools | bash
firebase login
```
```bash (terminal)
dart pub global activate flutterfire_cli
```
```bash (project root)
flutterfire configure --project=flutter-templete-devhyeon
```

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);