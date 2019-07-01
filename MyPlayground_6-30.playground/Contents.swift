import UIKit

// Input/Output clases
class OutputLabel {
    var text: String? = "Label"
}

class InputClass {
    var text: String?
    
    init(withInput input: String?) {
        text = input
    }
}

// Initializing inputs and output
let outputLabel = OutputLabel()
let userInput = InputClass(withInput: "42")
let userInput2 = InputClass(withInput: "6")

// Initial output state
print(outputLabel.text!)

// Button press action
func buttonPressed() {
    // Add code to be done when a button is "pressed"
    outputLabel.text = String((Int(userInput.text!)! / Int(userInput2.text!)!))
}

// "Pressing" the button
buttonPressed()


// Verifying results
print(outputLabel.text!)
