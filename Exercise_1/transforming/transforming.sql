CREATE TABLE effective_transform 
AS SELECT ProviderID, HospitalName, MeasureName, Score
FROM effective_base
WHERE Score <> 'Not Available';

CREATE TABLE effective_state_transform
AS SELECT State, MeasureName, MeasureID, Score
FROM effective_state_base
WHERE Score <> 'Not Available';

CREATE TABLE survey_transform
AS SELECT ProviderID, HospitalName, (Subtotal1 + Subtotal2) as TotalSurveyScore
FROM survey_base
WHERE Subtotal1 <> 'Not Available';
	