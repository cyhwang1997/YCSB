# YCSB
This is a fork of [YCSB](https://github.com/brianfrankcooper/YCSB).  
It is changed to work on rocksdb binding with filter option on.  
It uses rocksdb version 6.1.2.

## Changes
file path: rocksdb/src/main/java/site/ycsb/db/rocksdb/RocksDBClient.java  

### set Options
funtion name : initRocksDB()  

#### For Load
if(cfDescriptors.isEmpty())    
- - -
| Option | Code |
|---|---|
|filter\_policy|setTableFormatConfig(new BlockBasedTableConfig().setFilterPolicy(new BloomFilter(10)))|
|stats\_dump\_period\_sec|setStatsDumpPeriodSec|
|max\_background\_jobs|setMaxBackgroundJobs|

#### For Run
for(final String cfName : cfNames)  
- - -
| Option | Code |
|---|---|
|filter\_policy|cfOptions.setTableFormatConfig(new BlockBasedTableConfig().SetFilter(new BloomFilter(20, false)))|
|report\_bg\_io\_stats|ccfOptions.setReportBgIoStats(true)|


### Print Statistics
function name : initRocksDB()  
Both in if(cfDescriptors.isEmpty()) and else  
setStatistics(new Statistics()) - sets statistics  
<br>
function name : cleanup()  
In cleanup, it prints the statistics.  
In load, options is defined as an Options object, and in run, options is decined as a DBOptions object.  
#### For load
This should be commented out when doing run.  
```java
final Options options = (Options)dbOptions;
final Statistics st = options.statistics();
System.out.println(st);
```
#### For run
This should be commented out when doing load.  
```java
final DBOptions dboptions = (DBOptions)dbOptions;
final Statistics dbst = dboptions.statistics();
System.out.println(dbst);
```
