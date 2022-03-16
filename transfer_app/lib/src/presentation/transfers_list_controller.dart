import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transfer_app/src/presentation/transfers_lists/cubit/transfer_cubit.dart';
import 'package:transfer_app/src/presentation/transfers_lists/transfers_list_screen.dart';

class TransfersListController extends StatelessWidget {
  const TransfersListController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransferCubit, TransferState>(
        bloc: BlocProvider.of<TransferCubit>(context)..getTransfers(),
        builder: (context, state) {
          if (state is Loading) {
            return const Text('Loading data');
          }

          if (state is Error) {
            return const Text('Error occured');
          }

          state as Loaded;
          return TransferListScreen(transfers: state.transfers);
        });
  }
}
