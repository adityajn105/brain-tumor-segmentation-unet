
# create a directory
mkdir brain_tumor_dataset
cd brain_tumor_dataset

# download the dataset
wget -O temp.zip -q https://ndownloader.figshare.com/articles/1512427/versions/5

# unzip the dataset and delete the zip
unzip -q temp.zip && rm temp.zip

# concatenate the multiple zipped data in a single zip
cat brainTumorDataPublic_* > brainTumorDataPublic_temp.zip
zip -FF brainTumorDataPublic_temp.zip --out data.zip > progress.txt

# remove the temporary files
rm brainTumorDataPublic_*

# unzip the full archive and delete it 
unzip -q data.zip -d data && rm data.zip

# check that "data" contains 3064 files
ls data | wc -l