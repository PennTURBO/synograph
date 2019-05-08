ssh -i secretkey secretuser@secrethost

```
$ sudo su - postgres
$ screen
$ psql mimicomop
psql (11.2 (Ubuntu 11.2-1.pgdg18.04+1))

mimicomop=# \dn
      List of schemas
     Name      |   Owner
---------------+-----------
 cdm_synthea10 | mimicuser
 mimiciii      | mimicuser
 native        | mimicuser
 omop          | mimicuser
 pcori_cdmv3   | mimicuser
 public        | postgres
 synpuf_native | mimicuser
(7 rows)

$ pg_basebackup -D /dumphere/mimicomop_baseback -Ft -R -Xs -z -P -v -w
pg_basebackup: initiating base backup, waiting for checkpoint to complete
pg_basebackup: checkpoint completed
pg_basebackup: write-ahead log start point: 3A/F000028 on timeline 1
pg_basebackup: starting background WAL receiver
pg_basebackup: created temporary replication slot "pg_basebackup_1171"
82849868/82849868 kB (100%), 1/1 tablespace
pg_basebackup: write-ahead log end point: 3A/F000130
pg_basebackup: waiting for background process to finish streaming ...
pg_basebackup: base backup completed

$ sudo ls -lh /dumphere/mimicomop_baseback/
total 16G
-rw------- 1 postgres postgres 16G May  8 18:23 base.tar.gz
-rw------- 1 postgres postgres 18K May  8 18:23 pg_wal.tar.gz

$ sudo stat /dumphere/mimicomop_baseback/base.tar.gz
  File: /dumphere/mimicomop_baseback/base.tar.gz
  Size: 16919910656     Blocks: 33046712   IO Block: 4096   regular file
Device: 10303h/66307d   Inode: 7864322     Links: 1
Access: (0600/-rw-------)  Uid: (  111/postgres)   Gid: (  116/postgres)
Access: 2019-05-08 17:37:44.051986448 +0000
Modify: 2019-05-08 18:23:46.217363415 +0000
Change: 2019-05-08 18:23:46.217363415 +0000
 Birth: -
$
```

