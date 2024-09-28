//
//  AvocadoCardsView.swift
//  SwiftUIPractice
//
//  Created by patricia.martinez on 26/9/24.
//

import SwiftUI

struct AvocadoCardsView: View {
    let name: String
    let avocadoTitle: String
    let image: ImageResource
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .overlay(alignment: .bottom){
                Rectangle()
                    .fill(.white.opacity(0.5))
                    .frame(height: 70)
                    .overlay(alignment: .trailing){
                        VStack (alignment: .leading) {
                            Text(name)
                                .font(.largeTitle)
                                .bold()
                            Text(avocadoTitle)
                                .font(.headline)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.trailing)
                    }
            }
            .rectangleWithShadows
    }
}


#Preview {
    AvocadoCardsView(name: "avocado!", avocadoTitle: "avocado hermoso", image: .avocado)
}
