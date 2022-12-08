/*

Abstract:
Defines the app's knowledge of the model's class labels.
*/

extension DASL_Household_items_model_1 {
    /// Represents the app's knowledge of the Exercise Classifier model's labels.
    enum Label: String, CaseIterable {
        case BATH = "Bath"
        case CHAIR = "Chair"
        case CLOCK = "Clock"
        case CLOSET = "Closet"
        case COUCH = "Couch"
        case GARBAGE = "Garbage"
        case TABLE = "Table"
        case TOOTHPASTE = "Toothpaste"
        case UMBRELLA = "Umbrella"

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
