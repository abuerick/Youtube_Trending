#Youtube Raw data was downloaded from https://www.kaggle.com/datasets/datasnaek/youtube-new and placed into the Raw_data folder inside this project



#After creating my S3 bucket I'm uploading the raw files first into different folders, one for the json files and another for the csv files divided by the region the data is coming from

# To copy all JSON Reference data to same location:
aws s3 cp . s3://de-youtube-raw-dev/youtube/raw_statistics_reference_data/ --recursive --exclude "*" --include "*.json"



# Copying the csv files to a different partition depending of the region
aws s3 cp MXvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=mx/
aws s3 cp USvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=us/
aws s3 cp RUvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=ru/
aws s3 cp KRvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=kr/
aws s3 cp JPvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=jp/
aws s3 cp INvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=in/
aws s3 cp GBvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=gb/
aws s3 cp FRvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=fr/
aws s3 cp DEvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=de/
aws s3 cp CAvideos.csv s3://de-youtube-raw-dev/youtube/raw_statistics/region=ca/