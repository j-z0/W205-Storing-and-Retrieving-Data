SELECT ProviderID, HospitalName, AVG(Score) AS MeanHospitalScore, COUNT(Score) AS CountScore
FROM effective_transform
GROUP BY ProviderID, HospitalName
ORDER BY MeanHospitalScore DESC
LIMIT 10;

SELECT DISTINCT MeasureName
FROM effective_transform
WHERE Score > 100;

CREATE TABLE effective_analysis
AS SELECT *
FROM effective_transform
WHERE MeasureName <> 'OP 18'
AND MeasureName <> 'ED1'
AND MeasureName <> 'ED2'
AND MeasureName <> 'Door to diagnostic eval'
AND MeasureName <> 'Emergency department volume' 
AND MeasureName <> 'Incidence of potentially preventable VTE'
AND MeasureName <> 'Left before being seen'
AND MeasureName <> 'Median Time to ECG'
AND MeasureName <> 'Median Time to Fibrinolysis'
AND MeasureName <> 'Median time to pain med'
AND MeasureName <> 'Median Time to Transfer to Another Facility for Acute Coronary Intervention'
AND MeasureName <> 'Percent of newborns whose deliveries were scheduled early (1-3 weeks early), when a scheduled delivery was not medically necessary';

SELECT ProviderID, HospitalName, AVG(Score) AS MeanHospitalScore, COUNT(Score) AS CountScore
FROM effective_analysis
GROUP BY ProviderID, HospitalName
ORDER BY MeanHospitalScore DESC
LIMIT 10;

CREATE TABLE effective_count
AS SELECT ProviderID, HospitalName, AVG(Score) AS MeanHospitalScore, VARIANCE(Score) AS VarianceHospitalScore, COUNT(Score) AS CountScore
FROM effective_analysis
GROUP BY ProviderID, HospitalName
ORDER BY MeanHospitalScore DESC;

SELECT * FROM effective_count
WHERE CountScore >= 10
LIMIT 10;