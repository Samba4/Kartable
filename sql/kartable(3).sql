-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 03 déc. 2020 à 18:08
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kartable`
--

-- --------------------------------------------------------

--
-- Structure de la table `completions`
--

CREATE TABLE `completions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `episode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `completions`
--

INSERT INTO `completions` (`id`, `user_id`, `episode_id`, `created_at`, `updated_at`) VALUES
(1, 5, 50, NULL, NULL),
(136, 101, 50, NULL, NULL),
(137, 101, 51, NULL, NULL),
(138, 101, 52, NULL, NULL),
(139, 101, 53, NULL, NULL),
(140, 101, 54, NULL, NULL),
(141, 101, 55, NULL, NULL),
(142, 101, 56, NULL, NULL),
(143, 101, 57, NULL, NULL),
(144, 101, 58, NULL, NULL),
(831, 101, 38, NULL, NULL),
(832, 101, 59, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Créer un clone d\'Upwork avec Laravel', 'Bienvenue dans cette série où nous allons développer une application full-stack avec Laravel 8 et Livewire. Nous ajouterons TailwindCSS et AlpineJS pour compléter notre TALL stack.', 103, '2020-12-03 15:38:08', '2020-12-03 15:38:08'),
(2, 'Créer un jeu python avec pygame', 'Aujourd\'hui, on se retrouve avec une nouvelle formation sur la création d\'un jeu en python avec pygame', 46, '2020-12-03 15:45:54', '2020-12-03 15:46:11'),
(3, 'Apprendre le python', 'Vous n\'y connaissez rien en programmation et vous souhaitez apprendre un langage clair et intuitif ? Ce cours d’initiation à Python est fait pour vous !', 14, '2020-12-03 15:52:16', '2020-12-03 15:52:16'),
(5, 'Créer une application avec Laravel 8 et Livewire', 'Dans cette série, nous développons une application fullstack avec Livewire et Laravel 8. Nous ajouterons AlpineJS et TailwindCSS pour compléter notre TALL stack.', 68, '2020-12-03 16:14:02', '2020-12-03 16:14:02'),
(7, 'Créer une application full-stack avec Laravel 8 et VueJS', 'Dans cette série, nous apprendrons à développer une application full-stack avec Laravel 8 et VueJS.\n\nPour se faire nous utiliserons InertiaJS qui nous permettra d\'utiliser nos contrôleurs et notre routing tout en conservant la puissance de VueJS.', 101, '2020-12-03 16:22:13', '2020-12-03 16:22:13'),
(8, 'SYMFONY : 4H POUR COMPRENDRE LE FRAMEWORK !', 'Aujourd\'hui je vous présente Symfony en 1h ! Challenge Accepted ! Découvrez le framework le plus Hype de PHP en peu de temps !', 33, '2020-12-03 16:39:53', '2020-12-03 16:39:53'),
(9, 'Réseau : les concepts les plus importants', 'Dans cette playlist, je vous explique les concepts les plus importants à retenir du réseau. \nSi les acronymes DNS, TCP/IP, IPS, IDS, DHCP, TLS vous donnent des sueurs froides, alors je vais pouvoir vous aider à tout comprendre.', 69, '2020-12-03 16:46:36', '2020-12-03 16:46:36');

-- --------------------------------------------------------

--
-- Structure de la table `episodes`
--

CREATE TABLE `episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `episodes`
--

