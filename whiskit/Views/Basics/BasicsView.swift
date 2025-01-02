//
//  BasicsView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct BasicsView: View {
    @State var offlineBasics = CookingBasicDTO.offlineCookingBasics
    @State var selectedBasic: CookingBasicDTO? = nil
    
    var body: some View {
        ZStack {
            Color("backgroundPrimary").edgesIgnoringSafeArea(.all)
            VStack {
                Text("How To:")
                    .font(.title)
                    .padding()
                ScrollView {
                    ForEach(offlineBasics) { basic in
                        Button(action: {
                            openBasic(tappedBasic: basic)
                        }) {
                            Text(basic.title)
                        }
                    }
                    .padding()
                }
            }
            .fullScreenCover(item: $selectedBasic) { basic in
                SelectedBasicView(
                    basic: basic,
                    onClose: { selectedBasic = nil }
                )
            }
        }
    }
    
    func openBasic(tappedBasic: CookingBasicDTO) {
        selectedBasic = tappedBasic
    }
}

#Preview {
    BasicsView()
}
