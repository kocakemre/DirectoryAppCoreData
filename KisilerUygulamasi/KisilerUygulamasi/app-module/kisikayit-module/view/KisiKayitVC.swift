//
//  KisiKayitVC.swift
//  KisilerUygulamasi
//
//  Created by Kasım Adalan on 27.10.2021.
//

import UIKit

class KisiKayitVC: UIViewController {
    
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var kisiKayitPresenterNesnesi:ViewToPresenterKisiKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        KisiKayitRouter.createModule(ref: self)
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text {
            kisiKayitPresenterNesnesi?.ekle(kisi_ad: ka, kisi_tel: kt)
        }
    }
}
