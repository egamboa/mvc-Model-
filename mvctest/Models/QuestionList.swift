//
//  QuestionList.swift
//  mvctest
//
//  Created by Andrés Gamboa on 5/12/18.
//  Copyright © 2018 Andrés Gamboa. All rights reserved.
//

import Foundation

class QuestionList {
    var list: Array<Question>
    
    init() {
        list = Array<Question>()
        list.append(Question(text: "Es el año 1988?", answer: false))
        list.append(Question(text: "La liga tiene 29 campeonatos?", answer: true))
        list.append(Question(text: "Es Navas el mejor portero?", answer: true))
        list.append(Question(text: "Es Luis Guillermo un mechudo?", answer: false))
        list.append(Question(text: "Es Oscar Arias un cantante de los hicsos?", answer: false))
        list.append(Question(text: "Amanece al oeste?", answer: false))
        list.append(Question(text: "Es CR más grande que Nicaragua?", answer: false))
        list.append(Question(text: "Es CR potencia mundial?", answer: true))
        list.append(Question(text: "Es Patricia Mora comunista?", answer: true))
        list.append(Question(text: "Me Comprendes Mendes?", answer: true))
        list.append(Question(text: "Es la ballena azul el animal más grande?", answer: true))
        list.append(Question(text: "Quiere Mireya que le baje una estrella?", answer: true))
        list.append(Question(text: "La independencia de CR fue en 1722?", answer: false))
        list.append(Question(text: "Vivio el quijote en la mancha?", answer: true))
        list.append(Question(text: "De la caña se hace el guaro?", answer: true))
        list.append(Question(text: "Es un ladrón que me ha robado todo?", answer: false))
        list.append(Question(text: "2 + 2 = 5?", answer: false))
        list.append(Question(text: "Es Ivy Queen la diva, la perra, la potra?", answer: true))
        list.append(Question(text: "Fue Abel Pacheco el mejor gobierno de CR?", answer: false))
        list.append(Question(text: "La gallina cruzó la calle para llegar al otro lado?", answer: true))
    }
}
