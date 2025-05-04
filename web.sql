--
-- Table structure for table `guild_emblems`
--

CREATE TABLE IF NOT EXISTS guild_emblems (
  world_name varchar(32) NOT NULL,
  guild_id integer NOT NULL,
  file_type varchar(255) NOT NULL,
  file_data bytea,
  version integer NOT NULL DEFAULT 0,
  PRIMARY KEY (world_name, guild_id)
);

--
-- Table structure for table `user_configs`
--

CREATE TABLE IF NOT EXISTS user_configs (
  world_name varchar(32) NOT NULL,
  account_id integer NOT NULL,
  data text NOT NULL,
  PRIMARY KEY (world_name, account_id)
);

--
-- Table structure for table `char_configs`
--

CREATE TABLE IF NOT EXISTS char_configs (
  world_name varchar(32) NOT NULL,
  account_id integer NOT NULL,
  char_id integer NOT NULL,
  data text NOT NULL,
  PRIMARY KEY (world_name, account_id, char_id)
);

--
-- Table structure for table `merchant_configs`
--

CREATE TABLE IF NOT EXISTS merchant_configs (
  world_name varchar(32) NOT NULL,
  account_id integer NOT NULL,
  char_id integer NOT NULL,
  store_type smallint NOT NULL DEFAULT 0,
  data text NOT NULL,
  PRIMARY KEY (world_name, account_id, char_id, store_type)
);
