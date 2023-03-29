/*

Abstract:
Defines the app's knowledge of the model's class labels.
*/

extension ActionModel{
    /// Represents the app's knowledge of the Exercise Classifier model's labels.
    enum Label: String, CaseIterable {
        case COOKING = "Cooking"
        case CRY = "Cry"
        case DANCE = "Dance"
        case DRAW = "Draw"
        case DRINKING = "Drinking"
        case EATING = "Eating"
        case JUMP = "Jump"
        case LAUGHING = "Laughing"
        case PLAY = "Play"
        case RUN = "Read"
        case SLEEPING = "Sleeping"
        case STUDY = "Study"
        case WALK = "Walk"
        case WRITE = "Writes"


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
