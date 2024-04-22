import 'package:flutter_template/app/data/enum/component_type.dart';
import 'package:flutter_template/app/data/model/component.dart';
import 'package:flutter_template/app/route/app_route.dart';

class ComponentUseCase {
  Future<List<Component>> getBasicComponents(
      {required String searchText}) async {
    return [
      Component(
        type: ComponentType.basic,
        name: 'BasicSearchTextField',
        description: 'Default search text field currently used in the app',
        routeName: AppRoute.detailBasicSearchTextField.name,
      ),
    ]
        .where((element) =>
            element.name.toLowerCase().contains(searchText.toLowerCase()) ||
            element.description
                .toLowerCase()
                .contains(searchText.toLowerCase()))
        .toList();
  }
}
