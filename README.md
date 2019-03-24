# Recherche Hybrilivre

Dépôt des documents de recherche pour un modèle de publication hybride numérique : liens, réflexions et autres pièces du casse-tête.

[TOC]

## Contexte du projet

Le projet est né à la suite du colloque [ECRIDIL](http://ecridil.ex-situ.info/) tenu à Montréal les 30 avril et 1<sup>er</sup> mai 2018, avec comme objectif de rassembler les connaissances qui y ont été présentées pour produire un **acte de colloque innovant**, en ligne avec le titre de l’événement : *Le livre, défi de design : l’intersection de la création et de l’édition*.

>Le colloque ECRIDIL étudie sans les séparer les trois usages fondamentaux de la chaîne du livre (ÉCRire, éDIter,  Lire) à partir de la culture de l’innovation par le design, dans  l’esprit de l’innovation sociale et numérique.

![Les panélistes Emmanuel Souchié, Franck Cormerais et Olivier Charbonneau lors d'une table ronde au colloque ECRIDIL 2018 (photo : Louis-Olivier Brassard).](colloque-ecridil-table.jpg)  
*Les panélistes Emmanuel Souchié, Franck Cormerais et Olivier Charbonneau lors d'une table ronde au colloque ECRIDIL 2018 (photo : Louis-Olivier Brassard).*

Pour cette publication, nous ne souhaitions pas produire un simple acte de colloque traditionnel (comme [celui découlant de l’édition 2016 à Nîmes](https://desinnolivre.tumblr.com/)), dont le format peu attrayant et conçu selon les techniques plutôt « fermées » de l’imprimé ne serait pas du tout en phase avec le caractère innovant des idées des conférences. L’ambition est plutôt de produire un ouvrage :

- **ouvert**, transparent autant dans la conception que dans la production et permettant la redistribution, voire la réappropriation par l’utilisateur, le lecteur;
- **multimédia**, qui intègre des **augmentations multimodales** rendues possibles par le numérique;
- **scientifique**, qui préserve le caractère **scientifique** de la publication savante (notamment par la révison par les pairs);
- **visuellement cohérent**, en s’appuyant sur des standards techniques éprouvés et une réalisation épurée, favorable à la lecture[^2];
- **multiformat**, disponible sur le web, en version numérique téléchargeable ou imprimable.

La publication devrait donc s’inscrire nativement dans les nouvelles **pratiques numériques**, mais sans délaisser l’**imprimé** – une version papier doit nous attendre au bout de la chaîne éditoriale. Bref, un autre de défi de design.

Quels sont les problèmes avec les chaînes de publication contemporaines? Voir le [fichier annexe](problemes-chaines-publication.md) pour les grandes lignes.

## Défi : créer une publication hybride innovante

L’idée, que j’emprunte à Antoine Fauchié, c’est de concevoir une [chaîne de publication inspirée du web](https://www.quaternum.net/2017/03/13/une-chaine-de-publication-inspiree-du-web/) : fabriquer un ouvrage avec les outils du web pour un mode d’édition ouvert, collaboratif et multiformat, tout en étant suffisamment robuste pour être à l’épreuve de l’avenir.

## La solution (aboutissement de cette ronde de recherche)

*Pour une série de liens et de ressources, notamment d’autres exemples de publications nativement numériques, voir la liste de [liens externes](sources-externes.md).*

![La chaîne de production simplifiée.](schema-chaine-production-simplifiee.jpg)  
*La chaîne de production simplifiée.*

L'idée, c'est d'employer des **technologies ouvertes** (libres, transparentes et accessibles à tous) qui permettent la **collaboration** et le **versionnement** ainsi que la **production multisortie** (c’est-à-dire en plusieurs **formats**) afin d’être facilement partageable dans les divers canaux de diffusion contemporains (web et imprimé).

### L'adaptation d'une solution existante : Getty Publications 

![L'équipe de Getty Pubs présentent leur publication multiplateforme Ancient Terracotas. Photo: Miranda Sklaroff (via Getty Pubs).](getty-pubs.jpg)  
*L'équipe de Getty Pubs présentent leur publication multiplateforme Ancient Terracotas. Photo: Miranda Sklaroff (via Getty Pubs).*

Leur mantra :

> Create once, publish everywhere
>
> [Getty Pubs](http://blogs.getty.edu/iris/an-editors-view-of-digital-publishing/)

L'idée est donc de créer un gabarit, un moule dans lequel entre du **texte** et sortent des **publications en plusieurs formats**. C’est ce qu’a fait l’institut Getty avec leur outil [Quire](https://github.com/gettypubs/quire) (voir le résultat ci-haut).

La solution proposée pour l’hybrilivre est basée sur la chaîne de Getty Pubs, dont le code source est disponible sur GitHub (en beta fermé).

### Écrire

Idéalement, le texte devrait être produit dans un format ouvert et balisé, mais complètement découplé de tout formatage visuel. Le **Markdown** constitue un excellent exemple : il est léger, standard et très répandu, offrant une syntaxe légère pour baliser certains éléments d’écriture (niveaux en-têtes, emphase, citations, listes, etc.).

*![Une capture d'écran montrant la syntaxe markdown (via Antoine Fauchié).](2018-markdown-04.png)  
Une capture d'écran montrant la syntaxe markdown (via Antoine Fauchié).*

**Le hic**, c'est que les auteurs sont déjà très confortables dans des logiciels de traitement de texte propriétaires, comme **Microsoft Word**, lequel n’est malheureusement **pas très interopérable** et produit du texte généralement **peu structuré**. Des outils de conversion comme [Pandoc](https://github.com/jgm/pandoc) permettent de passer rapidement d’un format à l’autre, mais l’édition dans Word introduit souvent beaucoup d’éléments superflus qu’il faut nettoyer à la main.

Entre facilité d’édition et interopérabilité des contenus, le New York Times a développé un outil qui réunit **le meilleur des deux mondes** : [ArchieML](http://archieml.org/).

![Le logo d'ArchieML et son slogan (via archieml.org)](archieml-logo.jpeg)  
*Le logo d'ArchieML et son slogan (via archieml.org)*

Cette technologie, conçue pour travailler avec les journalistes pressés, permet à la fois aux **auteurs/éditeurs** de travailler dans un logociel de traitement de texte collaboratif en ligne (Google Docs) et aux **développeurs/designers** de travailler avec les données en format ouvert et sémantique.

Bref, une édition simple et « propre » dans Google Drive!

### Collaborer, valider, versionner

![Schéma d'une chaîne de travail en arborescence Git (via Git-scm.com).](git-commits.png)
*Schéma d'une chaîne de travail en arborescence Git (via Git-scm.com).*

La mise en commun des modifications peut se faire avec [Git](https://git-scm.com/), un système ultra-robuste qui permet essentiellement de versionner du **texte**. Le code, c'est du texte; du texte, c'est… du texte. Alors pourquoi ne pas utiliser cet outil extrêmement puissant, qui permet des **révisions décentralisées** et de conserver l'**historique de travail** de chacun?

> Plutôt que de travailler sur une même plateforme fermée et limitée, ou plutôt que d’échanger des fichiers avec des numéros de version rapidement incompréhensibles, un fonctionnement plus logique est de _versionner_ […]
>
> Antoine Fauchié

Néanmoins, **les auteurs sont peu nombreux connaître les rudiments du système de versionnement Git**. Des solutions en ligne comme [Forestry](https://forestry.io/) (« Toute votre équipe sera en train de faire des *commits* [révisions] » peut-on lire sur leur page d’accueil), [Prose](http://prose.io/), [Netlify CMS](https://www.netlifycms.org/) ou [Contentful](https://www.contentful.com/) permettent d’interagir graphiquement avec le contenu, façon Git.

**Dans la chaîne éditoriale proposée, les auteurs ne rédigent pas à même le dépôt Git, mais à partir de Google Drive.** Les auteurs, qui n’ont pas le temps de se soustraire à un protocole de rédaction particulier, peuvent continuer à rédiger, collaborer et réviser en ligne, comme ils en ont déjà l’habitude. C’est l’idée d’un « micro CMS ».

![Google Drive propose fonctionnalités de collaboration en ligne.](gdrive-collaboration.png)  
*Google Drive propose fonctionnalités de collaboration en ligne (via Google Drive).*

Les textes sont par la suite **rapatriés dans le dépôt** et stockés sous forme de **texte brut**, au bonheur des dévloppeurs qui apprécient la flexibilité des fichiers texte ouverts et sémantiques. Ces **copies** peuvent alors être intégrées au système de versionnement!

### Mettre en forme

Les contenus en **texte brut** sont beaucoup plus facile à **mettre en forme**, car ils sont complètement dissociés de toute autre information superflue; ce sont des **données toutes nues**, prêtes à être **habillées** par un système de mise en forme. Celui-ci s’appuie sur les technologies du web, qui le font particulièrement bien, dans le paradigme des **générateurs de sites web statiques**.

![Du balisage HTML.](sai-kiran-anagani-61187-unsplash.jpg)  
*Du balisage HTML (via Unsplash).*

Le HTML permet de **structurer** un document selon une série de balises standard et **sémantiques**, ainsi que de le mettre en la relation avec d’autres documents via des **hyperliens**.

Le langage CSS est celui qui donne **forme et couleur au web** : c'est tout simplement un ensemble de propriétés qu'on déclare (ex. `color: orange`) sur des classes d'éléments (ex. `article`, `header`, `footer`, soit divers éléments qui constituent la page).

Enfin, le javascript est un **langage de programmation** qui permet de créer des **interactions dynamiques** entre l’utilisateur et la page.

**Pourquoi choisir les technologies web?** Parce que sont des technologies ubiquitaires, standard et ouvertes. Il existe une myriades d’outils pour démarrer rapidement des projets web, comme [Wordpress](https://wordpress.org), un gestionnaire de contenus (CMS) qui s’installe en 5 minutes. **Le problème avec les CMS traditionnels**, c’est qu’ils doivent être hébergés sur des serveurs pour servir des pages à la demande, et sont indisponibles  à quiconque n’a pas accès à Internet. Depuis quelques années, un nouveau paradigme s’est répandu : celui des [générateurs de site web statique](https://www.staticgen.com/). Au lieu de générer des pages à chaque visite, le site web est **entièrement construit à l’avance**, ce qui lui confère une portabilité et une indépendance des plateformes d’hébergement. C’est dans le cadre de ce paradigme que nous exploiterons les technologies web (avec, notamment, le générateur ultra-rapide [Hugo](https://gohugo.io/)).

### Fabriquer

![Un livre créé avec CSS Print (via Nicolas Taffin).](polylogue-livre.jpeg)  
*Un livre créé avec CSS Print (via Nicolas Taffin).*

Travailler avec les technologies web ne signifie pas qu'il faut se restreindre à ce format, au contraire! Comme c'est un langage ouvert et structuré, il est possible de passer facilement d'un format à l'autre grâce au **balisage** qui structure le texte (en-têtes, légendes, sections, etc.) en parties **sémantiques** et en y intégrant des **métadonnées** (lisibles par des machines, ce qui facilite notamment l’indexation).

**Le site web comme nouvelle forme du livre** (numérique et imprimable) : les générateurs de site statique permettent de générer un ouvrage fermé, au sens de **portatif**, indépendant de la plateforme sur laquelle il est hébergé. C’est d’ailleurs le principe du format ePub : c’est un site web empaqueté dans un seul fichier.

Des logiciels comme [Pandoc](https://github.com/jgm/pandoc) ou [PrinceXML](https://www.princexml.com/) permettent de générer des fichiers PDF (pour l’impression), mais aussi l’outil [Paged.js](https://www.pagedmedia.org/pagedjs-sneak-peeks/) (voir l’exemple du livre créé par Nicolas Taffin ci-haut).

### Publier

![Anthony Masure a publié sa thèse de doctorat dans une version web exemplaire ainsi que dans une version imprimée de grande qualité (via Anthony Masure).](pdf-anthony-masure.png.png)  
*Anthony Masure a publié sa thèse de doctorat dans une version web exemplaire ainsi que dans une version imprimée de grande qualité (via Anthony Masure) : http://www.softphd.com/*

L'idée d'utiliser le **langage du web pour publier**, c'est parce que c'est un format standard, très répandu et qui va de pair avec l'**URL** _(Universal Resource Locator)_ : n'importe qui peut accéder au contenu via le [lien](https://www.theguardian.com/technology/2019/mar/12/tim-berners-lee-on-30-years-of-the-web-if-we-dream-a-little-we-can-get-the-web-we-want).

> The crucial thing is the URL. The crucial thing is that you can link to anything.
>
> Tim Berners-Lee

Ce sur quoi insiste tant Tim Berners-Lee, l’inventeur du web, c’est le caractère **foncièrement publique** de l’URL. Avec l'URL, les contenus ne sont (_a priori_) pas enfermés dans un lieu physique ou dans une application propriétaire, par exemple; elle doit nécessairement pointer vers une **référence publique**. C’est une composante fondamentale du web; pourquoi ne pas l’exploiter nativement?

## La suite : un gabarit réutilisable

![Une chaîne modulaire de publication (via Antoine Fauchié).](2017-chaine-de-publication-02.png)

Dans une solution comme celle-ci, **le contenu et l'architecture sont découplés**, ce qui permet, en théorie, de changer de forme en conservant le même contenu de départ (pourvu que celui-ci soit dans un format ouvert et standard, comme une brochette markdown/YAML).

L’objectif, pour la suite, est d’arriver à un **gabarit réutilisable** pour les chaînes de publication (ou, à tout le moins, un modèle à suivre). Ultimement, ce projet permettra d’**accélérer la production** d’ouvrages nativement numériques, de **démocratiser** le processus d’édition (autant aux éditeurs qu’aux non-éditeurs) et, enfin, d’assurer l’accessibilité dans les canaux de diffusion par la prise en charge multisortie.

## Notes

[^1]: **Constat** : plusieurs recettes éditoriales existent, propres à chaque maison d’édition qui les gardent jalousement pour elles. Pour quelles raisons? Probablement dans un esprit de compétition relevant du secret industriel – ou alors, elles le font pour ne pas exposer le processus douloureux, mal structuré et compliqué de leurs méthodes internes. Ce qui est dommage et inefficient, c’est qu’on réinvente la roue à chaque fois. Tant de solutions avec un objectif commun : faire des livres.

[^2]: Comme le souligne Anthony Masure dans son article [À défaut d’esthétique : plaidoyer pour un design graphique des publications de recherche](http://www.anthonymasure.com/articles/2018-11-defaut-esthetique), les publication savantes souffrent trop souvent d’une forme « majoritairement impensée », si bien qu’il y a un décalage entre le *logos* et l’aspect visuel qui, selon Masure, participe aussi à la production de sens.

## Références Zotero

Les références sont répertoriées dans la collection [Recherche hybrilivre](https://www.zotero.org/groups/2305940/livrenum/items/collectionKey/UYSZX8T8) du groupe publique Zotero ([livrenum](https://www.zotero.org/groups/livrenum)).

## Licence

[MIT](LICENSE)
