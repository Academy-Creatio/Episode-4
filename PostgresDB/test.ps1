
# STEP 1 - CREATE DATABASE
$dbName = "creatio_bndl"
$psqlCmd = "docker exec -it postgresdb_db_1 psql -U Supervisor postgres -c `"CREATE DATABASE ${dbName} ENCODING='UTF8' CONNECTION LIMIT=-1 `"";
# Invoke-Expression $psqlCmd;

# STEP 2 - RESTORE DATABASE
$psqlCmd = "docker exec -it postgresdb_db_1 pg_restore -U Supervisor --no-owner --no-privilege -d ${dbName} /usr/local/db/BPMonline7174SalesEnterprise_Marketing_ServiceEnterprise.backup";
Invoke-Expression $psqlCmd;
