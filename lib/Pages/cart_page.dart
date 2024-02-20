// import 'package:flutter/material.dart';
// import 'package:project/Provider/counter_provider.dart';
// import 'package:provider/provider.dart';
//
// class CartPage extends StatelessWidget {
//   const CartPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               context.watch<CounterProvider>().value.toString(),
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25,
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           FloatingActionButton(
//             child: const Icon(Icons.add),
//             onPressed: (){
//               context.read<CounterProvider>().incrementCounter();
//             },
//           ),
//           FloatingActionButton(
//             child: const Icon(Icons.remove),
//             onPressed: (){
//               context.read<CounterProvider>().decrementCounter();
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
