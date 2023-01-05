import 'package:car_wash_app/view_model/register_carwash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 class RegisterPageCarwash extends StatefulWidget {
  const RegisterPageCarwash({super.key});

  @override
  State<RegisterPageCarwash> createState() => _RegisterPageCarwashState();
}

class _RegisterPageCarwashState extends State<RegisterPageCarwash> with AutomaticKeepAliveClientMixin<RegisterPageCarwash> {
  final controller = Get.put(RegisterCarwashViewModel());
  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    print('my locale ${myLocale}');
    super.didChangeDependencies();
  }

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children:[Obx(() => Text(controller.carwash.value)),
      
      
      
      ] 
    );
  }

} 
