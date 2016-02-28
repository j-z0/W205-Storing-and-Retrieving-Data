CREATE TABLE hospital_var_analysis
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

SELECT MeasureName, AVG(Score) as MeanMeasureScore, VARIANCE(Score) AS VarianceMeasureScore
FROM hospital_var_analysis
GROUP BY MeasureName
ORDER BY VarianceMeasureScore DESC
LIMIT 10;