INSERT INTO `episodes` (`id`, `title`, `description`, `video_url`, `course_id`, `created_at`, `updated_at`, `duration`) VALUES
(1, 'Créer un clone d\'Upwork avec Laravel', 'Nous prendrons pour exemple l\'application Upwork et mettrons en place des fonctionnalités tels qu\'une barre de recherche avancée, la soumission d\'une candidature, des flash messages, une messagerie et pleins d\'autres choses.', 'https://www.youtube.com/embed/hI57RHHhl6Q', 1, '2020-12-03 15:38:08', '2020-12-03 15:38:08', 12872),
(10, 'Créer un jeu en python (1/10) - Première fenêtre', 'Aujourd\'hui , on se retrouve pour le 1er épisode de cette nouvelle série sur la création d\'un jeu en python avec pygame', 'https://www.youtube.com/embed/8J8wWxbAdFg', 2, '2020-12-03 15:46:11', '2020-12-03 15:46:11', 916),
(11, 'Créer un jeu en python (2/10) - Création et déplacement du joueur', 'Aujourd\'hui , on se retrouve pour le 2ème épisode de cette nouvelle série sur la création d\'un jeu en python avec pygame avec la création et le déplacement du joueur', 'https://www.youtube.com/embed/a0kcj6rRQ2s', 2, '2020-12-03 15:46:11', '2020-12-03 15:46:11', 1731),
(12, 'Créer un jeu en python (3/10) - Création et lancement du projectile', 'Aujourd\'hui , on se retrouve pour le 3ème épisode de cette nouvelle série sur la création d\'un jeu en python avec pygame avec la création et le déplacement du projectile', 'https://www.youtube.com/embed/lmdjyU1YVLw', 2, '2020-12-03 15:46:11', '2020-12-03 15:46:11', 1496),
(13, 'Créer un jeu en python (4/10) - Ajout du monstre et gestion des collisions', 'Aujourd\'hui , on se retrouve pour le 4ème épisode de cettesérie sur la création d\'un jeu en python avec pygame avec la création et le déplacement du monstre ainsi que la gestion des collisions.', 'https://www.youtube.com/embed/_5jDP9Wy5vg', 2, '2020-12-03 15:46:11', '2020-12-03 15:46:11', 1694),
(14, 'Créer un jeu en python (5/10) - Gestion des dégats et barre de vie', 'Aujourd\'hui, on se retrouve pour le 5ème épisode de cette série sur la création d\'un jeu en python avec pygame avec la gestion des dégats et la création de la jauge de vie.', 'https://www.youtube.com/embed/GI7Hx9gzDNU', 2, '2020-12-03 15:46:11', '2020-12-03 15:46:11', 2035),
(15, 'Créer un jeu en python (6/10) - Ecran d\'accueil', 'Aujourd\'hui, on se retrouve pour le 6ème épisode de cette série sur la création d\'un jeu en python avec la création d\'un écran d\'accueil.', 'https://www.youtube.com/embed/xTrYWYAQ9vY', 2, '2020-12-03 15:46:11', '2020-12-03 15:46:11', 2319),
(16, 'Créer un jeu en python (7/10) - Pluie de comètes', 'Aujourd\'hui, on se retrouve pour le 7ème épisode de cette série sur la création d\'un jeu en python avec la pluie de comètes', 'https://www.youtube.com/embed/NTLJ4F0Hj48', 2, '2020-12-03 15:46:11', '2020-12-03 15:46:11', 3206),
(17, 'Créer un jeu en python (8/10) - Animations des entités', 'Aujourd\'hui, on se retrouve pour le 8ème épisode de cette série sur la création d\'un jeu en python avec l\'animation des entités', 'https://www.youtube.com/embed/70OAR-DCxKc', 2, '2020-12-03 15:46:11', '2020-12-03 15:46:11', 2055),
(18, 'APPRENDRE LE PYTHON #1 ? LES BASES & PREREQUIS', 'Aujourd\'hui , on se retrouve pour le 1er épisode de cette nouvelle série sur l’apprentissage du langage python !', 'https://www.youtube.com/embed/psaDHhZ0cPs', 3, '2020-12-03 15:52:17', '2020-12-03 15:52:17', 567),
(19, 'APPRENDRE LE PYTHON #2 ? LES VARIABLES', 'Aujourd\'hui , on se retrouve pour le 2ème épisode sur l’apprentissage du langage python avec la notion de variable !', 'https://www.youtube.com/embed/nvyX8JfoOWY', 3, '2020-12-03 15:52:17', '2020-12-03 15:52:17', 651),
(20, 'APPRENDRE LE PYTHON #3 ? LES CONDITIONS', 'Aujourd\'hui , on se retrouve pour le 3ème épisode sur l’apprentissage du langage python avec la notion de condition !', 'https://www.youtube.com/embed/_AgUOsvMt8s', 3, '2020-12-03 15:52:17', '2020-12-03 15:52:17', 771),
(21, 'APPRENDRE LE PYTHON #4 ? LES LISTES', 'Aujourd\'hui , on se retrouve pour le 4ème épisode sur l’apprentissage du langage python avec la notion de liste !', 'https://www.youtube.com/embed/kyxF5eH3Kic', 3, '2020-12-03 15:52:17', '2020-12-03 15:52:17', 859),
(22, 'APPRENDRE LE PYTHON #5 ? LES BOUCLES', 'Aujourd\'hui , on se retrouve pour le 5ème épisode sur l’apprentissage du langage python avec la notion de boucle !', 'https://www.youtube.com/embed/BrknhzrHm8w', 3, '2020-12-03 15:52:18', '2020-12-03 15:52:18', 880),
(23, 'APPRENDRE LE PYTHON #6 ? LES FONCTIONS', 'Aujourd\'hui , on se retrouve pour le 6ème épisode sur l’apprentissage du langage python avec la notion de fonction', 'https://www.youtube.com/embed/sgJt64iTOYM', 3, '2020-12-03 15:52:18', '2020-12-03 15:52:18', 1106),
(24, 'APPRENDRE LE PYTHON #7 ? LES OBJETS', 'Aujourd\'hui , on se retrouve pour le 7ème épisode sur l’apprentissage du langage python avec la notion d\'objets !', 'https://www.youtube.com/embed/dfUM_9xibf8', 3, '2020-12-03 15:52:18', '2020-12-03 15:52:18', 1197),
(25, 'APPRENDRE LE PYTHON #8 ? L\'HERITAGE', 'Aujourd\'hui , on se retrouve pour le 8ème épisode sur l’apprentissage du langage python avec la notion d\'héritage !', 'https://www.youtube.com/embed/fW4818AS88I', 3, '2020-12-03 15:52:18', '2020-12-03 15:52:18', 697),
(26, 'APPRENDRE LE PYTHON #9 ? INTERFACE GRAPHIQUE (avec Tkinter)', 'Aujourd\'hui , on se retrouve pour le 9ème épisode sur l’apprentissage du langage python avec la notion d\'interface graphique sous tkinter', 'https://www.youtube.com/embed/N4M4W7JPOL4', 3, '2020-12-03 15:52:18', '2020-12-03 15:52:18', 2401),
(27, 'APPRENDRE LE PYTHON #10 ? LES FICHIERS', 'Aujourd\'hui , on se retrouve pour le 10ème épisode sur l’apprentissage du langage python avec la notion de fichiers  !', 'https://www.youtube.com/embed/jOHpZg8k668', 3, '2020-12-03 15:52:19', '2020-12-03 15:52:19', 1112),
(38, 'Application Laravel 8 et Livewire - Introduction', 'Dans cette vidéo, je vous présente l\'application que nous allons développer.', 'https://www.youtube.com/embed/zLldrf0SnZw', 5, '2020-12-03 16:14:02', '2020-12-03 16:14:02', 311),
(39, 'Application Laravel 8 et Livewire - Système d\'authentification', 'Dans cette vidéo, nous allons installer le système d\'authentification avec Fortify et créer nos premiers rôles pour les utilisateurs.', 'https://www.youtube.com/embed/uf-l9sI-E1I', 5, '2020-12-03 16:14:02', '2020-12-03 16:14:02', 1122),
(40, 'Application Laravel 8 et Livewire - Installation de TailwindCSS', 'Dans cette vidéo, nous allons installer et configurer TailwindCSS et créer une barre de navigation avec le bouton de déconnexion.', 'https://www.youtube.com/embed/i270enjO1aY', 5, '2020-12-03 16:14:02', '2020-12-03 16:14:02', 1019),
(41, 'Application Laravel 8 et Livewire - Création du modèle Job', 'Dans cette vidéo, nous allons créer le modèle Job et afficher les missions.', 'https://www.youtube.com/embed/pl1augQCgWM', 5, '2020-12-03 16:14:02', '2020-12-03 16:14:02', 1006),
(42, 'Application Laravel 8 et Livewire - Recherche avancée', 'Dans cette vidéo, nous allons mettre en place une barre de recherche avec des fonctionnalités avancées. Nous exploiterons les outils que Livewire met à notre disposition et donnerons une interactivité à notre composant avec AlpineJS.', 'https://www.youtube.com/embed/RFs_m_gObjo', 5, '2020-12-03 16:14:03', '2020-12-03 16:14:03', 2731),
(43, 'Application Laravel 8 et Livewire - Système de favoris', 'Dans cette vidéo, je vous présente comment mettre en place un système de favoris pour les missions de l\'utilisateur.', 'https://www.youtube.com/embed/rLMR2NrwMlM', 5, '2020-12-03 16:14:03', '2020-12-03 16:14:03', 1080),
(44, 'Application Laravel 8 et Livewire - Flash messages', 'Dans cette vidéo, nous allons créer notre propre composant dédiée aux flash messages. On pourra le customiser pour les différents types de messages et dynamiserons tout ça avec une pointe d\'AlpineJS !', 'https://www.youtube.com/embed/YXIF8vqmBQs', 5, '2020-12-03 16:14:03', '2020-12-03 16:14:03', 955),
(45, 'Application Laravel 8 et Livewire - Soumettre une proposition', 'Dans cette vidéo, nous allons voir comment soumettre une proposition à une mission particulière. Nous verrons comment court-circuiter les requêtes avec un middleware pour éviter qu\'un utilisateur ne soumette 2 fois pour la même mission.', 'https://www.youtube.com/embed/PqaFq3wlrQM', 5, '2020-12-03 16:14:03', '2020-12-03 16:14:03', 1799),
(46, 'Application Laravel 8 et Livewire - Système de messagerie', 'Dans cette vidéo, nous mettons en place un système de messagerie entre l\'auteur de la mission et le freelance qui a soumis sa candidature.', 'https://www.youtube.com/embed/roAruiazmMY', 5, '2020-12-03 16:14:03', '2020-12-03 16:14:03', 1964),
(47, 'Application Laravel 8 et Livewire - La ConversationPolicy', 'Dans cette vidéo, nous allons aborder la sécurité et les autorisations en générant une policy pour les conversations afin que seuls les personnes autorisées puissent accéder aux conversations de la messagerie.', 'https://www.youtube.com/embed/LPle9xOsxjk', 5, '2020-12-03 16:14:04', '2020-12-03 16:14:04', 890),
(50, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 1, Introduction', 'Dans cette vidéo, je vous montre l\'application que nous allons développer ensemble et les avantages d\'utiliser InertiaJS lors de développement d\'applications full-stack.', 'https://www.youtube.com/embed/aHesi7zh2-M', 7, '2020-12-03 16:22:13', '2020-12-03 16:22:13', 255),
(51, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 2, Configuration du projet', 'Dans cette vidéo, nous allons installer Jetstream pour l\'authentification et le configurer avec InertiaJS afin de profiter son interfaçage pour nos prochaines vues. Nous créerons nos premiers modèles avant de peupler la base de données avec des factories et seeders.', 'https://www.youtube.com/embed/_oa-VWqCuOQ', 7, '2020-12-03 16:22:13', '2020-12-03 16:22:13', 906),
(52, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 3, Afficher les formations', 'Dans cette vidéo, nous allons créer notre premier composant VueJS. Nous lui passerons des données depuis le contrôleur. Enfin de vidéo, nous apporterons un minimum de style avec le framework TailwindCSS.', 'https://www.youtube.com/embed/JEdTEpWcA2A', 7, '2020-12-03 16:22:13', '2020-12-03 16:22:13', 1268),
(53, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 4, Afficher les épisodes', 'Dans cette vidéo, nous affichons la liste des épisodes et permettrons à l\'utilisateur de choisir l\'épisode à regarder dans dans la playlist. Nous mettrons en place les relations entre modèles.', 'https://www.youtube.com/embed/SlX03hcCayE', 7, '2020-12-03 16:22:14', '2020-12-03 16:22:14', 1293),
(54, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 5, Progression des utilisateurs', 'Dans cette vidéo, nous allons ajouter une table completions qui permettra de faire la table pivot entre les utilisateurs et les épisodes, ainsi nous enregistrerons le suivi de ces derniers. Nous créerons un nouveau composant pour le bouton de suivi et afficherons le nombre de participant par formation.', 'https://www.youtube.com/embed/dv09s0uX41M', 7, '2020-12-03 16:22:14', '2020-12-03 16:22:14', 1524),
(55, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 6, Barre de progression', 'Dans cette vidéo, vous allez pratiquer afin de mettre en place une barre de progression pour les utilisateurs. L\'objectif est de rendre une un pourcentage reactif suivant les épisodes vues de l\'utilisateur connecté.', 'https://www.youtube.com/embed/TdweF0vql4k', 7, '2020-12-03 16:22:14', '2020-12-03 16:22:14', 1270),
(56, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 7, Créer des formations', 'Dans cette vidéo, nous allons permettre aux utilisateurs de créer leur propre formation. On affichera également le message flash de succès et les erreurs.', 'https://www.youtube.com/embed/nH1IByNxjbI', 7, '2020-12-03 16:22:14', '2020-12-03 16:22:14', 2566),
(57, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 8, Éditer les formations', 'Dans cette vidéo, nous allons créer notre formulaire d\'édition et permettre la modification de nos formations. De plus, nous intégrerons les autorisations de manière à ce que seul l\'auteur modifie sa propre formation.', 'https://www.youtube.com/embed/cvGXnCZfYnk', 7, '2020-12-03 16:22:14', '2020-12-03 16:22:14', 1681),
(58, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 9, Durée des formations (YouTube Data API)', 'Dans cette vidéo, nous allons faire des appels à YouTube Data API v3 pour récupérer les informations de nos vidéos, et plus particulièrement la durée. Nous persisterons la durée de chaque épisode en base de données avant de la convertir en format HH:MM:SS pour afficher la durée totale d\'une formation.', 'https://www.youtube.com/embed/hccLteUCwT0', 7, '2020-12-03 16:22:15', '2020-12-03 16:22:15', 1788),
(59, 'Application full-stack avec Laravel 8 et VueJS : Chapitre 10, Pagination', 'Dans cette vidéo, nous allons mettre en place la pagination avec inertiaJS.', 'https://www.youtube.com/embed/e3qnXsQH0mE', 7, '2020-12-03 16:22:15', '2020-12-03 16:22:15', 624),
(60, 'SYMFONY 1/4 : 1H POUR COMPRENDRE LE FRAMEWORK !', 'Aujourd\'hui je vous présente Symfony en 1h ! Challenge Accepted ! Découvrez le framework le plus Hype de PHP en peu de temps !', 'https://www.youtube.com/embed/UTusmVpwJXo', 8, '2020-12-03 16:39:54', '2020-12-03 16:39:54', 4167),
(61, 'SYMFONY 2/4 - 1H POUR COMPRENDRE LES FORMULAIRES !', 'Après avoir vu Symfony en 1h, on s\'attaque à la gestion des formulaires !', 'https://www.youtube.com/embed/_cgZheTv-FQ', 8, '2020-12-03 16:39:54', '2020-12-03 16:39:54', 3686),
(62, 'SYMFONY 3/4 - 1H POUR COMPRENDRE LES ENTITES ET LEURS RELATIONS !', 'Aujourd\'hui, on a une heure (1H) pour comprendre les relations entre entités dans Symfony !', 'https://www.youtube.com/embed/e5udJTjbYzw', 8, '2020-12-03 16:39:54', '2020-12-03 16:39:54', 3210),
(63, 'SYMFONY 4/4 : 1H POUR COMPRENDRE L\'AUTHENTIFICATION !', 'Aujourd\'hui je vous présente le composant Security de Symfony en 1h ! Challenge Accepted (🔥) ! Découvrez comment authentifier des utilisateurs afin de leur donner accès à certaines vues ou comportements !', 'https://www.youtube.com/embed/_GjHWa9hQic', 8, '2020-12-03 16:39:54', '2020-12-03 16:39:54', 3871),
(64, 'Partie 1 : Les fondamentaux du réseau', 'Dans cette vidéo, je vous présente cette nouvelle playlist consacrée au réseau', 'https://www.youtube.com/embed/HuxCOWxQudU', 9, '2020-12-03 16:46:36', '2020-12-03 16:46:36', 61),
(65, 'PAN, LAN, MAN, WAN : l\'essentiel en 4 minutes', 'Dans cette vidéo, je vous explique les différents types de réseau : PAN, LAN, MAN, WAN  Qu\'est ce qu\'un PAN (Personal Area Network)? Qu\'est ce qu\'un LAN (Local Area Network)? Qu\'est ce qu\'un MAN (Metropolitan Area Network)? Qu\'est ce qu\'un WAN (Wide Area Network)?', 'https://www.youtube.com/embed/c0Xj09s5hYA', 9, '2020-12-03 16:46:36', '2020-12-03 16:46:36', 251),
(66, 'Comprendre les modèles OSI et TCP/IP', 'Dans cette vidéo, je vous explique le fameux modèle OSI et TCP/IP : - Qu\'est ce que le modèle OSI (de l\'anglais Open Systems Interconnection) ? - Qu\'est ce que le modèle TCP/IP ? - Quelles sont les différences entre modèle OSI et modèle TCP/IP ? - Quelles sont les couches du modèle OSI ? - Quelles sont les couches du modèle TCP/IP ? - Comment les machines font pour se comprendre et communiquer via le réseau ?', 'https://www.youtube.com/embed/26jazyc7VNk', 9, '2020-12-03 16:46:37', '2020-12-03 16:46:37', 670),
(67, 'Ports et protocoles : comprendre l\'essentiel en 5 minutes', 'Dans cette vidéo, je vous explique les concepts de ports réseaux et de protocoles de communication', 'https://www.youtube.com/embed/YSl6bordSh8', 9, '2020-12-03 16:46:37', '2020-12-03 16:46:37', 343),
(68, 'Firewall : comprendre l\'essentiel en 7 minutes', 'Comprendre le rôle et les fonctionnalités clés d\'un firewall (pare-feu) en 8 minutes.  Cette vidéo répond aux questions : - Qu\'est ce qu\'un Firewall? - Quelles sont les fonctionnalités clés du Firewall? - Quel est l\'intérêt d\'un Firewall? - Quelles sont les régles de filtrage? - Qu\'est ce qu\'une DMZ? - Comment protéger le réseau interne d\'une entreprise d\'Internet? - Quels sont les différents types de Firewall?', 'https://www.youtube.com/embed/6Swt51w3EjY', 9, '2020-12-03 16:46:37', '2020-12-03 16:46:37', 474),
(69, 'Partie 2 : Les grandes composantes du réseau', 'Dans cette deuxième partie, nous verrons plus en détail les fonctions du réseau', 'https://www.youtube.com/embed/HFZx9Nn8y54', 9, '2020-12-03 16:46:37', '2020-12-03 16:46:37', 40),
(70, 'Comprendre le DNS en 5 minutes', 'Dans cette vidéo, je vous explique comment marche la résolution DNS (Domain Name System) : - Qu\'est ce qu\'un DNS ? - Comment ça marche un DNS ? - Comment le DNS résout les noms de domaines en adresses IP?', 'https://www.youtube.com/embed/qzWdzAvfBoo', 9, '2020-12-03 16:46:38', '2020-12-03 16:46:38', 311),
(71, 'Comprendre le NTP en 3 minutes', 'Dans cette vidéo, je vous explique ce qu\'est le NTP (Network Time Procol) : - Que veut dire NTP ? - A quoi sert le NTP ? - Comment marche le NTP ?', 'https://www.youtube.com/embed/7grXjecIHpw', 9, '2020-12-03 16:46:38', '2020-12-03 16:46:38', 181),
(72, 'Comprendre le DHCP en 3 minutes', 'Dans cette vidéo, je vous explique ce qu\'est le DHCP (Dynamic Host Configuration Protocol) : - Que veut dire DHCP?  - A quoi sert le DHCP ? - Quel est le rôle du DHCP? - Comment marche le DHCP ?', 'https://www.youtube.com/embed/yH9UvkeAz-I', 9, '2020-12-03 16:46:38', '2020-12-03 16:46:38', 222),
(73, 'Comprendre le clustering (et le load balancing) en 6 minutes', 'Dans cette vidéo, je vous explique les concepts clés du clustering et du load balancing.  Qu\'est ce qu\'un cluster? Qu\'est ce qu\'un cluster actif/passif, actif/actif? Qu\'est ce que le load balancing (répartition de charge) ? Qu\'est ce que la répartition de charge statique? Qu\'est ce que la répartition de charge dynamique? Quels sont les différents types de load balancing? Qu\'est ce que le round robin? le weighted round robin? le least connection?', 'https://www.youtube.com/embed/9EoqLdmZCTU', 9, '2020-12-03 16:46:38', '2020-12-03 16:46:38', 382);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_11_29_115708_create_sessions_table', 1),
(9, '2020_11_29_120623_create_courses_table', 1),
(10, '2020_11_29_120634_create_episodes_table', 1),
(11, '2020_11_29_235504_create_completions_table', 2),
(12, '2020_12_02_144212_add_duration_to_episodes_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ichem69@gmail.com', '$2y$10$iN6ntE55g/lp8wLh.BGdzON/.ekBO29NY2GAuw4TtVGZfjMlyuuYm', '2020-12-02 17:05:18');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('R8wmhN0n3kcwpcQ3E46rPYnlWH2Ba7tGLmHGxUDv', 101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZzR4Ym9TTXNrd2FtYlVlaHV4bkFnN2NhUVJWMWlnRjlWR0hHeVFnYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9rYXJ0YWJsZS50ZXN0L2NvdXJzZXM/cGFnZT0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTAxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkUTB6THZHRUtlM0tOZEk2UUhKSW9KdUZXTC5MQ1Z4amVVSXhNUnFDSGxtZFY2bHFhZUdEOHEiO30=', 1607018896);

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 101, 'Samba\'s Team', 1, '2020-11-29 12:00:43', '2020-11-29 12:00:43'),
(2, 102, 'Ichem\'s Team', 1, '2020-11-30 08:28:06', '2020-11-30 08:28:06'),
(3, 103, 'Ichem\'s Team', 1, '2020-12-02 17:06:19', '2020-12-02 17:06:19');

-- --------------------------------------------------------

--
-- Structure de la table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Imogene Hoppe PhD', 'nwintheiser@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'k6ZG3CczcY', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(2, 'Prof. Camren Spencer', 'charles.ledner@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'LynK40g2ni', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(3, 'Lauren Sawayn', 'arturo79@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'n5a2uVyJGI', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(4, 'Mrs. Helga Harris I', 'martina.becker@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '3f04ULeMwE', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(5, 'Arnold Ward', 'ortiz.deanna@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'eEUUkCIVHQ', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(6, 'Yasmeen Baumbach Jr.', 'dixie34@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '9BWDcji3tH', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(7, 'Frederik Towne', 'tillman.xavier@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'KV5ddWHUcj', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(8, 'Miss Allene Kirlin Jr.', 'scarlett.keebler@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'PozfxKNcEg', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(9, 'Ms. Dandre Zieme V', 'jordon17@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'uSEBIQ3Nam', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(10, 'Ms. Ayana Kris Jr.', 'ludie73@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'wvGqw2Is9P', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(11, 'Dr. Fritz Gleichner DDS', 'graham.amira@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WRCv4XChRR', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(12, 'Samanta Hand', 'alvera91@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'LwfzjxpUxc', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(13, 'Mireya Effertz', 'cody.murazik@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'EWEB8rjiIs', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(14, 'Ava Mayert I', 'anais67@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xC68zsPRfw', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(15, 'Franco Dickens', 'edison.baumbach@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'z2fzzS1zdX', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(16, 'Mr. Andy Kertzmann III', 'ychristiansen@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'GQvQmZzUFP', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(17, 'Carmella Boyle', 'kaylee81@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'nPlyXJlxeD', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(18, 'Mr. Clement Bogisich', 'zjacobi@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'puf5tJbM6P', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(19, 'Dr. Deonte Beer DVM', 'wcorwin@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'aIUjbRRHzf', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(20, 'Shanel Schowalter', 'josh21@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '7SgrwVjn5Z', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(21, 'Hertha Lockman', 'flavio.bins@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'lCpJaewIFW', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(22, 'Freeman Fahey DVM', 'fschaefer@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'HamrZbr19d', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(23, 'Ladarius Dickinson', 'sophia83@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '6dSW7hwFHy', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(24, 'Imelda Roberts', 'maxime52@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'd1GMTHP9B1', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(25, 'Gunnar Botsford', 'beer.pattie@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'MDgBgLgXSA', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(26, 'Randi Hodkiewicz DDS', 'labadie.marlin@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'g9rCeQ5LDZ', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(27, 'Miss Patience Feil IV', 'diana72@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'jUukk9VyGa', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(28, 'Mr. Judah Paucek', 'kunde.pete@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'BWOCNanj27', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(29, 'Dr. Derrick Sanford', 'fredrick13@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WDZiPar9Fm', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(30, 'Dr. Nasir Stokes', 'darion67@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ToGwiHzjrP', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(31, 'Clarissa Smitham', 'vicenta86@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'urdhhTc21h', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(32, 'Hazel Hirthe IV', 'lilian12@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'OTvoBlWMdk', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(33, 'Dr. Lue Cronin', 'pschumm@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'kXKwAzrhBh', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(34, 'Kaylee Ward', 'rfeeney@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'q0Om8iS4cC', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(35, 'Isaiah O\'Keefe I', 'jimmy.schuppe@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '60S9sa0BFO', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(36, 'Adah Brekke', 'fbogisich@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'oT7kDm3dnz', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(37, 'Leone O\'Reilly III', 'berta10@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8cRnsf8Af5', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(38, 'Uriah Hoppe', 'evelyn.metz@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'JAEhO1yW46', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(39, 'Trenton Stamm', 'qrau@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'tt0YEuFoa6', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(40, 'Miss Andreane Trantow', 'stacy21@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'O9y8ylytxo', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(41, 'Marie Sporer', 'kristoffer.volkman@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'lUElpple4J', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(42, 'Mr. Lon Blick II', 'dayna74@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'TCd35fKqyA', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(43, 'Jacklyn Ritchie Jr.', 'kwindler@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'gWMJOGbm2f', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(44, 'Talon Hamill DVM', 'howe.roman@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'YDD67p3hXI', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(45, 'Micaela Osinski', 'hulda.hoeger@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'UkEoExSJkK', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(46, 'Rodolfo Gutmann PhD', 'domenick07@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Nbw31f4zg6', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(47, 'Marta Schaden', 'klein.fiona@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ZOTXeU9XyO', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(48, 'Tre Heidenreich', 'rau.verona@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'PP5h7zQPI4', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(49, 'Ms. Rebeca Moen', 'tyree.nikolaus@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'A090uSlyT0', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(50, 'Mr. Raymundo Wintheiser IV', 'courtney52@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'W4OIn3WsPP', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(51, 'Ms. Sunny Reichel MD', 'slangworth@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'x8mBys78Qj', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(52, 'Aiden Dare', 'torrey.jaskolski@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '9Y2VX358zh', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(53, 'Brenden Eichmann', 'monahan.pedro@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2B6Xfai1nc', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(54, 'Melissa Wehner', 'sophie.cassin@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xgMvjT0ypp', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(55, 'Dr. Shanelle Hilpert Jr.', 'alize27@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'dwcNJEW13i', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(56, 'Prof. Vern Wunsch IV', 'jimmy88@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'dDgS4FHHqi', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(57, 'Paul West', 'elemke@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'V724A49pcW', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(58, 'Lennie Smith', 'eryan@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'nxbgtnaYPQ', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(59, 'Kelton Cremin', 'crooks.emerson@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'wIuzUAEUrS', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(60, 'Annabelle Schaefer', 'cwisozk@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'TXAIkqAVXI', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(61, 'Prof. Rogers Kling IV', 'bnader@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'jZLlTvPNiU', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(62, 'Baby Champlin', 'hauck.orrin@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'aCHlHKq8sd', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(63, 'Nathaniel Botsford', 'marge80@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'g7nrx26xRi', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(64, 'Theodore Dach', 'xlemke@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'JXNiKCdFOG', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(65, 'Mrs. Delia Mayer I', 'jpaucek@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ZMtJcjMyrc', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(66, 'Payton Little', 'berge.amber@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'IJCKZAsUPh', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(67, 'Shirley Wuckert', 'miguel29@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'J6NrXuX5ip', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(68, 'Mrs. Imelda Stanton', 'ovandervort@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '5yomfxur4b', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(69, 'Clemmie D\'Amore', 'margaret.lang@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ZLawAmMBih', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(70, 'Lisa Klocko', 'ohara.edison@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'iiTgIOzXlz', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(71, 'Ruthie Goodwin', 'alfonso.bosco@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'AcTIYbMqjz', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(72, 'Miss Evie Ruecker Sr.', 'haag.bette@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '4vJH9oFGaP', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(73, 'Rashawn Heathcote', 'lula.thiel@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'FwnGbwwYpg', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(74, 'Maryjane Hilpert', 'merl10@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xfGhjYwkCA', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(75, 'Noble Aufderhar', 'zdickens@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'JC0UYvRZPR', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(76, 'Dr. Lola Gislason', 'mcdermott.tod@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'tMhX7gkaRm', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(77, 'Prof. Andres Blick', 'carmine.wolff@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '03aJ7B7myC', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(78, 'Ryan Zulauf', 'aiyana45@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ePBmeRcQQ0', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(79, 'Jakob Ziemann II', 'akuvalis@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'PH9Q2gJCZs', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(80, 'Foster Haley', 'xstracke@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'PZ3gT97FuT', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(81, 'Marian Nicolas', 'ftorphy@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'N5RCKKNYMs', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(82, 'Heidi West', 'ythiel@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'cEOwaWpWDs', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(83, 'Clementine Gorczany', 'vlind@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'wgCeJon7ql', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(84, 'Creola O\'Conner', 'albertha06@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'fYtn2By3qk', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(85, 'Estel Waelchi', 'willa.funk@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'XUam5Z6Bdk', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(86, 'Izaiah Champlin', 'genoveva.rosenbaum@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'pgmVDPDA7A', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(87, 'Nicola Batz', 'dayna.pouros@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8H6xRRQv8A', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(88, 'Kirsten Gorczany', 'hschaden@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'aAhNCYDdno', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(89, 'Dr. Akeem Hickle', 'kirstin.streich@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'XX6eBrG5Xx', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(90, 'Einar Mayer II', 'destiney99@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'UmcV6N4GJQ', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(91, 'Ms. Lizzie Tromp', 'buck48@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'r4yAQkHtcb', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(92, 'Kaia Reynolds', 'lenny.adams@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'NDLklhJtXC', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(93, 'Tyree Fisher', 'alexie02@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '62EstyzBJM', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(94, 'Mr. Hans Wehner II', 'george.boehm@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'oyCG4wkwLS', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(95, 'Ubaldo Senger', 'trey.mills@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8reL3bIdX0', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(96, 'Joe Kohler', 'grant.gunner@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '0TwA669NMl', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(97, 'Miss Assunta Anderson Jr.', 'avis.crooks@example.net', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '62tnp2jYRK', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(98, 'Olaf Hyatt MD', 'shad.lemke@example.org', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WV3VlGxZs5', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(99, 'Ilene Cassin MD', 'eweissnat@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'K9iYdyIOTR', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(100, 'Dr. Alisha Wolf', 'megane.bailey@example.com', '2020-11-29 12:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'fRvV93mpEH', NULL, NULL, '2020-11-29 12:00:00', '2020-11-29 12:00:00'),
(101, 'Samba', 'samba9674@gmail.com', NULL, '$2y$10$Q0zLvGEKe3KNdI6QHJIoJuFWL.LCVxjeUIxMRqCHlmdV6lqaeGD8q', NULL, NULL, 'vay4bIS2ebEeKRX4ufPmU1F1mQSRIzV0E651m4RZAPhrUS9QhPrcMlOidXgp', 1, NULL, '2020-11-29 12:00:43', '2020-11-29 12:00:43'),
(103, 'Ichem', 'ichem69@gmail.com', NULL, '$2y$10$GeUsl9TLuyclX4i6yJd7QOEr4.O1DZXJ/SyboIqiRs2UgeNMqA0u6', NULL, NULL, NULL, 3, NULL, '2020-12-02 17:06:19', '2020-12-02 17:06:20');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `completions`
--
ALTER TABLE `completions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `completions_user_id_foreign` (`user_id`),
  ADD KEY `completions_episode_id_foreign` (`episode_id`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_user_id_foreign` (`user_id`);

--
-- Index pour la table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episodes_course_id_foreign` (`course_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Index pour la table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `completions`
--
ALTER TABLE `completions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=833;

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `completions`
--
ALTER TABLE `completions`
  ADD CONSTRAINT `completions_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `completions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
