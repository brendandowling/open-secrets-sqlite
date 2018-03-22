# open-secrets-sqlite
Scripts for importing OpenSecrets.org bulk lobbying disclosure data into SQLite, and for querying the data. 

Currently these scripts just work with the lobbying disclosure data.

To use this: 

1. Download the Open Screts Bulk Lobbying Data. (Lobby.zip)
2. Unzip in to the same directory as these scripts. 
3. Run the following command:
    $ ./import.sh | sqlite3 lobbying.db 
