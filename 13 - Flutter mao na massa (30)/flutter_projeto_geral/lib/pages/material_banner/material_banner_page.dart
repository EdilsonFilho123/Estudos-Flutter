import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({super.key});
  static final title = 'Material Banner';
  static final route = '/material_banner';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final banner = MaterialBanner(
                  content: Text('teste Simple Text'),
                  actions: [
                    TextButton(
                      onPressed:
                          () =>
                              ScaffoldMessenger.of(
                                context,
                              ).hideCurrentMaterialBanner(),
                      child: Text('Cancelar'),
                    ),
                  ],
                );
                ScaffoldMessenger.of(context).showMaterialBanner(banner);
              },
              child: Text('Simple Text'),
            ),
          ],
        ),
      ),
    );
  }
}
