//
//  ApoloModel.swift
//  Apolo
//
//  Created by Student18 on 24/03/23.
//

import Foundation

struct Apolo_Musicas: Codable, Hashable {
    var _id: String
    var _rev: String
    var imagem: String?
    var nome_musica: String?
    var artista: String?
    var album: String?
    var genero: String?
    var audio: String?
    var tempo_musica: String?
    var voto: Int?
}

struct Apolo_Evento: Codable, Hashable {
    var _id: String
    var _rev: String
    var nome_evento: String?
    var numero_max_participantes: Int?
    var numero_participantes: Int?
    var nome_organizador: String?
    var codigo: String?
    var avaliacao: Int?
    var musicas: [Apolo_Musicas]
    var ativa: Bool?
}
