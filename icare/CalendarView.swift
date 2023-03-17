//
//  CalendarView.swift
//  icare
//
//  Created by Dorothy Luetz on 11/14/22.
//

import SwiftUI
import EventKit

struct CalendarView: View {
    @State private var showNotif = false
    @State private var showSettings = false
    var body: some View {
        HStack {
            NavigationView {
                    ZStack {
                        CustomColor.bgColor
                            .ignoresSafeArea()
                        Text("sample")
                            .navigationTitle("Calendar")
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
    }
struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
