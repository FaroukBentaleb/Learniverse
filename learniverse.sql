-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 10 juin 2025 à 20:36
-- Version du serveur : 9.1.0
-- Version de PHP : 8.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `learniverse`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_course_id` int NOT NULL,
  `id_user_id` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_avis` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8F91ABF0D92975B5` (`id_course_id`),
  KEY `IDX_8F91ABF079F37AE5` (`id_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `challenge`
--

DROP TABLE IF EXISTS `challenge`;
CREATE TABLE IF NOT EXISTS `challenge` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_competition_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D7098951465F6E14` (`id_competition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `challenge`
--

INSERT INTO `challenge` (`id`, `id_competition_id`, `title`, `description`, `solution`, `content`) VALUES
(19, 10, 'Responsive Landing Page', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Create a responsive landing page with a hero section.</p></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><pre style=\"background-color: rgb(245, 245, 245); padding: 10px; border-radius: 5px; margin: 10px 0px; font-family: monospace; overflow-x: auto;\"><code class=\"language-html\" style=\"display: block; white-space: pre; font-family: &quot;Courier New&quot;, monospace;\">&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n  &lt;style&gt;\n    .hero { background: #f0f0f0; padding: 50px; text-align: center; }\n    @media (max-width: 600px) { .hero { padding: 20px; } }\n  &lt;/style&gt;\n&lt;/head&gt;\n&lt;body&gt;\n  &lt;div class=\"hero\"&gt;&lt;h1&gt;Welcome&lt;/h1&gt;&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;</code></pre></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Build a landing page with a centered hero section that adjusts padding on mobile devices.</p></body></html>'),
(20, 10, 'Interactive Form', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Build a form with client-side validation using JavaScript.</p></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><pre style=\"background-color: rgb(245, 245, 245); padding: 10px; border-radius: 5px; margin: 10px 0px; font-family: monospace; overflow-x: auto;\"><code class=\"language-html\" style=\"display: block; white-space: pre; font-family: &quot;Courier New&quot;, monospace;\">&lt;form onsubmit=\"return validate()\"&gt;\n  &lt;input type=\"email\" id=\"email\"&gt;\n  &lt;button&gt;Submit&lt;/button&gt;\n  &lt;script&gt;\n    function validate() {\n      let email = document.getElementById(\"email\").value;\n      return email.includes(\"@\");\n    }\n  &lt;/script&gt;\n&lt;/form&gt;</code></pre></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Create a form that validates email input before submission.</p></body></html>'),
(21, 10, 'Dynamic Content Loader', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Load content dynamically using the Fetch API.</p></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><pre style=\"background-color: rgb(245, 245, 245); padding: 10px; border-radius: 5px; margin: 10px 0px; font-family: monospace; overflow-x: auto;\"><code class=\"language-javascript\" style=\"display: block; white-space: pre; font-family: &quot;Courier New&quot;, monospace;\">fetch(\"https://api.example.com/data\")\n  .then(response =&gt; response.json())\n  .then(data =&gt; document.getElementById(\"content\").innerText = data.message);</code></pre></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Write a script to fetch and display data from a mock API.</p></body></html>'),
(25, 12, 'Password Hashing', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Implement secure password hashing.</p></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><pre style=\"background-color: rgb(245, 245, 245); padding: 10px; border-radius: 5px; margin: 10px 0px; font-family: monospace; overflow-x: auto;\"><code class=\"language-python\" style=\"display: block; white-space: pre; font-family: &quot;Courier New&quot;, monospace;\">import hashlib\ndef hash_password(password):\n    return hashlib.sha256(password.encode()).hexdigest()</code></pre></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Create a function to hash passwords securely using SHA-256.</p></body></html>'),
(26, 12, 'SQL Injection Prevention', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Write a secure login query.</p></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><pre style=\"background-color: rgb(245, 245, 245); padding: 10px; border-radius: 5px; margin: 10px 0px; font-family: monospace; overflow-x: auto;\"><code class=\"language-python\" style=\"display: block; white-space: pre; font-family: &quot;Courier New&quot;, monospace;\">import sqlite3\ndef safe_login(email, password):\n    conn = sqlite3.connect(\"database.db\")\n    cursor = conn.cursor()\n    cursor.execute(\"SELECT * FROM users WHERE email = ? AND password = ?\", (email, password))\n    return cursor.fetchone()</code></pre></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Implement a login function using parameterized queries to prevent SQL injection.</p></body></html>'),
(27, 12, 'XSS Protection', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Sanitize user input to prevent XSS attacks.</p></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><pre style=\"background-color: rgb(245, 245, 245); padding: 10px; border-radius: 5px; margin: 10px 0px; font-family: monospace; overflow-x: auto;\"><code class=\"language-python\" style=\"display: block; white-space: pre; font-family: &quot;Courier New&quot;, monospace;\">from html import escape\ndef sanitize_input(user_input):\n    return escape(user_input)</code></pre></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Create a function to sanitize user input for safe HTML rendering.</p></body></html>'),
(28, 13, 'Todo List App', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Build a todo list app using Flutter.</p></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><pre style=\"background-color: rgb(245, 245, 245); padding: 10px; border-radius: 5px; margin: 10px 0px; font-family: monospace; overflow-x: auto;\"><code class=\"language-java\" style=\"display: block; white-space: pre; font-family: &quot;Courier New&quot;, monospace;\">ListView.builder(\n  itemCount: todos.length,\n  itemBuilder: (context, index) =&gt; ListTile(title: Text(todos[index])),\n)</code></pre></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Create a simple todo list app with a list view in Flutter.</p></body></html>'),
(29, 13, 'API Integration', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Fetch data from an API in a mobile app.</p></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><pre style=\"background-color: rgb(245, 245, 245); padding: 10px; border-radius: 5px; margin: 10px 0px; font-family: monospace; overflow-x: auto;\"><code class=\"language-java\" style=\"display: block; white-space: pre; font-family: &quot;Courier New&quot;, monospace;\">http.get(Uri.parse(\"https://api.example.com/data\"))\n  .then((response) =&gt; setState(() { data = jsonDecode(response.body); }));</code></pre></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Integrate a REST API to display data in a mobile app.</p></body></html>'),
(30, 13, 'Local Storage', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Save user preferences locally.</p></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><pre style=\"background-color: rgb(245, 245, 245); padding: 10px; border-radius: 5px; margin: 10px 0px; font-family: monospace; overflow-x: auto;\"><code class=\"language-java\" style=\"display: block; white-space: pre; font-family: &quot;Courier New&quot;, monospace;\">SharedPreferences prefs = await SharedPreferences.getInstance();\nprefs.setString(\"theme\", \"dark\");</code></pre></body></html>', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Implement local storage to save user preferences in a mobile app.</p></body></html>'),
(34, 15, 'Real-Time Collaborative Editor', '<p>Build a real-time collaborative text editor using WebSockets and operational transformation.</p>', '<pre><code class=\"language-javascript\">const express = require(\'express\');\r\nconst http = require(\'http\');\r\nconst socketIo = require(\'socket.io\');\r\nconst { Server } = require(\'ot\');\r\nconst app = express();\r\nconst server = http.createServer(app);\r\nconst io = socketIo(server);\r\nconst otServer = new Server(\'document\');\r\nio.on(\'connection\', socket =&gt; {\r\n  otServer.receive(socket.id, socket);\r\n  socket.on(\'operation\', op =&gt; otServer.receiveOperation(socket.id, op));\r\n});\r\nserver.listen(3000);</code></pre>', '<p>Create a web-based editor where multiple users can edit a document simultaneously, ensuring conflict-free updates with operational transformation.</p>'),
(35, 15, 'Scalable Microfrontend Architecture', '<p>Implement a microfrontend architecture with module federation for a dashboard application.</p>', '<pre><code class=\"language-javascript\">// webpack.config.js for host app\r\nconst ModuleFederationPlugin = require(\'webpack/lib/container/ModuleFederationPlugin\');\r\nmodule.exports = {\r\n  plugins: [\r\n    new ModuleFederationPlugin({\r\n      name: \'host\',\r\n      remotes: {\r\n        widget: \'widget@http://localhost:3001/remoteEntry.js\',\r\n      },\r\n    }),\r\n  ],\r\n};\r\n// Remote component\r\nimport React from \'react\';\r\nexport default () =&gt; &lt;div&gt;Remote Widget&lt;/div&gt;;</code></pre>', '<p>Build a dashboard that dynamically loads a remote widget microfrontend, ensuring seamless integration and independent deployment.</p>'),
(36, 15, 'Secure API Gateway', '<p>Develop a secure API gateway with rate limiting, JWT authentication, and CORS handling.</p>', '<pre><code class=\"language-javascript\">const express = require(\'express\');\r\nconst jwt = require(\'jsonwebtoken\');\r\nconst rateLimit = require(\'express-rate-limit\');\r\nconst app = express();\r\napp.use(rateLimit({ windowMs: 15 * 60 * 1000, max: 100 }));\r\napp.use((req, res, next) =&gt; {\r\n  res.header(\'Access-Control-Allow-Origin\', \'trusted.com\');\r\n  next();\r\n});\r\napp.use((req, res, next) =&gt; {\r\n  const token = req.headers[\'authorization\'];\r\n  jwt.verify(token, \'secret\', (err, decoded) =&gt; {\r\n    if (err) return res.status(401).send(\'Unauthorized\');\r\n    req.user = decoded;\r\n    next();\r\n  });\r\n});\r\napp.get(\'/api/data\', (req, res) =&gt; res.json({ data: \'Secure\' }));\r\napp.listen(3000);</code></pre>', '<p>Create an API gateway that enforces rate limiting, JWT-based authentication, and CORS for secure cross-origin requests.</p>'),
(37, 16, 'Offline-First Task Manager', '<p>Build an offline-first task manager app with data syncing using Flutter and Workmanager.</p>', '<pre><code class=\"language-java\">import \'package:flutter/material.dart\';\r\nimport \'package:hive/hive.dart\';\r\nimport \'package:workmanager/workmanager.dart\';\r\nvoid callbackDispatcher() {\r\n  Workmanager().executeTask((task, inputData) async {\r\n    var box = await Hive.openBox(\'tasks\');\r\n    // Sync tasks to server\r\n    return true;\r\n  });\r\n}\r\nvoid main() {\r\n  Workmanager().initialize(callbackDispatcher);\r\n  runApp(MyApp());\r\n}\r\nclass MyApp extends StatelessWidget {\r\n  @override\r\n  Widget build(BuildContext context) {\r\n    return MaterialApp(home: TaskScreen());\r\n  }\r\n}</code></pre>', '<p>Develop a Flutter app that allows users to manage tasks offline and syncs with a server when online, using background tasks.</p>'),
(38, 16, 'Secure Biometric Authentication', '<p>Implement biometric authentication with encrypted local storage in a React Native app.</p>', '<pre><code class=\"language-javascript\">import * as Keychain from \'react-native-keychain\';\r\nimport Biometrics from \'react-native-biometrics\';\r\nconst loginWithBiometrics = async () =&gt; {\r\n  const biometricResult = await Biometrics.simplePrompt({ promptMessage: \'Authenticate\' });\r\n  if (biometricResult.success) {\r\n    const credentials = await Keychain.getGenericPassword();\r\n    if (credentials) {\r\n      // Decrypt and use credentials\r\n      return credentials.password;\r\n    }\r\n  }\r\n  return null;\r\n};</code></pre>', '<p>Create a React Native app that uses biometric authentication (fingerprint/face) to access securely stored user credentials.</p>'),
(39, 16, 'Real-Time Location Tracking', '<p>Build a mobile app for real-time location tracking with geofencing using Kotlin.</p>', '<pre><code class=\"language-javascript\">class LocationService : Service() {\r\n private lateinit var geofencingClient: GeofencingClient\r\n override fun onCreate() {\r\n   super.onCreate()\r\n   geofencingClient = LocationServices.getGeofencingClient(this)\r\n   val geofence = Geofence.Builder()\r\n     .setRequestId(\"office\")\r\n     .setCircularRegion(37.7749, -122.4194, 100f)\r\n     .setExpirationDuration(Geofence.NEVER_EXPIRE)\r\n     .build()\r\n   geofencingClient.addGeofences(geofencingRequest(geofence), pendingIntent())\r\n }\r\n private fun geofencingRequest(geofence: Geofence): GeofencingRequest {\r\n   return GeofencingRequest.Builder().addGeofence(geofence).build()\r\n }\r\n private fun pendingIntent(): PendingIntent {\r\n   return PendingIntent.getBroadcast(this, 0, Intent(\"GEOFENCE\"), PendingIntent.FLAG_UPDATE_CURRENT)\r\n }\r\n}</code></pre>', '<p>Develop an Android app in Kotlin that tracks user location in real-time and triggers notifications when entering/exiting a geofenced area.</p>');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_poste_id` int NOT NULL,
  `id_user_id` int NOT NULL,
  `contenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_comment` date NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `gifurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_67F068BCF04BBC13` (`id_poste_id`),
  KEY `IDX_67F068BC79F37AE5` (`id_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `id_poste_id`, `id_user_id`, `contenu`, `date_comment`, `visible`, `gifurl`) VALUES
(205, 135, 1, 'Yes! Especially the OOP part.', '2025-05-15', 1, 'https://media0.giphy.com/media/v1.Y2lkPWFiNDRiOWRkMGE3bGZldGpicXEwNDRqYzZzZndmZ2t5cHVlcTdwZWZwbXY4N20xaiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/3o6UB3VhArvomJHtdK/giphy.gif'),
(206, 135, 43, 'The examples helped a lot though.', '2025-05-15', 1, NULL),
(207, 136, 1, 'Focus on keyword research!', '2025-05-15', 1, NULL),
(208, 136, 1, 'Use real websites for testing', '2025-05-15', 1, 'https://media3.giphy.com/media/v1.Y2lkPWFiNDRiOWRkdWtvajYxdTM1czdrN283NTFydXBuZ2wycTU1dTc1ZzJhNWpxc2I4YyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/l0K41xomGqrEgN0Iw/giphy.gif'),
(209, 137, 1, 'Check your event handler.', '2025-05-15', 1, NULL),
(210, 137, 1, 'Could be a null value!', '2025-05-15', 1, NULL),
(211, 138, 1, 'BRAVOOO', '2025-05-15', 0, 'https://media0.giphy.com/media/v1.Y2lkPWFiNDRiOWRkczhuNHU1OXF1d2J3cHQ5ZWZyZXNnOWszcHhzaGs3dGMxbDJyeHd0YSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/ytTYwIlbD1FBu/giphy.gif'),
(212, 139, 1, 'Use for when you know how many times to loop, and while when you don\'t', '2025-05-15', 0, NULL),
(213, 139, 1, 'For example, if you want to repeat something exactly 3 times, use for.But if you\'re waiting for a user to type \"exit\", use while', '2025-05-15', 1, NULL),
(214, 140, 1, 'Same here very useful :)', '2025-05-15', 0, NULL),
(215, 140, 1, 'Wish they added more case studies.', '2025-05-15', 1, NULL),
(216, 140, 55, 'VALIDATION', '2025-05-16', 1, NULL),
(217, 136, 55, 'try stackoverflow', '2025-05-20', 1, NULL),
(218, 135, 55, 'please try stack overflow', '2025-05-20', 1, 'https://media1.giphy.com/media/26tn33aiTi1jkl6H6/giphy.gif?cid=b7a93b0buwz0jempuol7fk7k6yd7sxgaf06jtqucz5ydgyky&ep=v1_gifs_search&rid=giphy.gif&ct=g');

-- --------------------------------------------------------

--
-- Structure de la table `competition`
--

DROP TABLE IF EXISTS `competition`;
CREATE TABLE IF NOT EXISTS `competition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_instructor_id` int NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_comp` datetime NOT NULL,
  `duration` int NOT NULL,
  `current_participant` int DEFAULT NULL,
  `date_fin` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_freesed` tinyint(1) NOT NULL DEFAULT '0',
  `notification_sent2h` tinyint(1) NOT NULL DEFAULT '0',
  `notification_sent_start` tinyint(1) NOT NULL DEFAULT '0',
  `notifiedEnd` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_B50A2CB1326710F6` (`id_instructor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competition`
--

INSERT INTO `competition` (`id`, `id_instructor_id`, `nom`, `categorie`, `etat`, `date_comp`, `duration`, `current_participant`, `date_fin`, `description`, `image_url`, `web_image_url`, `is_freesed`, `notification_sent2h`, `notification_sent_start`, `notifiedEnd`) VALUES
(10, 54, 'Web Development Hackathon 2025', 'Web Development', 'InProgress', '2025-05-23 09:00:00', 30, 1, '2025-05-23 09:30:00', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Build responsive and dynamic web applications using modern frameworks.</p></body></html>', 'http://localhost/competition_images/1747368822814.jpg', 'http://localhost/competition_images/1747368822814.jpg', 0, 0, 0, 0),
(12, 54, 'CyberSec Challenge 2025', 'Cybersecurity', 'InProgress', '2025-05-23 09:00:00', 45, 0, '2025-05-23 09:45:00', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Secure systems and detect vulnerabilities in this cybersecurity challenge.</p></body></html>', 'http://localhost/competition_images\\1744961926627.jpg', 'http://localhost/competition_images/1747368851565.jpg', 0, 0, 0, 0),
(13, 54, 'Mobile App Challenge', 'Mobile Development', 'InProgress', '2025-05-31 09:00:00', 85, 0, '2025-05-31 10:25:00', '<html dir=\"ltr\"><head></head><body contenteditable=\"true\"><p>Develop innovative mobile applications for Android or iOS.</p></body></html>', 'http://localhost/competition_images\\1744961823248.png', 'http://localhost/competition_images/1747368888587.png', 0, 0, 0, 0),
(15, 54, 'Web Dev Elite Challenge 2025', 'Web Development', 'InProgress', '2025-05-15 20:36:55', 45, 1, '2025-05-31 21:34:00', '<p>Tackle cutting-edge web development problems, building scalable, secure, and high-performance applications using modern frameworks and architectures.</p>', 'http://localhost/competition_images/1744961878785.jpg', NULL, 0, 0, 0, 0),
(16, 54, 'Mobile Dev Pro League 2025', 'Mobile Development', 'Planned', '2025-05-15 20:39:52', 45, 5, '2025-05-30 21:37:00', '<p>Push the boundaries of mobile development by creating high-performance, secure, and feature-rich applications for Android and iOS.</p>', 'http://localhost/competition_images/1747368888587.png', NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `competition_user`
--

DROP TABLE IF EXISTS `competition_user`;
CREATE TABLE IF NOT EXISTS `competition_user` (
  `competition_id` int NOT NULL,
  `user_id` int NOT NULL,
  `submission` tinyint(1) DEFAULT '0',
  `coins` int NOT NULL DEFAULT '0' COMMENT 'Coins earned by the user for this competition',
  PRIMARY KEY (`competition_id`,`user_id`),
  KEY `IDX_83D0485B7B39D312` (`competition_id`),
  KEY `IDX_83D0485BA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competition_user`
--

INSERT INTO `competition_user` (`competition_id`, `user_id`, `submission`, `coins`) VALUES
(10, 55, 1, 0),
(12, 55, 1, 0),
(13, 55, 1, 0),
(15, 55, 1, 0),
(16, 55, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int NOT NULL,
  `price` double NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `course`
--

INSERT INTO `course` (`id`, `id_user`, `title`, `description`, `duration`, `price`, `level`, `image`, `video_url`, `is_frozen`, `category`) VALUES
(137, 8, 'Introduction to Digital Marketing', 'Ce cours vous introduit aux concepts de base du marketing numérique, y compris le SEO, les réseaux sociaux, l\'email marketing, et la publicité en ligne. Parfait pour ceux qui débutent dans ce domaine.', 7, 0, 'Beginner', 'assets/FrontOffice/images/logo/logo.png', NULL, 1, 'Digital Marketing'),
(138, 8, 'The Art of Creative Writing', 'Libérez votre créativité avec ce cours de rédaction ! Apprenez à développer des personnages, à construire des intrigues captivantes et à améliorer vos compétences en écriture', 10, 24.99, 'Intermediate', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Writing & Communication'),
(139, 8, 'Advanced Python Programming', 'Maîtrisez les concepts avancés de la programmation Python, y compris les structures de données complexes, la programmation orientée objet et les bibliothèques comme NumPy et Pandas pour l\'analyse de données.', 50, 100, 'Advanced', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Tech & Programming'),
(140, 8, 'Introduction to HTML & CSS', 'Un cours pour débutants qui enseigne les bases du développement web, en particulier HTML et CSS.', 10, 0, 'Beginner', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Tech & Programming'),
(141, 8, 'Mindfulness for Stress Reduction', 'Apprenez des techniques de méditation et de pleine conscience pour réduire le stress et améliorer votre bien-être.', 10, 0, 'Beginner', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Health & Wellness'),
(142, 8, 'UX/UI Design Masterclass', 'Apprenez les meilleures pratiques du design d\'interfaces utilisateur et l\'expérience utilisateur pour créer des sites web et applications intuitifs.', 18, 200, 'Advanced', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Tech & Programming'),
(143, 8, 'Mastering Crowdfunding for Your Startup', 'Découvrez comment lancer une campagne de crowdfunding réussie pour financer votre startup, en apprenant les meilleures pratiques pour créer une page attrayante, attirer des contributeurs et gérer votre campagne.', 27, 70, 'Intermediate', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Business & Finance'),
(144, 8, 'Introduction to 3D Modeling', 'Apprenez les bases de la modélisation 3D, en utilisant des outils comme Blender pour créer des objets et des scènes 3D.', 19, 0, 'Beginner', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Creative Art'),
(145, 8, 'Paid Media Campaigns: Google Ads and Facebook Ads', 'Apprenez à créer et à gérer des campagnes publicitaires payantes sur Google et Facebook. Ce cours vous montre comment cibler votre audience, analyser les performances et optimiser votre retour sur investissement.', 12, 30, 'Intermediate', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Digital Marketing'),
(146, 8, 'Oil Painting Techniques: Creating Masterpieces', 'Ce cours vous apprend à maîtriser les techniques de peinture à l\'huile, du mélange des couleurs à la création de textures complexes. Idéal pour ceux qui souhaitent peindre des œuvres durables et vibrantes.', 20, 35, 'Advanced', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Creative Art'),
(147, 8, 'Nutrition for Optimal Health: Eat to Feel Great', 'Nutrition for Optimal Health: Eat to Feel Great', 17, 15, 'Intermediate', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Health & Wellness'),
(148, 8, 'Yoga for Beginners', '<p>Ce cours est conçu pour les débutants en yoga. Apprenez des poses simples, des techniques de respiration et comment utiliser le yoga pour améliorer votre flexibilité, votre force et réduire le stress.</p>', 35, 23.99, 'Beginner', 'assets/FrontOffice/images/logo/logo.png', NULL, 0, 'Health & Wellness');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250302220131', '2025-03-02 22:01:35', 1737),
('DoctrineMigrations\\Version20250303023416', '2025-03-03 02:34:43', 114),
('DoctrineMigrations\\Version20250303023611', '2025-03-03 02:36:15', 53),
('DoctrineMigrations\\Version20250305222017', '2025-03-05 22:20:26', 223),
('DoctrineMigrations\\Version20250306203326', '2025-03-06 20:33:36', 609),
('DoctrineMigrations\\Version20250306224100', '2025-03-06 22:41:05', 128),
('DoctrineMigrations\\Version20250306224504', '2025-03-06 22:45:08', 21),
('DoctrineMigrations\\Version20250307024354', '2025-03-07 02:44:04', 228),
('DoctrineMigrations\\Version20250307041711', '2025-03-07 04:17:21', 109),
('DoctrineMigrations\\Version20250307091839', '2025-03-07 09:18:46', 143);

-- --------------------------------------------------------

--
-- Structure de la table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_favorite` (`user_id`,`course_id`),
  KEY `idx_favorites_user` (`user_id`),
  KEY `idx_favorites_course` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `course_id`) VALUES
(139, 33, 151);

-- --------------------------------------------------------

--
-- Structure de la table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE IF NOT EXISTS `lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F87474F3591CC992` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `like`
--

DROP TABLE IF EXISTS `like`;
CREATE TABLE IF NOT EXISTS `like` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_poste_id` int NOT NULL,
  `id_user_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AC6340B3F04BBC13` (`id_poste_id`),
  KEY `IDX_AC6340B379F37AE5` (`id_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `like`
--

INSERT INTO `like` (`id`, `id_poste_id`, `id_user_id`, `type`) VALUES
(43, 140, 55, 'smile'),
(44, 135, 55, 'love');

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `action` enum('LOGIN','LOGOUT','REGISTER','UPDATE_PROFIL') NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `device_type` varchar(100) DEFAULT NULL,
  `device_model` varchar(255) DEFAULT NULL,
  `os_info` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `session_active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=411 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `action`, `timestamp`, `device_type`, `device_model`, `os_info`, `location`, `session_active`) VALUES
(88, 33, 'LOGIN', '2025-05-02 03:11:01', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(63, 33, 'LOGIN', '2025-05-02 00:46:31', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(62, 33, 'LOGIN', '2025-05-02 00:12:25', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(61, 33, 'LOGIN', '2025-05-02 00:10:39', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(57, 33, 'LOGIN', '2025-05-01 23:59:02', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(59, 33, 'LOGIN', '2025-05-02 00:06:11', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(60, 33, 'LOGIN', '2025-05-02 00:08:28', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(40, 10, 'LOGIN', '2025-05-01 19:43:02', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(277, 29, 'LOGIN', '2025-05-14 20:37:30', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(38, 39, 'LOGIN', '2025-05-01 19:42:39', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(37, 39, 'LOGIN', '2025-05-01 19:36:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(36, 39, 'LOGIN', '2025-05-01 19:35:06', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(54, 33, 'LOGIN', '2025-05-01 21:36:04', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(35, 39, 'LOGIN', '2025-05-01 19:33:43', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(119, 27, 'LOGIN', '2025-05-02 10:17:57', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(139, 42, 'LOGIN', '2025-05-08 21:10:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(26, 29, 'LOGIN', '2025-04-30 01:38:58', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Aryanah', 0),
(25, 29, 'LOGIN', '2025-04-30 01:37:39', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Aryanah', 0),
(65, 33, 'LOGIN', '2025-05-02 01:20:32', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(66, 33, 'LOGIN', '2025-05-02 02:04:13', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(67, 33, 'LOGIN', '2025-05-02 02:05:20', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(68, 33, 'LOGIN', '2025-05-02 02:09:47', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(69, 33, 'LOGIN', '2025-05-02 02:12:18', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(70, 33, 'LOGIN', '2025-05-02 02:15:27', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(71, 33, 'LOGIN', '2025-05-02 02:21:36', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(72, 33, 'LOGIN', '2025-05-02 02:27:51', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(73, 33, 'LOGIN', '2025-05-02 02:30:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(74, 33, 'LOGIN', '2025-05-02 02:32:17', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(75, 33, 'LOGIN', '2025-05-02 02:33:04', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(76, 33, 'LOGIN', '2025-05-02 02:35:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(77, 33, 'LOGIN', '2025-05-02 02:39:15', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(78, 33, 'LOGIN', '2025-05-02 02:41:56', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(79, 33, 'LOGIN', '2025-05-02 02:42:44', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(80, 33, 'LOGIN', '2025-05-02 02:45:51', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(81, 33, 'LOGIN', '2025-05-02 02:52:22', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(82, 33, 'LOGIN', '2025-05-02 02:54:36', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(83, 33, 'LOGIN', '2025-05-02 02:55:38', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(84, 27, 'LOGIN', '2025-05-02 03:00:29', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(85, 29, 'LOGIN', '2025-05-02 03:01:05', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(86, 33, 'LOGIN', '2025-05-02 03:06:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(87, 33, 'LOGIN', '2025-05-02 03:10:04', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(89, 29, 'LOGIN', '2025-05-02 03:36:42', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(90, 33, 'LOGIN', '2025-05-02 03:40:00', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(91, 33, 'LOGIN', '2025-05-02 03:53:16', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(92, 33, 'LOGIN', '2025-05-02 03:58:16', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(93, 33, 'LOGIN', '2025-05-02 04:04:04', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(94, 33, 'LOGIN', '2025-05-02 04:05:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(95, 33, 'LOGIN', '2025-05-02 04:07:05', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(96, 39, 'LOGIN', '2025-05-02 04:09:26', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(98, 29, 'LOGIN', '2025-05-02 04:16:40', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(99, 29, 'LOGIN', '2025-05-02 04:22:31', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(100, 29, 'LOGIN', '2025-05-02 04:24:06', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(101, 29, 'LOGIN', '2025-05-02 04:24:58', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(104, 27, 'LOGIN', '2025-05-02 08:52:08', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(105, 29, 'LOGIN', '2025-05-02 08:53:32', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(106, 29, 'LOGIN', '2025-05-02 08:54:21', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(107, 39, 'LOGIN', '2025-05-02 09:03:12', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(109, 41, 'LOGIN', '2025-05-02 09:41:35', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(110, 41, 'LOGIN', '2025-05-02 09:42:45', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(111, 41, 'LOGIN', '2025-05-02 09:43:03', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(112, 29, 'LOGIN', '2025-05-02 09:43:55', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(113, 29, 'LOGIN', '2025-05-02 09:44:42', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(114, 29, 'LOGIN', '2025-05-02 09:45:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(115, 29, 'LOGIN', '2025-05-02 09:46:36', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(116, 29, 'LOGIN', '2025-05-02 09:47:19', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(118, 8, 'LOGIN', '2025-05-02 09:49:14', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(120, 8, 'LOGIN', '2025-05-02 10:18:55', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(121, 41, 'LOGIN', '2025-05-02 10:19:26', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(122, 8, 'LOGIN', '2025-05-02 10:22:02', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(124, 8, 'LOGIN', '2025-05-02 10:24:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(227, 43, 'LOGIN', '2025-05-09 10:04:06', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(126, 29, 'LOGIN', '2025-05-02 10:31:16', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(209, 29, 'LOGIN', '2025-05-09 08:42:21', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(129, 29, 'LOGIN', '2025-05-03 12:00:20', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(130, 29, 'LOGIN', '2025-05-03 12:01:11', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(131, 29, 'LOGIN', '2025-05-03 12:02:48', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Monastir', 0),
(132, 8, 'LOGIN', '2025-05-06 15:05:50', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(134, 8, 'LOGIN', '2025-05-07 18:56:08', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Mateur', 0),
(135, 8, 'LOGIN', '2025-05-07 18:57:25', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Mateur', 0),
(136, 42, 'LOGIN', '2025-05-07 19:15:33', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Mateur', 0),
(137, 8, 'LOGIN', '2025-05-07 19:15:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Mateur', 0),
(138, 8, 'LOGIN', '2025-05-08 21:09:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(140, 8, 'LOGIN', '2025-05-08 21:11:19', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(141, 8, 'LOGIN', '2025-05-08 21:12:25', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(142, 29, 'LOGIN', '2025-05-09 01:16:50', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(143, 29, 'LOGIN', '2025-05-09 01:17:57', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(144, 29, 'LOGIN', '2025-05-09 01:21:13', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(145, 29, 'LOGIN', '2025-05-09 01:22:02', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(146, 29, 'LOGIN', '2025-05-09 01:23:05', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(147, 29, 'LOGIN', '2025-05-09 01:53:13', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(148, 1, 'LOGIN', '2025-05-09 01:55:37', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(149, 1, 'LOGIN', '2025-05-09 01:59:30', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(150, 8, 'LOGIN', '2025-05-09 02:01:47', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(151, 8, 'LOGIN', '2025-05-09 02:03:17', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(152, 8, 'LOGIN', '2025-05-09 02:04:37', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(153, 29, 'LOGIN', '2025-05-09 04:06:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(154, 29, 'LOGIN', '2025-05-09 04:22:56', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(155, 29, 'LOGIN', '2025-05-09 04:26:52', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(156, 27, 'LOGIN', '2025-05-09 04:27:50', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(157, 27, 'LOGIN', '2025-05-09 04:28:28', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(158, 29, 'LOGIN', '2025-05-09 04:29:21', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(159, 29, 'LOGIN', '2025-05-09 04:30:52', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(160, 29, 'LOGIN', '2025-05-09 04:32:09', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(161, 29, 'LOGIN', '2025-05-09 04:34:39', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(162, 29, 'LOGIN', '2025-05-09 04:37:03', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(163, 29, 'LOGIN', '2025-05-09 04:41:10', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(164, 29, 'LOGIN', '2025-05-09 04:49:20', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(165, 29, 'LOGIN', '2025-05-09 05:13:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(166, 29, 'LOGIN', '2025-05-09 05:26:47', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(167, 29, 'LOGIN', '2025-05-09 05:35:46', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(168, 29, 'LOGIN', '2025-05-09 05:39:18', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(169, 29, 'LOGIN', '2025-05-09 05:40:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(170, 29, 'LOGIN', '2025-05-09 05:41:08', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(171, 29, 'LOGIN', '2025-05-09 05:46:49', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(172, 29, 'LOGIN', '2025-05-09 05:48:48', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(173, 29, 'LOGIN', '2025-05-09 05:51:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(174, 29, 'LOGIN', '2025-05-09 05:52:37', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(175, 29, 'LOGIN', '2025-05-09 05:53:48', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(176, 29, 'LOGIN', '2025-05-09 05:55:11', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(177, 29, 'LOGIN', '2025-05-09 05:58:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(178, 29, 'LOGIN', '2025-05-09 06:01:10', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(179, 27, 'LOGIN', '2025-05-09 06:19:50', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(180, 27, 'LOGIN', '2025-05-09 06:27:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(181, 29, 'LOGIN', '2025-05-09 06:32:07', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(182, 27, 'LOGIN', '2025-05-09 06:32:21', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(183, 27, 'LOGIN', '2025-05-09 06:33:26', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(184, 27, 'LOGIN', '2025-05-09 06:34:51', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(185, 27, 'LOGIN', '2025-05-09 06:37:43', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(186, 27, 'LOGIN', '2025-05-09 06:39:58', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(187, 27, 'LOGIN', '2025-05-09 06:42:22', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(188, 27, 'LOGIN', '2025-05-09 06:48:17', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(189, 27, 'LOGIN', '2025-05-09 06:50:31', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(190, 27, 'LOGIN', '2025-05-09 06:55:08', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(191, 27, 'LOGIN', '2025-05-09 07:55:31', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(192, 27, 'LOGIN', '2025-05-09 07:56:58', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(193, 27, 'LOGIN', '2025-05-09 07:57:38', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(194, 27, 'LOGIN', '2025-05-09 08:02:06', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(195, 27, 'LOGIN', '2025-05-09 08:02:37', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(196, 27, 'LOGIN', '2025-05-09 08:04:10', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(197, 27, 'LOGIN', '2025-05-09 08:06:38', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(198, 27, 'LOGIN', '2025-05-09 08:07:58', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(199, 27, 'LOGIN', '2025-05-09 08:10:26', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(200, 27, 'LOGIN', '2025-05-09 08:11:44', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(201, 27, 'LOGIN', '2025-05-09 08:13:47', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(202, 27, 'LOGIN', '2025-05-09 08:27:06', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(203, 27, 'LOGIN', '2025-05-09 08:28:06', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(204, 27, 'LOGIN', '2025-05-09 08:29:16', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(205, 27, 'LOGIN', '2025-05-09 08:35:46', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(206, 29, 'LOGIN', '2025-05-09 08:36:35', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(207, 27, 'LOGIN', '2025-05-09 08:41:18', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(208, 29, 'LOGIN', '2025-05-09 08:41:36', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(210, 42, 'LOGIN', '2025-05-09 08:43:12', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(211, 42, 'LOGIN', '2025-05-09 08:43:25', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(212, 29, 'LOGIN', '2025-05-09 08:45:13', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(213, 29, 'LOGIN', '2025-05-09 08:45:52', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(214, 27, 'LOGIN', '2025-05-09 08:56:27', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(215, 27, 'LOGIN', '2025-05-09 08:58:59', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(216, 27, 'LOGIN', '2025-05-09 08:59:19', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(217, 27, 'LOGIN', '2025-05-09 09:00:28', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(218, 29, 'LOGIN', '2025-05-09 09:01:08', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(219, 29, 'LOGIN', '2025-05-09 09:06:48', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(220, 29, 'LOGIN', '2025-05-09 09:07:47', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(221, 29, 'LOGIN', '2025-05-09 09:09:13', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(222, 29, 'LOGIN', '2025-05-09 09:36:26', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(223, 9, 'LOGIN', '2025-05-09 09:41:16', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(224, 9, 'LOGIN', '2025-05-09 09:42:46', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(225, 29, 'LOGIN', '2025-05-09 09:59:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(226, 0, 'LOGIN', '2025-05-09 10:01:43', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(228, 1, 'LOGIN', '2025-05-09 10:09:27', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(229, 43, 'LOGIN', '2025-05-09 10:10:27', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(230, 1, 'LOGIN', '2025-05-09 10:13:51', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(231, 43, 'LOGIN', '2025-05-09 10:23:33', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(232, 43, 'LOGIN', '2025-05-09 10:27:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(233, 43, 'LOGIN', '2025-05-09 10:34:14', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(234, 43, 'LOGIN', '2025-05-09 10:37:33', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Douane', 0),
(235, 1, 'LOGIN', '2025-05-09 21:14:13', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(236, 8, 'LOGIN', '2025-05-09 21:22:00', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(237, 8, 'LOGIN', '2025-05-09 21:39:30', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(238, 8, 'LOGIN', '2025-05-09 21:49:34', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(239, 8, 'LOGIN', '2025-05-09 23:16:02', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(240, 29, 'LOGIN', '2025-05-09 23:20:56', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(241, 29, 'LOGIN', '2025-05-09 23:23:32', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(242, 29, 'LOGIN', '2025-05-09 23:25:14', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(243, 29, 'LOGIN', '2025-05-09 23:28:42', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(244, 8, 'LOGIN', '2025-05-09 23:29:50', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(245, 29, 'LOGIN', '2025-05-09 23:30:50', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(246, 29, 'LOGIN', '2025-05-09 23:58:40', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(247, 29, 'LOGIN', '2025-05-10 00:01:20', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(248, 29, 'LOGIN', '2025-05-10 00:02:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(249, 29, 'LOGIN', '2025-05-10 00:11:20', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(250, 29, 'LOGIN', '2025-05-10 00:17:15', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(251, 29, 'LOGIN', '2025-05-10 00:19:07', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(252, 29, 'LOGIN', '2025-05-10 00:20:46', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(253, 29, 'LOGIN', '2025-05-10 00:41:07', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(254, 33, 'LOGIN', '2025-05-10 00:42:32', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(255, 33, 'LOGIN', '2025-05-10 00:43:43', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(256, 29, 'LOGIN', '2025-05-10 00:51:31', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(257, 33, 'LOGIN', '2025-05-10 00:51:51', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(258, 29, 'LOGIN', '2025-05-10 00:55:08', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(259, 33, 'LOGIN', '2025-05-10 00:55:25', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(260, 29, 'LOGIN', '2025-05-10 01:00:00', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(261, 33, 'LOGIN', '2025-05-10 01:00:23', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(262, 29, 'LOGIN', '2025-05-10 01:09:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(263, 29, 'LOGIN', '2025-05-10 01:22:15', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(264, 29, 'LOGIN', '2025-05-10 01:23:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(265, 33, 'LOGIN', '2025-05-10 01:24:05', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(266, 8, 'LOGIN', '2025-05-14 19:00:52', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(410, 8, 'LOGIN', '2025-05-19 20:58:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(268, 8, 'LOGIN', '2025-05-14 19:37:36', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(269, 43, 'LOGIN', '2025-05-14 19:41:15', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(270, 43, 'LOGIN', '2025-05-14 19:43:34', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(271, 8, 'LOGIN', '2025-05-14 19:43:53', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(272, 8, 'LOGIN', '2025-05-14 19:47:36', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(273, 8, 'LOGIN', '2025-05-14 19:49:14', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(274, 8, 'LOGIN', '2025-05-14 19:50:12', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(275, 43, 'LOGIN', '2025-05-14 20:08:30', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(276, 29, 'LOGIN', '2025-05-14 20:37:00', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(278, 43, 'LOGIN', '2025-05-15 17:37:23', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(279, 43, 'LOGIN', '2025-05-15 17:37:35', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(280, 8, 'LOGIN', '2025-05-15 17:41:42', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(281, 29, 'LOGIN', '2025-05-15 17:43:44', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(282, 43, 'LOGIN', '2025-05-15 17:44:50', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(283, 8, 'LOGIN', '2025-05-15 17:45:16', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(284, 29, 'LOGIN', '2025-05-15 17:47:42', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(285, 43, 'LOGIN', '2025-05-15 17:51:11', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(286, 43, 'LOGIN', '2025-05-15 17:56:31', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(287, 8, 'LOGIN', '2025-05-15 17:59:45', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(288, 8, 'LOGIN', '2025-05-15 18:18:59', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(289, 8, 'LOGIN', '2025-05-15 18:33:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(290, 8, 'LOGIN', '2025-05-15 18:34:59', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(291, 8, 'LOGIN', '2025-05-15 18:37:50', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(292, 8, 'LOGIN', '2025-05-15 18:43:55', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(293, 8, 'LOGIN', '2025-05-15 18:47:17', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(294, 8, 'LOGIN', '2025-05-15 18:52:09', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(295, 8, 'LOGIN', '2025-05-15 18:56:35', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(296, 8, 'LOGIN', '2025-05-15 19:01:38', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(297, 8, 'LOGIN', '2025-05-15 19:02:53', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(298, 8, 'LOGIN', '2025-05-15 19:04:59', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(299, 8, 'LOGIN', '2025-05-15 19:12:23', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(300, 8, 'LOGIN', '2025-05-15 19:17:30', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(301, 43, 'LOGIN', '2025-05-15 19:17:47', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(302, 43, 'LOGIN', '2025-05-15 19:21:51', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(303, 8, 'LOGIN', '2025-05-15 19:28:22', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(304, 8, 'LOGIN', '2025-05-15 19:45:06', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(305, 8, 'LOGIN', '2025-05-15 19:46:30', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(306, 8, 'LOGIN', '2025-05-15 19:47:44', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(307, 43, 'LOGIN', '2025-05-15 19:51:17', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(308, 8, 'LOGIN', '2025-05-15 19:57:36', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(309, 8, 'LOGIN', '2025-05-15 20:01:01', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(310, 8, 'LOGIN', '2025-05-15 20:04:11', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(311, 8, 'LOGIN', '2025-05-15 20:08:32', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(312, 29, 'LOGIN', '2025-05-15 20:09:25', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(313, 0, 'LOGIN', '2025-05-15 20:11:25', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(314, 29, 'LOGIN', '2025-05-15 21:13:16', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(315, 29, 'LOGIN', '2025-05-15 21:15:43', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(316, 29, 'LOGIN', '2025-05-15 21:16:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(317, 29, 'LOGIN', '2025-05-15 21:19:17', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(318, 29, 'LOGIN', '2025-05-15 21:21:04', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(319, 29, 'LOGIN', '2025-05-15 21:22:59', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(320, 29, 'LOGIN', '2025-05-15 21:29:46', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(321, 29, 'LOGIN', '2025-05-15 21:36:23', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(322, 29, 'LOGIN', '2025-05-15 21:38:47', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(323, 8, 'LOGIN', '2025-05-15 21:39:32', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(324, 55, 'LOGIN', '2025-05-15 21:39:58', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(325, 55, 'LOGIN', '2025-05-15 21:42:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(326, 55, 'LOGIN', '2025-05-15 21:44:18', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(327, 55, 'LOGIN', '2025-05-15 21:45:30', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(328, 29, 'LOGIN', '2025-05-15 21:48:47', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(329, 55, 'LOGIN', '2025-05-15 21:55:17', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(330, 55, 'LOGIN', '2025-05-15 21:56:38', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(331, 55, 'LOGIN', '2025-05-15 21:57:30', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(332, 55, 'LOGIN', '2025-05-15 21:59:29', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(333, 55, 'LOGIN', '2025-05-15 22:02:45', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(334, 55, 'LOGIN', '2025-05-15 22:06:44', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(335, 55, 'LOGIN', '2025-05-15 22:23:18', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(336, 55, 'LOGIN', '2025-05-15 22:30:54', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(337, 55, 'LOGIN', '2025-05-15 22:31:51', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(338, 55, 'LOGIN', '2025-05-15 22:32:42', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(339, 55, 'LOGIN', '2025-05-15 22:36:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(340, 55, 'LOGIN', '2025-05-15 22:39:05', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(341, 55, 'LOGIN', '2025-05-15 22:41:05', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(342, 55, 'LOGIN', '2025-05-15 22:46:12', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(343, 55, 'LOGIN', '2025-05-15 22:53:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(344, 55, 'LOGIN', '2025-05-15 22:58:02', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(345, 55, 'LOGIN', '2025-05-16 00:13:09', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(346, 8, 'LOGIN', '2025-05-16 00:22:31', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(347, 55, 'LOGIN', '2025-05-16 00:22:53', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(348, 55, 'LOGIN', '2025-05-16 00:32:59', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(349, 4, 'LOGIN', '2025-05-16 00:39:18', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(350, 29, 'LOGIN', '2025-05-16 00:43:12', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(351, 56, 'LOGIN', '2025-05-16 01:04:57', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(352, 57, 'LOGIN', '2025-05-16 01:13:11', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(353, 8, 'LOGIN', '2025-05-16 02:40:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(354, 29, 'LOGIN', '2025-05-16 02:50:28', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(355, 55, 'LOGIN', '2025-05-16 02:59:56', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(356, 55, 'LOGIN', '2025-05-16 03:11:03', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(357, 8, 'LOGIN', '2025-05-16 03:11:57', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(358, 55, 'LOGIN', '2025-05-16 03:12:31', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(359, 55, 'LOGIN', '2025-05-16 03:18:00', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(360, 55, 'LOGIN', '2025-05-16 03:18:49', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(361, 55, 'LOGIN', '2025-05-16 04:02:58', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(362, 55, 'LOGIN', '2025-05-16 04:11:29', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(363, 55, 'LOGIN', '2025-05-16 04:17:35', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(364, 55, 'LOGIN', '2025-05-16 04:29:20', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, El Omrane', 0),
(365, 55, 'LOGIN', '2025-05-16 05:03:56', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(366, 55, 'LOGIN', '2025-05-16 05:05:24', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(367, 55, 'LOGIN', '2025-05-16 05:06:55', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(368, 55, 'LOGIN', '2025-05-16 05:08:49', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(369, 55, 'LOGIN', '2025-05-16 05:09:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(370, 55, 'LOGIN', '2025-05-16 05:11:14', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(371, 54, 'LOGIN', '2025-05-16 05:13:11', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(372, 55, 'LOGIN', '2025-05-16 06:22:44', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(373, 55, 'LOGIN', '2025-05-16 06:30:16', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(374, 55, 'LOGIN', '2025-05-16 06:38:00', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(375, 43, 'LOGIN', '2025-05-16 06:49:31', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(376, 55, 'LOGIN', '2025-05-16 06:58:13', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(377, 55, 'LOGIN', '2025-05-16 07:03:46', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(378, 8, 'LOGIN', '2025-05-16 07:04:59', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(379, 43, 'LOGIN', '2025-05-16 07:06:58', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(380, 55, 'LOGIN', '2025-05-16 07:21:39', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(381, 43, 'LOGIN', '2025-05-16 07:24:19', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(382, 55, 'LOGIN', '2025-05-16 07:25:47', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(383, 55, 'LOGIN', '2025-05-16 07:33:33', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(384, 55, 'LOGIN', '2025-05-16 07:33:57', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(385, 55, 'LOGIN', '2025-05-16 07:36:06', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(386, 55, 'LOGIN', '2025-05-16 07:42:51', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(387, 55, 'LOGIN', '2025-05-16 07:45:45', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(388, 55, 'LOGIN', '2025-05-16 07:48:19', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(389, 55, 'LOGIN', '2025-05-16 07:51:59', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(390, 55, 'LOGIN', '2025-05-16 07:53:50', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(391, 55, 'LOGIN', '2025-05-16 08:00:16', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(392, 55, 'LOGIN', '2025-05-16 08:02:28', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(393, 55, 'LOGIN', '2025-05-16 08:03:33', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(394, 55, 'LOGIN', '2025-05-16 08:43:04', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(395, 55, 'LOGIN', '2025-05-16 08:45:30', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0);
INSERT INTO `logs` (`id`, `user_id`, `action`, `timestamp`, `device_type`, `device_model`, `os_info`, `location`, `session_active`) VALUES
(396, 55, 'LOGIN', '2025-05-16 08:57:02', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(397, 55, 'LOGIN', '2025-05-16 08:59:03', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(398, 55, 'LOGIN', '2025-05-16 09:03:26', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(399, 55, 'LOGIN', '2025-05-16 09:05:03', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(400, 55, 'LOGIN', '2025-05-16 09:06:51', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sukrah', 0),
(401, 55, 'LOGIN', '2025-05-16 09:51:14', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(402, 55, 'LOGIN', '2025-05-16 09:59:41', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(403, 43, 'LOGIN', '2025-05-16 10:13:18', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Tunis', 0),
(404, 43, 'LOGIN', '2025-05-19 20:47:15', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(405, 43, 'LOGIN', '2025-05-19 20:47:57', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(406, 43, 'LOGIN', '2025-05-19 20:48:58', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(407, 43, 'LOGIN', '2025-05-19 20:49:19', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(408, 43, 'LOGIN', '2025-05-19 20:50:06', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0),
(409, 8, 'LOGIN', '2025-05-19 20:56:52', '9S716R312897ZJB000033', 'GF63 Thin 9SC', 'Microsoft Windows 11 (Home) build 26100', 'Tunisia, Sousse', 0);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(4, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:31:\\\"App\\\\Message\\\\NotificationMessage\\\":2:{s:39:\\\"\\0App\\\\Message\\\\NotificationMessage\\0userId\\\";i:8;s:39:\\\"\\0App\\\\Message\\\\NotificationMessage\\0postId\\\";i:32;}}', '[]', 'default', '2025-03-07 09:04:56', '2025-03-07 09:04:56', NULL),
(5, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:31:\\\"App\\\\Message\\\\NotificationMessage\\\":2:{s:39:\\\"\\0App\\\\Message\\\\NotificationMessage\\0userId\\\";i:1;s:39:\\\"\\0App\\\\Message\\\\NotificationMessage\\0postId\\\";i:22;}}', '[]', 'default', '2025-05-10 19:17:31', '2025-05-10 19:17:31', NULL),
(6, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:31:\\\"App\\\\Message\\\\NotificationMessage\\\":2:{s:39:\\\"\\0App\\\\Message\\\\NotificationMessage\\0userId\\\";i:1;s:39:\\\"\\0App\\\\Message\\\\NotificationMessage\\0postId\\\";i:136;}}', '[]', 'default', '2025-05-20 14:58:47', '2025-05-20 14:58:47', NULL),
(7, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:31:\\\"App\\\\Message\\\\NotificationMessage\\\":2:{s:39:\\\"\\0App\\\\Message\\\\NotificationMessage\\0userId\\\";i:1;s:39:\\\"\\0App\\\\Message\\\\NotificationMessage\\0postId\\\";i:135;}}', '[]', 'default', '2025-05-20 14:59:43', '2025-05-20 14:59:43', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user_id` int NOT NULL,
  `contenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BF5476CA79F37AE5` (`id_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

DROP TABLE IF EXISTS `offre`;
CREATE TABLE IF NOT EXISTS `offre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicable_plans` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `conditions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_per_month` double NOT NULL,
  `custom_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_until` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `max_subscriptions` int DEFAULT NULL,
  `target_audience` longtext COLLATE utf8mb4_unicode_ci,
  `benefits` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `name`, `applicable_plans`, `discount`, `description`, `conditions`, `promo_code`, `price_per_month`, `custom_plan`, `valid_from`, `valid_until`, `is_active`, `max_subscriptions`, `target_audience`, `benefits`, `created_at`) VALUES
(1, 'Offre Basic', 'basic', 5, 'Un abonnement pour débutants.', 'Aucune condition spéciale.', 'BASIC-2025', 49.99, NULL, '2025-01-01', '2025-12-31', 1, 1000, 'Tout public', 'Accès aux fonctions de base', '2025-03-07 10:19:02'),
(2, 'Offre Premium', 'premium', 10, 'Un abonnement premium avec avantages.', 'Doit être souscrit pour 6 mois minimum.', 'PREMIUM-2025', 99.99, NULL, '2025-02-01', '2026-02-01', 1, 500, 'Entreprises', 'Support prioritaire et nouvelles fonctionnalités', '2025-03-07 10:19:02'),
(3, 'Offre Entreprise', 'enterprise', 15, 'Un abonnement dédié aux entreprises.', 'Souscription annuelle requise.', 'ENTERPRISE-2025', 199.99, NULL, '2025-03-01', NULL, 1, 200, 'Grandes entreprises', 'Accès illimité et formations incluses', '2025-03-07 10:19:02'),
(4, 'Offre Étudiant', 'student', 20, 'Tarif réduit pour les étudiants.', 'Un justificatif étudiant est requis.', 'STUDENT-2025', 29.99, NULL, '2025-04-01', '2025-12-31', 1, 2000, 'Étudiants', 'Accès complet avec 50% de réduction', '2025-03-07 10:19:02'),
(5, 'Offre Gold', 'gold', 25, 'Accès VIP et support dédié.', 'Engagement d’un an obligatoire.', 'GOLD-2025', 149.99, NULL, '2025-05-01', NULL, 1, 100, 'Clients VIP', 'Support dédié 24/7 et fonctionnalités avancées', '2025-03-07 10:19:02'),
(6, 'Offre Saisonnière', 'seasonal', 30, 'Promotion spéciale pour l’été.', 'Valable uniquement en été.', 'SUMMER-2025', 79.99, NULL, '2025-06-01', '2025-09-01', 1, 300, 'Tout public', 'Accès à toutes les fonctionnalités durant l’été', '2025-03-07 10:19:02'),
(7, 'Offre Événementielle', 'event', 50, 'Offre spéciale pour les événements.', 'Réservée aux participants d’événements partenaires.', 'EVENT-2025', 59.99, NULL, '2025-07-01', '2025-07-31', 1, 500, 'Professionnels', 'Accès premium pour les événements', '2025-03-07 10:19:02'),
(8, 'Offre Startup', 'startup', 40, 'Aide aux jeunes entreprises.', 'Entreprise créée depuis moins de 2 ans.', 'STARTUP-2025', 89.99, NULL, '2025-08-01', NULL, 1, 150, 'Startups', 'Support dédié et conseils stratégiques', '2025-03-07 10:19:02'),
(9, 'Offre Famille', 'family', 35, 'Abonnement pour toute la famille.', 'Maximum 5 membres.', 'FAMILY-2025', 129.99, NULL, '2025-09-01', '2025-12-31', 1, 500, 'Familles', 'Jusqu’à 5 comptes liés sous un seul abonnement', '2025-03-07 10:19:02'),
(10, 'Offre Personnalisée', 'custom', 20, 'Une offre sur mesure.', 'Conditions spécifiques.', 'CUSTOM-2025', 199.99, 'Entreprise Pro', '2025-10-01', '2026-10-01', 1, 50, 'Entreprises', 'Optimisation et accompagnement personnalisé', '2025-03-07 10:19:02');

-- --------------------------------------------------------

--
-- Structure de la table `poste`
--

DROP TABLE IF EXISTS `poste`;
CREATE TABLE IF NOT EXISTS `poste` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user_id` int NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_post` date NOT NULL,
  `nb_com` int NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7C890FAB79F37AE5` (`id_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `poste`
--

INSERT INTO `poste` (`id`, `id_user_id`, `titre`, `contenu`, `date_post`, `nb_com`, `categorie`, `photo`, `visible`) VALUES
(135, 1, 'Learn Java Basics', 'I just completed the Java basics course. The explanations were super clear. Anyone else found the quiz a bit tricky?', '2025-05-15', 3, 'Programming & Tech', 'images/OIP (5).jpg', 1),
(136, 1, 'SEO Course Tips', 'I\'m halfway through the SEO beginner course. Any advice before starting the final project?', '2025-05-15', 3, 'Digital Marketing', 'images/60ccaa513ecc7d3b4191d28e_Depositphotos_121868968_l-2015 (1).jpg', 1),
(137, 1, 'Debug Help Pls', ' I\'m stuck on the “build your own calculator” challenge. My app crashes when I press \"=', '2025-05-15', 2, 'Programming & Tech', NULL, 1),
(138, 1, 'UI Feedback Req', 'Just completed my first Figma design for the UX course. Would love some feedback!', '2025-05-15', 1, 'Product Design', 'images/OIP (6).jpg', 1),
(139, 1, 'Python Loops Help', 'I don’t fully understand for vs while loops. Can someone explain with simple examples?', '2025-05-15', 2, 'Programming & Tech', 'images/OIP (7).jpg', 1),
(140, 1, 'Design Course UX', 'I loved the module on user flow diagrams. It helped me map my mobile app better.', '2025-05-15', 3, 'Product Design', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

DROP TABLE IF EXISTS `reclamation`;
CREATE TABLE IF NOT EXISTS `reclamation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_reclamation` datetime NOT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user_id` int NOT NULL,
  `statut_archivation` int NOT NULL,
  `statut_archivation_back` int NOT NULL,
  `date_modification` datetime NOT NULL,
  `fichier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CE60640479F37AE5` (`id_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`id`, `titre`, `date_reclamation`, `contenu`, `statut`, `id_user_id`, `statut_archivation`, `statut_archivation_back`, `date_modification`, `fichier`) VALUES
(201, 'Problème de connexion', '2025-01-10 09:30:00', 'Je n’arrive pas à me connecter à mon compte malgré la saisie correcte du mot de passe.', 'Traité', 2, 0, 1, '1970-01-01 00:00:00', 'screenshot_connexion.png'),
(202, 'Erreur de facturation', '2025-01-15 14:22:00', 'J’ai été facturé deux fois pour le même service.', 'En cours', 3, 0, 0, '2025-01-16 10:00:00', 'facture_erreur.png'),
(203, 'Contenu manquant', '2025-02-01 08:50:00', 'Après l’achat du cours, une partie du contenu est introuvable.', 'Traité', 1, 1, 1, '2025-02-01 09:15:00', 'cours_manquant.png'),
(204, 'Vidéo non disponible', '2025-02-03 11:45:00', 'Impossible de lire certaines vidéos du module 3.', 'Traité', 4, 1, 0, '2025-02-03 12:00:00', 'bug_video.png'),
(205, 'Accès expiré prématurément', '2025-02-05 13:20:00', 'Mon accès au cours a expiré avant la date prévue.', 'En cours', 2, 0, 0, '1970-01-01 00:00:00', 'acces_expire.png'),
(206, 'Erreur lors du paiement', '2025-02-08 15:10:00', 'Une erreur s’est produite pendant le paiement par carte.', 'Traité', 5, 1, 1, '2025-02-08 16:00:00', 'paiement_erreur.png'),
(207, 'Remboursement non reçu', '2025-02-10 10:40:00', 'J’ai demandé un remboursement il y a deux semaines sans retour.', 'Non Traité', 3, 0, 0, '1970-01-01 00:00:00', 'remboursement.png'),
(208, 'Cours non attribué', '2025-02-12 17:00:00', 'Le cours que j’ai payé ne figure pas dans mon espace personnel.', 'Traité', 1, 1, 0, '2025-02-13 09:30:00', 'cours_absent.png'),
(209, 'Problème de téléchargement', '2025-02-14 08:15:00', 'Les fichiers PDF ne se téléchargent pas correctement.', 'En cours', 4, 0, 0, '2025-02-14 08:20:00', 'telechargement_erreur.png'),
(210, 'Support technique injoignable', '2025-02-18 19:00:00', 'Je n’ai pas réussi à contacter le support via le formulaire.', 'Traité', 2, 1, 1, '2025-02-18 20:00:00', 'support_contact.png'),
(315, 'azerazer', '2025-05-16 08:53:31', 'azerazrazrazerazerazer', 'Non Traité', 55, 0, 0, '1970-01-01 00:00:00', 'reclamation_1747382011679.jpg'),
(316, 'zertyu', '2025-05-16 08:57:59', 'azersdygqsgdfgjydsgfj', 'Non Traité', 55, 0, 0, '1970-01-01 00:00:00', 'C:/wamp64/www/images/Reclamation/reclamation_1747382274685.jpg'),
(317, 'adadm idiot', '2025-05-16 09:07:13', 'adam abidi', 'Traité', 55, 0, 0, '2025-05-16 10:12:18', 'reclamation_1747382831350.png'),
(318, 'Probleme de paiement', '2025-05-18 19:10:08', 'j\'ai un probleme de paiment', 'Non Traité', 8, 0, 0, '1970-01-01 00:00:00', 'reclamation_1747591808254.pdf'),
(319, 'Probleme de paiement', '2025-05-18 19:10:12', 'j\'ai un probleme de paiment', 'En Cours', 8, 0, 0, '1970-01-01 00:00:00', 'reclamation_1747591812515.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

DROP TABLE IF EXISTS `reponse`;
CREATE TABLE IF NOT EXISTS `reponse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_reponse` datetime NOT NULL,
  `id_reclamation_id` int DEFAULT NULL,
  `date_modification` datetime NOT NULL,
  `id_user_id` int DEFAULT NULL,
  `statut` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5FB6DEC7100D1FDF` (`id_reclamation_id`),
  KEY `IDX_5FB6DEC779F37AE5` (`id_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`id`, `contenu`, `date_reponse`, `id_reclamation_id`, `date_modification`, `id_user_id`, `statut`) VALUES
(134, 'bonjour adem', '2025-05-16 10:13:58', 317, '1970-01-01 00:00:00', 43, 1),
(135, 'Veuillez consulter le guide de paiement', '2025-05-18 19:13:01', 319, '1970-01-01 00:00:00', NULL, 0),
(136, 'Essayez de réinitialiser votre mot de passe.', '2025-05-19 20:53:12', 201, '1970-01-01 00:00:00', 43, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
CREATE TABLE IF NOT EXISTS `reset_password_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(25, 10, 'uY4xackRwmNOocbiM5Pk', 'F9hNufYNY+tespvYEANg61vSO9r5GOQPKaF2z4fCfts=', '2025-05-16 08:57:17', '2025-05-16 09:57:17');

-- --------------------------------------------------------

--
-- Structure de la table `submission`
--

DROP TABLE IF EXISTS `submission`;
CREATE TABLE IF NOT EXISTS `submission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user_id` int NOT NULL,
  `id_challenge_id` int NOT NULL,
  `date` date NOT NULL,
  `student_try` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ai_feedback` json DEFAULT NULL,
  `time_taken` int DEFAULT NULL,
  `corrected_code` json DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `competition_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DB055AF379F37AE5` (`id_user_id`),
  KEY `IDX_DB055AF3BB636FB4` (`id_challenge_id`),
  KEY `fk_competition` (`competition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `submission`
--

INSERT INTO `submission` (`id`, `id_user_id`, `id_challenge_id`, `date`, `student_try`, `ai_feedback`, `time_taken`, `corrected_code`, `rating`, `competition_id`) VALUES
(209, 55, 25, '2025-05-15', '<pre><code class=\"language-python\">import hashlib\r\n\r\ndef hash_password(password):\r\n    if not isinstance(password, str):\r\n        raise ValueError(\"Password must be a string\")\r\n    \r\n    sha256 = hashlib.sha256()\r\n    sha256.update(password.encode(\'utf-8\'))\r\n    return sha256.hexdigest()\r\n\r\n# Example usage\r\nplain_password = \"my_secure_password123\"\r\nhashed = hash_password(plain_password)\r\nprint(\"Hashed password:\", hashed)\r\n</code></pre>', NULL, 2, NULL, NULL, 12),
(210, 55, 26, '2025-05-15', '<pre><code class=\"language-python\">import sqlite3\r\n\r\ndef login(username, password):\r\n    conn = sqlite3.connect(\'users.db\')\r\n    cursor = conn.cursor()\r\n\r\n    query = \"SELECT * FROM users WHERE username = ? AND password = ?\"\r\n    cursor.execute(query, (username, password))\r\n    \r\n    result = cursor.fetchone()\r\n    conn.close()\r\n\r\n    if result:\r\n        return \"Login successful\"\r\n    else:\r\n        return \"Invalid username or password\"\r\n\r\n# Example usage\r\nprint(login(\"admin\", \"password123\"))\r\n</code></pre>', NULL, 2, NULL, NULL, 12),
(211, 55, 27, '2025-05-15', '<pre><code class=\"language-python\">import html\r\n\r\ndef sanitize_input(user_input):\r\n    return html.escape(user_input)\r\n\r\n# Example usage\r\nunsafe = \'&lt;script&gt;alert(\"XSS\")&lt;/script&gt;\'\r\nsafe = sanitize_input(unsafe)\r\nprint(safe)  # &amp;lt;script&amp;gt;alert(&amp;quot;XSS&amp;quot;)&amp;lt;/script&amp;gt;\r\n</code></pre>', NULL, 2, NULL, NULL, 12),
(212, 55, 25, '2025-05-15', '<pre><code class=\"language-python\">import hashlib\r\n\r\ndef hash_password(password):\r\n    if not isinstance(password, str):\r\n        raise ValueError(\"Password must be a string\")\r\n    \r\n    sha256 = hashlib.sha256()\r\n    sha256.update(password.encode(\'utf-8\'))\r\n    return sha256.hexdigest()\r\n\r\n# Example usage\r\nplain_password = \"my_secure_password123\"\r\nhashed = hash_password(plain_password)\r\nprint(\"Hashed password:\", hashed)\r\n</code></pre>', '[\"<b>Strengths:</b>\\n<ul>\\n <li>The code correctly uses SHA-256 to hash the password.</li>\\n <li>It includes a check to ensure the password is a string, preventing potential errors.</li>\\n <li>Uses `utf-8` encoding, which is a good practice for handling different character sets.</li>\\n</ul>\\n<b>Areas for Improvement:</b>\\n<ul>\\n <li>Consider using a salt to further enhance password security.</li>\\n</ul>\\n<b>Corrected Code:</b>\\n<code>\\n import hashlib\\n import os\\n\\n def hash_password(password):\\n if not isinstance(password, str):\\n raise ValueError(\\\"Password must be a string\\\")\\n\\n # Generate a random salt\\n salt = os.urandom(16)\\n\\n sha256 = hashlib.sha256()\\n # Update the hash object with the salt and the password\\n sha256.update(salt + password.encode(\'utf-8\'))\\n # Return the salt and the hashed password\\n return salt.hex() + \':\' + sha256.hexdigest()\\n\\n def verify_password(stored_password, provided_password):\\n salt, hashed_password = stored_password.split(\':\')\\n salt = bytes.fromhex(salt)\\n\\n sha256 = hashlib.sha256()\\n sha256.update(salt + provided_password.encode(\'utf-8\'))\\n return sha256.hexdigest() == hashed_password\\n\\n # Example usage\\n plain_password = \\\"my_secure_password123\\\"\\n hashed = hash_password(plain_password)\\n print(\\\"Hashed password:\\\", hashed)\\n\\n # Example of verifying the password\\n if verify_password(hashed, plain_password):\\n print(\\\"Password verified successfully.\\\")\\n else:\\n print(\\\"Password verification failed.\\\")\\n </code>\"]', 1, '[\"import hashlib\\nimport os\\n\\ndef hash_password(password):\\n    if not isinstance(password, str):\\n        raise ValueError(\\\"Password must be a string\\\")\\n    \\n    # Generate a random salt\\n    salt = os.urandom(16)\\n    \\n    sha256 = hashlib.sha256()\\n    # Update the hash object with the salt and the password\\n    sha256.update(salt + password.encode(\'utf-8\'))\\n    # Return the salt and the hashed password\\n    return salt.hex() + \':\' + sha256.hexdigest()\\n\\ndef verify_password(stored_password, provided_password):\\n    salt, hashed_password = stored_password.split(\':\')\\n    salt = bytes.fromhex(salt)\\n    \\n    sha256 = hashlib.sha256()\\n    sha256.update(salt + provided_password.encode(\'utf-8\'))\\n    return sha256.hexdigest() == hashed_password\\n\\n# Example usage\\nplain_password = \\\"my_secure_password123\\\"\\nhashed = hash_password(plain_password)\\nprint(\\\"Hashed password:\\\", hashed)\\n\\n# Example of verifying the password\\nif verify_password(hashed, plain_password):\\n    print(\\\"Password verified successfully.\\\")\\nelse:\\n    print(\\\"Password verification failed.\\\")\\n\"]', 20, 12),
(213, 55, 26, '2025-05-15', '<pre><code class=\"language-python\">import sqlite3\r\n\r\ndef login(username, password):\r\n    conn = sqlite3.connect(\'users.db\')\r\n    cursor = conn.cursor()\r\n\r\n    query = \"SELECT * FROM users WHERE username = ? AND password = ?\"\r\n    cursor.execute(query, (username, password))\r\n    \r\n    result = cursor.fetchone()\r\n    conn.close()\r\n\r\n    if result:\r\n        return \"Login successful\"\r\n    else:\r\n        return \"Invalid username or password\"\r\n\r\n# Example usage\r\nprint(login(\"admin\", \"password123\"))\r\n</code></pre>', '[\"<b>Strengths:</b>\\n<ul>\\n <li>The code correctly uses parameterized queries, which is the primary defense against SQL injection.</li>\\n <li>The database connection is properly opened and closed.</li>\\n <li>It fetches the result and returns a success/failure message based on whether a user was found.</li>\\n</ul>\\n<b>Areas for Improvement:</b>\\n<ul>\\n <li>The password should be hashed before storing it in the database, and the hashed password should be used in the query.  Storing passwords in plain text is a major security vulnerability.</li>\\n <li>Consider using a more robust authentication mechanism.</li>\\n <li>Error handling (e.g., try-except blocks) could be added to handle potential database errors more gracefully.</li>\\n</ul>\\n<b>Corrected Code:</b>\\n<code>import sqlite3\\nimport hashlib\\n\\ndef login(username, password):\\n    conn = sqlite3.connect(\'users.db\')\\n    cursor = conn.cursor()\\n    \\n    # Hash the password before querying the database\\n    hashed_password = hashlib.sha256(password.encode(\'utf-8\')).hexdigest()\\n\\n    query = \\\"SELECT * FROM users WHERE username = ? AND password = ?\\\"\\n    cursor.execute(query, (username, hashed_password))\\n    \\n    result = cursor.fetchone()\\n    conn.close()\\n\\n    if result:\\n        return \\\"Login successful\\\"\\n    else:\\n        return \\\"Invalid username or password\\\"\\n\\n# Example usage\\nprint(login(\\\"admin\\\", \\\"password123\\\"))\\n</code>\"]', 1, '[\"import sqlite3\\nimport hashlib\\n\\ndef login(username, password):\\n    conn = sqlite3.connect(\'users.db\')\\n    cursor = conn.cursor()\\n    \\n    # Hash the password before querying the database\\n    hashed_password = hashlib.sha256(password.encode(\'utf-8\')).hexdigest()\\n\\n    query = \\\"SELECT * FROM users WHERE username = ? AND password = ?\\\"\\n    cursor.execute(query, (username, hashed_password))\\n    \\n    result = cursor.fetchone()\\n    conn.close()\\n\\n    if result:\\n        return \\\"Login successful\\\"\\n    else:\\n        return \\\"Invalid username or password\\\"\\n\\n# Example usage\\nprint(login(\\\"admin\\\", \\\"password123\\\"))\\n\"]', 20, 12),
(214, 55, 27, '2025-05-15', '<pre><code class=\"language-python\">import html\r\n\r\ndef sanitize_input(user_input):\r\n    return html.escape(user_input)\r\n\r\n# Example usage\r\nunsafe = \'&lt;script&gt;alert(\"XSS\")&lt;/script&gt;\'\r\nsafe = sanitize_input(unsafe)\r\nprint(safe)  # &amp;lt;script&amp;gt;alert(&amp;quot;XSS&amp;quot;)&amp;lt;/script&amp;gt;\r\n</code></pre>', '[\"<b>Strengths:</b>\\n<ul>\\n <li>The code correctly uses `html.escape` to sanitize user input.</li>\\n <li>The example demonstrates how potentially unsafe HTML is converted to safe HTML.</li>\\n</ul>\\n<b>Areas for Improvement:</b>\\n<ul>\\n <li>The function provides basic sanitization, but depending on the application\'s requirements, more advanced sanitization or a Content Security Policy (CSP) might be needed.</li>\\n</ul>\\n<b>Corrected Code:</b>\\n<code>import html\\n\\ndef sanitize_input(user_input):\\n    return html.escape(user_input)\\n\\n# Example usage\\nunsafe = \'&lt;script&gt;alert(\\\"XSS\\\")&lt;/script&gt;\'\\nsafe = sanitize_input(unsafe)\\nprint(safe)  # &amp;lt;script&amp;gt;alert(&amp;quot;XSS&amp;quot;)&amp;lt;/script&amp;gt;</code>\"]', 1, '[\"import html\\n\\ndef sanitize_input(user_input):\\n    return html.escape(user_input)\\n\\n# Example usage\\nunsafe = \'&lt;script&gt;alert(\\\"XSS\\\")&lt;/script&gt;\'\\nsafe = sanitize_input(unsafe)\\nprint(safe)  # &amp;lt;script&amp;gt;alert(&amp;quot;XSS&amp;quot;)&amp;lt;/script&amp;gt;\"]', 20, 12),
(215, 55, 25, '2025-05-15', '<pre><code class=\"language-python\">import hashlib\r\n\r\ndef hash_password(password):\r\n    if not isinstance(password, str):\r\n        raise ValueError(\"Password must be a string\")\r\n    \r\n    sha256 = hashlib.sha256()\r\n    sha256.update(password.encode(\'utf-8\'))\r\n    return sha256.hexdigest()\r\n\r\n# Example usage\r\nplain_password = \"my_secure_password123\"\r\nhashed = hash_password(plain_password)\r\nprint(\"Hashed password:\", hashed)\r\n</code></pre>', '[\"<strong>Strengths:</strong>\\n<ul>\\n <li>The solution correctly uses SHA-256 for password hashing.</li>\\n <li>It includes UTF-8 encoding, which is good practice.</li>\\n <li>The code checks for the input type.</li>\\n</ul>\\n<strong>Areas for Improvement:</strong>\\n<ul>\\n <li>Salting the password before hashing is crucial for better security.</li>\\n</ul>\\n\\n<strong>Corrected Code:</strong>\\n\\n```python\\nimport hashlib\\nimport os\\n\\ndef hash_password(password):\\n    if not isinstance(password, str):\\n        raise ValueError(\\\"Password must be a string\\\")\\n    \\n    salt = os.urandom(16)  # Generate a random salt\\n    salted_password = salt + password.encode(\'utf-8\')\\n    sha256 = hashlib.sha256()\\n    sha256.update(salted_password)\\n    hashed_password = sha256.hexdigest()\\n    return salt.hex() + \':\' + hashed_password  # Store salt and hash\\n\\n# Example usage\\nplain_password = \\\"my_secure_password123\\\"\\nhashed = hash_password(plain_password)\\nprint(\\\"Hashed password:\\\", hashed)\\n```\\n\"]', 1, '[\"import hashlib\\nimport os\\n\\ndef hash_password(password):\\n    if not isinstance(password, str):\\n        raise ValueError(\\\"Password must be a string\\\")\\n    \\n    salt = os.urandom(16)  # Generate a random salt\\n    salted_password = salt + password.encode(\'utf-8\')\\n    sha256 = hashlib.sha256()\\n    sha256.update(salted_password)\\n    hashed_password = sha256.hexdigest()\\n    return salt.hex() + \':\' + hashed_password  # Store salt and hash\\n\\n# Example usage\\nplain_password = \\\"my_secure_password123\\\"\\nhashed = hash_password(plain_password)\\nprint(\\\"Hashed password:\\\", hashed)\"]', 19, 12),
(216, 55, 26, '2025-05-15', '<pre><code class=\"language-python\">import html\r\n\r\ndef sanitize_input(user_input):\r\n    return html.escape(user_input)\r\n\r\n# Example usage\r\nunsafe = \'&lt;script&gt;alert(\"XSS\")&lt;/script&gt;\'\r\nsafe = sanitize_input(unsafe)\r\nprint(safe)  # &amp;lt;script&amp;gt;alert(&amp;quot;XSS&amp;quot;)&amp;lt;/script&amp;gt;\r\n</code></pre>', '[\"<strong>Strengths:</strong>\\n<ul>\\n <li>The solution correctly uses `html.escape` to sanitize HTML input.</li>\\n <li>This prevents basic XSS attacks by escaping HTML entities.</li>\\n</ul>\\n<strong>Areas for Improvement:</strong>\\n<ul>\\n <li>The provided solution is adequate for simple HTML sanitization. For more complex scenarios, consider using a dedicated HTML sanitization library like Bleach.</li>\\n</ul>\"]', 1, '[null]', 20, 12),
(217, 55, 27, '2025-05-15', '<pre><code class=\"language-python\">import sqlite3\r\n\r\ndef login(username, password):\r\n    conn = sqlite3.connect(\'users.db\')\r\n    cursor = conn.cursor()\r\n\r\n    query = \"SELECT * FROM users WHERE username = ? AND password = ?\"\r\n    cursor.execute(query, (username, password))\r\n    \r\n    result = cursor.fetchone()\r\n    conn.close()\r\n\r\n    if result:\r\n        return \"Login successful\"\r\n    else:\r\n        return \"Invalid username or password\"\r\n\r\n# Example usage\r\nprint(login(\"admin\", \"password123\"))\r\n</code></pre>', '[\"<strong>Strengths:</strong>\\n<ul>\\n <li>The solution uses parameterized queries with SQLite, which effectively prevents SQL injection.</li>\\n <li>The code is clear and easy to understand.</li>\\n <li>Properly closes the connection.</li>\\n</ul>\\n<strong>Areas for Improvement:</strong>\\n<ul>\\n <li>Password should be hashed before storing in the database.</li>\\n <li>Consider using a more robust database connection management (e.g., context manager).</li>\\n</ul>\\n\\n<strong>Corrected Code:</strong>\\n```python\\nimport sqlite3\\nimport hashlib\\n\\ndef login(username, password):\\n    conn = sqlite3.connect(\'users.db\')\\n    cursor = conn.cursor()\\n\\n    # Hash the password before querying\\n    hashed_password = hashlib.sha256(password.encode(\'utf-8\')).hexdigest()\\n\\n    query = \\\"SELECT * FROM users WHERE username = ? AND password = ?\\\"\\n    cursor.execute(query, (username, hashed_password))\\n    \\n    result = cursor.fetchone()\\n    conn.close()\\n\\n    if result:\\n        return \\\"Login successful\\\"\\n    else:\\n        return \\\"Invalid username or password\\\"\\n\\n# Example usage\\nprint(login(\\\"admin\\\", \\\"password123\\\"))\\n```\"]', 1, '[\"import sqlite3\\nimport hashlib\\n\\ndef login(username, password):\\n    conn = sqlite3.connect(\'users.db\')\\n    cursor = conn.cursor()\\n\\n    # Hash the password before querying\\n    hashed_password = hashlib.sha256(password.encode(\'utf-8\')).hexdigest()\\n\\n    query = \\\"SELECT * FROM users WHERE username = ? AND password = ?\\\"\\n    cursor.execute(query, (username, hashed_password))\\n    \\n    result = cursor.fetchone()\\n    conn.close()\\n\\n    if result:\\n        return \\\"Login successful\\\"\\n    else:\\n        return \\\"Invalid username or password\\\"\"]', 18, 12),
(224, 55, 34, '2025-05-15', '', '[\"The user did not provide a solution for this challenge. Operational Transformation (OT) is a complex topic that requires a solid understanding of distributed systems and algorithms. A proper solution would involve implementing an OT algorithm, handling concurrent operations, and managing document state across multiple clients.\"]', 1, '[null]', 0, 15),
(225, 55, 35, '2025-05-15', '', '[\"The user did not provide a solution for this challenge. This task involves setting up a system to fetch and render a microfrontend widget from a remote location. It would likely involve techniques like dynamic script loading or iframes, along with handling communication between the dashboard and the widget.\"]', 1, '[null]', 0, 15),
(226, 55, 36, '2025-05-15', '', '[\"The user did not provide a solution for this challenge. Building an API gateway requires implementing several key features: rate limiting to prevent abuse, JWT authentication for secure access, and CORS configuration to allow cross-origin requests.  A proper implementation would involve libraries or frameworks designed for API gateway functionality.\"]', 1, '[null]', 0, 15),
(227, 55, 28, '2025-05-15', '', '[\"The solution is missing. User did not provide any code. This answer is not related to the challenge.\"]', 1, '[null]', 1, 13),
(228, 55, 29, '2025-05-15', '', '[\"The solution is missing. User did not provide any code. This answer is not related to the challenge.\"]', 1, '[null]', 1, 13),
(229, 55, 30, '2025-05-15', '', '[\"The solution is missing. User did not provide any code. This answer is not related to the challenge.\"]', 1, '[null]', 1, 13),
(230, 55, 19, '2025-05-16', '<p>Build a landing page with a centered hero section that adjusts padding on mobile devices.</p><p>&nbsp;</p><p><br>&nbsp;</p>', '[\"The provided solution does not contain any code related to building a landing page. It simply repeats the challenge description. Therefore, it\'s not possible to assess its correctness, efficiency, or code style. It completely fails to address the challenge requirements.\\n\"]', 1, '[null]', 1, NULL),
(231, 55, 20, '2025-05-16', '<p>Build a landing page with a centered hero section that adjusts padding on mobile devices.</p><p>&nbsp;</p><p><br>&nbsp;</p>', '[\"The provided solution does not contain any code related to creating a form with email validation. It repeats the solution from the first challenge and is not related to the current challenge. Therefore, it\'s impossible to evaluate its correctness, efficiency, or code style. It completely fails to address the challenge requirements.\\n\"]', 1, '[null]', 1, NULL),
(232, 55, 21, '2025-05-16', '<p>Build a landing page with a centered hero section that adjusts padding on mobile devices.</p><p>&nbsp;</p><p><br>&nbsp;</p>', '[\"The provided solution is identical to the solutions for the previous challenges. It contains the description of the first challenge, and no code for fetching and displaying data from an API.  Therefore, it\'s impossible to evaluate its correctness, efficiency, or code style. It completely fails to address the challenge requirements.\\n\"]', 1, '[null]', 1, NULL),
(233, 55, 19, '2025-05-16', '<p>TEST</p>', '[\"<p>The submitted solution \'TEST\' does not address the challenge of building a responsive landing page with a centered hero section. It provides no HTML, CSS, or JavaScript code relevant to the task. The user needs to create the basic structure of a landing page, including a hero section with text and/or images, and ensure it\'s centered both horizontally and vertically. Additionally, CSS media queries should be used to adjust padding on smaller screens to maintain readability and visual appeal.</p>\\n<p><strong>Improvement Suggestions:</strong></p>\\n<ol>\\n <li>Start with a basic HTML structure (<code>&lt;body&gt;, &lt;header&gt;, &lt;main&gt;, &lt;footer&gt;</code>).</li>\\n <li>Create a hero section within the <code>&lt;main&gt;</code> element.</li>\\n <li>Use CSS to center the content of the hero section using flexbox or grid.</li>\\n <li>Implement media queries to reduce padding on smaller screens.</li>\\n</ol>\"]', 1, '[\"<pre><code class=\\\"language-html\\\">\\n&lt;!DOCTYPE html&gt;\\n&lt;html lang=\\\"en\\\"&gt;\\n&lt;head&gt;\\n    &lt;meta charset=\\\"UTF-8\\\"&gt;\\n    &lt;meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\"&gt;\\n    &lt;title&gt;Responsive Landing Page&lt;/title&gt;\\n    &lt;style&gt;\\n        body {\\n            margin: 0;\\n            font-family: sans-serif;\\n        }\\n\\n        header {\\n            background-color: #f0f0f0;\\n            padding: 20px;\\n            text-align: center;\\n        }\\n\\n        main {\\n            display: flex;\\n            justify-content: center;\\n            align-items: center;\\n            min-height: calc(100vh - 100px); /* Adjust based on header/footer height */\\n            padding: 20px;\\n        }\\n\\n        .hero {\\n            text-align: center;\\n            padding: 50px;\\n            border: 1px solid #ccc;\\n        }\\n\\n        footer {\\n            background-color: #333;\\n            color: white;\\n            text-align: center;\\n            padding: 20px;\\n        }\\n\\n        /* Media query for mobile devices */\\n        @media (max-width: 600px) {\\n            main {\\n                padding: 10px;\\n            }\\n\\n            .hero {\\n                padding: 20px;\\n            }\\n        }\\n    &lt;/style&gt;\\n&lt;/head&gt;\\n&lt;body&gt;\\n    &lt;header&gt;\\n        &lt;h1&gt;My Landing Page&lt;/h1&gt;\\n    &lt;/header&gt;\\n    &lt;main&gt;\\n        &lt;div class=\\\"hero\\\"&gt;\\n            &lt;h2&gt;Welcome!&lt;/h2&gt;\\n            &lt;p&gt;This is a responsive landing page.&lt;/p&gt;\\n            &lt;a href=\\\"#\\\"&gt;Learn More&lt;/a&gt;\\n        &lt;/div&gt;\\n    &lt;/main&gt;\\n    &lt;footer&gt;\\n        &lt;p&gt;&copy; 2024 My Website&lt;/p&gt;\\n    &lt;/footer&gt;\\n&lt;/body&gt;\\n&lt;/html&gt;\\n</code></pre>\"]', 1, NULL),
(234, 55, 20, '2025-05-16', '<p>TEST</p>', '[\"<p>The submitted solution \'TEST\' is inadequate for creating a form with email validation. It doesn\'t include any HTML form elements or JavaScript validation logic. A functional solution requires an HTML form with an email input field, coupled with JavaScript to validate the email format before submission. This validation prevents submission of incorrectly formatted email addresses.</p>\\n<p><strong>Improvement Suggestions:</strong></p>\\n<ol>\\n <li>Create an HTML form with an <code>&lt;input type=\\\"email\\\"&gt;</code> field.</li>\\n <li>Add a submit button to the form.</li>\\n <li>Use JavaScript to listen for the form\'s submit event.</li>\\n <li>Implement email validation logic using regular expressions or built-in browser validation.</li>\\n <li>Prevent form submission if the email is invalid.</li>\\n</ol>\"]', 1, '[\"<pre><code class=\\\"language-html\\\">\\n&lt;!DOCTYPE html&gt;\\n&lt;html&gt;\\n&lt;head&gt;\\n    &lt;title&gt;Email Validation Form&lt;/title&gt;\\n&lt;/head&gt;\\n&lt;body&gt;\\n\\n&lt;form id=\\\"emailForm\\\" onsubmit=\\\"return validateEmail()\\\"&gt;\\n    &lt;label for=\\\"email\\\"&gt;Email:&lt;/label&gt;\\n    &lt;input type=\\\"email\\\" id=\\\"email\\\" name=\\\"email\\\" required&gt;&lt;br&gt;&lt;br&gt;\\n    &lt;input type=\\\"submit\\\" value=\\\"Submit\\\"&gt;\\n&lt;/form&gt;\\n\\n&lt;script&gt;\\n    function validateEmail() {\\n        var emailInput = document.getElementById(\'email\').value;\\n        var emailRegex = /^[\\\\w-\\\\.]+@([\\\\w-]+\\\\.)+[\\\\w-]{2,4}$/g;\\n        if (!emailRegex.test(emailInput)) {\\n            alert(\'Please enter a valid email address.\');\\n            return false; \\n        }\\n        return true; \\n    }\\n&lt;/script&gt;\\n\\n&lt;/body&gt;\\n&lt;/html&gt;\\n</code></pre>\"]', 1, NULL),
(235, 55, 21, '2025-05-16', '<p>TEST</p>', '[\"<p>The provided solution \'TEST\' bears no relevance to the challenge of fetching and displaying data from a mock API. To address this, you\'d need to incorporate JavaScript code that utilizes <code>fetch</code> (or <code>XMLHttpRequest</code>) to retrieve data from a specified API endpoint.  Subsequently, the retrieved data needs to be processed and dynamically rendered onto the HTML document for display.</p>\\n<p><strong>Improvement Suggestions:</strong></p>\\n<ol>\\n <li>Use the <code>fetch()</code> method to retrieve data from the mock API.</li>\\n <li>Parse the JSON response using <code>.json()</code>.</li>\\n <li>Create HTML elements dynamically to display the fetched data.</li>\\n <li>Append these elements to a designated container in your HTML.</li>\\n <li>Handle potential errors during the fetch operation using <code>try...catch</code> or <code>.catch()</code>.</li>\\n</ol>\"]', 1, '[\"<pre><code class=\\\"language-html\\\">\\n&lt;!DOCTYPE html&gt;\\n&lt;html&gt;\\n&lt;head&gt;\\n    &lt;title&gt;Fetch and Display Data&lt;/title&gt;\\n&lt;/head&gt;\\n&lt;body&gt;\\n\\n    &lt;div id=\\\"data-container\\\"&gt;&lt;/div&gt;\\n\\n    &lt;script&gt;\\n        const apiUrl = \'https://jsonplaceholder.typicode.com/todos/1\';\\n\\n        fetch(apiUrl)\\n            .then(response =&gt; {\\n                if (!response.ok) {\\n                    throw new Error(\'Network response was not ok\');\\n                }\\n                return response.json();\\n            })\\n            .then(data =&gt; {\\n                const container = document.getElementById(\'data-container\');\\n                const title = document.createElement(\'h2\');\\n                title.textContent = data.title || \'No Title\';\\n                container.appendChild(title);\\n\\n                const completed = document.createElement(\'p\');\\n                completed.textContent = `Completed: ${data.completed ? \'Yes\' : \'No\'}`;\\n                container.appendChild(completed);\\n            })\\n            .catch(error =&gt; {\\n                console.error(\'There was a problem fetching the data:\', error);\\n                const container = document.getElementById(\'data-container\');\\n                container.textContent = \'Failed to load data.\';\\n            });\\n    &lt;/script&gt;\\n\\n&lt;/body&gt;\\n&lt;/html&gt;\\n</code></pre>\"]', 1, NULL),
(236, 55, 19, '2025-05-20', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(107,119,139);font-family:Outfit, sans-serif;font-size:18px;\">Build a landing page with a centered hero section that adjusts padding on mobile devices.</span></p>', '[\"<p>The provided solution is a restatement of the problem description, it does not contain any code or steps towards solving the challenge.</p>\\n\"]', 1, '[null]', 2, 10),
(237, 55, 20, '2025-05-20', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(107,119,139);font-family:Outfit, sans-serif;font-size:18px;\">Create a form that validates email input before submission.</span></p>', '[\"<p>The provided solution is a restatement of the problem description, it does not contain any code or steps towards solving the challenge.</p>\\n\"]', 1, '[null]', 2, 10),
(238, 55, 21, '2025-05-20', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(107,119,139);font-family:Outfit, sans-serif;font-size:18px;\">Write a script to fetch and display data from a mock AP</span></p>', '[\"<p>The provided solution is a restatement of the problem description, it does not contain any code or steps towards solving the challenge.</p>\\n\"]', 1, '[null]', 2, 10);

-- --------------------------------------------------------

--
-- Structure de la table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
CREATE TABLE IF NOT EXISTS `subscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user_id` int DEFAULT NULL,
  `id_offre_id` int DEFAULT NULL,
  `id_course_id` int DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `date_earned` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_course` (`id_user_id`,`id_course_id`),
  KEY `idx_user` (`id_user_id`),
  KEY `idx_offre` (`id_offre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `subscription`
--

INSERT INTO `subscription` (`id`, `id_user_id`, `id_offre_id`, `id_course_id`, `status`, `date_earned`) VALUES
(1, 29, 0, 134, 'On-Going', '2025-05-15 00:00:00'),
(2, 55, 0, 135, 'On-Going', '2025-05-15 00:00:00'),
(4, 55, 0, 134, 'On-Going', '2025-05-15 00:00:00'),
(17, 55, 0, 146, 'On-Going', '2025-05-16 00:00:00'),
(16, 55, 0, 139, 'On-Going', '2025-05-16 00:00:00'),
(14, 55, 0, 137, 'On-Going', '2025-05-16 00:00:00'),
(15, 55, 0, 138, 'On-Going', '2025-05-16 00:00:00'),
(13, 29, 0, 137, 'On-Going', '2025-05-16 00:00:00'),
(18, 55, 0, 140, 'On-Going', '2025-05-16 00:00:00'),
(19, 55, 0, 147, 'On-Going', '2025-05-16 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `tel` int DEFAULT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `logs` int NOT NULL DEFAULT '5',
  `google_authenticator_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban` int NOT NULL DEFAULT '0',
  `coins` int NOT NULL DEFAULT '0' COMMENT 'Total coins accumulated by the user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  UNIQUE KEY `UNIQ_8D93D649F037AB0F` (`tel`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `mdp`, `date_de_naissance`, `tel`, `role`, `field`, `description`, `experience`, `job`, `resume`, `picture`, `facebook_link`, `instagram_link`, `linkedin_link`, `verified`, `logs`, `google_authenticator_secret`, `ban`, `coins`) VALUES
(1, 'Adeeeeeeeeeeem', 'Abidi', 'adam.abidi@esprit.tn', '$2a$10$ECkyo0JOF790HJiWoQjrc.ATatSV6AMKLBJHPARjRg1lBLiRD3hOO', NULL, NULL, 'Insctructor', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, 0, 0),
(4, 'Nour', 'Darghoumi', 'nourelhoudadarghoumi@gmail.com', '$2y$13$SvE7VWtcrhnjl/U5Eld9geGcGY64rtNaEBrx.c3yw40LKj66cZaTq', NULL, NULL, 'Admin', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, 0, 0),
(8, 'farouk', 'bentaleb', 'bentalebfarouk33@gmail.com', '$2y$13$UjnJlU37xRzI6P0.mKCLMOuMJ2THa/poD9qrl.gw2E5kZb1P8wkNa', '2010-01-01', NULL, 'Instructor', NULL, NULL, 0, NULL, NULL, 'Sylas-8-67c8c9f9e5d38.webp', NULL, NULL, NULL, 1, 5, 'SGJRHVS4XQE6SZYYJ6C2NJILAM======', 0, 0),
(9, 'Farouk', 'Bentaleb', 'farouk.bentaleb@esprit.tnn', '$2a$10$2wqy910tTPZWIm3DSeyykeUif1TvLo5MoBQIMBPqnlv5nMcwWhIy6', '2010-01-01', NULL, 'Instructor', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, 0, 0),
(10, 'byteQuest', 'byteQuest', 'bytequest.pro@gmail.com', '$2a$10$0RKBBhjyI45nyeqUE9CWzuLX0pwjZ9Ez4uaFsxFbjfGwcQGGolx7u', '2010-01-01', NULL, 'Instructor', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, 0, 0),
(27, 'Farouk', 'Bentaleb', 'farouk@gmail.com', '$2a$10$0RKBBhjyI45nyeqUE9CWzuLX0pwjZ9Ez4uaFsxFbjfGwcQGGolx7u', NULL, 12312312, 'Admin', NULL, NULL, 0, NULL, NULL, 'C:/wamp64/www/images/users/user_1745508269588.jpg', NULL, NULL, NULL, 0, 1, NULL, 0, 0),
(29, 'adam', 'abd', 'adam@gmail.com', '$2a$10$ScNzCChIPvm19.PjrRJbwOB9uwINxBy06DWGy8Do1/XrFxY9d0b3i', '2008-02-16', 123123, 'Student', NULL, 'AZEAZEAZEAZE', 6, 'Student', 'No file chosen', 'C:/wamp64/www/images/users/user_1744964337644', 'https://www.facebook.com/jqsdhfi', 'https://www.instagram.com/qlsdfjnlqsd', 'https://www.linkedin.com/jqsdhfi', 0, 5, NULL, 0, 0),
(33, 'firas', 'bh', 'firas@gmail.com', '$2a$10$ScNzCChIPvm19.PjrRJbwOB9uwINxBy06DWGy8Do1/XrFxY9d0b3i', NULL, NULL, 'Instructor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, 0, 0),
(43, 'Farouk', 'Bentaleb', 'farouk.bentaleb@esprit.tn', '$2a$10$nvk9Eklq3.tXJ6SWrUN.5.d9KvoX6OlcfetgJthVDKhQ9skTbAYZG', NULL, NULL, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, 0, 0),
(54, 'jasser', 'jasser', 'jasser@gmail.com', '$2y$10$XZvMSEb05s4twf/Npzx/s.9PdjtVfOiTlVkf4yZpge7BUmA5asBnm', NULL, NULL, 'Instructor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, 0, 0),
(55, 'Farouk', 'Bentaleb', 'faroukbentaleb6@gmail.com', '$2a$10$dfl2olf8HVR..CF2ulCmde2Wsp.0rhDThctjLiLx3s05iHIiR6yVq', NULL, NULL, 'Student', NULL, NULL, NULL, NULL, NULL, 'http://localhost/images/users/League-of-Legends-Embleme-6826ebeddfe2e.png', NULL, NULL, NULL, 0, 5, NULL, 0, 0),
(57, 'firas.bh@gmail.com', 'firas.bh@gmail.com', 'firas.bh@gmail.com', '$2y$10$8hqZU4.tlcm9hHsZw4lpquq9AZPAKv1tBfSifGrSudacOloUtBbo.', NULL, NULL, 'Student', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, 'C7FVRVUUY6QXDV7KM4PCHA726M======', 0, 0),
(59, 'validation', 'finale', 'byte.pro@gmail.com', '$2y$10$PwyiiLZADCB7634EWi2.D.0uCCYe//VU/OiBBJRCjJgn1ct0gFIEW', NULL, NULL, 'Student', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, 0, 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `FK_8F91ABF079F37AE5` FOREIGN KEY (`id_user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_8F91ABF0D92975B5` FOREIGN KEY (`id_course_id`) REFERENCES `course` (`id`);

--
-- Contraintes pour la table `challenge`
--
ALTER TABLE `challenge`
  ADD CONSTRAINT `FK_D7098951465F6E14` FOREIGN KEY (`id_competition_id`) REFERENCES `competition` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D7098951465F6E15` FOREIGN KEY (`id_competition_id`) REFERENCES `competition` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC79F37AE5` FOREIGN KEY (`id_user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_67F068BCF04BBC13` FOREIGN KEY (`id_poste_id`) REFERENCES `poste` (`id`);

--
-- Contraintes pour la table `competition`
--
ALTER TABLE `competition`
  ADD CONSTRAINT `FK_B50A2CB1326710F6` FOREIGN KEY (`id_instructor_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `competition_user`
--
ALTER TABLE `competition_user`
  ADD CONSTRAINT `FK_83D0485B7B39D312` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_83D0485BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FK_F87474F3591CC992` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Contraintes pour la table `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `FK_AC6340B379F37AE5` FOREIGN KEY (`id_user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_AC6340B3F04BBC13` FOREIGN KEY (`id_poste_id`) REFERENCES `poste` (`id`);

--
-- Contraintes pour la table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `FK_BF5476CA79F37AE5` FOREIGN KEY (`id_user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `poste`
--
ALTER TABLE `poste`
  ADD CONSTRAINT `FK_7C890FAB79F37AE5` FOREIGN KEY (`id_user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `submission`
--
ALTER TABLE `submission`
  ADD CONSTRAINT `fk_competition` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DB055AF379F37AE5` FOREIGN KEY (`id_user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_DB055AF3BB636FB4` FOREIGN KEY (`id_challenge_id`) REFERENCES `challenge` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
