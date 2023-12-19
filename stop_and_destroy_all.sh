#! /bin//bash
YB_PATH_BASE=/home/gitpod/yugabyte/var

echo "Destroying nodes..."
tot_num_nodes=3

for (( n=1; n<=$tot_num_nodes; n++ ))
do
  yugabyted destroy --base_dir=$YB_PATH_BASE/node$n > /dev/null &
done