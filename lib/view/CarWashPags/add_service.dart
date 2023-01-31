import 'package:flutter/material.dart';

import '../../constant.dart';

class AddService extends StatelessWidget {
  const AddService({super.key});

  @override
  Widget build(BuildContext context) {{
    final appBar = AppBar(
      title: const Text('Add Service'),
      centerTitle: true,
    );
    final paddingTop=MediaQuery.of(context).padding.top;
    final paddingleft=MediaQuery.of(context).padding.left;
    final paddingRight=MediaQuery.of(context).padding.right;

    final hightScreen=MediaQuery.of(context).size.height-appBar.preferredSize.height-paddingTop;
      final widthScreen=MediaQuery.of(context).size.width-paddingRight-paddingleft;
      

    return Scaffold(
        appBar: appBar,
        body: Padding(
          padding:
              EdgeInsets.only(top: hightScreen * 0.050, right: widthScreen*0.05, left: widthScreen*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                'Add Annuncement',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.start,
              ),
                ],
              ),
              
              SizedBox(
                height: hightScreen * 0.025,
              ),
              const TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: kTextLigthColor,
                )),

                // label: Text('Add Annuncement'),
                hintText: 'title',
              )),
              SizedBox(
                height: hightScreen * 0.015,
              ),
              const Text(
                'Descrption:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: hightScreen * 0.025,
              ),
              const TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: kTextLigthColor,
                )),
                hintText: 'descrption',
              )),
              SizedBox(
                height: hightScreen * 0.05,
              ),
              SizedBox(
                width: widthScreen,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: kTextLigthColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ));
        
  }
 
}
}