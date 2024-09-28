//
//  ScrollStackView.swift
//  SwiftUIPractice
//
//  Created by patricia.martinez on 28/9/24.
//

import SwiftUI

struct ScrollStackView: View {
    var body: some View {
        ScrollView {
            LazyVStack(pinnedViews: [.sectionHeaders]){
                Section {
                    ForEach(0 ..< 5 ) { item in
                        JobsCardView(name: "Tim Cook", jobTitle: "Apple CEO", image: .timcook)
                    }
                } header: {
                    HStack {
                        Text("Tito tim")
                        Spacer()
                        
                    }
                    .padding()
                    .background{
                        Rectangle()
                            .fill(.thinMaterial)
                    }
                }
                Section {
                    ForEach(0 ..< 5 ) { item in
                        AvocadoCardsView(name: "Avocado!", avocadoTitle: "Avocado Inc CEO", image: .avocado)
                    }
                } header: {
                    HStack {
                        Text("Lord avocado!")
                        Spacer()
                        
                    }
                    .padding()
                    .background{
                        Rectangle()
                            .fill(.thinMaterial)
                    }
                }
               
            }
        }.safeAreaInset(edge: .top, spacing: 0) {
            Rectangle()
                .fill(.ultraThinMaterial)
                .frame(height: UIDevice.topInsetSize)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ScrollStackView()
}
