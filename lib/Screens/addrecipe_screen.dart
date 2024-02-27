import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/add_fields_section.dart';
import '../Widget/title_description_form_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AddRecipeScreen(),
      ),
    );
  }
}

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({Key? key}) : super(key: key);

  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  bool _showForm = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _cookTimeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> _popUpItemsList = ['Delete item', 'Add item'];
  final List _ingredientsFormList = [];
  final List _instructionsFormList = [];
  final List<TextEditingController> _ingredientControllersList = [];
  final List<TextEditingController> _instructionsControllersList = [];
  bool _isLoading = false;
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  String? servesValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showForm ? _buildForm() : _buildMainContent(),
    );
  }

  Widget _buildMainContent() {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 100, 30, 0),
      child: Column(
        children: [
          _mainContent(context),
        ],
      ),
    );
  }

  Widget _mainContent(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/bgimg_add.png', height: 170, width: 170),
          const SizedBox(height: 50),
          Text(
            'Create your food recipe and share it with the community',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'Help people to find new ideas and develop their cooking skills',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _showForm = true;
              });
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: const Color(0xFFFF725E),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            child: Text(
              'Create Recipe +',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Material(
                  child: InkWell(
                    key: const Key('uploadImage'),
                    highlightColor: Colors.grey.shade400,
                    onTap: () {
                    },
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/addreceipeimg.png', // Provide the correct asset path
                          height: MediaQuery.of(context).size.height / 4,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 20,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.camera,
                                color: Colors.white,
                                size: 40,
                              ),
                              const SizedBox(width: 15),
                              Text(
                                'Upload a recipe photo',
                                style: GoogleFonts.lora(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                // !: Title and Description Section:
                TitleAndDescriptionFormSection(
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                  formKey: _formKey,
                  titleController: _titleController,
                  descriptionController: _descriptionController,
                  servesValue: servesValue,
                  cookTimeController: _cookTimeController,
                ),
                Divider(
                  color: Colors.grey.shade300,
                  thickness: 5,
                ),
                // !: Sections:
                const SizedBox(height: 14),
                AddFieldsSection(
                  formKey: _formKey1,
                  formFieldsList: _ingredientsFormList,
                  controllersList: _ingredientControllersList,
                  popUpItemsList: _popUpItemsList,
                  buttonText: '+ Ingredient',
                  validatorText: 'Field Required',
                  sectionText: 'Ingredients',
                  hintText: '250g flour',
                  maxLines: 1,
                  cursorColor: Color(0xFFFFFFFF),
                ),
                Divider(
                  color: Colors.grey.shade300,
                  thickness: 5,
                ),
                AddFieldsSection(
                  formKey: _formKey2,
                  formFieldsList: _instructionsFormList,
                  controllersList: _instructionsControllersList,
                  popUpItemsList: _popUpItemsList,
                  buttonText: '+ Step',
                  validatorText: 'Field Required',
                  sectionText: 'Steps',
                  hintText: 'Mix the flour and water until they thicken',
                  maxLines: 2,
                  cursorColor: Colors.white,

                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: _isLoading == true
                ? LinearProgressIndicator(
              backgroundColor:Colors.grey.shade300,
            )
                : const Padding(
              padding: EdgeInsets.only(top: 4),
            ),
          ),
        ],
      );
  }
}
