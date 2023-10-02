# Author: Guanxiong
# Build symbolic links from dataset/S<x>/<dir name>/ to data_a/...


declare -a filenames=(
    "moticon.txt"
    "sync.csv"
    "xsens.mvnx")

for subject_id in $(seq 10)
do
    for filename in ${filenames[@]}; do
        ln -s "/media/eric/data_a/dynamic_mocap/underpressure_data/S$subject_id/$filename" "dataset/S$subject_id/$filename"
    done
done