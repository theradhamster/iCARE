//
//  SettingsView.swift
//  icare
//
//  Created by Dorothy Luetz on 11/15/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            CustomColor.bgColor
                .ignoresSafeArea()
            Text("sample")
        }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(CustomColor.secondaryColor)
            .font(Font.system(size:24, weight: .medium))
            .accentColor(CustomColor.secondaryColor)
        }
    }

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
