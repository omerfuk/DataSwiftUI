//
//  DetayView.swift
//  DataSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI

struct DetayView: View {
    
    var secilenYapilacak: YapilacakModeli
    @State var yapildiMi = false
    
    var body: some View {
        
        VStack{
            Text(secilenYapilacak.isim)
                .font(.largeTitle)
                .padding()
                .foregroundColor(self.yapildiMi ? .green : .red)
            
            
            Text(secilenYapilacak.tanim)
                .font(.largeTitle)
                .padding()
                .foregroundColor(self.yapildiMi ? .green : .red)
            
            YapildiButonu(yapildiMi: $yapildiMi)

        }
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenYapilacak: birinciYapilacak)
    }
}
