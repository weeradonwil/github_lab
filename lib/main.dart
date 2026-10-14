import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'profile_page.dart';

void main() {
  runApp(const GitHubLabApp());
}

class GitHubLabApp extends StatefulWidget {
  const GitHubLabApp({super.key});

  @override
  State<GitHubLabApp> createState() => _GitHubLabAppState();
}

class _GitHubLabAppState extends State<GitHubLabApp> {
  static const _darkModeKey = 'dark_mode_enabled';
  bool _isDarkMode = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadThemePreference();
  }

  Future<void> _loadThemePreference() async {
    final preferences = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _isDarkMode = preferences.getBool(_darkModeKey) ?? false;
      _isLoading = false;
    });
  }

  Future<void> _setDarkMode(bool enabled) async {
    setState(() => _isDarkMode = enabled);
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool(_darkModeKey, enabled);
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const MaterialApp(
        home: Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: MyPage(onDarkModeChanged: _setDarkMode, isDarkMode: _isDarkMode),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({
    super.key,
    required this.onDarkModeChanged,
    required this.isDarkMode,
  });

  final ValueChanged<bool> onDarkModeChanged;
  final bool isDarkMode;

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String message = 'ยังไม่ได้กดปุ่ม  หรอจ๊ะ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Lab'),
        actions: [
          IconButton(
            tooltip: widget.isDarkMode
                ? 'เปลี่ยนเป็นโหมดสว่าง'
                : 'เปลี่ยนเป็นโหมดมืด',
            onPressed: () => widget.onDarkModeChanged(!widget.isDarkMode),
            icon: Icon(widget.isDarkMode ? Icons.dark_mode : Icons.light_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message),
            ElevatedButton(
              onPressed: () {
                setState(() => message = 'กดปุ่มแล้ว!');
                Navigator.of(context).push(
                  MaterialPageRoute<void>(builder: (context) => ProfilePage()),
                );
              },
              child: const Text('ไปหน้า Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
