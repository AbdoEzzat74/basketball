import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbloc/basketball/cubit/basketball_cubit.dart';
import 'basketball/basketball_Screen.dart';

void main() {
  runApp(const HomePage()
  );
}

class HomePage extends StatelessWidget
{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(create: (context) => BasketBallCubit(),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BasketBall(),
      ),
    );
  }
}

