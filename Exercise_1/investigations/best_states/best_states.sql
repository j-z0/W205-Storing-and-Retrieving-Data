SELECT State, AVG(Score) AS MeanStateScore, COUNT(Score) AS CountScore
FROM effective_state_transform
GROUP BY State
ORDER BY MeanStateScore DESC
LIMIT 10;

SELECT DISTINCT MeasureName
FROM effective_state_transform
WHERE Score > 100;

CREATE TABLE effective_state_analysis
AS SELECT *
FROM effective_state_transform
WHERE MeasureName <> 'OP 18'
AND MeasureName <> 'OP18 - Median time from emergency department arrival to emergency department departure for discharged emergency department patients'
AND MeasureName <> 'OP20 - Door to diagnostic evaluation by a qualified medical professional'
AND MeasureName <> 'ED1'
AND MeasureName <> 'ED1 - Median time from emergency department arrival to emergency department departure for admitted emergency department patients'
AND MeasureName <> 'ED2'
AND MeasureName <> 'ED2 - Admit decision time to emergency department departure time for admitted patient'
AND MeasureName <> 'Door to diagnostic eval'
AND MeasureName <> 'Incidence of potentially preventable VTE'
AND MeasureName <> 'Left before being seen'
AND MeasureName <> 'Median Time to ECG'
AND MeasureName <> 'Median Time to Fibrinolysis'
AND MeasureName <> 'Median time to pain med'
AND MeasureName <> 'Median Time to Transfer to Another Facility for Acute Coronary Intervention'
AND MeasureName <> 'Percent of newborns whose deliveries were scheduled early (1-3 weeks early), when a scheduled delivery was not medically necessary';

SELECT State, AVG(Score) AS MeanStateScore, VARIANCE(Score) AS VarianceStateScore, COUNT(Score) AS CountScore
FROM effective_state_analysis
GROUP BY State
ORDER BY MeanStateScore DESC
LIMIT 10;
