import 'package:blocexample/Provider/blocprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc/Blocs/app_blocs.dart';
import 'Bloc/Events/app_events.dart';
import 'Bloc/States/app_states.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: BlocBuilder<CounterBlocs, CounterStates>(
        builder: (context, state){
          return  Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.counter.toString(), style: const TextStyle(
                  fontSize: 30
                ),
                )    ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed:
                        ()=>BlocProvider.of<CounterBlocs>(context).add(Increment()),
                        child: const Icon(Icons.add)
                    ),

                    const SizedBox(width: 10,),

                    ElevatedButton(
                        onPressed:
                        ()=>BlocProvider.of<CounterBlocs>(context).add(Decrement()),
                        
                        child: const Icon(Icons.remove)
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()));
                  },
                  child: Container(
                    width: 138,
                    height: 35,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Colors.grey,
                    ),
                    child: const Center(child: Text("click", style: TextStyle(color: Colors.white),)),
                  ),
                  

                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8) ,
                   child: 
                   Image.network('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7a53c247-ef26-4990-942f-1c81a8e065cd/danz74k-5d256380-810e-495e-b076-0c8952e0b9bf.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzdhNTNjMjQ3LWVmMjYtNDk5MC05NDJmLTFjODFhOGUwNjVjZFwvZGFuejc0ay01ZDI1NjM4MC04MTBlLTQ5NWUtYjA3Ni0wYzg5NTJlMGI5YmYuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.BiO-I4Fk78bnSpgXKxDWgBhJdwA3eNmY6FvPFvn6ehk'))
              ],
            );

        }
      ),
    );
  }
}
