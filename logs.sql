--
-- Table structure for table `atcommandlog`
--

CREATE TABLE IF NOT EXISTS atcommandlog (
  atcommand_id SERIAL,
  atcommand_date TIMESTAMP NOT NULL,
  account_id INTEGER NOT NULL DEFAULT 0,
  char_id INTEGER NOT NULL DEFAULT 0,
  char_name VARCHAR(25) NOT NULL DEFAULT '',
  map VARCHAR(11) NOT NULL DEFAULT '',
  command VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (atcommand_id)
);

CREATE INDEX atcommandlog_account_id_idx ON atcommandlog (account_id);
CREATE INDEX atcommandlog_char_id_idx ON atcommandlog (char_id);

--
-- Table structure for table `branchlog`
--

CREATE TABLE IF NOT EXISTS branchlog (
  branch_id SERIAL,
  branch_date TIMESTAMP NOT NULL,
  account_id INTEGER NOT NULL DEFAULT 0,
  char_id INTEGER NOT NULL DEFAULT 0,
  char_name VARCHAR(25) NOT NULL DEFAULT '',
  map VARCHAR(11) NOT NULL DEFAULT '',
  PRIMARY KEY (branch_id)
);

CREATE INDEX branchlog_account_id_idx ON branchlog (account_id);
CREATE INDEX branchlog_char_id_idx ON branchlog (char_id);

--
-- Table structure for table `cashlog`
--

CREATE TYPE cashlog_type AS ENUM ('T','V','P','M','S','N','D','C','A','E','I','B','$');
CREATE TYPE cashlog_cash_type AS ENUM ('O','K','C');

CREATE TABLE IF NOT EXISTS cashlog (
  id SERIAL,
  time TIMESTAMP NOT NULL,
  char_id INTEGER NOT NULL DEFAULT 0,
  type cashlog_type NOT NULL DEFAULT 'S',
  cash_type cashlog_cash_type NOT NULL DEFAULT 'O',
  amount INTEGER NOT NULL DEFAULT 0,
  map VARCHAR(11) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
);

CREATE INDEX cashlog_type_idx ON cashlog (type);

--
-- Table structure for table `chatlog`
--
# ChatLog types
# Gl(O)bal
# (W)hisper
# (P)arty
# (G)uild
# (M)ain chat
# (C)lan

CREATE TYPE chatlog_type AS ENUM ('O','W','P','G','M','C');

CREATE TABLE IF NOT EXISTS chatlog (
  id BIGSERIAL,
  time TIMESTAMP NOT NULL,
  type chatlog_type NOT NULL DEFAULT 'O',
  type_id INTEGER NOT NULL DEFAULT 0,
  src_charid INTEGER NOT NULL DEFAULT 0,
  src_accountid INTEGER NOT NULL DEFAULT 0,
  src_map VARCHAR(11) NOT NULL DEFAULT '',
  src_map_x SMALLINT NOT NULL DEFAULT 0,
  src_map_y SMALLINT NOT NULL DEFAULT 0,
  dst_charname VARCHAR(25) NOT NULL DEFAULT '',
  message VARCHAR(150) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
);

CREATE INDEX chatlog_src_accountid_idx ON chatlog (src_accountid);
CREATE INDEX chatlog_src_charid_idx ON chatlog (src_charid);

--
-- Table structure for table `feedinglog`
--

CREATE TYPE feedinglog_type AS ENUM ('P','H','O');

CREATE TABLE IF NOT EXISTS feedinglog (
  id SERIAL,
  time TIMESTAMP NOT NULL,
  char_id INTEGER NOT NULL,
  target_id INTEGER NOT NULL,
  target_class SMALLINT NOT NULL,
  type feedinglog_type NOT NULL,
  intimacy INTEGER NOT NULL,
  item_id INTEGER NOT NULL,
  map VARCHAR(11) NOT NULL,
  x SMALLINT NOT NULL,
  y SMALLINT NOT NULL,
  PRIMARY KEY (id)
);

--
-- Table structure for table `loginlog`
--

CREATE TABLE IF NOT EXISTS loginlog (
  time TIMESTAMP NOT NULL,
  ip VARCHAR(15) NOT NULL DEFAULT '',
  user VARCHAR(23) NOT NULL DEFAULT '',
  rcode SMALLINT NOT NULL DEFAULT 0,
  log VARCHAR(255) NOT NULL DEFAULT ''
);

CREATE INDEX loginlog_ip_idx ON loginlog (ip);

--
-- Table structure for table `mvplog`
--

CREATE TABLE IF NOT EXISTS mvplog (
  mvp_id SERIAL,
  mvp_date TIMESTAMP NOT NULL,
  kill_char_id INTEGER NOT NULL DEFAULT 0,
  monster_id SMALLINT NOT NULL DEFAULT 0,
  prize INTEGER NOT NULL DEFAULT 0,
  mvpexp BIGINT NOT NULL DEFAULT 0,
  map VARCHAR(11) NOT NULL DEFAULT '',
  PRIMARY KEY (mvp_id)
);

