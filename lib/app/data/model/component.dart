import 'package:flutter_template/app/data/enum/component_type.dart';

class Component {
  final ComponentType type;
  final String name;
  final String description;
  final String routeName;

  const Component({
    required this.type,
    required this.name,
    required this.description,
    required this.routeName,
  });
}
