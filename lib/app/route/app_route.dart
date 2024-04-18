enum AppRoute {
  initial(name: '/', canPop: false),
  home(name: '/home', canPop: true),
  ;

  const AppRoute({required this.name, required this.canPop});

  final String name;
  final bool canPop;
}
