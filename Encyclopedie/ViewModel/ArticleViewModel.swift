//
//  ArticleViewModel.swift
//  Encyclopedie
//
//  Created by Julie Collazos on 08/03/2023.
//

import Foundation

class ArticleViewModel: ObservableObject {
    @Published var articles = [Article]()
    
    init() {
        fetchArticles()
    }
    
    func fetchArticles() {
        let article1 = Article(title: "Le Colisée de Rome", content: "Plus grand amphithéâtre antique du monde, le Colisée de Rome est construit à la mesure de la superpuissance qu’était l’empire romain. Structure elliptique de 188 mètres de long, 156 mètres de large et 57 mètres de haut, il accueillait près de 50 000 spectateurs qui venaient y assister à des jeux de gladiateurs et de chasse animale, et même à des batailles navales. La surface de l’arène n’est que partiellement reconstituée aujourd’hui de façon à laisser visible la structure souterraine appelée « hypogée ». Ces galeries abritaient gladiateurs et animaux, prêts à surgir pour assurer le spectacle. Au Moyen Âge et à la Renaissance, le Colisée est utilisé comme carrière de matériaux, servant notamment à la construction de la basilique Saint-Pierre de Rome.", image: "colisee")
        let article2 = Article(title: "La Grande Muraille de Chine", content: "Comme un interminable serpent de pierre qui épouse les sinuosités du paysage, la Grande muraille de Chine relie Shanhaiguan, dans la province du Hebei, à Jiayuguan, dans la province orientale du Gansu. Construite entre les IIIe et XVIIe siècles sur plus de 20 000 kilomètres, elle est ponctuée de pistes cavalières, de tours de guet et d’abris, et de forteresses et de cols. Ce symbole national chinois est toutefois « fragilisé par la construction d’infrastructures touristiques inappropriées », alerte l’Unesco sur son site, citant notamment un téléphérique à Badaling, dans la région de Yanqing.", image: "muraille")
        let article3 = Article(title: "Le Machu Picchu, au Pérou", content: "Cité perchée entre les montagnes des Andes, Machu Picchu est la manifestation de la puissance de l’empire inca alors à son apogée. L’archéologue américain Hiram Bingham découvre en 1911 ces habitations, murailles, terrasses et rampes édifiées vers 1450 sur des escarpements rocheux. La cité est organisée en deux parties : l’une, agricole, est composée de plateformes cultivables et de maisonnettes d’agriculteurs, l’autre, urbaine, comporte plusieurs constructions comme la Résidence royale, la Place sacrée ou la Pyramide de l’Intihuatana et son cadran solaire.", image: "machu")
        let article4 = Article(title: "Pétra, en Jordanie", content: "La découverte de La Khazneh est une expérience hors du commun. Elle commence par une marche dans le Siq, un chemin sinueux enserré par des murs de grès de 70 mètres de haut. On croit voir apparaître le monument après chaque virage. Il faut rester à l'affût. Il surgit entre deux courbures quand on ne s’y attend plus, mystique et majestueux. Taillé dans la roche rose aux alentours du Ier siècle av. J.-C., sa façade s’élève à 43 mètres de haut. À l’intérieur, trois salles inaccessibles à la visite auraient abrité le tombeau de Arétas IV, roi des Nabatéens. Aux alentours du VIIe siècle, les Bédouins croyaient à tort que l’urne située en haut du monument renfermait d’importantes richesses, d’où le nom de « La Khazneh », qui signifie «Trésor» en arabe.", image: "petra")
        let article5 = Article(title: "Le Christ rédempteur, à Rio de Janeiro", content: "C’est sans doute la statue la plus célèbre du monde avec la Statue de la Liberté à New York. Le Christ Rédempteur se tient à 710 mètres au-dessus de Rio de Janeiro, sur la colline du Corcovado, au cœur de la forêt de Tijuca. Symbole de la foi et du bonheur des Cariocas, le peuple de Rio de Janeiro, la statue mesure 38 mètres de hauteur et pèse 1145 tonnes, et a fêté ses 90 ans en 2021.", image: "christ")
        let article6 = Article(title: "Chichén Itzá, au Mexique", content: "Chichen Itza est un des plus grands centres mayas de la péninsule du Yucatan au Mexique, et sans doute le plus célèbre. Son histoire commence avec les Itzá, peuple maya à l’origine de la première partie du site. Construite du Ve au Xe siècle, elle comporte plusieurs édifices remarquables, comme l’édifice des Nonnes ou le temple du cerf. La seconde partie du site est née de la conquête du Yucatán par le peuple Toltèque au Xe siècle. Il abrite un groupe d'édifices situés au sud, dont le Caracol («l'escargot»), un observatoire astronomique circulaire dont on dit que les prêtres ne sortaient jamais afin d'habituer leurs yeux à l’obscurité. Au nord, l’emblématique pyramide en terrasses de Kukulkan, ou Castillo, s'élève à 24 mètres.", image: "chichen")
        let article7 = Article(title: "Le Taj Mahal, en Inde", content: "À la mort de sa femme Mumtaz Mahal, l'empereur moghol Shah Jahan est saisi d'un chagrin insoutenable. Rien ne peut traduire la puissance de l'amour qu'il lui portait. Sauf, peut-être, le Taj-Mahal. Il ordonne sa construction à Agra, ville située aujourd'hui dans l'État de l'Uttar Pradesh, en Inde, pour y accueillir le corps de sa bien aimée. Achevé en 1648, ce mausolée est le plus grand joyau architectural de l'art indo-islamique. Construit selon un plan parfaitement symétrique en marbre blanc, il jouit d'un raffinement exceptionnel avec des sculptures incrustées de pierres précieuses, d'arcs, coupoles et jeux d'ombres et de lumières. Le monument renferme encore aujourd'hui les tombeaux de Mumtaz Mahal et de Shah Jahan.", image: "taj")
        
        articles = [article1, article2, article3, article4, article5, article6, article7]
    }
    
}

