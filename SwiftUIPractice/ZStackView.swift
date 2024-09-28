//
//  ZStackView.swift
//  SwiftUIPractice
//
//  Created by patricia.martinez on 26/9/24.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ScrollView {
            VStack {
                header(text: "Maquetacion")
                ZStack(alignment: .bottomTrailing){
                    Image(.avocado)
                        .resizable()
                        .scaledToFit()
                    Rectangle()
                        .fill(.white.opacity(0.5))
                        .frame(height: 50)
                    Text("avocado!")
                        .font(.largeTitle)
                        .bold()
                        .padding(.trailing)
                        .padding(.bottom, 5)
                }
                .rectangleWithShadows
                
                AvocadoCardsView(name: "avocado!", avocadoTitle: "avocado hermoso", image: .avocado)
                JobsCardView(name: "Steve Jobs", jobTitle: "Apple EX CEO", image: .timcook)
                avocadoCard
                JobsCardView(name: "Tim Cook", jobTitle: "Apple CEO", image: .timcook)
                JobsCardView(name: "Tim Cook", jobTitle: "Apple CEO", image: .timcook)
            }
        }
    }
}

var avocadoCard: some View {
    Image(.avocado)
        .resizable()
        .scaledToFit()
        .overlay(alignment: .bottom){
            Rectangle()
                .fill(.white.opacity(0.5))
                .frame(height: 50)
                .overlay(alignment: .trailing){
                    Text("avocado!")
                        .font(.largeTitle)
                        .bold()
                        .padding(.trailing)
                }
        }
        .rectangleWithShadows
}

func header(text: String) -> some View {
    VStack {
        Text(text)
            .font(.largeTitle)
        HStack {
            Image(.avocado)
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 100)
                .offset(x:20)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/
                .frame(width:100)
                .overlay {
                    Image(.avocado)
                        .resizable()
                        .scaledToFill()
                }
                .clipShape(Circle())
        }
    }
}

#Preview {
    ZStackView()
}
