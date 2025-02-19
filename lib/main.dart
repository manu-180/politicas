import 'package:flutter/material.dart';

void main() {
  runApp(const PrivacyPolicyApp());
}

class PrivacyPolicyApp extends StatelessWidget {
  const PrivacyPolicyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Política de Privacidad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PrivacyPolicyScreen(),
    );
  }
}

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Política de Privacidad'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Política de Privacidad de Assistify',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Última actualización: [Fecha]',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            _buildSection('1. Información que Recopilamos', [
              '• Nombre y apellido',
              '• Correo electrónico',
              '• Número de teléfono',
              '• Información de suscripciones gestionadas a través de Google Play y Apple App Store',
              '• Datos de uso para mejorar la experiencia del usuario',
            ]),
            _buildSection('2. Uso de la Información', [
              '• Para procesar pagos de suscripciones en Google Play y App Store.',
              '• Para enviarte actualizaciones, soporte técnico y notificaciones importantes.',
            ]),
            _buildSection('3. Métodos de Pago y Suscripciones', [
              '• Assistify utiliza los sistemas de pago de Google Play y Apple App Store para gestionar suscripciones.',
              '• Nosotros no almacenamos directamente la información de pago.',
            ]),
            _buildSection('4. Cumplimiento con Regulaciones', [
              '• Cumplimos con RGPD para usuarios en la Unión Europea.',
              '• Cumplimos con CCPA y CalOPPA para usuarios en EE.UU.',
              '• Cumplimos con las políticas de Apple y Google en relación con pagos y suscripciones.',
            ]),
            _buildSection('5. Contacto', [
              'Si tienes preguntas, contáctanos en:',
              '📩 Email: manunv97@gmail.com',
            ]),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: const Text(
                  'Aceptar y Continuar',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...content.map((text) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Text(
                text,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            )),
      ],
    );
  }
}