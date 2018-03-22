DROP INDEX IF EXISTS lobbying_uniqid;
CREATE INDEX lobbying_uniqid ON lobbying (uniqid);

DROP INDEX IF EXISTS lobbyists_uniqid;
CREATE INDEX lobbyists_uniqid ON lobbyists (uniqid);

DROP INDEX IF EXISTS agencies_uniqid;
CREATE INDEX agencies_uniqid ON agencies (uniqid);

DROP INDEX IF EXISTS issues_uniqid;
CREATE INDEX issues_uniqid ON issues (uniqid);

DROP INDEX IF EXISTS issues_si_id;
CREATE INDEX issues_si_id ON issues (si_id);

DROP INDEX IF EXISTS bills_si_id;
CREATE INDEX bills_si_id ON bills (si_id);
