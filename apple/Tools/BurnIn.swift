//
//  BurnIn.swift
//  macOS
//
//  Created by Zehua Chen on 4/15/23.
//

import SwiftUI

struct BurnIn: View {
  @State
  var minutesInput = "0"

  @State
  var minutesError: String? = nil

  @State
  var secondsInput = "0"

  @State
  var secondsError: String? = nil

  var body: some View {
    Form {
      Section("Information") {
        Text("This tool is intended to be used in KSP 1 only")
      }

      Section("Burn Window") {
        TextField("Minutes", text: $minutesInput)
          .onSubmit {
            if !isValidNumber(input: minutesInput) {
              minutesError = "Please enter a valid number"
            } else {
              minutesError = nil
            }
          }

        if let minutesError = minutesError {
          Text(minutesError)
            .foregroundColor(.red)
        }

        TextField("Seconds", text: $secondsInput)
          .onSubmit {
            if !isValidNumber(input: secondsInput) {
              secondsError = "Please enter a valid number"
            } else {
              secondsError = nil
            }
          }

        if let secondsError = secondsError {
          Text(secondsError)
            .foregroundColor(.red)
        }
      }

      Section("Start Burn In") {
        Text("Burn in \(burnTime)")
      }
    }
    .padding()
    .navigationSubtitle(Text("Burn In"))
  }

  func isValidNumber(input: String) -> Bool {
    let parsed = try? Float(input, format: .number)
    return parsed != nil
  }

  var burnTime: String {
    let invalidInput = "Input invalid"

    guard let seconds = try? Float(secondsInput, format: .number) else { return invalidInput }
    guard let minutes = try? Float(minutesInput, format: .number) else { return invalidInput }
    
    var input = ksp_tools_duration(seconds: seconds, minutes: minutes)
    var output = ksp_tools_duration()
    
    ksp_tools_burn_in(&input, &output)

    return "\(output.minutes) minutes \(output.seconds) seconds"
  }
}

struct BurnIn_Previews: PreviewProvider {
  static var previews: some View {
    BurnIn()
  }
}
