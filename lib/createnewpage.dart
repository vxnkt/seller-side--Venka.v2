// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seller_side_uo/inventorypage.dart';
import 'package:image_picker/image_picker.dart';

// import 'package:seller_side_uo/profilepage.dart';

class CreateNewPage extends StatefulWidget {
  const CreateNewPage({super.key});

  @override
  State<CreateNewPage> createState() => _CreateNewPageState();
}

class _CreateNewPageState extends State<CreateNewPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _stockController = TextEditingController();
  String _imagePath = ''; // To store the selected image path

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            "Dronaid",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: const Icon(Icons.shopping_cart))
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InventoryPage()),
                );
              },
              icon: const Icon(
                Icons.arrow_back,
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create New",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Color.fromRGBO(216, 240, 253, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _nameController,
                                decoration:
                                    InputDecoration(labelText: 'Product Name'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the product name';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                controller: _priceController,
                                decoration: InputDecoration(labelText: 'Price'),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the price';
                                  }
                                  // Add additional validation logic if needed
                                  return null;
                                },
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                controller: _stockController,
                                decoration: InputDecoration(labelText: 'Stock'),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the stock';
                                  }
                                  // Add additional validation logic if needed
                                  return null;
                                },
                              ),
                              SizedBox(height: 16),
                              // Add an ImagePicker or Image selection widget for the product photo
                              // Example: ImagePickerWidget(),
                              ElevatedButton(
                                onPressed: _pickImage,
                                child: Text('Pick Image'),
                              ),
                              SizedBox(height: 16.0), // Add some space

                              // Selected Image Preview
                              _imagePath.isNotEmpty
                                  ? Image.file(
                                      File(_imagePath),
                                      height: 100.0,
                                      width: 100.0,
                                      fit: BoxFit.cover,
                                    )
                                  : Container(),

                              // Centered Submit Button with custom width and styling
                              Container(
                                width: double.infinity, // Full width
                                margin: EdgeInsets.symmetric(
                                    vertical: 16.0), // Adjust margin as needed
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the submit button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromRGBO(10, 106, 157, 1), // Background color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 16.0), // Adjust padding as needed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust border radius as needed
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style:
                        TextStyle(fontSize: 18.0), // Adjust font size as needed
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
