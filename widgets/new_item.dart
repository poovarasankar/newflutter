import 'package:flutter/material.dart';
import 'package:test/data/categories.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() {
    return _NewItemState();
  }
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('add a new item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
       Expanded(child:   TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
                validator: (value) {
                  return 'Demo...';
                },
              ),
              ),
              Row(
                children: [
                  TextFormField(
               decoration:const InputDecoration(label: Text('Qauntity') ,
               ),
               initialValue: '1',
                  ),
                  const SizedBox(width: 8),
                  Expanded(child: 
                  DropdownButtonFormField(items: [
                  for (final category in categories.entries)
                  DropdownMenuItem(
                    value: category.value,
                    child: 
                  Row(
                    children:[

                    
                    Container(
                      width: 16,
                      height: 16,
                      color: category.value.color,
                    ),
                    const SizedBox(width: 6),
                    Text(category.value.title),
                    ],
                  ),
                  ),

                  ],
                   onChanged: (value){
                       
                   })
                   ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
