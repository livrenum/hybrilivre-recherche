---
title: Démo Editoria
date: 2019-04-05
featuredImage: /journal/images/editoria-edit.jpeg
ogimage: /journal/images/editoria-edit.jpeg
---

Vendredi 5 avril, j’avais un rendez-vous en vidéoconférence avec Alison McGonagle-O’Connell, coordonnatrice au projet [Editoria](https://editoria.pub/) chez la [Collaborative Knowledge Foundation (Coko)](https://coko.foundation/).

Alison m’a fait une démonstration de la plateforme et du processus éditoral.

**Je n’ai pas eu accès moi-même à la plateforme**, mais Alison m’a diffusé son écran en me parlant du processus.

Comme il est possible de déployer l’architecture sur un serveur, je vais l’essayer moi-même.

## Le workflow Editoria

Tout le processus se fait dans le **navigateur web** (ex. Firefox, Safari, Chrome…), donc en ligne (avec une **connexion Internet active**).

Le texte peut commencer avec **l’importation d’un fichier Word** (lequel est converti dans la plateforme et n’est ensuite plus utilisé) ou nativement sur la plateforme en **créant un nouveau livre**.

L’interface d’édition est similaire à Google Drive, mais avec beaucoup moins de fonctionnalités.
C’est un environnement d’écriture plutôt familier, avec des barres d’outils comme dans les logiciels de traitement de texte standard (comme Microsoft Word).

![Capture d'écran Editoria](images/editoria-edit.jpeg)

Un certain nombre de balises sont offertes à l’utilisateur pour que celui-ci puisse structurer son texte de manière propre et cohérente.

**Ce n’est pas tout à fait un WYSIWYG (What You See Is What You Get)** : l’apparence de l’environnement d’**édition** diffère du résultat en **sortie** (WYS ≠ WYG).

Les formats de sortie possibles sont le **EPUB** (via HTML) et **PDF** (via l’outil [PagedMedia.js](https://www.pagedmedia.org/)).
Tout le travail de mise en forme est fait grâce au CSS (la technologie de mise en forme du web).

## Fonctionnalités

- L’édition des différentes **sections** («chapitres») se fait dans des **fichiers séparés**.
- Il est possible de laisser des commentaires dans la marge (mais pas à plusieurs en temps réel, comme le permettrait Google Drive).
- On peut activer le **suivi des modifications**.
- La plateforme inclut **plusieurs rôles** et **étapes de validation** avant d’arriver la publication définitive, ce qui permet vraiment d’organiser le travail d’édition en équipe.
- Bien qu’Editoria se présente comme une plateforme collaborative, il n’est possible d’éditer un fichier **qu’une personne à la fois** (lors de sa modification, le fichier devient alors verrouillé à tous les autres utilisateurs).

Le service Editoria fonctionne comme une plateforme en **hébergement beta**, c’est-à-dire sur invitation seulement.
Néanmoins, le [code source](https://gitlab.coko.foundation/editoria/editoria) est disponible publiquement, ainsi que les instructions pour déployer sa propre installation (entendre : son propre *clone*).

## Notes techniques

- La plateforme repose sur la chaîne de publication [PubSweet](https://gitlab.coko.foundation/pubsweet/pubsweet), une boîte à outils pour fabriquer sa propre chaîne éditoriale (par la Coko Foundation).
- L’interface de traitement de texte repose sur [WAX](https://gitlab.coko.foundation/wax/wax), lui-même dérivé du populaire projet [Substance](http://substance.io/).

## Communauté

Alison, qui m’a fait la démo, m’a également enjoint de rejoindre le [canal de discussion instantanée Mattermost](https://mattermost.coko.foundation/coko/channels/editoria), qui rassemble la communauté Editoria et permet notamment d’échanger sur les difficultés d’installation.

![mattermost-editoria](images/mattermost-editoria.jpeg)

