--
-- Table structure for table `acc_reg_num`
--

CREATE TABLE IF NOT EXISTS acc_reg_num (
  account_id INTEGER NOT NULL DEFAULT 0,
  key VARCHAR(32) NOT NULL DEFAULT '',
  index INTEGER NOT NULL DEFAULT 0,
  value BIGINT NOT NULL DEFAULT 0,
  PRIMARY KEY (account_id, key, index)
);

CREATE INDEX acc_reg_num_account_id_idx ON acc_reg_num (account_id);

--
-- Table structure for table `acc_reg_str`
--

CREATE TABLE IF NOT EXISTS acc_reg_str (
  account_id INTEGER NOT NULL DEFAULT 0,
  key VARCHAR(32) NOT NULL DEFAULT '',
  index INTEGER NOT NULL DEFAULT 0,
  value VARCHAR(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (account_id, key, index)
);

CREATE INDEX acc_reg_str_account_id_idx ON acc_reg_str (account_id);

--
-- Table structure for table `achievement`
--

CREATE TABLE IF NOT EXISTS achievement (
  char_id INTEGER NOT NULL DEFAULT 0,
  id BIGINT NOT NULL,
  count1 INTEGER NOT NULL DEFAULT 0,
  count2 INTEGER NOT NULL DEFAULT 0,
  count3 INTEGER NOT NULL DEFAULT 0,
  count4 INTEGER NOT NULL DEFAULT 0,
  count5 INTEGER NOT NULL DEFAULT 0,
  count6 INTEGER NOT NULL DEFAULT 0,
  count7 INTEGER NOT NULL DEFAULT 0,
  count8 INTEGER NOT NULL DEFAULT 0,
  count9 INTEGER NOT NULL DEFAULT 0,
  count10 INTEGER NOT NULL DEFAULT 0,
  completed TIMESTAMP,
  rewarded TIMESTAMP,
  PRIMARY KEY (char_id, id)
);

CREATE INDEX achievement_char_id_idx ON achievement (char_id);

--
-- Table structure for table `auction`
--

CREATE TABLE IF NOT EXISTS auction (
  auction_id BIGSERIAL PRIMARY KEY,
  seller_id INTEGER NOT NULL DEFAULT 0,
  seller_name VARCHAR(30) NOT NULL DEFAULT '',
  buyer_id INTEGER NOT NULL DEFAULT 0,
  buyer_name VARCHAR(30) NOT NULL DEFAULT '',
  price INTEGER NOT NULL DEFAULT 0,
  buynow INTEGER NOT NULL DEFAULT 0,
  hours SMALLINT NOT NULL DEFAULT 0,
  timestamp INTEGER NOT NULL DEFAULT 0,
  nameid INTEGER NOT NULL DEFAULT 0,
  item_name VARCHAR(50) NOT NULL DEFAULT '',
  type SMALLINT NOT NULL DEFAULT 0,
  refine SMALLINT NOT NULL DEFAULT 0,
  attribute SMALLINT NOT NULL DEFAULT 0,
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
  enchantgrade SMALLINT NOT NULL DEFAULT 0
);

--
-- Table `barter` for barter shop persistency
--

CREATE TABLE IF NOT EXISTS barter (
  name VARCHAR(50) NOT NULL DEFAULT '',
  index SMALLINT NOT NULL,
  amount SMALLINT NOT NULL,
  PRIMARY KEY (name, index)
);

--
-- Table structure for `db_roulette`
--

CREATE TABLE IF NOT EXISTS db_roulette (
  index INTEGER NOT NULL DEFAULT 0,
  level SMALLINT NOT NULL,
  item_id INTEGER NOT NULL,
  amount SMALLINT NOT NULL DEFAULT 1,
  flag SMALLINT NOT NULL DEFAULT 1,
  PRIMARY KEY (index)
);

--
-- Table structure for table `bonus_script`
--

CREATE TABLE IF NOT EXISTS bonus_script (
  char_id INTEGER NOT NULL,
  script TEXT NOT NULL,
  tick BIGINT NOT NULL DEFAULT 0,
  flag SMALLINT NOT NULL DEFAULT 0,
  type SMALLINT NOT NULL DEFAULT 0,
  icon SMALLINT NOT NULL DEFAULT -1
);

CREATE INDEX bonus_script_char_id_idx ON bonus_script (char_id);

--
-- Table structure for table `buyingstore_items`
--

CREATE TABLE IF NOT EXISTS buyingstore_items (
  buyingstore_id INTEGER NOT NULL,
  index SMALLINT NOT NULL,
  item_id INTEGER NOT NULL,
  amount SMALLINT NOT NULL,
  price INTEGER NOT NULL,
  PRIMARY KEY (buyingstore_id, index)
);

--
-- Table structure for table `buyingstores`
--

CREATE TABLE IF NOT EXISTS buyingstores (
  id INTEGER NOT NULL,
  account_id INTEGER NOT NULL,
  char_id INTEGER NOT NULL,
  sex CHAR(1) NOT NULL DEFAULT 'M',
  map VARCHAR(20) NOT NULL,
  x SMALLINT NOT NULL,
  y SMALLINT NOT NULL,
  title VARCHAR(80) NOT NULL,
  limit INTEGER NOT NULL,
  body_direction CHAR(1) NOT NULL DEFAULT '4',
  head_direction CHAR(1) NOT NULL DEFAULT '0',
  sit CHAR(1) NOT NULL DEFAULT '1',
  autotrade SMALLINT NOT NULL,
  PRIMARY KEY (id)
);

--
-- Table structure for table `cart_inventory`
--

CREATE TABLE IF NOT EXISTS cart_inventory (
  id SERIAL PRIMARY KEY,
  char_id INTEGER NOT NULL DEFAULT 0,
  nameid INTEGER NOT NULL DEFAULT 0,
  amount INTEGER NOT NULL DEFAULT 0,
  equip INTEGER NOT NULL DEFAULT 0,
  identify SMALLINT NOT NULL DEFAULT 0,
  refine SMALLINT NOT NULL DEFAULT 0,
  attribute SMALLINT NOT NULL DEFAULT 0,
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
  expire_time INTEGER NOT NULL DEFAULT 0,
  bound SMALLINT NOT NULL DEFAULT 0,
  unique_id BIGINT NOT NULL DEFAULT 0,
  enchantgrade SMALLINT NOT NULL DEFAULT 0
);

CREATE INDEX cart_inventory_char_id_idx ON cart_inventory (char_id);

--
-- Table structure for table `char`
--

CREATE TABLE IF NOT EXISTS char (
  char_id SERIAL PRIMARY KEY,
  account_id INTEGER NOT NULL DEFAULT 0,
  char_num SMALLINT NOT NULL DEFAULT 0,
  name VARCHAR(30) NOT NULL DEFAULT '',
  class SMALLINT NOT NULL DEFAULT 0,
  base_level SMALLINT NOT NULL DEFAULT 1,
  job_level SMALLINT NOT NULL DEFAULT 1,
  base_exp BIGINT NOT NULL DEFAULT 0,
  job_exp BIGINT NOT NULL DEFAULT 0,
  zeny INTEGER NOT NULL DEFAULT 0,
  str SMALLINT NOT NULL DEFAULT 0,
  agi SMALLINT NOT NULL DEFAULT 0,
  vit SMALLINT NOT NULL DEFAULT 0,
  int SMALLINT NOT NULL DEFAULT 0,
  dex SMALLINT NOT NULL DEFAULT 0,
  luk SMALLINT NOT NULL DEFAULT 0,
  pow SMALLINT NOT NULL DEFAULT 0,
  sta SMALLINT NOT NULL DEFAULT 0,
  wis SMALLINT NOT NULL DEFAULT 0,
  spl SMALLINT NOT NULL DEFAULT 0,
  con SMALLINT NOT NULL DEFAULT 0,
  crt SMALLINT NOT NULL DEFAULT 0,
  max_hp INTEGER NOT NULL DEFAULT 0,
  hp INTEGER NOT NULL DEFAULT 0,
  max_sp INTEGER NOT NULL DEFAULT 0,
  sp INTEGER NOT NULL DEFAULT 0,
  max_ap INTEGER NOT NULL DEFAULT 0,
  ap INTEGER NOT NULL DEFAULT 0,
  status_point INTEGER NOT NULL DEFAULT 0,
  skill_point INTEGER NOT NULL DEFAULT 0,
  trait_point INTEGER NOT NULL DEFAULT 0,
  option INTEGER NOT NULL DEFAULT 0,
  karma SMALLINT NOT NULL DEFAULT 0,
  manner SMALLINT NOT NULL DEFAULT 0,
  party_id INTEGER NOT NULL DEFAULT 0,
  guild_id INTEGER NOT NULL DEFAULT 0,
  pet_id INTEGER NOT NULL DEFAULT 0,
  homun_id INTEGER NOT NULL DEFAULT 0,
  elemental_id INTEGER NOT NULL DEFAULT 0,
  hair SMALLINT NOT NULL DEFAULT 0,
  hair_color SMALLINT NOT NULL DEFAULT 0,
  clothes_color SMALLINT NOT NULL DEFAULT 0,
  body SMALLINT NOT NULL DEFAULT 0,
  weapon SMALLINT NOT NULL DEFAULT 0,
  shield SMALLINT NOT NULL DEFAULT 0,
  head_top SMALLINT NOT NULL DEFAULT 0,
  head_mid SMALLINT NOT NULL DEFAULT 0,
  head_bottom SMALLINT NOT NULL DEFAULT 0,
  robe SMALLINT NOT NULL DEFAULT 0,
  last_map VARCHAR(11) NOT NULL DEFAULT '',
  last_x SMALLINT NOT NULL DEFAULT 53,
  last_y SMALLINT NOT NULL DEFAULT 111,
  last_instanceid INTEGER NOT NULL DEFAULT 0,
  save_map VARCHAR(11) NOT NULL DEFAULT '',
  save_x SMALLINT NOT NULL DEFAULT 53,
  save_y SMALLINT NOT NULL DEFAULT 111,
  partner_id INTEGER NOT NULL DEFAULT 0,
  online SMALLINT NOT NULL DEFAULT 0,
  father INTEGER NOT NULL DEFAULT 0,
  mother INTEGER NOT NULL DEFAULT 0,
  child INTEGER NOT NULL DEFAULT 0,
  fame INTEGER NOT NULL DEFAULT 0,
  rename SMALLINT NOT NULL DEFAULT 0,
  delete_date INTEGER NOT NULL DEFAULT 0,
  moves INTEGER NOT NULL DEFAULT 0,
  unban_time INTEGER NOT NULL DEFAULT 0,
  font SMALLINT NOT NULL DEFAULT 0,
  uniqueitem_counter INTEGER NOT NULL DEFAULT 0,
  sex CHAR(1) NOT NULL,
  hotkey_rowshift SMALLINT NOT NULL DEFAULT 0,
  hotkey_rowshift2 SMALLINT NOT NULL DEFAULT 0,
  clan_id INTEGER NOT NULL DEFAULT 0,
  last_login TIMESTAMP,
  title_id INTEGER NOT NULL DEFAULT 0,
  show_equip SMALLINT NOT NULL DEFAULT 0,
  inventory_slots SMALLINT NOT NULL DEFAULT 100,
  body_direction SMALLINT NOT NULL DEFAULT 0,
  disable_call SMALLINT NOT NULL DEFAULT 0,
  disable_partyinvite SMALLINT NOT NULL DEFAULT 0
);

CREATE UNIQUE INDEX char_name_key ON char (name);
CREATE INDEX char_account_id_idx ON char (account_id);
CREATE INDEX char_party_id_idx ON char (party_id);
CREATE INDEX char_guild_id_idx ON char (guild_id);
CREATE INDEX char_online_idx ON char (online);

--
-- Table structure for table `char_reg_num`
--

CREATE TABLE IF NOT EXISTS char_reg_num (
  char_id INTEGER NOT NULL DEFAULT 0,
  key VARCHAR(32) NOT NULL DEFAULT '',
  index INTEGER NOT NULL DEFAULT 0,
  value BIGINT NOT NULL DEFAULT 0,
  PRIMARY KEY (char_id, key, index)
);

CREATE INDEX char_reg_num_char_id_idx ON char_reg_num (char_id);

--
-- Table structure for table `char_reg_str`
--

CREATE TABLE IF NOT EXISTS char_reg_str (
  char_id INTEGER NOT NULL DEFAULT 0,
  key VARCHAR(32) NOT NULL DEFAULT '',
  index INTEGER NOT NULL DEFAULT 0,
  value VARCHAR(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (char_id, key, index)
);

CREATE INDEX char_reg_str_char_id_idx ON char_reg_str (char_id);

--
-- Table structure for table `charlog`
--

CREATE TABLE IF NOT EXISTS charlog (
  id BIGSERIAL PRIMARY KEY,
  time TIMESTAMP NOT NULL,
  char_msg VARCHAR(255) NOT NULL DEFAULT 'char select',
  account_id INTEGER NOT NULL DEFAULT 0,
  char_num SMALLINT NOT NULL DEFAULT 0,
  name VARCHAR(23) NOT NULL DEFAULT '',
  str INTEGER NOT NULL DEFAULT 0,
  agi INTEGER NOT NULL DEFAULT 0,
  vit INTEGER NOT NULL DEFAULT 0,
  int INTEGER NOT NULL DEFAULT 0,
  dex INTEGER NOT NULL DEFAULT 0,
  luk INTEGER NOT NULL DEFAULT 0,
  hair SMALLINT NOT NULL DEFAULT 0,
  hair_color INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX charlog_account_id_idx ON charlog (account_id);

--
-- Table structure for table `clan`
--

CREATE TABLE IF NOT EXISTS clan (
  clan_id SERIAL PRIMARY KEY,
  name VARCHAR(24) NOT NULL DEFAULT '',
  master VARCHAR(24) NOT NULL DEFAULT '',
  mapname VARCHAR(24) NOT NULL DEFAULT '',
  max_member SMALLINT NOT NULL DEFAULT 0
);

-- ----------------------------
-- Records of clan
-- ----------------------------

INSERT INTO clan (clan_id, name, master, mapname, max_member) VALUES 
(1, 'Swordman Clan', 'Raffam Oranpere', 'prontera', 500),
(2, 'Arcwand Clan', 'Devon Aire', 'geffen', 500),
(3, 'Golden Mace Clan', 'Berman Aire', 'prontera', 500),
(4, 'Crossbow Clan', 'Shaam Rumi', 'payon', 500);

--
-- Table structure for `clan_alliance`
--

CREATE TABLE IF NOT EXISTS clan_alliance (
  clan_id INTEGER NOT NULL DEFAULT 0,
  opposition INTEGER NOT NULL DEFAULT 0,
  alliance_id INTEGER NOT NULL DEFAULT 0,
  name VARCHAR(24) NOT NULL DEFAULT '',
  PRIMARY KEY (clan_id, alliance_id)
);

CREATE INDEX clan_alliance_alliance_id_idx ON clan_alliance (alliance_id);

-- ----------------------------
-- Records of clan_alliance
-- ----------------------------

INSERT INTO clan_alliance (clan_id, opposition, alliance_id, name) VALUES 
(1, 0, 3, 'Golden Mace Clan'),
(2, 0, 3, 'Golden Mace Clan'),
(2, 1, 4, 'Crossbow Clan'),
(3, 0, 1, 'Swordman Clan'),
(3, 0, 2, 'Arcwand Clan'),
(3, 0, 4, 'Crossbow Clan'),
(4, 0, 3, 'Golden Mace Clan'),
(4, 1, 2, 'Arcwand Clan');

--
-- Table structure for table `elemental`
--

CREATE TABLE IF NOT EXISTS elemental (
  ele_id SERIAL PRIMARY KEY,
  char_id INTEGER NOT NULL,
  class INTEGER NOT NULL DEFAULT 0,
  mode INTEGER NOT NULL DEFAULT 1,
  hp INTEGER NOT NULL DEFAULT 0,
  sp INTEGER NOT NULL DEFAULT 0,
  max_hp INTEGER NOT NULL DEFAULT 0,
  max_sp INTEGER NOT NULL DEFAULT 0,
  atk1 INTEGER NOT NULL DEFAULT 0,
  atk2 INTEGER NOT NULL DEFAULT 0,
  matk INTEGER NOT NULL DEFAULT 0,
  aspd SMALLINT NOT NULL DEFAULT 0,
  def SMALLINT NOT NULL DEFAULT 0,
  mdef SMALLINT NOT NULL DEFAULT 0,
  flee SMALLINT NOT NULL DEFAULT 0,
  hit SMALLINT NOT NULL DEFAULT 0,
  life_time BIGINT NOT NULL DEFAULT 0
);

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS friends (
  char_id INTEGER NOT NULL DEFAULT 0,
  friend_id INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (char_id, friend_id)
);

--
-- Table structure for table `global_acc_reg_num`
--

CREATE TABLE IF NOT EXISTS global_acc_reg_num (
  account_id INTEGER NOT NULL DEFAULT 0,
  key VARCHAR(32) NOT NULL DEFAULT '',
  index INTEGER NOT NULL DEFAULT 0,
  value BIGINT NOT NULL DEFAULT 0,
  PRIMARY KEY (account_id, key, index)
);

CREATE INDEX global_acc_reg_num_account_id_idx ON global_acc_reg_num (account_id);

--
-- Table structure for table `global_acc_reg_str`
--

CREATE TABLE IF NOT EXISTS global_acc_reg_str (
  account_id INTEGER NOT NULL DEFAULT 0,
  key VARCHAR(32) NOT NULL DEFAULT '',
  index INTEGER NOT NULL DEFAULT 0,
  value VARCHAR(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (account_id, key, index)
);

CREATE INDEX global_acc_reg_str_account_id_idx ON global_acc_reg_str (account_id);

--
-- Table structure for table `guild`
--

CREATE TABLE IF NOT EXISTS guild (
  guild_id SERIAL PRIMARY KEY,
  name VARCHAR(24) NOT NULL DEFAULT '',
  char_id INTEGER NOT NULL DEFAULT 0,
  master VARCHAR(24) NOT NULL DEFAULT '',
  guild_lv SMALLINT NOT NULL DEFAULT 0,
  connect_member SMALLINT NOT NULL DEFAULT 0,
  max_member SMALLINT NOT NULL DEFAULT 0,
  average_lv SMALLINT NOT NULL DEFAULT 1,
  exp BIGINT NOT NULL DEFAULT 0,
  next_exp BIGINT NOT NULL DEFAULT 0,
  skill_point SMALLINT NOT NULL DEFAULT 0,
  mes1 VARCHAR(60) NOT NULL DEFAULT '',
  mes2 VARCHAR(120) NOT NULL DEFAULT '',
  emblem_len INTEGER NOT NULL DEFAULT 0,
  emblem_id INTEGER NOT NULL DEFAULT 0,
  emblem_data BYTEA,
  last_master_change TIMESTAMP
);

CREATE INDEX guild_char_id_idx ON guild (char_id);

--
-- Table structure for table `guild_alliance`
--

CREATE TABLE IF NOT EXISTS guild_alliance (
  guild_id INTEGER NOT NULL DEFAULT 0,
  opposition INTEGER NOT NULL DEFAULT 0,
  alliance_id INTEGER NOT NULL DEFAULT 0,
  name VARCHAR(24) NOT NULL DEFAULT '',
  PRIMARY KEY (guild_id, alliance_id)
);

CREATE INDEX guild_alliance_alliance_id_idx ON guild_alliance (alliance_id);

--
-- Table structure for table `guild_castle`
--

CREATE TABLE IF NOT EXISTS guild_castle (
  castle_id INTEGER NOT NULL DEFAULT 0,
  guild_id INTEGER NOT NULL DEFAULT 0,
  economy INTEGER NOT NULL DEFAULT 0,
  defense INTEGER NOT NULL DEFAULT 0,
  triggerE INTEGER NOT NULL DEFAULT 0,
  triggerD INTEGER NOT NULL DEFAULT 0,
  nextTime INTEGER NOT NULL DEFAULT 0,
  payTime INTEGER NOT NULL DEFAULT 0,
  createTime INTEGER NOT NULL DEFAULT 0,
  visibleC INTEGER NOT NULL DEFAULT 0,
  visibleG0 INTEGER NOT NULL DEFAULT 0,
  visibleG1 INTEGER NOT NULL DEFAULT 0,
  visibleG2 INTEGER NOT NULL DEFAULT 0,
  visibleG3 INTEGER NOT NULL DEFAULT 0,
  visibleG4 INTEGER NOT NULL DEFAULT 0,
  visibleG5 INTEGER NOT NULL DEFAULT 0,
  visibleG6 INTEGER NOT NULL DEFAULT 0,
  visibleG7 INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (castle_id)
);

CREATE INDEX guild_castle_guild_id_idx ON guild_castle (guild_id);

--
-- Table structure for table `guild_expulsion`
--

CREATE TABLE IF NOT EXISTS guild_expulsion (
  guild_id INTEGER NOT NULL DEFAULT 0,
  account_id INTEGER NOT NULL DEFAULT 0,
  name VARCHAR(24) NOT NULL DEFAULT '',
  mes VARCHAR(40) NOT NULL DEFAULT '',
  char_id INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (guild_id, name)
);

--
-- Table structure for table `guild_member`
--

CREATE TABLE IF NOT EXISTS guild_member (
  guild_id INTEGER NOT NULL DEFAULT 0,
  char_id INTEGER NOT NULL DEFAULT 0,
  exp BIGINT NOT NULL DEFAULT 0,
  position SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (guild_id, char_id)
);

CREATE INDEX guild_member_char_id_idx ON guild_member (char_id);

--
-- Table structure for table `guild_position`
--

CREATE TABLE IF NOT EXISTS guild_position (
  guild_id INTEGER NOT NULL DEFAULT 0,
  position SMALLINT NOT NULL DEFAULT 0,
  name VARCHAR(24) NOT NULL DEFAULT '',
  mode SMALLINT NOT NULL DEFAULT 0,
  exp_mode SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (guild_id, position)
);

--
-- Table structure for table `guild_skill`
--

CREATE TABLE IF NOT EXISTS guild_skill (
  guild_id INTEGER NOT NULL DEFAULT 0,
  id SMALLINT NOT NULL DEFAULT 0,
  lv SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (guild_id, id)
);

--
-- Table structure for table `guild_storage`
--

CREATE TABLE IF NOT EXISTS guild_storage (
  id SERIAL PRIMARY KEY,
  guild_id INTEGER NOT NULL DEFAULT 0,
  nameid INTEGER NOT NULL DEFAULT 0,
  amount INTEGER NOT NULL DEFAULT 0,
  equip INTEGER NOT NULL DEFAULT 0,
  identify SMALLINT NOT NULL DEFAULT 0,
  refine SMALLINT NOT NULL DEFAULT 0,
  attribute SMALLINT NOT NULL DEFAULT 0,
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
  expire_time INTEGER NOT NULL DEFAULT 0,
  bound SMALLINT NOT NULL DEFAULT 0,
  unique_id BIGINT NOT NULL DEFAULT 0,
  enchantgrade SMALLINT NOT NULL DEFAULT 0
);

CREATE INDEX guild_storage_guild_id_idx ON guild_storage (guild_id);

--
-- Table structure for table `guild_storage_log`
--

CREATE TABLE IF NOT EXISTS guild_storage_log (
  id SERIAL PRIMARY KEY,
  guild_id INTEGER NOT NULL DEFAULT 0,
  time TIMESTAMP NOT NULL,
  char_id INTEGER NOT NULL DEFAULT 0,
  name VARCHAR(24) NOT NULL DEFAULT '',
  nameid INTEGER NOT NULL DEFAULT 0,
  amount INTEGER NOT NULL DEFAULT 1,
  identify SMALLINT NOT NULL DEFAULT 0,
  refine SMALLINT NOT NULL DEFAULT 0,
  attribute SMALLINT NOT NULL DEFAULT 0,
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
  expire_time INTEGER NOT NULL DEFAULT 0,
  unique_id BIGINT NOT NULL DEFAULT 0,
  bound SMALLINT NOT NULL DEFAULT 0,
  enchantgrade SMALLINT NOT NULL DEFAULT 0
);

CREATE INDEX guild_storage_log_guild_id_idx ON guild_storage_log (guild_id);

--
-- Table structure for table `homunculus`
--

CREATE TABLE IF NOT EXISTS homunculus (
  homun_id SERIAL PRIMARY KEY,
  char_id INTEGER NOT NULL,
  class INTEGER NOT NULL DEFAULT 0,
  prev_class INTEGER NOT NULL DEFAULT 0,
  name VARCHAR(24) NOT NULL DEFAULT '',
  level SMALLINT NOT NULL DEFAULT 0,
  exp BIGINT NOT NULL DEFAULT 0,
  intimacy INTEGER NOT NULL DEFAULT 0,
  hunger SMALLINT NOT NULL DEFAULT 0,
  str SMALLINT NOT NULL DEFAULT 0,
  agi SMALLINT NOT NULL DEFAULT 0,
  vit SMALLINT NOT NULL DEFAULT 0,
  int SMALLINT NOT NULL DEFAULT 0,
  dex SMALLINT NOT NULL DEFAULT 0,
  luk SMALLINT NOT NULL DEFAULT 0,
  hp INTEGER NOT NULL DEFAULT 0,
  max_hp INTEGER NOT NULL DEFAULT 0,
  sp INTEGER NOT NULL DEFAULT 0,
  max_sp INTEGER NOT NULL DEFAULT 0,
  skill_point SMALLINT NOT NULL DEFAULT 0,
  alive SMALLINT NOT NULL DEFAULT 1,
  rename_flag SMALLINT NOT NULL DEFAULT 0,
  vaporize SMALLINT NOT NULL DEFAULT 0,
  autofeed SMALLINT NOT NULL DEFAULT 0
);

--
-- Table structure for table `hotkey`
--

CREATE TABLE IF NOT EXISTS hotkey (
  char_id INTEGER NOT NULL,
  hotkey SMALLINT NOT NULL,
  type SMALLINT NOT NULL DEFAULT 0,
  itemskill_id INTEGER NOT NULL DEFAULT 0,
  skill_lvl SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (char_id, hotkey)
);

-- 
-- Table structure for table `interlog`
--

CREATE TABLE IF NOT EXISTS interlog (
  id SERIAL PRIMARY KEY,
  time TIMESTAMP NOT NULL,
  log VARCHAR(255) NOT NULL DEFAULT ''
);

CREATE INDEX interlog_time_idx ON interlog (time);

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS inventory (
  id SERIAL PRIMARY KEY,
  char_id INTEGER NOT NULL DEFAULT 0,
  nameid INTEGER NOT NULL DEFAULT 0,
  amount INTEGER NOT NULL DEFAULT 0,
  equip INTEGER NOT NULL DEFAULT 0,
  identify SMALLINT NOT NULL DEFAULT 0,
  refine SMALLINT NOT NULL DEFAULT 0,
  attribute SMALLINT NOT NULL DEFAULT 0,
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
  expire_time INTEGER NOT NULL DEFAULT 0,
  favorite SMALLINT NOT NULL DEFAULT 0,
  bound SMALLINT NOT NULL DEFAULT 0,
  unique_id BIGINT NOT NULL DEFAULT 0,
  equip_switch INTEGER NOT NULL DEFAULT 0,
  enchantgrade SMALLINT NOT NULL DEFAULT 0
);

CREATE INDEX inventory_char_id_idx ON inventory (char_id);

--
-- Table structure for table `ipbanlist`
--

CREATE TABLE IF NOT EXISTS ipbanlist (
  list VARCHAR(15) NOT NULL DEFAULT '',
  btime TIMESTAMP NOT NULL,
  rtime TIMESTAMP NOT NULL,
  reason VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (list, btime)
);

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS login (
  account_id SERIAL PRIMARY KEY,
  userid VARCHAR(23) NOT NULL DEFAULT '',
  user_pass VARCHAR(32) NOT NULL DEFAULT '',
  sex CHAR(1) NOT NULL DEFAULT 'M',
  email VARCHAR(39) NOT NULL DEFAULT '',
  group_id SMALLINT NOT NULL DEFAULT 0,
  state INTEGER NOT NULL DEFAULT 0,
  unban_time INTEGER NOT NULL DEFAULT 0,
  expiration_time INTEGER NOT NULL DEFAULT 0,
  logincount INTEGER NOT NULL DEFAULT 0,
  lastlogin TIMESTAMP,
  last_ip VARCHAR(100) NOT NULL DEFAULT '',
  birthdate DATE,
  character_slots SMALLINT NOT NULL DEFAULT 0,
  pincode VARCHAR(4) NOT NULL DEFAULT '',
  pincode_change INTEGER NOT NULL DEFAULT 0,
  vip_time INTEGER NOT NULL DEFAULT 0,
  old_group SMALLINT NOT NULL DEFAULT 0,
  web_auth_token VARCHAR(17),
  web_auth_token_enabled SMALLINT NOT NULL DEFAULT 0
);

CREATE INDEX login_name_idx ON login (userid);
CREATE UNIQUE INDEX login_web_auth_token_key ON login (web_auth_token);

-- added standard accounts for servers, VERY INSECURE!!!
-- inserted into the table called login which is above

INSERT INTO login (account_id, userid, user_pass, sex, email) VALUES (1, 's1', 'p1', 'S', 'athena@athena.com');

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS mail (
  id BIGSERIAL PRIMARY KEY,
  send_name VARCHAR(30) NOT NULL DEFAULT '',
  send_id INTEGER NOT NULL DEFAULT 0,
  dest_name VARCHAR(30) NOT NULL DEFAULT '',
  dest_id INTEGER NOT NULL DEFAULT 0,
  title VARCHAR(45) NOT NULL DEFAULT '',
  message VARCHAR(500) NOT NULL DEFAULT '',
  time INTEGER NOT NULL DEFAULT 0,
  status SMALLINT NOT NULL DEFAULT 0,
  zeny INTEGER NOT NULL DEFAULT 0,
  type SMALLINT NOT NULL DEFAULT 0
);

-- ----------------------------
-- Table structure for `mail_attachments`
-- ----------------------------

CREATE TABLE IF NOT EXISTS mail_attachments (
  id BIGSERIAL,
  index SMALLINT NOT NULL DEFAULT 0,
  nameid INTEGER NOT NULL DEFAULT 0,
  amount INTEGER NOT NULL DEFAULT 0,
  refine SMALLINT NOT NULL DEFAULT 0,
  attribute SMALLINT NOT NULL DEFAULT 0,
  identify SMALLINT NOT NULL DEFAULT 0,
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
  bound SMALLINT NOT NULL DEFAULT 0,
  enchantgrade SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (id, index)
);

--
-- Table structure for table `mapreg`
--

CREATE TABLE IF NOT EXISTS mapreg (
  varname VARCHAR(32) NOT NULL,
  index INTEGER NOT NULL DEFAULT 0,
  value VARCHAR(255) NOT NULL,
  PRIMARY KEY (varname, index)
);

--
-- Table `market` for market shop persistency
--

CREATE TABLE IF NOT EXISTS market (
  name VARCHAR(50) NOT NULL DEFAULT '',
  nameid INTEGER NOT NULL,
  price INTEGER NOT NULL,
  amount INTEGER NOT NULL,
  flag SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (name, nameid)
);

--
-- Table structure for table `memo`
--

CREATE TABLE IF NOT EXISTS memo (
  memo_id SERIAL PRIMARY KEY,
  char_id INTEGER NOT NULL DEFAULT 0,
  map VARCHAR(11) NOT NULL DEFAULT '',
  x SMALLINT NOT NULL DEFAULT 0,
  y SMALLINT NOT NULL DEFAULT 0
);

CREATE INDEX memo_char_id_idx ON memo (char_id);

--
-- Table structure for table `mercenary`
--

CREATE TABLE IF NOT EXISTS mercenary (
  mer_id SERIAL PRIMARY KEY,
  char_id INTEGER NOT NULL,
  class INTEGER NOT NULL DEFAULT 0,
  hp INTEGER NOT NULL DEFAULT 0,
  sp INTEGER NOT NULL DEFAULT 0,
  kill_counter INTEGER NOT NULL,
  life_time BIGINT NOT NULL DEFAULT 0
);

--
-- Table structure for table `mercenary_owner`
--

CREATE TABLE IF NOT EXISTS mercenary_owner (
  char_id INTEGER NOT NULL,
  merc_id INTEGER NOT NULL DEFAULT 0,
  arch_calls INTEGER NOT NULL DEFAULT 0,
  arch_faith INTEGER NOT NULL DEFAULT 0,
  spear_calls INTEGER NOT NULL DEFAULT 0,
  spear_faith INTEGER NOT NULL DEFAULT 0,
  sword_calls INTEGER NOT NULL DEFAULT 0,
  sword_faith INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (char_id)
);

-- ----------------------------
-- Table structure for `sales`
-- ----------------------------

CREATE TABLE IF NOT EXISTS sales (
  nameid INTEGER NOT NULL,
  start TIMESTAMP NOT NULL,
  end TIMESTAMP NOT NULL,
  amount INTEGER NOT NULL,
  PRIMARY KEY (nameid)
);

--
-- Table structure for table `sc_data`
--

CREATE TABLE IF NOT EXISTS sc_data (
  account_id INTEGER NOT NULL,
  char_id INTEGER NOT NULL,
  type SMALLINT NOT NULL,
  tick BIGINT NOT NULL,
  val1 INTEGER NOT NULL DEFAULT 0,
  val2 INTEGER NOT NULL DEFAULT 0,
  val3 INTEGER NOT NULL DEFAULT 0,
  val4 INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (char_id, type)
);

--
-- Table structure for table `skillcooldown`
--

CREATE TABLE IF NOT EXISTS skillcooldown (
  account_id INTEGER NOT NULL,
  char_id INTEGER NOT NULL,
  skill SMALLINT NOT NULL DEFAULT 0,
  tick BIGINT NOT NULL,
  PRIMARY KEY (char_id, skill)
);

--
-- Table structure for table `party`
--

CREATE TABLE IF NOT EXISTS party (
  party_id SERIAL PRIMARY KEY,
  name VARCHAR(24) NOT NULL DEFAULT '',
  exp SMALLINT NOT NULL DEFAULT 0,
  item SMALLINT NOT NULL DEFAULT 0,
  leader_id INTEGER NOT NULL DEFAULT 0,
  leader_char INTEGER NOT NULL DEFAULT 0
);

--
-- Table structure for table `party_bookings`
--

CREATE TABLE IF NOT EXISTS party_bookings (
  world_name VARCHAR(32) NOT NULL,
  account_id INTEGER NOT NULL,
  char_id INTEGER NOT NULL,
  char_name VARCHAR(23) NOT NULL,
  purpose SMALLINT NOT NULL DEFAULT 0,
  assist SMALLINT NOT NULL DEFAULT 0,
  damagedealer SMALLINT NOT NULL DEFAULT 0,
  healer SMALLINT NOT NULL DEFAULT 0,
  tanker SMALLINT NOT NULL DEFAULT 0,
  minimum_level SMALLINT NOT NULL,
  maximum_level SMALLINT NOT NULL,
  comment VARCHAR(255) NOT NULL DEFAULT '',
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (world_name, account_id, char_id)
);

--
-- Table structure for table `pet`
--

CREATE TABLE IF NOT EXISTS pet (
  pet_id SERIAL PRIMARY KEY,
  class INTEGER NOT NULL DEFAULT 0,
  name VARCHAR(24) NOT NULL DEFAULT '',
  account_id INTEGER NOT NULL DEFAULT 0,
  char_id INTEGER NOT NULL DEFAULT 0,
  level SMALLINT NOT NULL DEFAULT 0,
  egg_id INTEGER NOT NULL DEFAULT 0,
  equip INTEGER NOT NULL DEFAULT 0,
  intimate SMALLINT NOT NULL DEFAULT 0,
  hungry SMALLINT NOT NULL DEFAULT 0,
  rename_flag SMALLINT NOT NULL DEFAULT 0,
  incubate INTEGER NOT NULL DEFAULT 0,
  autofeed SMALLINT NOT NULL DEFAULT 0
);

--
-- Table structure for table `quest`
--

CREATE TABLE IF NOT EXISTS quest (
  char_id INTEGER NOT NULL DEFAULT 0,
  quest_id INTEGER NOT NULL,
  state CHAR(1) NOT NULL DEFAULT '0',
  time INTEGER NOT NULL DEFAULT 0,
  count1 INTEGER NOT NULL DEFAULT 0,
  count2 INTEGER NOT NULL DEFAULT 0,
  count3 INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (char_id, quest_id)
);

--
-- Table structure for table `skill`
--

CREATE TABLE IF NOT EXISTS skill (
  char_id INTEGER NOT NULL DEFAULT 0,
  id SMALLINT NOT NULL DEFAULT 0,
  lv SMALLINT NOT NULL DEFAULT 0,
  flag SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (char_id, id)
);

--
-- Table structure for table `skill_homunculus`
--

CREATE TABLE IF NOT EXISTS skill_homunculus (
  homun_id INTEGER NOT NULL,
  id INTEGER NOT NULL,
  lv SMALLINT NOT NULL,
  PRIMARY KEY (homun_id, id)
);

--
-- Table structure for table `skillcooldown_homunculus`
--

CREATE TABLE IF NOT EXISTS skillcooldown_homunculus (
  homun_id INTEGER NOT NULL,
  skill SMALLINT NOT NULL DEFAULT 0,
  tick BIGINT NOT NULL,
  PRIMARY KEY (homun_id, skill)
);

--
-- Table structure for table `skillcooldown_mercenary`
--

CREATE TABLE IF NOT EXISTS skillcooldown_mercenary (
  mer_id INTEGER NOT NULL,
  skill SMALLINT NOT NULL DEFAULT 0,
  tick BIGINT NOT NULL,
  PRIMARY KEY (mer_id, skill)
);

--
-- Table structure for table `storage`
--

CREATE TABLE IF NOT EXISTS storage (
  id SERIAL PRIMARY KEY,
  account_id INTEGER NOT NULL DEFAULT 0,
  nameid INTEGER NOT NULL DEFAULT 0,
  amount SMALLINT NOT NULL DEFAULT 0,
  equip INTEGER NOT NULL DEFAULT 0,
  identify SMALLINT NOT NULL DEFAULT 0,
  refine SMALLINT NOT NULL DEFAULT 0,
  attribute SMALLINT NOT NULL DEFAULT 0,
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
  expire_time INTEGER NOT NULL DEFAULT 0,
  bound SMALLINT NOT NULL DEFAULT 0,
  unique_id BIGINT NOT NULL DEFAULT 0,
  enchantgrade SMALLINT NOT NULL DEFAULT 0
);

CREATE INDEX storage_account_id_idx ON storage (account_id);

--
-- Table structure for table `vending_items`
--

CREATE TABLE IF NOT EXISTS vending_items (
  vending_id INTEGER NOT NULL,
  index SMALLINT NOT NULL,
  cartinventory_id INTEGER NOT NULL,
  amount SMALLINT NOT NULL,
  price INTEGER NOT NULL,
  PRIMARY KEY (vending_id, index)
);

--
-- Table structure for table `vendings`
--

CREATE TABLE IF NOT EXISTS vendings (
  id INTEGER NOT NULL,
  account_id INTEGER NOT NULL,
  char_id INTEGER NOT NULL,
  sex CHAR(1) NOT NULL DEFAULT 'M',
  map VARCHAR(20) NOT NULL,
  x SMALLINT NOT NULL,
  y SMALLINT NOT NULL,
  title VARCHAR(80) NOT NULL,
  body_direction CHAR(1) NOT NULL DEFAULT '4',
  head_direction CHAR(1) NOT NULL DEFAULT '0',
  sit CHAR(1) NOT NULL DEFAULT '1',
  autotrade SMALLINT NOT NULL,
  PRIMARY KEY (id)
); 