--
-- Table structure for table `npclog`
--

CREATE TABLE IF NOT EXISTS npclog (
  npc_id SERIAL,
  npc_date TIMESTAMP NOT NULL,
  account_id INTEGER NOT NULL DEFAULT 0,
  char_id INTEGER NOT NULL DEFAULT 0,
  char_name VARCHAR(25) NOT NULL DEFAULT '',
  map VARCHAR(11) NOT NULL DEFAULT '',
  mes VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (npc_id)
);

CREATE INDEX npclog_account_id_idx ON npclog (account_id);
CREATE INDEX npclog_char_id_idx ON npclog (char_id);

--
-- Table structure for table `picklog`
--
# PickLog types
# (M)onsters Drop
# (P)layers Drop/Take
# Mobs Drop (L)oot Drop/Take
# Players (T)rade Give/Take
# Players (V)ending Sell/Take
# (S)hop Sell/Take
# (N)PC Give/Take
# (C)onsumable Items
# (A)dministrators Create/Delete
# Sto(R)age
# (G)uild Storage
# (E)mail attachment
# (B)uying Store
# Pr(O)duced Items/Ingredients
# Auct(I)oned Items
# (X) Other
# (D) Stolen from mobs
# (U) MVP Prizes
# ($) Cash
# (F) Guild/Party Bound retrieval
# Lotter(Y)
# (Z) Merged Items
# (Q)uest
# Private Airs(H)ip
# Barter Shop (J)
# Laphine systems (W)
# Enchantgrade UI (0)
# Reform UI (1)
# Enchant UI (2)

CREATE TYPE picklog_type AS ENUM ('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U','$','F','Y','Z','Q','H','J','W','0','1','2','3');

CREATE TABLE IF NOT EXISTS picklog (
  id SERIAL,
  time TIMESTAMP NOT NULL,
  char_id INTEGER NOT NULL DEFAULT 0,
  type picklog_type NOT NULL DEFAULT 'P',
  nameid INTEGER NOT NULL DEFAULT 0,
  amount INTEGER NOT NULL DEFAULT 1,
  refine SMALLINT NOT NULL DEFAULT 0,
  card0 INTEGER NOT NULL DEFAULT 0,
  card1 INTEGER NOT NULL DEFAULT 0,
  card2 INTEGER NOT NULL DEFAULT 0,
  card3 INTEGER NOT NULL DEFAULT 0,
  option_id0 SMALLINT NOT NULL DEFAULT 0,
  option_val0 SMALLINT NOT NULL DEFAULT 0,
  option_parm0 SMALLINT NOT NULL DEFAULT 0,
  option_id1 SMALLINT NOT NULL DEFAULT 0,
  option_val1 SMALLINT NOT NULL DEFAULT 0,
  option_parm1 SMALLINT NOT NULL DEFAULT 0,
  option_id2 SMALLINT NOT NULL DEFAULT 0,
  option_val2 SMALLINT NOT NULL DEFAULT 0,
  option_parm2 SMALLINT NOT NULL DEFAULT 0,
  option_id3 SMALLINT NOT NULL DEFAULT 0,
  option_val3 SMALLINT NOT NULL DEFAULT 0,
  option_parm3 SMALLINT NOT NULL DEFAULT 0,
  option_id4 SMALLINT NOT NULL DEFAULT 0,
  option_val4 SMALLINT NOT NULL DEFAULT 0,
  option_parm4 SMALLINT NOT NULL DEFAULT 0,
  unique_id BIGINT NOT NULL DEFAULT 0,
  map VARCHAR(11) NOT NULL DEFAULT '',
  bound SMALLINT NOT NULL DEFAULT 0,
  enchantgrade SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
);

CREATE INDEX picklog_type_idx ON picklog (type);

--
-- Table structure for table `zenylog`
--
# ZenyLog types
# (T)rade
# (V)ending Sell/Buy
# (P)layers Drop/Take
# (M)onsters
# (S)hop Sell/Buy
# (N)PC Change amount
# (D) Stolen from mobs
# (C)onsumable Items
# (A)dministrators
# (E)Mail
# Auct(I)on
# (B)uying Store
# Ban(K) Transactions
# Barter Shop (J)
# (X) Other
# Enchantgrade UI (0)
# Enchant UI (2)

CREATE TYPE zenylog_type AS ENUM ('T','V','P','M','S','N','D','C','A','E','I','B','K','J','X','0','2');

CREATE TABLE IF NOT EXISTS zenylog (
  id SERIAL,
  time TIMESTAMP NOT NULL,
  char_id INTEGER NOT NULL DEFAULT 0,
  src_id INTEGER NOT NULL DEFAULT 0,
  type zenylog_type NOT NULL DEFAULT 'S',
  amount INTEGER NOT NULL DEFAULT 0,
  map VARCHAR(11) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
);

CREATE INDEX zenylog_type_idx ON zenylog (type);
