Scripts for transformations

In this transformation step, I created the following tables from existing tables:

effective_transform: selected only the columns necessary to answer the questions at hand (ProviderID, HospitalName, MeasureName, Score), and excluded rows with no available score.

effective_state_transform: selected only the columns necessary to answer the questions at hand (State, MeasureName, MeasureID, Score), and excluded rows with no available score.

survey_transform: selected only the columns neccessary to answer the questions (ProviderID, HospitalName, TotalSurveyScore[aggregate of the two subtotal columns]), and excluded rows with no available score.
