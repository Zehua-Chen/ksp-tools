//
//  macOSApp.swift
//  macOS
//
//  Created by Zehua Chen on 4/15/23.
//

import SwiftUI

enum KSPTool: Hashable, Identifiable, CaseIterable {
  typealias ID = KSPTool

  case burnIn

  var id: Self {
    return self
  }

  var title: String {
    switch self {
    case .burnIn:
      return "Burn In"
    }
  }
}

@main
struct KSPToolsApp: App {
  @State
  var selected: KSPTool? = nil

  var body: some Scene {
    WindowGroup {
      NavigationSplitView {
        List(KSPTool.allCases, selection: $selected) { tool in
          Text(tool.title)
        }
      } detail: {
        toolView
      }
    }
  }

  @ViewBuilder
  var toolView: some View {
    switch selected {
    case .burnIn:
      BurnIn()
    default:
      ContentView()
    }
  }
}
