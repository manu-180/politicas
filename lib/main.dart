import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
              'Última actualización: 18/05/2025',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            _buildSection('1. ¿Qué datos personales recopilamos?', [
              '• Correo electrónico',
              '• Nombre completo',
              '• Número de teléfono',
              '• Sexo',
              '• Rubro (actividad del usuario)',
              '• Nombre del grupo o entorno (“taller”)',
              '• ID único de usuario',
              '• Fecha de creación de cuenta',
              '• Tipo de usuario (admin o alumno)',
            ]),
            _buildSection('2. ¿Para qué usamos estos datos?', [
              '• Para crear y gestionar tu cuenta.',
              '• Para mostrar el contenido correspondiente a tu perfil.',
              '• Para enviar notificaciones automáticas sobre tus clases.',
              '• Para separar correctamente los grupos de usuarios.',
              '• Para activar o desactivar funciones según tu tipo de cuenta.',
            ]),
            _buildSection('3. ¿Dónde se almacenan tus datos?', [
              '• Todos los datos se almacenan en servidores seguros de Supabase.',
              '• Assistify no almacena datos sensibles en tu dispositivo.',
            ]),
            _buildSection('4. ¿Compartimos tu información?', [
              '• No compartimos tus datos personales con terceros con fines comerciales.',
              '• Usamos Twilio para enviarte mensajes por WhatsApp. Solo se transmite tu número en el momento del envío.',
            ]),
            _buildSection('5. ¿Necesitás cuenta para usar la app?', [
              '• Sí. Es necesario registrarse para acceder a las funcionalidades.',
              '• La app necesita conocer tu entorno para mostrar el contenido correcto.',
            ]),
            _buildSection('6. Tus derechos', [
              '• Podés solicitar acceso, corrección o eliminación de tus datos.',
              '• Para hacerlo, escribinos a: soporte@assistify.lat',
            ]),
            _buildSection('7. Cambios en esta política', [
              '• Podemos actualizar esta política. Los cambios se notificarán en la app o por email.',
            ]),
            _buildSection('8. Contacto', [
              '📩 Email: soporte@assistify.lat',
              '🌐 Web: www.assistify.lat',
            ]),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Acción si querés volver o cerrar
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
