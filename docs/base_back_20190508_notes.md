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
44422629/82849858 kB (53%), 0/1 tablespace (...e/mimicomop_baseback/base.tar.gz)
```

seperate terminal:

```
ubuntu@ip-172-31-88-67:~$ sudo du -sh /dumphere/
8.6G    /dumphere/
```

Will probaly run for less than one hour and use ~ 17 GB
