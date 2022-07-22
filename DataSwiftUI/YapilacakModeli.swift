//
//  YapilacakModeli.swift
//  DataSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import Foundation


struct YapilacakModeli: Identifiable {
    
    var id = UUID()
    var isim: String
    var tanim: String
    

}

var birinciYapilacak = YapilacakModeli(isim: "Yoğurt Al", tanim: "Eve Gelirken Yogurt Al")
var ikinciYapilacak = YapilacakModeli(isim: "Arabayı Yikat", tanim: "Arabayı yıkatmayı unutma")

var ucuncuYapilacak = YapilacakModeli(isim: "Bahçeyi Temizle", tanim: "Süpürge Almayı Unutma")

var yapilacaklarDizisi = [birinciYapilacak, ikinciYapilacak, ucuncuYapilacak]
