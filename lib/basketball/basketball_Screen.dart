import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbloc/basketball/component/button.dart';
import 'package:tbloc/basketball/cubit/basketball_cubit.dart';

import 'cubit/basketball_state.dart';

class BasketBall extends StatelessWidget {
  const BasketBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<BasketBallCubit , IncrementState> (
      listener: (context, state){},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('basketBall Screen'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                      [
                        Text(
                            'Team A',
                          style: TextStyle(
                          fontSize: 32,
                        ),),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                            "${BlocProvider.of<BasketBallCubit>(context).teamAPoints}"
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        buttonWidget(
                          name: 'Add 1 Point',
                          Presssed:(){
                            BlocProvider.of<BasketBallCubit>(context).incrementPoints(
                              team: 'A',
                              points: 1
                            );
                          },
                        ),
                        SizedBox(
                          height: 20
                        ),
                        buttonWidget(
                          name: 'Add 2 Point',
                          Presssed:(){
                            BlocProvider.of<BasketBallCubit>(context).incrementPoints(
                                team: 'A',
                                points: 2
                            );
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        buttonWidget(
                          name: 'Add 3 Point',
                          Presssed:(){
                            BlocProvider.of<BasketBallCubit>(context).incrementPoints(
                                team: 'A',
                                points: 3
                            );
                          },
                        )

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                      child:  VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                      [
                        Text(
                            'Team B',
                      style: TextStyle(
                        fontSize: 32,)
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                            "${BlocProvider.of<BasketBallCubit>(context).teamBPoints}"
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        buttonWidget(
                          name: 'Add 1 Point',
                          Presssed:(){
                            BlocProvider.of<BasketBallCubit>(context).incrementPoints(
                                team: 'B',
                                points: 1
                            );
                          },
                        ),
                        SizedBox(
                            height: 20
                        ),
                        buttonWidget(
                          name: 'Add 2 Point',
                          Presssed:(){
                            BlocProvider.of<BasketBallCubit>(context).incrementPoints(
                                team: 'B',
                                points: 2
                            );
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        buttonWidget(
                          name: 'Add 3 Point',
                          Presssed:(){
                            BlocProvider.of<BasketBallCubit>(context).incrementPoints(
                                team: 'B',
                                points: 3
                            );
                          },
                        )

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              buttonWidget(
                name: 'Reset',
                Presssed:(){
                  BlocProvider.of<BasketBallCubit>(context).reset();

                },
              ),

            ],
          ),
        );
      },
    );
  }
}
