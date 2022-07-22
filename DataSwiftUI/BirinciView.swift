//
//  BirinciView.swift
//  DataSwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI

struct BirinciView: View {
    
    @State var numara = 0
    @State var gosterilecek = false
    
    var body: some View {
        VStack {
            
            HStack{
                Button {
                    self.numara -= 1
                } label: {
                    Text("-")
                        .font(.largeTitle)
                }
                
                
                Text(String(numara))
                    .font(.largeTitle)

                
                Button {
                    self.numara += 1
                } label: {
                    Text("+")
                        .font(.largeTitle)
                }
                
            }
            
            Button {
                gosterilecek.toggle()
            } label: {
                Text("Ikinci View'e Git")
            }
            .padding()
            .font(.largeTitle)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(15)
            .sheet(isPresented: $gosterilecek) {
                IkinciView()
            }

            
            
        }
    }
}

struct BirinciView_Previews: PreviewProvider {
    static var previews: some View {
        BirinciView()
    }
}
