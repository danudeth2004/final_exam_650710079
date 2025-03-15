import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _Answer2State();
}

class _Answer2State extends State<Answer2> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _weight = TextEditingController();
  String? _selected;
  bool _extra1 = false;
  bool _extra2 = false;
  int _selectedFast = 0;
  double _total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("คำนวณค่าจัดส่ง")),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("น้ำหนักสินค้า (กก.):"),
              TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder()),
                controller: _weight,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกน้ำหนักของสินค้า';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Text("เลือกระยะทาง:"),
              DropdownButtonFormField<String>(
                // decoration: const InputDecoration(labelText: 'Select Number'),
                value: _selected,
                items:
                    ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                        .map(
                          (item) =>
                              DropdownMenuItem(value: item, child: Text(item)),
                        )
                        .toList(),
                onChanged: (value) {
                  _selected = value;
                },
                validator:
                    (value) => value == null ? 'กรุณาเลือกระยะทาง' : null,
              ),
              SizedBox(height: 20),
              Text("บริการเสริม:"),
              Column(
                children: [
                  CheckboxListTile(
                    title: const Text('แพ็คกิ้งพิเศษ (+20 บาท)'),
                    value: _extra1,
                    onChanged: (value) {
                      setState(() {
                        _extra1 = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('ประกันพัสดุ (+50 บาท)'),
                    value: _extra2,
                    onChanged: (value) {
                      setState(() {
                        _extra2 = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("เลือกความเร่งด่วน:"),
              Column(
                children: [
                  RadioListTile(
                    title: const Text('ปกติ'),
                    value: 0,
                    groupValue: _selectedFast,
                    onChanged: (value) {
                      setState(() {
                        _selectedFast = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text('ด่วน'),
                    value: 30,
                    groupValue: _selectedFast,
                    onChanged: (value) {
                      setState(() {
                        _selectedFast = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text('ด่วนพิเศษ'),
                    value: 50,
                    groupValue: _selectedFast,
                    onChanged: (value) {
                      setState(() {
                        _selectedFast = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_formKey.currentState!.validate()) {
                      if (_selected == 'ในเมือง') {
                        _total = 10.0 * double.parse(_weight.text); // *_weight
                      } else if (_selected == 'ต่างจังหวัด') {
                        _total = 15.0 * double.parse(_weight.text);
                        print(_total);
                      } else {
                        _total = 50.0 * double.parse(_weight.text);
                      }
                      if (_extra1) _total += 20;
                      if (_extra2) _total += 50;
                      _total += _selectedFast;
                      print(_total);
                    }
                  });
                },
                child: Text("คำนวณราคา"),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  "ค่าจัดส่งทั้งหมด: ฿${_total}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
