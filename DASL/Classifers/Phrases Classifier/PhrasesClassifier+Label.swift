/*

Abstract:
Defines the app's knowledge of the model's class labels.
*/

extension DASL_phrases_model_1 {
    /// Represents the app's knowledge of the Exercise Classifier model's labels.
    enum Label: String, CaseIterable {
        case BAD = "BAD"
        case BUT = "BUT"
        case CAN = "CAN"
        case HELLO = "HELLO"
        case HERE = "HERE"
        case ILoveYou = "I Love You"
        case NO = "NO"
        case PLEASE = "PLEASE"
        case TELL = "TELL"
        case WHEN = "WHEN"

//        /// A negative class that represents irrelevant actions.
//        case otherAction = "Other Action"

        /// Creates a label from a string.
        /// - Parameter label: The name of an action class.
        init(_ string: String) {
            guard let label = Label(rawValue: string) else {
                let typeName = String(reflecting: Label.self)
                fatalError("Add the `\(string)` label to the `\(typeName)` type.")
            }

            self = label
        }
    }
}
