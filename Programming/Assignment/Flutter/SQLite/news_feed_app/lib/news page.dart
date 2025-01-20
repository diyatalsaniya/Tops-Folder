import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const NewsFeedApp(title: '',));
}

class NewsFeedApp extends StatelessWidget {
  const NewsFeedApp({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Feed App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const NewsFeedHomePage(),
    );
  }
}

class NewsFeedHomePage extends StatefulWidget {
  const NewsFeedHomePage({super.key});

  @override
  State<NewsFeedHomePage> createState() => _NewsFeedHomePageState();
}

class _NewsFeedHomePageState extends State<NewsFeedHomePage> {
  final String apiKey = '95e5e921b1504f7192ec2297bb355865';
  final String apiUrl = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=';

  List articles = [];
  bool isLoading = true;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      final response = await http.get(Uri.parse('$apiUrl$apiKey'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          articles = data['articles'];
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = 'Failed to load news';
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'An error occurred: $e';
        isLoading = false;
      });
    }
  }

  void _openArticle(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News Feed App')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
          ? Center(child: Text(errorMessage))
          : ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: article['urlToImage'] != null
                  ? Image.network(
                article['urlToImage'],
                width: 100,
                fit: BoxFit.cover,
              )
                  : const Icon(Icons.image, size: 100),
              title: Text(
                article['title'] ?? 'No title',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                article['description'] ?? 'No description',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () => _openArticle(article['url']),
            ),
          );
        },
      ),
    );
  }
}
