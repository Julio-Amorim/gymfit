// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:gymfit/components/decorationAuthentication.dart';
import '../common/colors.dart';

class ScreenAuthentication extends StatefulWidget{
  const ScreenAuthentication({super.key});

  @override
  State<ScreenAuthentication> createState() => _ScreenAuthenticationState();
}

class _ScreenAuthenticationState extends State<ScreenAuthentication> {
  bool isLogin = true;
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.white,
      body: 
        Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyColors.gradiente1,
                    MyColors.gradiente2,
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Form( key: _formKey, 
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      //vertical
                      mainAxisAlignment: MainAxisAlignment.center,
                      //horizontal
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset('assets/img/logoGymFit.png',
                          width: 200,
                          height: 90,),
                        const Text('GymFit',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 37,
                            fontWeight: FontWeight.bold,
                            color: MyColors.roxoForte,
                          ),
                        ),
                        const SizedBox(height: 12,),
                        TextFormField(
                          decoration: getAuthenticatioInputDecoration('E-mail'),
                          validator: (String? value){
                            if (value == null || value.isEmpty) {
                              return 'E-mail é obrigatório';
                            }else if (value.length < 6) {
                              return 'E-mail muito curto';
                            }else if (value.contains('@') == false || value.contains('.') == false){
                              return 'E-mail inválido';
                            }
                            
                            return null;

                          },
                        ),
                        TextFormField(
                          decoration: getAuthenticatioInputDecoration('Senha'),
                          obscureText: true,
                          validator: (String? value){
                            if (value == null || value.isEmpty) {
                              return 'Senha é obrigatório';
                            }else if (value.length < 6) {
                              return 'Senha muito curto';
                            }
                            
                            return null;

                          },
                        ),
                        Visibility(visible: !isLogin, child: Column(
                            children:[
                              TextFormField(
                                decoration: getAuthenticatioInputDecoration('Confirme a senha'),
                                obscureText: true,
                                validator: (String? value){
                                  if (value == null || value.isEmpty) {
                                    return 'Confirmar senha é obrigatório';
                                  }else if (value.length < 6) {
                                    return 'Senha muito curto';
                                  }
                                  
                                  return null;

                                },
                              ),
                              TextFormField(
                                decoration: getAuthenticatioInputDecoration('Nome completo'),
                                validator: (String? value){
                                  if (value == null || value.isEmpty) {
                                    return 'Nome é obrigatório';
                                  }
                                  
                                  return null;

                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyColors.roxoForte,
                          ),
                          onPressed: (){
                            buttonEnter();
                          },
                          child: Text((isLogin)? 'Entrar' : 'Cadastrar', 
                          style: const TextStyle(
                            color: MyColors.roxoClarinho,
                            fontSize: 15,
                          ),
                          ),
                        ),
                        TextButton(onPressed: (){
                          setState(() {
                            isLogin = !isLogin;
                          });
                        }, child: Text((isLogin) ? 'Ainda não tem conta? Cadastre-se' : 'Já tem conta? Entrar',
                          style: const TextStyle(
                            color: MyColors.roxoForte,
                            fontSize: 15,
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

    );
  }

  buttonEnter(){
    if (_formKey.currentState!.validate()) {
      // ignore: avoid_print
      print('Validado');
    }else{
      // ignore: avoid_print
      print('Não validado');
    }
  }
}