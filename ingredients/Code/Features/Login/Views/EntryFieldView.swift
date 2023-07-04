//
//  EntryFieldView.swift
//  ingredients
//
//  Created by Sean Lim on 7/4/23.
//

import SwiftUI

struct EntryFieldView: View {
    var prompt: String
    var isSecure:Bool = false
    @Binding var field: String
    var placeHolder: String

    var body: some View {
        VStack {
            HStack {
                Text(prompt)
                    .font(.system(size: 15))
                Spacer()
            }
            .padding(10)
            
            if isSecure {
                SecureField(placeHolder, text: $field)
                    .autocapitalization(.none)
                    .frame(width: 300)
                    .overlay(Capsule()
                        .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 0.5))
                        .frame(width: 325, height: SizeConstants.textfieldHeight))
                    .font(.system(size: 15))
                    
            } else {
                TextField(placeHolder, text: $field)
                    .autocapitalization(.none)
                    .frame(width: 300)
                    .overlay(Capsule()
                        .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 0.5))
                        .frame(width: 325, height: SizeConstants.textfieldHeight))
                    .font(.system(size: 15))
            }
        }
        
        
    }
}


