import 'package:flutter/material.dart';
import 'package:upwork_clone/views/colors/app_colors.dart';

import '../../images_path/images_path.dart'
    '';
import '../../widgets/app_textField.dart';

class PageConnexion extends StatefulWidget {
  const PageConnexion({super.key});

  @override
  State<PageConnexion> createState() => _PageConnexionState();
}

class _PageConnexionState extends State<PageConnexion> {
  TextEditingController controller = TextEditingController();
  TextEditingController motDePasseController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String message = '';

  void verifierConnexion() {
    if (emailController.text.isEmpty) {
      setState(() {
        TextField();
        message = "This filed is required ";
      });
    } else {
      setState(() {
        message = "Connexion réussie";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Image.asset(
              width: MediaQuery.of(context).size.width * 0.5,
              ImagesPath.logoLetter,
            ),
            SizedBox(height: 15),
            Text(
              "Log in to Upwork",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            Text(
              message,
              style: TextStyle(
                color:
                    message == "Connexion réussie" ? Colors.green : Colors.red,
                fontWeight: FontWeight.w900,
              ),
            ),

            SizedBox(height: 10),

            // mot de passe
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),

              child: AppTextField(
                // keyboardType: TextInputType.name,
                controller: emailController,
                prefixIcon: Icon(Icons.person_outline, color: Colors.black),
                labelText: Text('Username or Email'),
              ),
            ),

            // SizedBox(height: 20),

            /*   ElevatedButton(
                style: ButtonStyle( backgroundColor:WidgetStatePropertyAll(AppColors.primaryColor)),
                onPressed: verifierConnexion,
                child: Text(
                   'Connexion', style: TextStyle(color: Colors.white),
                ))*/
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.39,
                    vertical: 15,
                  ),
                ),
                onPressed: verifierConnexion,
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 1.5)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('or'),
                  ),

                  Expanded(child: Divider(thickness: 1.5)),
                ],
              ),
            ),

            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(ImagesPath.logoGoogle),
                          height: 37,
                          fit: BoxFit.cover,
                          width: 37,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Continue with Google',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(width: 50),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        //borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: AssetImage(ImagesPath.logoApple),
                          height: 10,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Continue with Apple',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Upwork uses cookies for analytics, personalized content and ads.By using Upwork's services,you agree to this use of cookies.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
