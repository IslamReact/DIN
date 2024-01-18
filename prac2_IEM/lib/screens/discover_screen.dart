
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/DiscoverProvider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

    DiscoverProvider discoverProvider = Provider.of<DiscoverProvider>(context);

    return Center(
        child: Text('Número de imágenes: ${discoverProvider.imagePosts.length}')
    );
  }
}




















