//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 15.11.2021.
//

import Foundation

class KisiKayitInteractor : PresenterToInteractorKisiKayitProtocol {
    let context = appDelegate.persistentContainer.viewContext
    
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        let kisi = KisilerModel(context: context)
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        appDelegate.saveContext()
    }
}
