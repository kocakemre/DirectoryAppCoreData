//
//  KisiKayitProtocols.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 15.11.2021.
//

import Foundation

protocol ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor:PresenterToInteractorKisiKayitProtocol? {get set}
    
    func ekle(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToRouterKisiKayitProtocol {
    static func createModule(ref:KisiKayitVC)
}
