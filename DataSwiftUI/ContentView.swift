//
//  ContentView.swift
//  DataSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isim = "Omer Faruk Kılıçaslan"
    
    var body: some View {
        
        VStack {
            Text(isim)
                .font(.largeTitle)
                .padding()
            
            Button {
                self.isim = "OmerFUK"
            } label: {
                Text("İsmi Değiştir")
                    .frame(width: 200, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
            }
            
            
            TextField("Test", text: self.$isim)
                .padding(.horizontal, 20)
                .frame(height: 50)
                .cornerRadius(15)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
