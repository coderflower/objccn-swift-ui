//
//  PokemonList.swift
//  PokeMaster
//
//  Created by Taylor.CAI on 2021/12/4.
//

import SwiftUI

struct PokemonList: View {
    
    @State var expandingIndex: Int?
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(PokemonViewModel.all) { pokemon in
                    PokemonInfoRow(
                        model: pokemon,
                        expanded: expandingIndex == pokemon.id
                    )
                        .onTapGesture {
                            withAnimation(
                                .spring(
                                    response: 0.55,
                                    dampingFraction: 0.425,
                                    blendDuration: 0
                                )
                            ) {
                                expandingIndex = expandingIndex == pokemon.id ? nil : pokemon.id
                            }
                        }
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
