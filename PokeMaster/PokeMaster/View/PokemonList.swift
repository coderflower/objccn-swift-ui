//
//  PokemonList.swift
//  PokeMaster
//
//  Created by Taylor.CAI on 2021/12/4.
//

import SwiftUI

struct PokemonList: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(PokemonViewModel.all) {
                    PokemonInfoRow(model: $0, expanded: false)
                }
            }
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
