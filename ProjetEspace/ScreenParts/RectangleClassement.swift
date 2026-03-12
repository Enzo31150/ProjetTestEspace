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
        VStack {
            ForEach(Array(vmProfil.profils.enumerated()).sorted { $1.element.profilePoints < $0.element.profilePoints }, id: \.element.profilePoints) { index, _ in
                // Create a binding to the profile at the given index
                RectangleRow(profil: $vmProfil.profils[index])
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
