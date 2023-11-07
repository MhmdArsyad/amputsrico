import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text('Profile'),
          ),
      body: ListView(
        children: [
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/rico.jpg'),
              ),
              const SizedBox(height: 20),
              itemProfile('Nama', 'Rico Apriliansyah',
                  CupertinoIcons.person_fill),
              const SizedBox(height: 10),
              itemProfile('NPM', '21676072', CupertinoIcons.number),
              const SizedBox(height: 10),
              itemProfile('Kontak', '+62 852-2630-3594', CupertinoIcons.phone),
              const SizedBox(height: 10),
              itemProfile(
                  'Alamat', 'Sitirejo, Tambakromo, Pati', CupertinoIcons.location),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ],
   )); 
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black26,
                spreadRadius: 2,
                blurRadius: 10)
          ]
          ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
      ),
    );
  }
}
