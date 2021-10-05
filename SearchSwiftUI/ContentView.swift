//
//  ContentView.swift
//  SearchSwiftUI
//
//  Created by eidd5180 on 04/10/2021.
//

import SwiftUI

struct ContentView: View {

    @State var searchText = ""
    @State var isSearching = false

    var body: some View {
        NavigationView{
            ScrollView {

                SearchBar(searchText: $searchText, isSearching: $isSearching)

                ForEach((0..<20).filter({ "\($0)".contains(searchText) || searchText.isEmpty }), id: \.self){ num in
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
