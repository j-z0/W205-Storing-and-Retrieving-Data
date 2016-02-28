CREATE EXTERNAL TABLE hospital_base (
ProviderID String,
HospitalName String,
Address String,
City String,
State String,
ZIPCode String,
CountyName String,
PhoneNumber String,
HospitalType String,
HospitalOwnership String,
EmergencyServices String
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"     = '"',
"escapeChar"    = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospitals';


CREATE EXTERNAL TABLE effective_base (
ProviderID String,
HospitalName String,
Address String,
City String,
State String,
ZIPCode String,
CountyName String,
PhoneNumber String,
Condition String,
MeasureID String,
MeasureName String,
Score Int,
Sample Int,
Footnote String,
MeasureStartDate String,
MeasureEndDate String
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"     = '"',
"escapeChar"    = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective';


CREATE EXTERNAL TABLE effective_state_base (
State String,
Condition String,
MeasureName String,
MeasureID String,
Score Int,
Footnote String,
MeasureStartDate String,
MeasureEndDate String
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"     = '"',
"escapeChar"    = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective_state';

CREATE EXTERNAL TABLE survey_base (
ProviderID String,
HospitalName String,
Address String,
City String,
State String,
ZIPCode String,
CountyName String,
Community1 String,
Community2 String,
Community3 String,
Community4 String,
Community5 String,
Community6 String,
Responsiveness1 String,
Responsiveness2 String,
Responsiveness3 String,
Pain1 String,
Pain2 String,
Pain3 String,
Communication1 String,
Communication2 String,
Communication3 String,
Cleanliness1 String,
Cleanliness2 String,
Cleanliness3 String,
Discharge1 String,
Discharge2 String,
Discharge3 String,
Overall1 String,
Overall2 String,
Overall3 String,
Subtotal1 Int,
Subtotal2 Int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"     = '"',
"escapeChar"    = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/survey';