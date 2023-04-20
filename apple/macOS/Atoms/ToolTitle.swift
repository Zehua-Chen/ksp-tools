//
//  ToolSectionHeader.swift
//  macOS
//
//  Created by Zehua Chen on 4/20/23.
//

import SwiftUI

struct ToolTitle: View {
  var key: LocalizedStringKey
  var tableName: String?
  var bundle: Bundle?
  var comment: StaticString?
  
  init(_ key: LocalizedStringKey, tableName: String? = nil, bundle: Bundle? = nil, comment: StaticString? = nil) {
    self.key = key
    self.tableName = tableName
    self.bundle = bundle
    self.comment = comment
  }
  
  var body: some View {
    Text(key, tableName: tableName, bundle: bundle, comment: comment)
      .font(.title)
  }
}

struct ToolTitle_Previews: PreviewProvider {
  static var previews: some View {
    ToolTitle("Some Tool")
      .padding()
  }
}
