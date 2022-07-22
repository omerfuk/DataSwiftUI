//
//  YapilacakView.swift
//  DataSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI

struct YapilacakView: View {
    
    
    
    var body: some View {
        NavigationView{
            List(yapilacaklarDizisi) { yapilacak in
                NavigationLink {
                    DetayView(secilenYapilacak: yapilacak)
                } label: {
                    Text(yapilacak.isim)
                        
                }
            }
            .navigationTitle("Yapilacaklar")
            
            
        }
    }
}

struct YapilacakView_Previews: PreviewProvider {
    static var previews: some View {
        YapilacakView()
    }
}
