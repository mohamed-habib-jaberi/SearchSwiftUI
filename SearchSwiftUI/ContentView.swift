//
//  ContentView.swift
//  SearchSwiftUI
//
//  Created by eidd5180 on 04/10/2021.
//

import SwiftUI

struct ContentView: View {

@State var textSearch = ""
    @State var isSearching = false

    var body: some View {
        NavigationView{
            ScrollView {

                HStack{
                    TextField("Search terms here", text: $textSearch)
                        //.background(SwiftUI.Color.yellow)
                        .padding(.leading, 24)

                }.padding()
                .background(Color(.systemGray5))
                .padding(.horizontal)
                .cornerRadius(6)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            //.foregroundColor(.green)
                        Spacer()
                    }//.background(Color(.red))
                        .padding(.horizontal, 32)
                        .foregroundColor(.gray)

                ).transition(.move(edge: .trailing))
                    .animation(.spring())

                ForEach(0..<20, id: \.self){ num in
                    HStack {
                        Text("\(num)")
                        Spacer()
                    }.padding()

                    Divider()
                        .background(Color(.systemGray4))
                        .padding(.leading)
                }
            }
            .navigationTitle("Food")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
