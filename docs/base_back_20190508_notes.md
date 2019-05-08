- ssh -i <secretkey> <secretuser>@<secrethost>
- sudo su - postgres
- screen

```
postgres@ip-172-31-88-67:/home/ubuntu$ pg_basebackup -D /dumphere/mimicomop_baseback -Ft -R -Xs -z -P -v -w
pg_basebackup: initiating base backup, waiting for checkpoint to complete
pg_basebackup: checkpoint completed
pg_basebackup: write-ahead log start point: 3A/F000028 on timeline 1
pg_basebackup: starting background WAL receiver
pg_basebackup: created temporary replication slot "pg_basebackup_1171"
 4216679/82849858 kB (5%), 0/1 tablespace (...e/mimicomop_baseback/base.tar.gz)
```
Will probaly run for less than one hour and use ~ 20 GB
