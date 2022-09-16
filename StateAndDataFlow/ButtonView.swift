//
//  SwiftUIView.swift
//  StateAndDataFlow
//
//  Created by Дмитрий Дуров on 16.09.2022.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "hello", color: .red) {
            
        }
    }
}
