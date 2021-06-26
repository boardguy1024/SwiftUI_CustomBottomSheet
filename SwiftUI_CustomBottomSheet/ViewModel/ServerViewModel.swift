//
//  ServerViewModel.swift
//  SwiftUI_CustomBottomSheet
//
//  Created by park kyung seok on 2021/06/26.
//

import SwiftUI

class ServerViewModel: ObservableObject {

    @Published var servers = [
        Server(name: "United States", flag: "us"),
        Server(name: "Indea", flag: "in"),
        Server(name: "United Kingdom", flag: "uk"),
        Server(name: "France", flag: "fr"),
        Server(name: "Germany", flag: "ge"),
        Server(name: "Singapore", flag: "si")
    ]
    
    @Published var currentServer = Server(name: "United States", flag: "us")
    @Published var isConnected = false
    @Published var showSheet = false
}
