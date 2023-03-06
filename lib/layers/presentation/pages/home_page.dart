import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_marvel/layers/presentation/bloc/home_bloc.dart';

import '../../../core/configs/inject.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = di<HomeBloc>();

  @override
  void initState() {
    super.initState();
    bloc.add(FetchMarvelEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer(
        bloc: bloc,
        listener: (previous, current) {},
        buildWhen: (previous, current) => current is HomeLoaded,
        builder: (context, state) {
          switch (state.runtimeType) {
            case HomeLoaded:
              final list = (state as HomeLoaded).marvel.mcu;
              if (list != null) {
                return SingleChildScrollView(
                  child: SafeArea(
                    child: Column(children: [
                      ...list.map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                      width: 1.0, color: Colors.grey)),
                              child: SizedBox(
                                  width: double.maxFinite,
                                  height: 300.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                e.title!,
                                                softWrap: true,
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                ),
                                                Text(
                                                  e.voteAverage.toString(),
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 10.0),
                                        Expanded(child: Text(e.overview!)),
                                      ],
                                    ),
                                  )),
                            ),
                          ))
                    ]),
                  ),
                );
              } else {
                return const Center(
                  child: Text("Lista Vazia... Tente novamente mais tarde"),
                );
              }
            default:
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
        },
      ),
    );
  }
}
