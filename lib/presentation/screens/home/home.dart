import 'package:flutter/material.dart';
import 'package:task_list_app/config/Styles/styles.dart';
import 'package:task_list_app/presentation/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {


  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;


    return Scaffold(

      appBar: _Appbar(colors: colors),

      drawer: const SideBar(),

      body: _HomeBodyListView(),

      floatingActionButton: _AddButton(colors: colors),
    );
  }
}

class _Appbar extends StatelessWidget implements PreferredSizeWidget{
  const _Appbar({
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('Task List', style: angelinaBold35()),
        centerTitle: true,
        backgroundColor: colors.primary,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              )),
        ],
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        )
      )
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _HomeBodyListView extends StatefulWidget {
  
  @override
  State<_HomeBodyListView> createState() => _HomeBodyListViewState();
}

class _HomeBodyListViewState extends State<_HomeBodyListView> {
  bool? ischecbox = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: InkWell(
                onTap: () {},
                child: CheckboxListTile(
                  title: Text('Task #${index + 1}', style: bentonSansMedium15(),),
                  value: ischecbox, 
                  onChanged: (bool? value) {
                    setState(() {
                      ischecbox = value;
                    });
                  },
                  subtitle: Text(
                    'Sunt reprehenderit est ut et sint adipisicing officia aliquip laborum ea sunt proident aliquip.',
                    style: bentonSansRegular12(),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ),
          );
        },
      );

  }
}

class _AddButton extends StatelessWidget {
  const _AddButton({
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: colors.primary,
      shape: const CircleBorder(),
      child: const Icon(Icons.add, color: Colors.white, size: 40),
      onPressed: () {},
    );
  }
}