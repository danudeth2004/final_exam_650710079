import 'package:flutter/material.dart';

class Answer1 extends StatelessWidget {
  const Answer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "โปรไฟล์ผู้ใช้",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50, // Image radius
              backgroundImage: NetworkImage(
                "https://www.kasandbox.org/programming-images/avatars/leaf-blue.png",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "ชื่อผู้ใช้: ดนุเดช นิลคูหา",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "อีเมล: ninkuha_d@silpakorn.edu",
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 156, 156, 156),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.blue),
                    title: Text("การตั้งค่า"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.lock, color: Colors.blue),
                    title: Text("เปลี่ยนรหัสผ่าน"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.question_mark, color: Colors.blue),
                    title: Text("ความเป็นส่วนตัว"),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text("แก้ไขโปรไฟล์"),
                backgroundColor: Colors.blue,));
              },
              child: Text("แก้ไขโปรไฟล์"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text("ออกจากระบบ"),
                backgroundColor: Colors.red,));
              },
              child: Text("ออกจากระบบ"),
            ),
          ],
        ),
      ),
    );
  }
}