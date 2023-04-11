#!/bin/bash

#./bin/ycsb -cp rocksdb_binding/rocksdbjni-test.jar load rocksdb -P workloads/workloadcy -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/0411 -p threadcount=8 -p rocksdb.optionsfile=./rocksdb_options/option0.ini 
#./bin/ycsb -cp rocksdb_binding/rocksdbjni-test.jar run rocksdb -P workloads/workloadcy -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/0411 -p threadcount=8 -p rocksdb.optionsfile=./rocksdb_options/option1.ini
#./bin/ycsb -cp rocksdb_binding/rocksdbjni-test.jar load rocksdb -P workloads/workloadcy -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/0411_nooption -p threadcount=8
./bin/ycsb -cp rocksdb_binding/rocksdbjni-test.jar run rocksdb -P workloads/workloadcy -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/0411_nooption -p threadcount=8
