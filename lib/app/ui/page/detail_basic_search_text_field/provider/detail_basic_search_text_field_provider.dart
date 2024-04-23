import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/ui/page/detail_basic_search_text_field/viewmodel/detail_basic_search_text_field_viewmodel.dart';

final detailBasicSearchTextFieldProvider = StateNotifierProvider<
    DetailBasicSearchTextFieldViewModel,
    DetailBasicSearchTextFieldViewModelState>((ref) {
  return DetailBasicSearchTextFieldViewModel();
});
