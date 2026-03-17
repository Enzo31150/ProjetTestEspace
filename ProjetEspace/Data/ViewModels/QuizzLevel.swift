//
//  QuizzLevel.swift
//  ProjetEspace
//
//  Created by Leskeu  on 17/03/2026.
//

import Foundation

struct Question: Identifiable {
    var id = UUID()
    let question: String
    let answers: [String]
    let correctAnswer: Int
    var picture: String
    var difficulty: Difficulty
}

enum Difficulty: String, Identifiable, CaseIterable{
    var id: String { self.rawValue }
    case beginer = "Beginner"
    case intermediary = "Intermediary"
    case advanced = "Advanced"
    case master = "Master"
    case champion = "Champion"
}

let allQuestions: [Question] = [

    // MARK: - BEGINER (20)

    Question(
        question: "Quelle étoile est au centre du système solaire ?",
        answers: ["Sirius", "Soleil", "Proxima Centauri"],
        correctAnswer: 1,
        picture: "placeholderSun",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle est la planète la plus proche du Soleil ?",
        answers: ["Mercure", "Mars", "Vénus"],
        correctAnswer: 0,
        picture: "mercury",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle est la planète la plus chaude du système solaire ?",
        answers: ["Vénus", "Mercure", "Mars"],
        correctAnswer: 0,
        picture: "venus",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle planète abrite la vie connue ?",
        answers: ["Mars", "Terre", "Vénus"],
        correctAnswer: 1,
        picture: "earth",
        difficulty: .beginer
    ),
    Question(
        question: "Comment s’appelle le satellite naturel de la Terre ?",
        answers: ["Titan", "Europe", "Lune"],
        correctAnswer: 2,
        picture: "moon",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle planète est appelée la planète rouge ?",
        answers: ["Mars", "Mercure", "Neptune"],
        correctAnswer: 0,
        picture: "mars",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle est la plus grande planète du système solaire ?",
        answers: ["Jupiter", "Saturne", "Neptune"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle planète possède les anneaux les plus visibles ?",
        answers: ["Saturne", "Mars", "Mercure"],
        correctAnswer: 0,
        picture: "saturn",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle planète tourne presque couchée sur le côté ?",
        answers: ["Uranus", "Mars", "Mercure"],
        correctAnswer: 0,
        picture: "uranus",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle est la planète la plus éloignée du Soleil ?",
        answers: ["Saturne", "Neptune", "Mars"],
        correctAnswer: 1,
        picture: "neptune",
        difficulty: .beginer
    ),
    Question(
        question: "Combien y a-t-il de planètes dans le système solaire ?",
        answers: ["8", "9", "12"],
        correctAnswer: 0,
        picture: "ssolaire",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle planète naine était autrefois considérée comme une planète ?",
        answers: ["Pluton", "Cérès", "Éris"],
        correctAnswer: 0,
        picture: "pluto",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle planète est surnommée la planète bleue ?",
        answers: ["Neptune", "Terre", "Uranus"],
        correctAnswer: 1,
        picture: "earth",
        difficulty: .beginer
    ),
    Question(
        question: "De quoi le Soleil est-il principalement composé ?",
        answers: ["Hydrogène et hélium", "Roche et métal", "Glace et poussière"],
        correctAnswer: 0,
        picture: "placeholderSun",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle planète possède 0 lune ?",
        answers: ["Mercure", "Mars", "Neptune"],
        correctAnswer: 0,
        picture: "mercury",
        difficulty: .beginer
    ),
    Question(
        question: "Combien de lunes Mars possède-t-elle ?",
        answers: ["2", "8", "12"],
        correctAnswer: 0,
        picture: "mars",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle est la plus grande lune de Saturne ?",
        answers: ["Titan", "Phobos", "Triton"],
        correctAnswer: 0,
        picture: "saturn",
        difficulty: .beginer
    ),
    Question(
        question: "Où se trouve la ceinture principale d’astéroïdes ?",
        answers: ["Entre Mercure et Vénus", "Entre Mars et Jupiter", "Entre Uranus et Neptune"],
        correctAnswer: 1,
        picture: "asteroides",
        difficulty: .beginer
    ),
    Question(
        question: "Quelle planète est célèbre pour sa Grande Tache Rouge ?",
        answers: ["Jupiter", "Saturne", "Mars"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .beginer
    ),
    Question(
        question: "Pourquoi Uranus paraît-elle bleue ?",
        answers: ["À cause du méthane", "À cause de l’eau liquide", "À cause de sa lave"],
        correctAnswer: 0,
        picture: "uranus",
        difficulty: .beginer
    ),

    // MARK: - INTERDEMIARY (20)

    Question(
        question: "Quelle est la température approximative à la surface du Soleil ?",
        answers: ["5 500 °C", "500 °C", "50 000 °C"],
        correctAnswer: 0,
        picture: "placeholderSun",
        difficulty: .intermediary
    ),
    Question(
        question: "Quelle proportion de la masse du système solaire représente le Soleil ?",
        answers: ["25 %", "50 %", "99,86 %"],
        correctAnswer: 2,
        picture: "placeholderSun",
        difficulty: .intermediary
    ),
    Question(
        question: "Pourquoi les températures varient-elles autant sur Mercure ?",
        answers: ["Elle est très éloignée du Soleil", "Elle n’a presque pas d’atmosphère", "Elle possède beaucoup d’océans"],
        correctAnswer: 1,
        picture: "mercury",
        difficulty: .intermediary
    ),
    Question(
        question: "Pourquoi Vénus est-elle si chaude ?",
        answers: ["Effet de serre extrême", "Proximité de Jupiter", "Présence d’eau liquide"],
        correctAnswer: 0,
        picture: "venus",
        difficulty: .intermediary
    ),
    Question(
        question: "Dans quel sens tourne Vénus ?",
        answers: ["Dans le sens inverse des autres planètes", "Très rapidement comme Jupiter", "Elle ne tourne pas"],
        correctAnswer: 0,
        picture: "venus",
        difficulty: .intermediary
    ),
    Question(
        question: "Quel pourcentage de la surface terrestre est couvert d’eau ?",
        answers: ["30 %", "71 %", "90 %"],
        correctAnswer: 1,
        picture: "earth",
        difficulty: .intermediary
    ),
    Question(
        question: "Comment s’appellent les lunes de Mars ?",
        answers: ["Titan et Io", "Phobos et Deimos", "Europe et Ganymède"],
        correctAnswer: 1,
        picture: "mars",
        difficulty: .intermediary
    ),
    Question(
        question: "Combien Jupiter possède-t-elle environ de lunes ?",
        answers: ["10", "95", "3"],
        correctAnswer: 1,
        picture: "jupiter",
        difficulty: .intermediary
    ),
    Question(
        question: "De quoi sont composés principalement les anneaux de Saturne ?",
        answers: ["Gaz", "Glace et roches", "Métal pur"],
        correctAnswer: 1,
        picture: "saturn",
        difficulty: .intermediary
    ),
    Question(
        question: "Combien Uranus possède-t-elle de lunes ?",
        answers: ["5", "27", "60"],
        correctAnswer: 1,
        picture: "uranus",
        difficulty: .intermediary
    ),
    Question(
        question: "Où trouve-t-on les vents les plus rapides du système solaire ?",
        answers: ["Mars", "Terre", "Neptune"],
        correctAnswer: 2,
        picture: "neptune",
        difficulty: .intermediary
    ),
    Question(
        question: "Quelle est la plus grande lune de Neptune ?",
        answers: ["Triton", "Titan", "Phobos"],
        correctAnswer: 0,
        picture: "neptune",
        difficulty: .intermediary
    ),
    Question(
        question: "Quelle planète possède l’année la plus courte ?",
        answers: ["Mercure", "Mars", "Jupiter"],
        correctAnswer: 0,
        picture: "mercury",
        difficulty: .intermediary
    ),
    Question(
        question: "Quelle planète possède l’année la plus longue ?",
        answers: ["Saturne", "Neptune", "Uranus"],
        correctAnswer: 1,
        picture: "neptune",
        difficulty: .intermediary
    ),
    Question(
        question: "Quelle planète a des saisons extrêmes à cause de son inclinaison ?",
        answers: ["Uranus", "Vénus", "Mercure"],
        correctAnswer: 0,
        picture: "uranus",
        difficulty: .intermediary
    ),
    Question(
        question: "Quelle planète est la plus dense du système solaire ?",
        answers: ["Terre", "Mercure", "Jupiter"],
        correctAnswer: 0,
        picture: "earth",
        difficulty: .intermediary
    ),
    Question(
        question: "Quelle planète possède le plus grand volcan connu, Olympus Mons ?",
        answers: ["Vénus", "Mars", "Terre"],
        correctAnswer: 1,
        picture: "mars",
        difficulty: .intermediary
    ),
    Question(
        question: "Quel astre provoque principalement les marées sur Terre ?",
        answers: ["Mars", "La Lune", "Le Soleil uniquement"],
        correctAnswer: 1,
        picture: "moon",
        difficulty: .intermediary
    ),
    Question(
        question: "Quel type de planète est Jupiter ?",
        answers: ["Planète rocheuse", "Géante gazeuse", "Planète naine"],
        correctAnswer: 1,
        picture: "jupiter",
        difficulty: .intermediary
    ),
    Question(
        question: "Quel type de planète est la Terre ?",
        answers: ["Géante gazeuse", "Planète rocheuse", "Planète de glace"],
        correctAnswer: 1,
        picture: "earth",
        difficulty: .intermediary
    ),

    // MARK: - ADVANCE (20)

    Question(
        question: "Dans quelle couche du Soleil la lumière visible est-elle principalement émise ?",
        answers: ["La photosphère", "Le noyau", "La couronne"],
        correctAnswer: 0,
        picture: "placeholderSun",
        difficulty: .advanced
    ),
    Question(
        question: "Quel processus produit l’énergie du Soleil ?",
        answers: ["La fission nucléaire", "La fusion nucléaire", "La combustion du gaz"],
        correctAnswer: 1,
        picture: "placeholderSun",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle planète a la journée sidérale la plus longue ?",
        answers: ["Vénus", "Mercure", "Neptune"],
        correctAnswer: 0,
        picture: "venus",
        difficulty: .advanced
    ),
    Question(
        question: "Pourquoi Mercure n’a-t-elle presque pas d’atmosphère stable ?",
        answers: ["Sa gravité est trop faible et elle est très chauffée", "Elle est recouverte d’océans", "Son noyau est glacé"],
        correctAnswer: 0,
        picture: "mercury",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle planète possède un effet de serre devenu hors de contrôle ?",
        answers: ["Terre", "Vénus", "Mars"],
        correctAnswer: 1,
        picture: "venus",
        difficulty: .advanced
    ),
    Question(
        question: "Quel gaz est le plus responsable de la couleur bleue de Neptune ?",
        answers: ["Oxygène", "Méthane", "Azote"],
        correctAnswer: 1,
        picture: "neptune",
        difficulty: .advanced
    ),
    Question(
        question: "Quel est le principal composant de l’atmosphère terrestre ?",
        answers: ["Oxygène", "Azote", "Dioxyde de carbone"],
        correctAnswer: 1,
        picture: "earth",
        difficulty: .advanced
    ),
    Question(
        question: "Sur quelle planète un jour dure-t-il presque autant qu’une année ?",
        answers: ["Mercure", "Vénus", "Mars"],
        correctAnswer: 1,
        picture: "venus",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle est la structure géologique géante traversant Mars ?",
        answers: ["Valles Marineris", "Grand Canyon", "Rima Hadley"],
        correctAnswer: 0,
        picture: "mars",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle lune de Jupiter est connue pour son volcanisme intense ?",
        answers: ["Europe", "Io", "Callisto"],
        correctAnswer: 1,
        picture: "jupiter",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle lune de Jupiter intéresse beaucoup les scientifiques pour son océan sous-glaciaire ?",
        answers: ["Europe", "Io", "Titan"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle lune de Saturne possède une atmosphère dense ?",
        answers: ["Titan", "Encelade", "Mimas"],
        correctAnswer: 0,
        picture: "saturn",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle lune de Saturne projette des geysers de glace ?",
        answers: ["Encelade", "Titan", "Japet"],
        correctAnswer: 0,
        picture: "saturn",
        difficulty: .advanced
    ),
    Question(
        question: "Quel phénomène donne à Saturne sa forme légèrement aplatie ?",
        answers: ["Sa rotation rapide", "Ses anneaux", "Ses volcans"],
        correctAnswer: 0,
        picture: "saturn",
        difficulty: .advanced
    ),
    Question(
        question: "Pourquoi Triton est-elle une lune particulière ?",
        answers: ["Elle orbite en sens rétrograde", "Elle est carrée", "Elle n’a pas de glace"],
        correctAnswer: 0,
        picture: "neptune",
        difficulty: .advanced
    ),
    Question(
        question: "Quel objet se situe au-delà de Neptune et contient Pluton ?",
        answers: ["Le nuage d’Oort", "La ceinture de Kuiper", "La ceinture principale"],
        correctAnswer: 1,
        picture: "pluto",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle est la température moyenne de surface approximative de Mars ?",
        answers: ["20 °C", "-60 °C", "150 °C"],
        correctAnswer: 1,
        picture: "mars",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle planète possède le champ magnétique le plus puissant ?",
        answers: ["Jupiter", "Terre", "Saturne"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .advanced
    ),
    Question(
        question: "Quelle planète rocheuse a le noyau métallique proportionnellement le plus grand ?",
        answers: ["Mercure", "Mars", "Vénus"],
        correctAnswer: 0,
        picture: "mercury",
        difficulty: .advanced
    ),
    Question(
        question: "Quel corps céleste éclaire la Terre la nuit principalement par réflexion ?",
        answers: ["Mars", "La Lune", "Vénus"],
        correctAnswer: 1,
        picture: "moon",
        difficulty: .advanced
    ),

    // MARK: - MASTER (20)

    Question(
        question: "Quelle couche du Soleil est visible pendant une éclipse totale sous forme de halo ?",
        answers: ["La couronne", "Le noyau", "La zone radiative"],
        correctAnswer: 0,
        picture: "placeholderSun",
        difficulty: .master
    ),
    Question(
        question: "Dans le noyau solaire, l’hydrogène est transformé en quoi ?",
        answers: ["Hélium", "Oxygène", "Carbone"],
        correctAnswer: 0,
        picture: "placeholderSun",
        difficulty: .master
    ),
    Question(
        question: "Quelle planète du système solaire a la plus forte excentricité orbitale parmi les 8 planètes ?",
        answers: ["Mercure", "Mars", "Neptune"],
        correctAnswer: 0,
        picture: "mercury",
        difficulty: .master
    ),
    Question(
        question: "Quelle planète a la rotation la plus rapide sur elle-même ?",
        answers: ["Jupiter", "Saturne", "Neptune"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .master
    ),
    Question(
        question: "Pourquoi Mars est-elle rouge ?",
        answers: ["À cause d’oxydes de fer", "À cause du cuivre", "À cause de lave active partout"],
        correctAnswer: 0,
        picture: "mars",
        difficulty: .master
    ),
    Question(
        question: "Quelle planète a probablement perdu une grande partie de son eau liquide ancienne ?",
        answers: ["Mars", "Jupiter", "Mercure"],
        correctAnswer: 0,
        picture: "mars",
        difficulty: .master
    ),
    Question(
        question: "Quelle lune est la plus grande du système solaire ?",
        answers: ["Titan", "Ganymède", "Triton"],
        correctAnswer: 1,
        picture: "jupiter",
        difficulty: .master
    ),
    Question(
        question: "Quel satellite naturel est plus grand que la planète Mercure ?",
        answers: ["Ganymède", "Phobos", "Encelade"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .master
    ),
    Question(
        question: "Quel est le principal constituant des géantes gazeuses comme Jupiter et Saturne ?",
        answers: ["Hydrogène", "Fer", "Silicium"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .master
    ),
    Question(
        question: "Quelle planète possède un système d’anneaux, bien que plus discret que Saturne ?",
        answers: ["Jupiter", "Toutes les géantes externes", "Aucune autre"],
        correctAnswer: 1,
        picture: "uranus",
        difficulty: .master
    ),
    Question(
        question: "Quelle planète possède une inclinaison axiale d’environ 98° ?",
        answers: ["Uranus", "Neptune", "Saturne"],
        correctAnswer: 0,
        picture: "uranus",
        difficulty: .master
    ),
    Question(
        question: "Quelle planète a été découverte avant Uranus et Neptune à l’œil nu ?",
        answers: ["Aucune des deux", "Uranus seulement", "Neptune seulement"],
        correctAnswer: 1,
        picture: "uranus",
        difficulty: .master
    ),
    Question(
        question: "Quel objet définit officiellement une planète naine ?",
        answers: ["Elle n’a pas nettoyé son voisinage orbital", "Elle n’a pas de noyau", "Elle n’a pas de rotation"],
        correctAnswer: 0,
        picture: "pluto",
        difficulty: .master
    ),
    Question(
        question: "Quel objet est une planète naine située dans la ceinture principale d’astéroïdes ?",
        answers: ["Pluton", "Cérès", "Hauméa"],
        correctAnswer: 1,
        picture: "asteroides",
        difficulty: .master
    ),
    Question(
        question: "Quelle est la principale différence entre un astéroïde et une comète ?",
        answers: ["La comète contient davantage de glaces", "L’astéroïde brille tout seul", "La comète est toujours plus grosse"],
        correctAnswer: 0,
        picture: "asteroides",
        difficulty: .master
    ),
    Question(
        question: "Quelle région très lointaine est supposée être à l’origine de nombreuses comètes à longue période ?",
        answers: ["Le nuage d’Oort", "La ceinture de Kuiper", "La photosphère"],
        correctAnswer: 0,
        picture: "ssolaire",
        difficulty: .master
    ),
    Question(
        question: "Quelle planète possède une densité moyenne inférieure à celle de l’eau ?",
        answers: ["Saturne", "Neptune", "Mars"],
        correctAnswer: 0,
        picture: "saturn",
        difficulty: .master
    ),
    Question(
        question: "Quel phénomène permet à certaines lunes de rester géologiquement actives ?",
        answers: ["Le chauffage par effet de marée", "Le vent solaire", "La lumière visible"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .master
    ),
    Question(
        question: "Quel satellite de Jupiter est le plus gros ?",
        answers: ["Ganymède", "Europe", "Io"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .master
    ),
    Question(
        question: "Quelle planète est parfois appelée géante de glace avec Uranus ?",
        answers: ["Neptune", "Saturne", "Jupiter"],
        correctAnswer: 0,
        picture: "neptune",
        difficulty: .master
    ),

    // MARK: - CHAMPION (20)

    Question(
        question: "Dans quelle zone du Soleil l’énergie est-elle principalement transportée par mouvements de plasma ascendants et descendants ?",
        answers: ["La zone convective", "Le noyau", "La photosphère"],
        correctAnswer: 0,
        picture: "placeholderSun",
        difficulty: .champion
    ),
    Question(
        question: "Quelle couche solaire est la plus interne ?",
        answers: ["Le noyau", "La chromosphère", "La couronne"],
        correctAnswer: 0,
        picture: "placeholderSun",
        difficulty: .champion
    ),
    Question(
        question: "Pourquoi Vénus est-elle plus chaude que Mercure bien qu’elle soit plus éloignée du Soleil ?",
        answers: ["Son atmosphère piège intensément la chaleur", "Son noyau est plus grand", "Elle tourne plus vite"],
        correctAnswer: 0,
        picture: "venus",
        difficulty: .champion
    ),
    Question(
        question: "Quelle planète présente les plus grandes amplitudes thermiques entre jour et nuit à sa surface ?",
        answers: ["Mercure", "Terre", "Neptune"],
        correctAnswer: 0,
        picture: "mercury",
        difficulty: .champion
    ),
    Question(
        question: "Quel est le nom du supercontinent martien de canyon long de plusieurs milliers de kilomètres ?",
        answers: ["Valles Marineris", "Mare Tranquillitatis", "Caloris Basin"],
        correctAnswer: 0,
        picture: "mars",
        difficulty: .champion
    ),
    Question(
        question: "Quelle lune de Saturne est considérée comme l’un des mondes les plus prometteurs pour l’étude d’une chimie prébiotique complexe ?",
        answers: ["Titan", "Mimas", "Rhéa"],
        correctAnswer: 0,
        picture: "saturn",
        difficulty: .champion
    ),
    Question(
        question: "Quelle lune de Jupiter subit un intense chauffage de marée à cause de sa résonance orbitale ?",
        answers: ["Io", "Callisto", "Ganymède"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .champion
    ),
    Question(
        question: "Quelle lune glacée de Jupiter possède probablement un océan global sous sa surface ?",
        answers: ["Europe", "Io", "Amalthée"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .champion
    ),
    Question(
        question: "Pourquoi Triton est-elle soupçonnée d’avoir été capturée par Neptune ?",
        answers: ["Son orbite est rétrograde", "Elle est trop petite", "Elle n’a pas de glace"],
        correctAnswer: 0,
        picture: "neptune",
        difficulty: .champion
    ),
    Question(
        question: "Quel type d’objet est Pluton selon la classification actuelle ?",
        answers: ["Planète naine transneptunienne", "Astéroïde géant", "Géante de glace"],
        correctAnswer: 0,
        picture: "pluto",
        difficulty: .champion
    ),
    Question(
        question: "Quelle planète possède probablement une couche d’hydrogène métallique liquide très étendue ?",
        answers: ["Jupiter", "Mars", "Vénus"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .champion
    ),
    Question(
        question: "Quel élément rend l’atmosphère d’Uranus et Neptune bleuâtre ?",
        answers: ["Méthane", "Hélium", "Soufre"],
        correctAnswer: 0,
        picture: "uranus",
        difficulty: .champion
    ),
    Question(
        question: "Quelle planète a une pression atmosphérique au sol comparable à l’écrasement d’un sous-marin profond, environ 90 fois celle de la Terre ?",
        answers: ["Vénus", "Mars", "Mercure"],
        correctAnswer: 0,
        picture: "venus",
        difficulty: .champion
    ),
    Question(
        question: "Quelle planète possède les vents atmosphériques les plus rapides mesurés parmi les planètes ?",
        answers: ["Neptune", "Jupiter", "Saturne"],
        correctAnswer: 0,
        picture: "neptune",
        difficulty: .champion
    ),
    Question(
        question: "Quel objet de la ceinture principale est aussi classé planète naine ?",
        answers: ["Cérès", "Vesta", "Pallas"],
        correctAnswer: 0,
        picture: "asteroides",
        difficulty: .champion
    ),
    Question(
        question: "Quelle planète présente la plus forte gravité de surface parmi les planètes du système solaire ?",
        answers: ["Jupiter", "Neptune", "Terre"],
        correctAnswer: 0,
        picture: "jupiter",
        difficulty: .champion
    ),
    Question(
        question: "Quel monde du système solaire est célèbre pour ses lacs d’hydrocarbures liquides ?",
        answers: ["Titan", "Mars", "Europe"],
        correctAnswer: 0,
        picture: "saturn",
        difficulty: .champion
    ),
    Question(
        question: "Quelle région du système solaire commence au-delà de Neptune et abrite de nombreux petits corps glacés ?",
        answers: ["La ceinture de Kuiper", "La ceinture principale", "La zone convective"],
        correctAnswer: 0,
        picture: "pluto",
        difficulty: .champion
    ),
    Question(
        question: "Quel est le principal moteur des aurores polaires sur Terre et sur certaines autres planètes ?",
        answers: ["Les particules chargées du vent solaire", "La lumière de la Lune", "Les marées océaniques"],
        correctAnswer: 0,
        picture: "earth",
        difficulty: .champion
    ),
    Question(
        question: "Quel critère distingue une planète d’une étoile comme le Soleil ?",
        answers: ["Une planète ne maintient pas de fusion nucléaire durable en son cœur", "Une planète n’a pas de gravité", "Une planète ne tourne pas"],
        correctAnswer: 0,
        picture: "ssolaire",
        difficulty: .champion
    )
]

func filteredQuestionbyDifficulty( difficulty: Difficulty) -> [Question] {
    return allQuestions.filter { $0.difficulty == difficulty} 
}
