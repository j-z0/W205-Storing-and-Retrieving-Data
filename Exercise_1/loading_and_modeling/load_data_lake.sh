su - w205

git clone https://github.com/Jackanator/W205-Storing-and-Retrieving-Data.git

cd W205-Storing-and-Retrieving-Data/Exercise_1/loading_and_modeling



cat Timely.and.Effective.Care.-.Hospital1.csv Timely.and.Effective.Care.-.Hospital2.csv Timely.and.Effective.Care.-.Hospital3.csv > Timely.and.Effective.Care.-.Hospital.csv



tail -n +2 Timely.and.Effective.Care.-.Hospital.csv > effective.csv

tail -n +2 Timely.and.Effective.Care.-.State.csv > effective_state.csv

tail -n +2 Hospital.General.Information.csv > hospitals.csv

tail -n +2 hvbp_hcahps_05_28_2015.csv > survey.csv


hdfs dfs -mkdir /user/w205/hospital_compare/effective

hdfs dfs -mkdir /user/w205/hospital_compare/effective_state

hdfs dfs -mkdir /user/w205/hospital_compare/hospitals

hdfs dfs -mkdir /user/w205/hospital_compare/survey


hdfs dfs -put effective.csv /user/w205/hospital_compare/effective

hdfs dfs -put effective_state.csv /user/w205/hospital_compare/effective_state

hdfs dfs -put hospitals.csv /user/w205/hospital_compare/hospitals

hdfs dfs -put survey.csv /user/w205/hospital_compare/survey





