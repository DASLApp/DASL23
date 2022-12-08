/*

Abstract:
Creates a common instance of the Phrases Classifier.
 The app only uses one instance anyway and using a static property initializes
 the model at launch instead of when the the main view loads.
*/

import CoreML

extension DASL_Household_items_model_1 {
    /// Creates a shared Exercise Classifier instance for the app at launch.
    static let shared: DASL_Household_items_model_1 = {
        // Use a default model configuration.
        let defaultConfig = MLModelConfiguration()

        // Create an Exercise Classifier instance.
        guard let DASL_Household_items_model_1 = try? DASL_Household_items_model_1(configuration: defaultConfig) else {
            // The app requires the action classifier to function.
            fatalError("Phrases Classifier failed to initialize.")
        }

        // Ensure the Exercise Classifier.Label cases match the model's classes.
        DASL_Household_items_model_1.checkLabels()

        return DASL_Household_items_model_1
    }()
}
