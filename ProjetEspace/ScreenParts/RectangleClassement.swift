//
//  RectangleClassement.swift
//  ProjetEspace
//
//  Created by Leskeu  on 11/03/2026.
//

import SwiftUI

struct RectangleClassement: View {
    @Bindable var vmProfil = ProfilViewModels()
    var body: some View {
        NavigationStack {
            VStack {
                ForEach($vmProfil.profils, id: \.profilePoints) { $profil in
                    NavigationLink {
                        ProfileMainTemplate(profil: $profil)
                    } label: {
                        RectangleRow(profil: $profil)
                    }
                }
                
            }
        } .task {
                do {
                    try await vmProfil.fetchProfils()
                } catch {
                    print(error)
                }
            }
    }
}

#Preview {
    RectangleClassement()
}
