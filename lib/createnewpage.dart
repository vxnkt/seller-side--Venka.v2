

import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seller_side_uo/homepage.dart';
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
  final List<String> _imagePaths = []; // To store the selected image path

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imagePaths.add(pickedFile.path);
      });
    }
  }
  void _removeImage(int index) {
    setState(() {
      _imagePaths.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          centerTitle: true,
          backgroundColor: Colors.grey[100],
          title: const Text(
            "Dronaid",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway'
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePage(i: 0)),
                  );
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
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0,0,0,0),
                child: const Text(
                  "Create New",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color:Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _nameController,
                            decoration:
                                const InputDecoration(labelText: 'Product Name',
                                    suffixStyle: TextStyle(fontFamily: 'Raleway')
                                ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the product name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: _priceController,
                            decoration: const InputDecoration(labelText: 'Price',suffixStyle: TextStyle(fontFamily: 'Raleway')),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the price';
                              }
                              // Add additional validation logic if needed
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: _stockController,
                            decoration: const InputDecoration(labelText: 'Stock',suffixStyle: TextStyle(fontFamily: 'Raleway')),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the stock';
                              }
                              // Add additional validation logic if needed
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          // Add an ImagePicker or Image selection widget for the product photo
                          // Example: ImagePickerWidget(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              surfaceTintColor: Colors.black
                            ),
                            onPressed: _pickImage,
                            child: const Text('Pick Image',style: TextStyle(fontFamily: 'Raleway', color: Colors.black)),
                          ),

                          // Selected Image Preview
                                                        _imagePaths.isNotEmpty
                              ? SizedBox(
                                  height: 150.0,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _imagePaths.length,
                                    itemBuilder: (context, index) {
                                      return LongPressDraggable(
                                        feedback: Image.file(
                                          File(_imagePaths[index]),
                                          height: 100.0,
                                          width: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                        child: Column(
                                          children: [
                                            Image.file(
                                              File(_imagePaths[index]),
                                              height: 100.0,
                                              width: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.delete),
                                              onPressed: () =>
                                                  _removeImage(index),
                                            ),
                                          ],
                                        ),
                                        onDragStarted: () =>
                                            _removeImage(index),
                                      );
                                    },
                                  ),
                                )
                              : Container(),


                          // Centered Submit Button with custom width and styling
                          Container(
                            width: double.infinity, // Full width
                            margin: const EdgeInsets.symmetric(
                                vertical: 16.0), // Adjust margin as needed
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the submit button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        // const Color.fromRGBO(10, 106, 157, 1), // Background color
                    Colors.black,
                    foregroundColor: Colors.white, // Text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 16.0), // Adjust padding as needed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust border radius as needed
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style:
                        TextStyle(fontSize: 18.0, fontFamily: 'Raleway'), // Adjust font size as needed
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
