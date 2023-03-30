#!/bin/bash

./bin/ycsb -cp rocksdb_binding/rocksdbjni-cvqf.jar load rocksdb -P workloads/workloada -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/0330 -p threadcount=8 -p rocksdb.optionsfile=./rocksdb_options/option0.ini
#./bin/ycsb -cp rocksdb_binding/rocksdbjni-6.1.2-linux64.jar load rocksdb -P workloads/workloada -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/1208 
#./bin/ycsb -cp rocksdb_binding/rocksdbjni-6.1.2-linux64.jar run rocksdb -P workloads/workloada -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/1129_2 -p threadcount=8 -p rocksdb.optionsfile=./rocksdb_options/option0.ini
