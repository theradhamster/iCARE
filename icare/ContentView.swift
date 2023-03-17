//
//  ContentView.swift
//  icare
//
//  Created by Dorothy Luetz on 11/14/22.
//

import SwiftUI

struct FinderView: View {
    @State private var showNotif = false
    @State private var showSettings = false
    @State private var searchText = ""
    var body: some View {
            NavigationView {
                    ZStack {
                        CustomColor.bgColor.edgesIgnoringSafeArea(.all)
                        Text("sample")
                            .navigationTitle("Finder")
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
                            .searchable(text: $searchText)
                    }
                }
    }
}
    
struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(named: "secondarycolor")
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "primarycolor")
    }
    var body: some View {
        TabView {
                ProfileView()
                    .tabItem() {
                        Label("Profile", systemImage: "person.fill")
                    }
                CalendarView()
                    .tabItem() {
                        Label("Calendar", systemImage: "calendar")
                    }
                FinderView()
                    .tabItem() {
                        Label("Finder", systemImage: "person.crop.rectangle.stack.fill")
                    }
                ClientsView()
                    .tabItem() {
                        Label("Clients", systemImage: "person.3.sequence.fill")
                    }
                MessagesView()
                    .tabItem() {
                        Label("Messages", systemImage: "ellipsis.bubble.fill")
                    }
        } .accentColor(CustomColor.accent)
    }
}

struct CustomColor {
    static let bgColor = Color("bgcolor")
    static let primaryColor = Color("primarycolor")
    static let secondaryColor = Color("secondarycolor")
    static let accent = Color("accent")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
