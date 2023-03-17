//
//  ProfileView.swift
//  icare
//
//  Created by Dorothy Luetz on 11/14/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var showNotif = false
    @State private var showSettings = false
    @State private var profileName = ""
    @State private var profileBio = ""
    @State private var placeholderString = "Add bio..."
    init() {
         UITextView.appearance().backgroundColor = .clear
     }
    var body: some View {
        VStack {
            NavigationView {
                ZStack {
                    ScrollView {
                        Image("courtney pic")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .shadow(radius: 10)
                            .overlay(Circle().stroke(CustomColor.secondaryColor, lineWidth: 5))
                            .padding()
                            .frame(width: 250)
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(CustomColor.primaryColor)
                                .frame(width: 310, height: 600)
                                .offset(y: 10)
                            VStack {
                                TextField("Add name...", text: $profileName)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .offset(y: 25)
                                    .font(Font.system(size: 30))
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(CustomColor.accent)
                                    .frame(width: 270, height: 4)
                                    .offset(y: 25)
                                ZStack {
                                    VStack {
                                        if profileBio.isEmpty {
                                            VStack {
                                                Text("Add bio...")
                                                    .offset(x: -85, y: 30)
                                                    .opacity(0.2)
                                            }
                                        }
                                    }
                                    VStack {
                                        TextEditor(text: $profileBio).padding().colorMultiply(CustomColor.primaryColor)
                                            .offset(y: 30)
                                            .font(Font.system(size: 24))
                                            .frame(width: 285)
                                    }
                                }
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(CustomColor.accent)
                                    .frame(width: 270, height: 4)
                                    .offset(y: -205)
                            }
                        }
                    }
                }
                .navigationTitle("Profile")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        NavigationLink(destination: NotifsView(), isActive: $showNotif) {
                            Button {
                                showNotif = true
                            } label: {
                                Image(systemName: "bell")
                                    .foregroundColor(CustomColor.secondaryColor)
                                    .font(Font.system(size: 24, weight: .medium))
                                    .padding(10)
                            }
                        }
                    }
                    ToolbarItemGroup(placement: .principal) {
                        Text("iCARE")
                            .foregroundColor(CustomColor.primaryColor)
                            .font(Font.system(size: 36, weight: .heavy))
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        NavigationLink(destination: SettingsView(), isActive: $showSettings) {
                            Button {
                                showSettings = true
                            } label: {
                                Image(systemName: "gearshape")
                                    .foregroundColor(CustomColor.secondaryColor)
                                    .font(Font.system(size: 24, weight: .medium))
                                    .padding(10)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
