//
//  CharacterType.swift
//  Game of Thrones
//
//  Created by Павел Григорьев on 31/05/2019.
//  Copyright © 2019 GP. All rights reserved.
//

enum CharacterType {
    case arya
    case cersei
    case daenerys
    case jaime
    case jon
    case tyrion
    
    var definition: String {
        switch self {
        case .arya:
            return "Образованная, умная, дерзкая и свободолюбивая, Арья Старк готова пойти на всё ради поставленной цели. Мало кто догадывается, что за обликом хрупкой юной девушки скрывается характер настоящего бойца. Арья легко обучается новым навыкам и всегда готова защищать тех, кому это необходимо. Но и своим врагам она обид не простит."
        case .cersei:
            return "Серсея горда, презрительна к окружающим, своевольна и амбициозна. Она, по её собственному мнению, хороший политик и настоящая дочь своего отца. Серсея раздражается, если люди не выполняют поручений, которые чаще всего безрассудны. Виной многих своих несчастий она ставит тот факт, что, являясь женщиной, не имеет должных уважения и влияния среди общества."
        case .daenerys:
            return "Дейенерис вся соткана из противоречий. Умная, но иногда недальновидная, справедливая, но мстительная, страстная, но гордая. Пройдя путь от робкой девочки до Матери драконов, Дени является одним из главных претендентов на Железный трон."
        case .jaime:
            return "Храбрый, решительный, но порой немного забывающий о морали Джейме не лишен благородства, с любовью и уважением относится ко всем своим родственникам, способен извлекать опыт из своих неудач, но под влиянием отца и сестры стал надменным, циничным и безразличным ко всему, кроме своей семьи"
        case .jon:
            return "Лидер, дипломат, джентльмен, всеобщий любимец — это всё о нём. Он умеет быть добрым и милосердным, оставаясь неподкупным и справедливым. Честь и долг — его главные ценности, но и человеческие страсти ему не чужды."
        case .tyrion:
            return "Мудрый, ироничный, справедливый и способный на глубокие чувства, несмотря на необычную внешность и трудную судьбу. Тирион остёр на язык и обаятелен, но за честные высказывания неоднократно навлекал на себя гнев как врагов, так и родных. Образованный гедонист, проводящий досуг с чаркой в руке и красоткой под боком."
        }
        
    }
}