select db.name, dbm.mirroring_partner_name, dbm.mirroring_witness_name from sys.sysdatabases db
join sys.database_mirroring dbm 
on db.dbid = dbm.database_id
where dbm.mirroring_role <>0
order by 1