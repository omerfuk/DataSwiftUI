//
//  YapildiButonu.swift
//  DataSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI

struct YapildiButonu: View {
    
    @Binding var yapildiMi: Bool
    
    var body: some View {
        Button {
            yapildiMi.toggle()
        } label: {
            Text(yapildiMi ? "Yapildi" : "Yapilmadi")
                .font(.title)
                .padding()
                .background(yapildiMi ? .green : .red)
                .cornerRadius(15)
                .foregroundColor(.white)
                
        }
    }
}

struct YapildiButonu_Previews: PreviewProvider {
    static var previews: some View {
        YapildiButonu(yapildiMi: .constant(false))
    }
}
