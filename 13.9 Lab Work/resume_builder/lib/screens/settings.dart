import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:resume_builder/screens/inner_navigation/contact_info.dart';
import '../list.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

List<Options> listArr = [
  Options(
      icons: Icons.contact_mail_outlined,
      title: 'Contact Info',
      path: '/contact'),
  Options(
      icons: Icons.shopping_bag_outlined,
      title: 'Carrier Objective',
      path: '/carrier'),
  Options(
      icons: Icons.person_outline_outlined,
      title: 'Personal Details',
      path: '/PDetails'),
  Options(icons: Icons.e_mobiledata, title: 'Education', path: '/education'),
  Options(
      icons: Icons.emoji_people_outlined,
      title: 'Experiences',
      path: '/experience'),
  Options(
      icons: Icons.verified_user_outlined,
      title: 'Technical Skills',
      path: '/settings'),
  Options(
      icons: Icons.menu_book_sharp,
      title: 'Interest/Hobbies',
      path: '/settings'),
  Options(icons: Icons.bookmark_add, title: 'Projects', path: '/projects'),
  Options(
      icons: Icons.collections_bookmark_outlined,
      title: 'Achievements',
      path: '/achievement'),
  Options(
      icons: Icons.handshake_rounded, title: 'References', path: '/references'),
  Options(
      icons: Icons.collections_bookmark_sharp,
      title: 'Declaration',
      path: '/settings'),
];

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Resume Workspace',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Build Option', style: TextStyle(color: Colors.white)),
          ],
        ),
        toolbarHeight: 150,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: listArr.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, listArr[index].path);
                  },
                  child: ListTile(
                    leading: Icon(listArr[index].icons),
                    title: Text(listArr[index].title),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                );
              },
            ),
          ),
          OutlinedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Create PDF'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              createPdf();
                            },
                            child: const Text('Create')),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel')),
                      ],
                    );
                  });
            },
            child: const Text('Click to create PDF'),
          ),
        ],
      ),
    );
  }

  Future<void> createPdf() async {
    final pdf = pw.Document();
    // final img = await rootBundle.load(arrForm[0]['image']);
    final img = File(arrForm[0]['image']);
    final imageBytes = img.readAsBytesSync();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Column(
              children: [
                pw.Text('Hire A. Freshman',
                    style: const pw.TextStyle(fontSize: 30)),
                pw.Text(
                    '(208)89798 * sndivnvn@gmail.com * 71001 Elmen Street, Moscow, ID 6139'),
                pw.Divider(),
                pw.Padding(
                  padding: pw.EdgeInsets.all(30),
                  child: pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('Name :- ${arrForm[0]['name']}'),
                          pw.SizedBox(height: 20),
                          pw.Text('Email :- ${arrForm[0]['email']}'),
                          pw.SizedBox(height: 20),
                          pw.Text('Phone :- ${arrForm[0]['phone']}'),
                          pw.SizedBox(height: 20),
                          pw.Text('Address :- ${arrForm[0]['address']}'),
                          pw.SizedBox(height: 20),
                          pw.Text('Carrier Objective :- ${arrForm[1]['objective']}'),
                          pw.SizedBox(height: 20),
                          pw.Text('Current Designation :- ${arrForm[1]['currentDesignation']}'),
                          pw.SizedBox(height: 20),

                        ],
                      ),
                      pw.SizedBox(width: 10),
                      pw.Image(pw.MemoryImage(imageBytes),
                          height: 150, width: 150),
                    ],
                  ),
                ),
              ],
            ),
          ); // Center
        },
      ),
    ); //
    final bytes = await pdf.save();
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    final file = File('${appDocumentsDir.path}/example.pdf');
    await file.writeAsBytes(bytes);

    // Printing.sharePdf(bytes: bytes);
    Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => bytes,
    );
  }
}
