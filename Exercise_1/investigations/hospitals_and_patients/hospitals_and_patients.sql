CREATE TABLE hospital_and_survey
AS SELECT survey_transform.ProviderID, survey_transform.HospitalName, survey_transform.TotalSurveyScore, effective_count.MeanHospitalScore, effective_count.VarianceHospitalScore
FROM survey_transform
LEFT JOIN effective_count
ON survey_transform.ProviderID = effective_count.ProviderID
ORDER BY survey_transform.ProviderID;

SELECT CORR(TotalSurveyScore, MeanHospitalScore) AS Survey_Mean_Correlation 
FROM hospital_and_survey;

SELECT CORR(TotalSurveyScore, VarianceHospitalScore) AS Survey_Variance_Correlation 
FROM hospital_and_survey;

