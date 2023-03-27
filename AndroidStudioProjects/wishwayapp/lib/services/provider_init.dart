
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../presentation/uiproviders/extras_provider.dart';



class InitProvider {
  static List<SingleChildWidget> providerInit() {
    final List<SingleChildWidget> provided = [
      ChangeNotifierProvider(
        create: (context) => ExtraProvider(),)
   
    ];

    return provided;
  }
}
