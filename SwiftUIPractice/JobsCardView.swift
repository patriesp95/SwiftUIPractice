//
//  JobsCardView.swift
//  SwiftUIPractice
//
//  Created by patricia.martinez on 28/9/24.
//

import SwiftUI

struct JobsCardView: View {
    let name: String
    let jobTitle: String
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
                        VStack (alignment: .trailing, spacing: 0) {
                            Text(name)
                                .font(.largeTitle)
                                .bold()
                            Text(jobTitle)
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
    JobsCardView(name:"Steve Jobs" , jobTitle: "Apple CEO", image: .timcook)
}
