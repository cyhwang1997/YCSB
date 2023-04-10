#!/bin/bash

#./bin/ycsb -cp rocksdb_binding/rocksdbjni-test0410.jar load rocksdb -P workloads/workloadcy -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/0410_1 -p threadcount=8 -p rocksdb.optionsfile=./rocksdb_options/option0.ini 
#./bin/ycsb -cp rocksdb_binding/rocksdbjni-test0410.jar run rocksdb -P workloads/workloadcy -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/0410_1 -p threadcount=8 -p rocksdb.optionsfile=./rocksdb_options/option1.ini
#./bin/ycsb -cp rocksdb_binding/rocksdbjni-test.jar load rocksdb -P workloads/workloadcy -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/0410_nooption -p threadcount=8
./bin/ycsb -cp rocksdb_binding/rocksdbjni-test.jar run rocksdb -P workloads/workloadcy -p rocksdb.dir=/home/cyhwang/rocksdb_filter_test/ycsb/0410_nooption -p threadcount=8
