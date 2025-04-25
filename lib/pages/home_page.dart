import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _result = '';
  String _validateNota1 = '';
  String _validateNota2 = '';
  String _validateNota3 = '';
  String _validateNota4 = '';

  final _nota1 = TextEditingController();
  final _nota2 = TextEditingController();
  final _nota3 = TextEditingController();
  final _nota4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          //shape: ,
          title: Row(
            children: [
              Image.asset('assets/images/logo.png',scale: 15,),
              const SizedBox(width: 16,),
              const Text("Calculadora de nota"),
            ],
          ),
          backgroundColor: Color(0xFF7d98a1),
          toolbarHeight: 70,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16,),
                const Text(
                  "Ingrese las notas obtenidas en el semestre en el curso de Diseño de Aplicaciones Móviles.",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                const SizedBox( height: 16,),
                Divider(),
                const SizedBox( height: 16,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 55,
                        width: 150,
                        child: Text(
                          "Prácticas de laboratorio:",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                    ),

                    SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        controller: _nota1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Nota",
                          labelStyle: TextStyle(
                            fontSize: 12,
                          )
                        ),
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUnfocus,
                        validator: (value){
                          if (value!.isEmpty) {
                            setState(() {
                              _validateNota1 = 'Ingrese la nota';
                            });
                            return "";
                          } else {
                            setState(() {
                              _validateNota1 = '';
                            });
                            try{
                              double.parse(_nota1.text);
                            } catch(e){
                              _validateNota1 = 'Nota inválida';
                              return '';
                            }
                            if (value.isValidNumber()) {
                              if(0<=double.parse(value) && double.parse(value)<=5){
                                return null;
                              }
                              else{
                                _validateNota1 = ' ';
                                return "0-5";
                              }

                            }
                            else{
                              _validateNota1 = ' ';
                              return "0-5";
                            }
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 16,),
                    Text(
                      _validateNota1,
                      style: TextStyle(
                        color: Color(0xADD12121),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )

                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 55,
                        width: 150,
                        child: Text(
                          "Avance I: ",
                          style: TextStyle(
                            fontSize: 18,
                          ),

                        )
                    ),

                    SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        controller: _nota2,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Nota",
                            labelStyle: TextStyle(
                              fontSize: 12,
                            )
                        ),
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUnfocus,
                        validator: (value){
                          if (value!.isEmpty) {
                            setState(() {
                              _validateNota2 = 'Ingrese la nota';
                            });
                            return "";
                          } else {
                            setState(() {
                              _validateNota2 = '';
                            });
                            try{
                              double.parse(_nota2.text);
                            } catch(e){
                              _validateNota2 = 'Nota inválida';
                              return '';
                            }
                            if (value.isValidNumber()) {
                              if(0<=double.parse(value) && double.parse(value)<=5){
                                return null;
                              }
                              else{
                                _validateNota2 = ' ';
                                return "0-5";
                              }

                            }
                            else{
                              _validateNota2 = ' ';
                              return "0-5";
                            }
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 16,),
                    Text(
                      _validateNota2,
                      style: TextStyle(
                        color: Color(0xADD12121),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )

                  ],
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 45,
                        width: 150,
                        child: Text(
                          "Avance II: ",
                          style: TextStyle(
                            fontSize: 18,
                          ),

                        )
                    ),

                    SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        controller: _nota3,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Nota",
                            labelStyle: TextStyle(
                              fontSize: 12,
                            )
                        ),
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUnfocus,
                        validator: (value){
                          if (value!.isEmpty) {
                            setState(() {
                              _validateNota3 = 'Ingrese la nota';
                            });
                            return "";
                          } else {
                            setState(() {
                              _validateNota3 = '';
                            });
                            try{
                              double.parse(_nota3.text);
                            } catch(e){
                              _validateNota3 = 'Nota inválida';
                              return '';
                            }
                            if (value.isValidNumber()) {
                              if(0<=double.parse(value) && double.parse(value)<=5){
                                return null;
                              }
                              else{
                                _validateNota3 = ' ';
                                return "0-5";
                              }

                            }
                            else{
                              _validateNota3 = ' ';
                              return "0-5";
                            }
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 16,),
                    Text(
                      _validateNota3,
                      style: TextStyle(
                        color: Color(0xADD12121),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )

                  ],
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 45,
                        width: 150,
                        child: Text(
                          "Proyecto final: ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                    ),

                    SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        controller: _nota4,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Nota",
                            labelStyle: TextStyle(
                              fontSize: 12,
                            )
                        ),
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUnfocus,
                        validator: (value){
                          if (value!.isEmpty) {
                            setState(() {
                              _validateNota4 = 'Ingrese la nota';
                            });
                            return "";
                          } else {
                            setState(() {
                              _validateNota4 = '';
                            });
                            try{
                              double.parse(_nota4.text);
                            } catch(e){
                              _validateNota4 = 'Nota inválida';
                              return '';
                            }
                            if (value.isValidNumber()) {
                              if(0<=double.parse(value) && double.parse(value)<=5){
                                return null;
                              }
                              else{
                                _validateNota4 = ' ';
                                return "0-5";
                              }

                            }
                            else{
                              _validateNota4 = ' ';
                              return "0-5";
                            }
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 16,),
                    Text(
                      _validateNota4,
                      style: TextStyle(
                        color: Color(0xADD12121),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )

                  ],
                ),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    ElevatedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(250,60),
                        backgroundColor: Color(0xbfa9b4c2),
                      ),
                        onPressed: () async {
                          FocusScope.of(context).unfocus();
                          await Future.delayed(Duration(milliseconds: 100));
                          setState(() {
                            _validateNotes();
                          });

                        },
                        child: const Text(
                          "Calcular",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF000000)
                          ),
                        )
                    )
                  ],
                ),
                const SizedBox(height: 16,),
                Divider(),
                const SizedBox(height: 16,),
                Text(
                  _result,
                  style: TextStyle(
                    fontSize: 25
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _validateNotes(){
    if(_nota1.text == '' || _nota2.text == '' || _nota3.text == ''|| _nota4.text == ''){
      _result = 'Faltan notas para calcular el total.';
    }
    else{

      _result = _getGrade();
    }

  }

  String _getGrade(){
    double total = 0;
    if(_validateNota1 ==' ' || _validateNota2 ==' ' || _validateNota3 == ' ' || _validateNota4 == ' '){
      return 'Revise sus notas';
    } else if(_validateNota1 =='Nota inválida' || _validateNota2 =='Nota inválida' || _validateNota3 == 'Nota inválida' || _validateNota4 == 'Nota inválida'){
      return 'Revise sus notas';
    }
    else{
      total = double.parse(_nota1.text)*0.6 + double.parse(_nota2.text)*0.1
          + double.parse(_nota3.text)*0.1 + double.parse(_nota4.text)*0.2;
      total = double.parse(total.toStringAsFixed(1));
    }
    if(0<=total && total<=5){
      return 'La nota final es: $total';
    } else{
      return 'Revise sus notas';
    }


  }

}
extension on String {
  bool isValidNumber(){
    return RegExp(r'^[0-9]').hasMatch(this);

  }
}
