DROP TABLE IF EXISTS lobbying;
CREATE TABLE lobbying(
	uniqid          ,
	registrant_raw  ,
	registrant      ,
	isfirm          ,
	client_raw      ,
	client          ,
	ultorg          ,
	amount          ,
	catcode         ,
	source          ,
	self            ,
	includensfs     ,
	use             ,
	ind             ,
	year            ,
	type            ,
	typelong        ,
	affiliate       
);
DROP TABLE IF EXISTS lobbyists;
CREATE TABLE lobbyists(
	uniqid          ,
	lobbyist_raw    ,
	lobbyist        ,
	lobbyist_id     ,
	year            ,
	officialposition,
	cid             ,
	formercongmem   
);
DROP TABLE IF EXISTS industries;
CREATE TABLE industries(
	client          ,
	sub             ,
	total           ,
	year            ,
	catcode
);
DROP TABLE IF EXISTS agencies;
CREATE TABLE agencies(
	uniqid          ,
	agencyid        ,
	agency
);
DROP TABLE IF EXISTS issues;
CREATE TABLE issues(
	si_id           ,
	uniqid          ,
	issueid         ,
	issue           ,
	specificissue   ,
	year
);
DROP TABLE IF EXISTS bills;
CREATE TABLE bills(
	b_id            ,
	si_id           ,
	congno          ,
	bill_name
);

DROP TABLE IF EXISTS reporttypes;
CREATE TABLE reporttypes(
	typelong	,
	type
);

