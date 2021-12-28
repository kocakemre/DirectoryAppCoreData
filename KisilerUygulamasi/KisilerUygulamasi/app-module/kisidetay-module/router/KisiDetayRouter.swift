//
//  KisiDetayRouter.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 15.11.2021.
//

import Foundation

class KisiDetayRouter : PresenterToRouterKisiDetayProtocol {
    static func createModule(ref: KisiDetayVC) {
        ref.kisiDetayPresenterNesnesi = KisiDetayPresenter()
        ref.kisiDetayPresenterNesnesi?.kisiDetayInteractor = KisiDetayInteractor()
    }
}
