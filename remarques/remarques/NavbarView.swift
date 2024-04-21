//
//  NavbarView.swift
//  remarques
//
//  Created by Keval Pipalia on 2024-04-20.
//

import SwiftUI

struct SidebarButton: View {
    let title: String
    let systemImageName: String
    
    var body: some View {
        HStack {
            Image(systemName: systemImageName)
                .foregroundColor(.yellow)
                .imageScale(.large)
            Text(title)
                .foregroundColor(.white)
                .padding(.leading, 5)
        }
        .padding(10)
    }
}

struct Sidebar: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            SidebarButton(title: "Universal Search", systemImageName: "magnifyingglass")
            SidebarButton(title: "Today's Agenda", systemImageName: "calendar")
            SidebarButton(title: "Starred", systemImageName: "star.fill")
            SidebarButton(title: "All Previous Meetings", systemImageName: "clock")
            SidebarButton(title: "Archived", systemImageName: "archivebox.fill")
            
            Divider().background(Color.gray)
            
            Text("My Lists")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.leading, 10)
            SidebarButton(title: "Daily Standups (23)", systemImageName: "sunrise.fill")
            SidebarButton(title: "Weekly Refinements (3.2)", systemImageName: "highlighter")
            SidebarButton(title: "Tech and Product: All Hands (8)", systemImageName: "hands.sparkles.fill")
            
            Spacer()
            
            Divider().background(Color.gray)
            SidebarButton(title: "Intelligence Settings", systemImageName: "gearshape.fill")
            SidebarButton(title: "App Settings", systemImageName: "slider.horizontal.3")
            SidebarButton(title: "About", systemImageName: "info.circle.fill")
            SidebarButton(title: "Donate", systemImageName: "heart.fill")
        }
        .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
        .padding(.top, 10)
        .background(Color.black)
        }
    }

struct MainPlaceholderView: View {
    var body: some View {
        Text("Main Content Area")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.1))
    }
}
struct NavbarView: View {
    var body: some View {
        Sidebar()
    }
}

#Preview {
    NavbarView()
}
