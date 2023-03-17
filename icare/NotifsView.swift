//
//  NotifsView.swift
//  icare
//
//  Created by Dorothy Luetz on 11/15/22.
//

import SwiftUI

struct NotifsView: View {
    var body: some View {
            ZStack {
                CustomColor.bgColor
                    .ignoresSafeArea()
                Text("sample")
            }
                .navigationTitle("Notifications")
                .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing: NavigationLink(destination: SettingsView()){Image(systemName: "gearshape")})
            .foregroundColor(CustomColor.secondaryColor)
            .font(Font.system(size:24, weight: .medium))
            .accentColor(CustomColor.secondaryColor)
        }
    }

struct NotifsView_Previews: PreviewProvider {
    static var previews: some View {
        NotifsView()
    }
}
