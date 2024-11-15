//
//  SelectedBasicView.swift
//  whiskit
//
//  Created by Elodie Collier on 11/14/24.
//

import SwiftUI

struct SelectedBasicView: View {
    let basic: CookingBasicDTO
    var onClose: () -> Void
    
    var body: some View {
        ZStack {
            VStack {
                Text(basic.title)
                    .font(.title)
                ScrollView {
                    ForEach(basic.recipeSteps) { step in
                        Text("\(step.stepNumber). \(step.text)")
                            .padding()
                    }
                }
            }
            VStack {
                HStack {
                    Button(action: {
                        onClose()
                    }) {
                        Image(systemName: "xmark.circle")
                    }
                    .padding()
                    Spacer()
                }
                Spacer()
            }
        }
    }
}
