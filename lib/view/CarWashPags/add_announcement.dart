import 'package:car_wash_app/view/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../widget/form_button.dart';

class AddAnnuncement extends StatelessWidget {
  const AddAnnuncement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Announcement'),
        centerTitle: true,
        
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:48.0,right: 10,left: 10),
        child: Column(
          children:  [
            const CustomTextFromField(lable: 'Announcement title:', hint: 'title'),
            const SizedBox(height: 20,),
            const CustomTextFromField(lable: 'description', hint: 'description'),
            const SizedBox(height: 50,),
            Expanded(
              child: FormButton(
                
                onPressed: (){}, text: 'Add',),
            )
          ],
        ),
      ),
    );
  }
}