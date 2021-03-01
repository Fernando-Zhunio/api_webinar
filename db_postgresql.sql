-- SQLINES DEMO *** ---------------------------------------
-- SQLINES DEMO ***              localhost
-- SQLINES DEMO *** idor:         5.7.24 - MySQL Community Server (GPL)
-- SQLINES DEMO ***              Win64
-- SQLINES DEMO *** :             10.2.0.5599
-- SQLINES DEMO *** ---------------------------------------

/* SQLINES DEMO *** ARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** tf8 */;
/* SQLINES DEMO *** tf8mb4 */;
/* SQLINES DEMO *** REIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/* SQLINES DEMO *** L_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- SQLINES DEMO *** ra de base de datos para api_webinar
CREATE DATABASE api_webinar;


-- SQLINES DEMO *** ra para tabla api_webinar.coordinates
CREATE SEQUENCE coordinates_seq;

CREATE TABLE IF NOT EXISTS coordinates (
  id bigint check (id > 0) NOT NULL DEFAULT NEXTVAL ('coordinates_seq'),
  latitude varchar(255) NOT NULL,
  longitude varchar(255) NOT NULL,
  PRIMARY KEY (id)
)   ;

ALTER SEQUENCE coordinates_seq RESTART WITH 58;

-- SQLINES DEMO *** ra la tabla api_webinar.coordinates: ~50 rows (aproximadamente)
/* SQLINES DEMO ***  `coordinates` DISABLE KEYS */;
INSERT INTO coordinates (id, latitude, longitude) VALUES
	(1, '-2.748167', '-77.90072'),
	(2, '-4.916213', '-77.043523'),
	(3, '0.241993', '-75.891907'),
	(4, '-4.729037', '-75.428596'),
	(5, '-2.173685', '-75.460034'),
	(6, '-3.247243', '-75.607775'),
	(7, '-2.593423', '-77.807325'),
	(8, '-1.68694', '-75.187198'),
	(9, '-3.065607', '-78.25015'),
	(10, '0.831565', '-76.564772'),
	(11, '-1.329126', '-79.423289'),
	(12, '-0.705927', '-76.592742'),
	(13, '-3.329296', '-78.112799'),
	(14, '-1.328511', '-76.331102'),
	(15, '-0.177762', '-78.457569'),
	(16, '-0.18838', '-77.847662'),
	(17, '-3.708946', '-77.87241'),
	(18, '0.556422', '-75.40912'),
	(19, '0.117764', '-78.252673'),
	(20, '-3.832424', '-75.248771'),
	(21, '-3.394691', '-79.130097'),
	(22, '0.852615', '-79.826124'),
	(23, '-2.446952', '-77.274381'),
	(24, '-1.267368', '-77.61048'),
	(25, '-0.298208', '-78.090607'),
	(26, '0.730894', '-75.789341'),
	(27, '-0.266004', '-78.865166'),
	(28, '0.886674', '-79.298196'),
	(29, '-1.319148', '-76.834874'),
	(30, '-0.162115', '-77.199577'),
	(31, '0.848725', '-75.946224'),
	(32, '-1.070391', '-79.851989'),
	(33, '-2.951738', '-77.482853'),
	(34, '-0.253857', '-78.073332'),
	(35, '0.85015', '-75.551739'),
	(36, '-1.940786', '-76.390484'),
	(37, '-1.844105', '-75.457692'),
	(38, '-0.109589', '-75.783083'),
	(39, '-4.114468', '-75.683871'),
	(40, '0.977253', '-77.423626'),
	(41, '0.127505', '-75.367717'),
	(42, '0.93453', '-79.154667'),
	(43, '-3.166825', '-77.254788'),
	(44, '-1.994259', '-78.481929'),
	(45, '-1.666265', '-75.762517'),
	(46, '-2.924912', '-75.370574'),
	(47, '-3.539461', '-77.404748'),
	(48, '0.657143', '-79.229544'),
	(49, '-0.467592', '-78.258533'),
	(50, '-0.061062', '-78.62017'),
	(53, '-2.748167', '77.90072'),
	(54, '-2.748167', '77.90072'),
	(55, '-2.748167', '77.90072'),
	(56, '-2.748167', '77.90072'),
	(57, '-2.1163066666667', '-79.952648333333');
/* SQLINES DEMO ***  `coordinates` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.failed_jobs
CREATE SEQUENCE failed_jobs_seq;

CREATE TABLE IF NOT EXISTS failed_jobs (
  id bigint check (id > 0) NOT NULL DEFAULT NEXTVAL ('failed_jobs_seq'),
  connection text NOT NULL,
  queue text NOT NULL,
  payload longtext NOT NULL,
  exception longtext NOT NULL,
  failed_at timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)  ;

-- SQLINES DEMO *** ra la tabla api_webinar.failed_jobs: ~0 rows (aproximadamente)
/* SQLINES DEMO ***  `failed_jobs` DISABLE KEYS */;
/* SQLINES DEMO ***  `failed_jobs` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.migrations
CREATE SEQUENCE migrations_seq;

CREATE TABLE IF NOT EXISTS migrations (
  id int check (id > 0) NOT NULL DEFAULT NEXTVAL ('migrations_seq'),
  migration varchar(255) NOT NULL,
  batch int NOT NULL,
  PRIMARY KEY (id)
)   ;

ALTER SEQUENCE migrations_seq RESTART WITH 12;

-- SQLINES DEMO *** ra la tabla api_webinar.migrations: ~11 rows (aproximadamente)
/* SQLINES DEMO ***  `migrations` DISABLE KEYS */;
INSERT INTO migrations (id, migration, batch) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2019_08_19_000000_create_failed_jobs_table', 1),
	(9, '2020_12_19_181357_create_permission_tables', 1),
	(10, '2021_01_05_213638_table_coordinates', 1),
	(11, '2021_01_06_144140_create_webinars_table', 1);
/* SQLINES DEMO ***  `migrations` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.model_has_permissions
CREATE TABLE IF NOT EXISTS model_has_permissions (
  permission_id bigint check (permission_id > 0) NOT NULL,
  model_type varchar(255) NOT NULL,
  model_id bigint check (model_id > 0) NOT NULL,
  PRIMARY KEY (permission_id,model_id,model_type)
 ,
  CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES permissions (id) ON DELETE CASCADE
)  ;

CREATE INDEX model_has_permissions_model_id_model_type_index ON model_has_permissions (model_id,model_type);

-- SQLINES DEMO *** ra la tabla api_webinar.model_has_permissions: ~0 rows (aproximadamente)
/* SQLINES DEMO ***  `model_has_permissions` DISABLE KEYS */;
/* SQLINES DEMO ***  `model_has_permissions` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.model_has_roles
CREATE TABLE IF NOT EXISTS model_has_roles (
  role_id bigint check (role_id > 0) NOT NULL,
  model_type varchar(255) NOT NULL,
  model_id bigint check (model_id > 0) NOT NULL,
  PRIMARY KEY (role_id,model_id,model_type)
 ,
  CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE
)  ;

CREATE INDEX model_has_roles_model_id_model_type_index ON model_has_roles (model_id,model_type);

-- SQLINES DEMO *** ra la tabla api_webinar.model_has_roles: ~2 rows (aproximadamente)
/* SQLINES DEMO ***  `model_has_roles` DISABLE KEYS */;
INSERT INTO model_has_roles (role_id, model_type, model_id) VALUES
	(1, 'App\User', 1),
	(3, 'App\User', 22),
	(3, 'App\User', 23);
/* SQLINES DEMO ***  `model_has_roles` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.oauth_access_tokens
CREATE TABLE IF NOT EXISTS oauth_access_tokens (
  id varchar(100) NOT NULL,
  user_id bigint check (user_id > 0) DEFAULT NULL,
  client_id bigint check (client_id > 0) NOT NULL,
  name varchar(255) DEFAULT NULL,
  scopes text,
  revoked smallint NOT NULL,
  created_at timestamp(0) NULL DEFAULT NULL,
  updated_at timestamp(0) NULL DEFAULT NULL,
  expires_at timestamp(0) DEFAULT NULL,
  PRIMARY KEY (id)
)  ;

CREATE INDEX oauth_access_tokens_user_id_index ON oauth_access_tokens (user_id);

-- SQLINES DEMO *** ra la tabla api_webinar.oauth_access_tokens: ~25 rows (aproximadamente)
/* SQLINES DEMO ***  `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO oauth_access_tokens (id, user_id, client_id, name, scopes, revoked, created_at, updated_at, expires_at) VALUES
	('0c50ea2ec10e1af42ad3b0383b95bde9eb0475c125b4d7af94b17e48eeea651d01efd1fbda39ae25', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 04:39:42', '2021-02-27 04:39:42', '2022-02-27 04:39:42'),
	('0fbbf4ea6eb9e05b330345f5e347a26179ef25c48c538218e5b5b58b91b0d6061dc70391501c8b89', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 04:42:10', '2021-02-27 04:42:10', '2022-02-27 04:42:10'),
	('1bfac8e473461b4ca4d18fd7afc55fc3c5a31bc6b4e71107e4f0c9bdde5a8b004b869ea8a6169162', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 04:27:23', '2021-02-27 04:27:23', '2022-02-27 04:27:23'),
	('35367f06131eeb5abb52b0106f854fc4c3ced356dfb0be5291a6169fd7356daf9f9a343728c531cd', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 16:52:45', '2021-02-27 16:52:45', '2022-02-27 16:52:45'),
	('40d688a509dc4631a1476fa6771963a77f01ce2e56e2e498af68e3514857a87693fffc4fc8a67f90', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 17:33:52', '2021-02-27 17:33:52', '2022-02-27 17:33:52'),
	('4173f4129a279690dfb6d7989637bb7efd03e2b9eaf03b1856dc6cebd1ce771c5118c660d2905f23', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 03:55:50', '2021-02-27 03:55:50', '2022-02-27 03:55:50'),
	('43f380bb8910ae60e8dd0696e3a70a42a07b86f653869e026380c0aa6bbe7bcbd48bab7da942baf8', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 04:42:58', '2021-02-27 04:42:58', '2022-02-27 04:42:58'),
	('4418c9539ce435a33dbb1faab2d82f5f205960780316b45641ee099984fe4686241da3dbaf9365cb', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 17:23:05', '2021-02-27 17:23:05', '2022-02-27 17:23:05'),
	('522e485131b0e5628debadfbf056beaaa8ac941cc1ee4a85c6fe0eb40065745b9f92a5b8f7317045', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 04:11:36', '2021-02-27 04:11:36', '2022-02-27 04:11:36'),
	('54b37b580e99106155ce22ca0c2bcb8a11f6b3088d76ec3819c35c326fa953a8cd04142717eb1c4d', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 18:44:08', '2021-02-27 18:44:08', '2022-02-27 18:44:08'),
	('69fa848cd6fd72e30becbcf3b928ec87b566cb84dd20663637adae2778a13148cfc7b63b87b2c6f8', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 05:05:13', '2021-02-27 05:05:13', '2022-02-27 05:05:13'),
	('7536ff055d6e341454a08895123df555f44487b0c265aa72ed4c96ba0c0b3b0c76a6ede47336a7e3', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-22 03:34:34', '2021-02-22 03:34:34', '2022-02-22 03:34:34'),
	('7f1e657d7f5aed8bd550e03fc5cb2ca670ac5e0634788ec230a6d2e450ba94fd5fac325d55e0e830', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 04:41:38', '2021-02-27 04:41:38', '2022-02-27 04:41:38'),
	('8036c325e7084d1f9245069b61e9ce75e1ecc9703d51ed0590c0e5437e1f3f03a9de8ef74fc7f844', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 17:24:39', '2021-02-27 17:24:39', '2022-02-27 17:24:39'),
	('835d0e2c18e5bf5a7b356b0657aee0c3a0d5fbb827e5cf91f69b6220c6c51f64f2e857b8ff4114d7', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 04:48:24', '2021-02-27 04:48:24', '2022-02-27 04:48:24'),
	('84a32065d4cbce7fedf98ab5fca66bb61be3fd42672ecb8077b0bd49a52f8a15baa86265460dce97', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 20:38:32', '2021-02-27 20:38:32', '2022-02-27 20:38:32'),
	('89ae18068c1fbdf6f8ba467e0e4f02c3bc8708cdaedaa3c0f23b19d16a89625dfb038f97f7f61a44', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 18:37:33', '2021-02-27 18:37:33', '2022-02-27 18:37:33'),
	('8ec34e2a9bd4c26240789da5653169db7c8b6ee3288575d6c35c4409ab7d998525e329aaa745e498', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 17:22:28', '2021-02-27 17:22:28', '2022-02-27 17:22:28'),
	('982466a931a70d9c6df669eba5ae6123a80625926d837c0d6e53e017955e1de7bc2d425de545ca0a', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 04:13:17', '2021-02-27 04:13:17', '2022-02-27 04:13:17'),
	('a8622eeea7e1e5dfcd9ada5a210dba36766941f5bbab4c74426ed9855ba7d1b8c05d4a6b5a462712', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 17:30:04', '2021-02-27 17:30:04', '2022-02-27 17:30:04'),
	('c27e033ca223c688276c988d4549a35cd6f0515f35b6ffe1f43332ac6e65181848e933a5ab1f5588', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-22 01:36:02', '2021-02-22 01:36:02', '2022-02-22 01:36:02'),
	('cb2cc0d47735f21b79ee80f816524138ee584ca0cf71d5fb3ea3f992b94d5649d433a14b11d7869e', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 22:41:59', '2021-02-27 22:41:59', '2022-02-27 22:41:59'),
	('ce2921dd3ac61f2b2483d2e6cdaffdf449189f8e9b8539bf934ae1c4e443c856b42781e725a7a689', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 17:32:42', '2021-02-27 17:32:42', '2022-02-27 17:32:42'),
	('d9aa824bed66d1e92be3f9e1b99ba03a8bbec38ef84844632e3e8c80312ce2b9e9e278ababe976ba', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 20:37:55', '2021-02-27 20:37:55', '2022-02-27 20:37:55'),
	('dc6730cbaa8ab3eb120281582517c74df16d47f54c2945de67556c69bb52ccdc2c70217419ac812c', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 17:47:06', '2021-02-27 17:47:06', '2022-02-27 17:47:06'),
	('f371fcd65547c53db36befe6112b991dbc7a4793a1ef768c764c23aee0819910c5cc397ce59dda3a', 23, 1, 'Personal Access Token', '[]', 0, '2021-02-27 04:21:39', '2021-02-27 04:21:39', '2022-02-27 04:21:39'),
	('fb207e77e68b5c2c1d6a06b94fd16207b7b571195b94bfece20cdff2c536c06d21693fad5447696e', 1, 1, 'Personal Access Token', '[]', 0, '2021-02-21 22:03:17', '2021-02-21 22:03:17', '2022-02-21 22:03:17');
/* SQLINES DEMO ***  `oauth_access_tokens` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.oauth_auth_codes
CREATE TABLE IF NOT EXISTS oauth_auth_codes (
  id varchar(100) NOT NULL,
  user_id bigint check (user_id > 0) NOT NULL,
  client_id bigint check (client_id > 0) NOT NULL,
  scopes text,
  revoked smallint NOT NULL,
  expires_at timestamp(0) DEFAULT NULL,
  PRIMARY KEY (id)
)  ;

CREATE INDEX oauth_auth_codes_user_id_index ON oauth_auth_codes (user_id);

-- SQLINES DEMO *** ra la tabla api_webinar.oauth_auth_codes: ~0 rows (aproximadamente)
/* SQLINES DEMO ***  `oauth_auth_codes` DISABLE KEYS */;
/* SQLINES DEMO ***  `oauth_auth_codes` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.oauth_clients
CREATE SEQUENCE oauth_clients_seq;

CREATE TABLE IF NOT EXISTS oauth_clients (
  id bigint check (id > 0) NOT NULL DEFAULT NEXTVAL ('oauth_clients_seq'),
  user_id bigint check (user_id > 0) DEFAULT NULL,
  name varchar(255) NOT NULL,
  secret varchar(100) DEFAULT NULL,
  provider varchar(255) DEFAULT NULL,
  redirect text NOT NULL,
  personal_access_client smallint NOT NULL,
  password_client smallint NOT NULL,
  revoked smallint NOT NULL,
  created_at timestamp(0) NULL DEFAULT NULL,
  updated_at timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (id)
)   ;

ALTER SEQUENCE oauth_clients_seq RESTART WITH 3;

-- SQLINES DEMO *** ra la tabla api_webinar.oauth_clients: ~2 rows (aproximadamente)
/* SQLINES DEMO ***  `oauth_clients` DISABLE KEYS */;

CREATE INDEX oauth_clients_user_id_index ON oauth_clients (user_id);
INSERT INTO oauth_clients (id, user_id, name, secret, provider, redirect, personal_access_client, password_client, revoked, created_at, updated_at) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'a2qxcZxCT9u7j3pJWAnJLyqZJ242toA5GXhnNon0', NULL, 'http://localhost', 1, 0, 0, '2021-02-21 21:58:30', '2021-02-21 21:58:30'),
	(2, NULL, 'Laravel Password Grant Client', 'qW3Um1qywrLMAoMlJJJnho6TTT8HRtVxEdPGiYd7', 'users', 'http://localhost', 0, 1, 0, '2021-02-21 21:58:31', '2021-02-21 21:58:31');
/* SQLINES DEMO ***  `oauth_clients` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.oauth_personal_access_clients
CREATE SEQUENCE oauth_personal_access_clients_seq;

CREATE TABLE IF NOT EXISTS oauth_personal_access_clients (
  id bigint check (id > 0) NOT NULL DEFAULT NEXTVAL ('oauth_personal_access_clients_seq'),
  client_id bigint check (client_id > 0) NOT NULL,
  created_at timestamp(0) NULL DEFAULT NULL,
  updated_at timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (id)
)   ;

ALTER SEQUENCE oauth_personal_access_clients_seq RESTART WITH 2;

-- SQLINES DEMO *** ra la tabla api_webinar.oauth_personal_access_clients: ~0 rows (aproximadamente)
/* SQLINES DEMO ***  `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO oauth_personal_access_clients (id, client_id, created_at, updated_at) VALUES
	(1, 1, '2021-02-21 21:58:31', '2021-02-21 21:58:31');
/* SQLINES DEMO ***  `oauth_personal_access_clients` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS oauth_refresh_tokens (
  id varchar(100) NOT NULL,
  access_token_id varchar(100) NOT NULL,
  revoked smallint NOT NULL,
  expires_at timestamp(0) DEFAULT NULL,
  PRIMARY KEY (id)
)  ;

CREATE INDEX oauth_refresh_tokens_access_token_id_index ON oauth_refresh_tokens (access_token_id);


CREATE TABLE IF NOT EXISTS password_resets (
  email varchar(255) NOT NULL,
  token varchar(255) NOT NULL,
  created_at timestamp(0) NULL DEFAULT NULL
)  ;

CREATE INDEX password_resets_email_index ON password_resets (email);

CREATE SEQUENCE permissions_seq;

CREATE TABLE IF NOT EXISTS permissions (
  id bigint check (id > 0) NOT NULL DEFAULT NEXTVAL ('permissions_seq'),
  name varchar(255) NOT NULL,
  guard_name varchar(255) NOT NULL,
  created_at timestamp(0) NULL DEFAULT NULL,
  updated_at timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (id)
)   ;

ALTER SEQUENCE permissions_seq RESTART WITH 5;

INSERT INTO permissions (id, name, guard_name, created_at, updated_at) VALUES
	(1, 'webinar_editar', 'api', '2021-02-21 21:56:51', '2021-02-21 21:56:51'),
	(2, 'webinar_crear', 'api', '2021-02-21 21:56:52', '2021-02-21 21:56:52'),
	(3, 'webinar_eliminar', 'api', '2021-02-21 21:56:52', '2021-02-21 21:56:52'),
	(4, 'webinar_aprobar', 'api', '2021-02-21 21:56:52', '2021-02-21 21:56:52');

CREATE SEQUENCE roles_seq;

CREATE TABLE IF NOT EXISTS roles (
  id bigint check (id > 0) NOT NULL DEFAULT NEXTVAL ('roles_seq'),
  name varchar(255) NOT NULL,
  guard_name varchar(255) NOT NULL,
  created_at timestamp(0) NULL DEFAULT NULL,
  updated_at timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (id)
)   ;

ALTER SEQUENCE roles_seq RESTART WITH 4;


INSERT INTO roles (id, name, guard_name, created_at, updated_at) VALUES
	(1, 'admin', 'api', '2021-02-21 21:56:52', '2021-02-21 21:56:52'),
	(2, 'organizador', 'api', '2021-02-21 21:56:52', '2021-02-21 21:56:52'),
	(3, 'usuario', 'api', '2021-02-21 21:56:52', '2021-02-21 21:56:52');

CREATE TABLE IF NOT EXISTS role_has_permissions (
  permission_id bigint check (permission_id > 0) NOT NULL,
  role_id bigint check (role_id > 0) NOT NULL,
  PRIMARY KEY (permission_id,role_id)
 ,
  CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES permissions (id) ON DELETE CASCADE,
  CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE
)  ;

CREATE INDEX role_has_permissions_role_id_foreign ON role_has_permissions (role_id);

-- SQLINES DEMO *** ra la tabla api_webinar.role_has_permissions: ~6 rows (aproximadamente)
/* SQLINES DEMO ***  `role_has_permissions` DISABLE KEYS */;
INSERT INTO role_has_permissions (permission_id, role_id) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(1, 2),
	(2, 2);
/* SQLINES DEMO ***  `role_has_permissions` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.users
CREATE SEQUENCE users_seq;

CREATE TABLE IF NOT EXISTS users (
  id bigint check (id > 0) NOT NULL DEFAULT NEXTVAL ('users_seq'),
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  url_img varchar(255) NOT NULL,
  email_verified_at timestamp(0) NULL DEFAULT NULL,
  password varchar(255) NOT NULL,
  remember_token varchar(100) DEFAULT NULL,
  created_at timestamp(0) NULL DEFAULT NULL,
  updated_at timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT users_email_unique UNIQUE  (email)
)   ;

ALTER SEQUENCE users_seq RESTART WITH 24;

-- SQLINES DEMO *** ra la tabla api_webinar.users: ~21 rows (aproximadamente)
/* SQLINES DEMO ***  `users` DISABLE KEYS */;
INSERT INTO users (id, name, email, url_img, email_verified_at, password, remember_token, created_at, updated_at) VALUES
	(1, 'Fernando Zhunio Reyes', 'fzhunio91@hotmail.com', 'default_profile_user', NULL, '$2y$10$rgFSBszbPYEE6QgmojL6tOoK83eOlcw1KAWcaIc4pzwiiYoL79zjq', NULL, '2021-02-21 21:56:51', '2021-02-21 21:56:51'),
	(2, 'Mr. Dedrick Marvin', 'kennedy.maggio@example.com', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'acB2LZupKd', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(3, 'Kiana McKenzie', 'maxie19@example.com', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EBqFbNx7Xa', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(4, 'Dr. Adam Kuvalis', 'jlarson@example.net', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y4TqJ2qKIM', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(5, 'Valerie Hoppe DVM', 'francesca43@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jmJvUAXKzu', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(6, 'Marques Deckow V', 'elinore46@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TfgPZuo0u8', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(7, 'Jackeline Goyette', 'kurt.conroy@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0oynlRXKMs', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(8, 'Lera Nienow', 'jzieme@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tYoT3irrbW', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(9, 'Cecelia Bruen Jr.', 'gottlieb.lee@example.net', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2rjdPA4565', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(10, 'Easter Bernhard IV', 'rkub@example.net', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eGZJpWBCDy', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(11, 'Miguel Roberts PhD', 'little.nettie@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TJtw1YxykB', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(12, 'Beulah Hirthe', 'dkoepp@example.com', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cvj84NQ488', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(13, 'Mr. Aurelio Waters Sr.', 'kelton02@example.com', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'on7myNrGWz', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(14, 'Cierra Schultz', 'rene.beahan@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IBwvM6EpoS', '2021-02-21 21:56:53', '2021-02-21 21:56:53'),
	(15, 'Dr. Regan Labadie I', 'wbednar@example.com', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zNJAWwXPTB', '2021-02-21 21:56:54', '2021-02-21 21:56:54'),
	(16, 'Janessa Heller', 'jackie60@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p9hOFYAjIw', '2021-02-21 21:56:54', '2021-02-21 21:56:54'),
	(17, 'Tanya Upton', 'cwolf@example.com', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ljfex2JQy7', '2021-02-21 21:56:54', '2021-02-21 21:56:54'),
	(18, 'Elisha Morissette', 'eluettgen@example.com', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'adwmX5EH1T', '2021-02-21 21:56:54', '2021-02-21 21:56:54'),
	(19, 'Boyd Padberg', 'alf11@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5Qvju7zWec', '2021-02-21 21:56:54', '2021-02-21 21:56:54'),
	(20, 'Florence Turcotte', 'lang.nakia@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yNRdGYsxk3', '2021-02-21 21:56:54', '2021-02-21 21:56:54'),
	(21, 'Janis Prosacco', 'oroberts@example.org', 'default_profile_user', '2021-02-21 21:56:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7Nscd8Fmjs', '2021-02-21 21:56:54', '2021-02-21 21:56:54'),
	(22, 'Fernando Zhunio', 'fzhunio@novicompu.com', 'default_profile_user', NULL, '$2y$10$pmNjzqaWRfMy7DUzqWqZEu0AtYXeZVoYItfvixUnc5XAkZgiUKgXq', NULL, '2021-02-22 01:26:44', '2021-02-22 01:26:44'),
	(23, 'Fernando Zhunio', 'fzreyes1991@gmail.com', 'default_profile_user', NULL, '$2y$10$Jv0lnW6UZodCj2UVXgIY5OlEDY2JMcBXTRliJHFN4RaQg2rfcdvk6', NULL, '2021-02-22 01:36:01', '2021-02-22 01:36:01');
/* SQLINES DEMO ***  `users` ENABLE KEYS */;

-- SQLINES DEMO *** ra para tabla api_webinar.webinars
CREATE SEQUENCE webinars_seq;

CREATE TABLE IF NOT EXISTS webinars (
  id bigint check (id > 0) NOT NULL DEFAULT NEXTVAL ('webinars_seq'),
  created_at timestamp(0) NULL DEFAULT NULL,
  updated_at timestamp(0) NULL DEFAULT NULL,
  description varchar(1000) NOT NULL,
  name varchar(255) NOT NULL,
  url_img varchar(255) DEFAULT NULL,
  address varchar(255) NOT NULL,
  address_web varchar(255) DEFAULT NULL,
  status smallint NOT NULL DEFAULT '0',
  start timestamp(0) NOT NULL,
  "end" timestamp(0) NOT NULL,
  user_id bigint check (user_id > 0) NOT NULL,
  coordinate_id bigint check (coordinate_id > 0) NOT NULL,
  PRIMARY KEY (id)
)   ;

ALTER SEQUENCE webinars_seq RESTART WITH 56;

-- SQLINES DEMO *** ra la tabla api_webinar.webinars: ~50 rows (aproximadamente)
/* SQLINES DEMO ***  `webinars` DISABLE KEYS */;
INSERT INTO webinars (id, created_at, updated_at, description, name, url_img, address, address_web, status, start, "end", user_id, coordinate_id) VALUES
	(1, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Numquam et quis ut ipsa temporibus. Quibusdam rerum ducimus explicabo esse natus. Magnam suscipit necessitatibus ducimus ipsum accusamus unde modi. Quasi et sunt facilis cumque repellendus.', 'Neque sit vel id ut.', 'default_webinar_2', '838 Ellen MountainsnFlorianchester, CO 60132', 'https://kautzer.net/recusandae-sapiente-ratione-sed.html', 1, '2021-03-09 21:56:54', '2021-03-09 21:56:54', 21, 1),
	(2, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Nam nam esse ut autem sapiente quos pariatur sit. Nihil ad veritatis commodi itaque nulla. Libero corrupti libero adipisci voluptatum iusto. Necessitatibus cupiditate et est cumque. Eos sunt consequatur blanditiis suscipit omnis occaecati.', 'Dolor non distinctio.', 'default_webinar_2', '6462 Hauck LightnJakaylaberg, MN 96790', 'http://kemmer.biz/quidem-aperiam-et-enim', 0, '2021-04-11 21:56:54', '2021-04-11 21:56:54', 17, 2),
	(3, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Sit nisi minus sunt modi omnis doloremque veniam. Aut quis labore dignissimos et. Dolor magnam consequuntur cupiditate. Ut id velit aut est assumenda fuga. Aut quibusdam magni adipisci eos aut. Minus dolore et quia est ipsa.', 'Culpa voluptatem minima aut qui.', 'default_webinar_1', '5631 Golda Pines Suite 954nDevanmouth, OK 40964', 'http://mayert.net/', 0, '2021-05-02 21:56:54', '2021-05-02 21:56:54', 15, 3),
	(4, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Odit unde perferendis molestiae ipsum laborum. Sint vitae repellat sed aliquid porro. Perferendis ut quo mollitia et necessitatibus.', 'Ut quidem dignissimos perspiciatis modi perspiciatis laudantium vero.', 'default_webinar_1', '28416 Vincent ManornNew Zanderchester, CO 77918', 'http://www.bergnaum.net/expedita-amet-consequatur-maiores-aut-voluptate-et-doloremque', 0, '2021-03-10 21:56:54', '2021-03-10 21:56:54', 16, 4),
	(5, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Aut magni quia molestiae dignissimos. Exercitationem ex voluptatum quia asperiores doloribus perferendis. Consequuntur quas eos est minus reiciendis accusantium.', 'Dolorem alias quod sint est voluptatum temporibus ea tempore soluta.', 'default_webinar_1', '480 Thea StreetsnPaucekview, AK 68214', 'http://olson.com/sint-blanditiis-eaque-quibusdam-quo-architecto-tempore-velit', 0, '2021-03-06 21:56:54', '2021-03-06 21:56:54', 15, 5),
	(6, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Aut voluptates impedit reprehenderit maiores non. Non cumque soluta et beatae est odio. Corporis est fugit expedita non sapiente occaecati explicabo excepturi. Et velit provident aspernatur sint quia ut aut.', 'Non eum commodi.', 'default_webinar_1', '7962 Monroe CourtnJakaylatown, CT 23287-1793', 'http://www.wunsch.com/', 0, '2021-04-12 21:56:54', '2021-04-12 21:56:54', 12, 6),
	(7, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Ipsum et dolore et vitae molestiae ipsam accusamus. Sed possimus quia exercitationem ab non est delectus. Odit dolorem soluta consequatur. Eum at qui neque ratione autem est odit.', 'Natus in autem est aut eum doloribus tempore quo voluptas.', 'default_webinar_2', '22180 Breitenberg View Suite 755nNorth Jennie, UT 23210-6993', 'http://murray.biz/', 1, '2021-05-01 21:56:54', '2021-05-01 21:56:54', 8, 7),
	(8, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Eligendi aut quae fugiat dolore. Consectetur quo enim deleniti est. Nobis sunt debitis eveniet eum sunt voluptatum consequatur. Aliquid nisi reprehenderit aut perspiciatis. Qui ut non recusandae ratione autem earum laudantium non.', 'Facilis ut omnis.', 'default_webinar_1', '458 Helen FallsnSouth Meaghanview, UT 57522', 'http://trantow.com/', 1, '2021-04-12 21:56:54', '2021-04-12 21:56:54', 19, 8),
	(9, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Molestias et quibusdam amet illo. Aut natus est veniam quod ad. Eos laudantium quis in numquam quia delectus enim.', 'Architecto ut soluta et quidem beatae qui enim.', 'default_webinar_1', '9476 Theresia Square Suite 960nEast Jailynland, IN 68360', 'http://terry.info/error-ut-iusto-sit-repellat-labore-deserunt-ut.html', 0, '2021-03-03 21:56:54', '2021-03-03 21:56:54', 7, 9),
	(10, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Tenetur impedit excepturi qui labore cum natus. Doloremque sequi consectetur sit debitis ut dicta. Possimus consectetur non numquam.', 'Tenetur sunt eaque dolore veniam ab assumenda.', 'default_webinar_1', '6966 Howell CliffsnPort Beverly, LA 26482', 'http://bruen.net/tempore-ut-facilis-ex-laudantium', 1, '2021-04-13 21:56:54', '2021-04-13 21:56:54', 9, 10),
	(11, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Ullam est eaque similique quod nam consequatur. Exercitationem voluptate consequatur suscipit quia corporis. Omnis qui porro blanditiis et est ipsum eligendi. Quidem laborum atque ipsam magni optio fuga.', 'Praesentium quae nostrum.', 'default_webinar_2', '4018 Zora Land Apt. 868nWest Dasiaton, ID 22724', 'http://www.shields.info/', 1, '2021-04-23 21:56:54', '2021-04-23 21:56:54', 2, 11),
	(12, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Voluptatem doloribus exercitationem autem sit culpa rem et. Ducimus molestiae et modi molestiae dicta. Et et ad omnis non et rem.', 'Fugiat et sunt.', 'default_webinar_2', '582 Madelyn Stream Suite 372nEast Jessymouth, NJ 99417', 'http://kris.com/consequatur-aut-qui-voluptatibus-ut.html', 1, '2021-04-15 21:56:54', '2021-04-15 21:56:54', 8, 12),
	(13, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Sit officia id laboriosam eos. Eum id eius magnam et et rem sit. Excepturi aut magnam quasi animi adipisci. Quis est et cum odio ducimus deserunt. Quas veniam aut neque earum. Earum quos excepturi accusantium facere ea.', 'Illo consequatur quaerat quos alias occaecati quaerat corrupti qui sit.', 'default_webinar_2', '5582 Carolanne Brooks Apt. 764nNew Dino, MI 01007', 'http://smitham.com/voluptates-eveniet-ut-unde-voluptatem-deserunt-eius-et', 0, '2021-04-07 21:56:54', '2021-04-07 21:56:54', 16, 13),
	(14, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Aperiam at eligendi alias labore eos est eos. Qui et ea voluptas. Dolorem quod at eveniet qui totam. Iure qui quia aliquam distinctio. Pariatur ut et debitis suscipit nesciunt non corporis. Perspiciatis fuga et eveniet facere.', 'Dolorem et sed quia aut harum neque.', 'default_webinar_1', '832 Cormier Forest Apt. 158nDAmoreshire', 'MT 24951-5548', 'http://www.doyle.com/', 1, '2021-03-24 21:56:54', '2021-03-24 21:56:54', 12, 14),
	(15, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Impedit ipsum natus quasi rerum et vel cumque. Expedita nihil voluptatum nihil beatae omnis illo doloremque. Dolores cum maiores sequi quaerat sunt et. Voluptatem ut quam quam. Possimus perspiciatis facilis repudiandae voluptatem cum quia.', 'Ea aperiam deserunt quas magnam ipsum ut voluptas culpa reiciendis dignissimos.', 'default_webinar_2', '9552 Bergstrom Spur Suite 573nSouth Arlene, NV 90795-3882', 'http://funk.org/', 1, '2021-05-10 21:56:54', '2021-05-10 21:56:54', 13, 15),
	(16, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Dolore rerum et quia totam unde consectetur beatae ut. Est iusto voluptatem similique suscipit quasi. Tenetur rerum dolor voluptatum -- voluptatem. Sed et natus adipisci voluptas repellendus illum alias iusto.', 'Laudantium et eius debitis ducimus autem.', 'default_webinar_1', '4941 Ella MountainnEricastad, TX 76052-7098', 'https://pollich.com/molestiae-perferendis-non-velit-fuga-cumque-et.html', 1, '2021-03-22 21:56:54', '2021-03-22 21:56:54', 4, 16),
	(17, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Culpa natus dignissimos hic voluptas et similique. Veritatis illum ad temporibus sunt qui animi. Reiciendis praesentium sit fugit quod voluptas. Aut architecto exercitationem sed dolor vel dicta omnis itaque.', 'Accusamus amet sit.', 'default_webinar_1', '190 Farrell Shore Suite 731nKossberg, MA 43234', 'http://raynor.com/odio-vel-temporibus-dignissimos-totam-quasi-illo-qui.html', 1, '2021-04-02 21:56:54', '2021-04-02 21:56:54', 8, 17),
	(18, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Aut rerum est voluptatum omnis qui iusto reprehenderit facere. Pariatur ut sed voluptas rerum vel quas. Cumque ipsa deleniti qui modi.', 'Velit perspiciatis.', 'default_webinar_1', '3254 Ken Crescent Apt. 998nHenriport, MO 12128', 'http://gaylord.info/voluptas-autem-aut-rerum-nisi-nam', 1, '2021-04-29 21:56:54', '2021-04-29 21:56:54', 14, 18),
	(19, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Voluptate non soluta laudantium qui atque vel molestias. Ratione et nihil ab debitis. Quos voluptatibus commodi odio numquam non quas.', 'Eveniet quia laboriosam repellat.', 'default_webinar_2', '96522 Jonatan PortnNorth Daphneshire, NY 56476-6965', 'http://oberbrunner.info/aspernatur-rem-nemo-aut-asperiores-nam-qui', 0, '2021-04-04 21:56:54', '2021-04-04 21:56:54', 13, 19),
	(20, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Inventore et ratione et iste expedita commodi inventore. Deserunt magni corporis voluptate porro eligendi. Modi hic est saepe enim rerum. Odio explicabo ea est corporis porro nisi sed. Id at nisi omnis doloremque esse quia earum.', 'Nesciunt quaerat illo.', 'default_webinar_2', '6991 Wisoky ShoalnNorth Hailie, MO 95582', 'http://emmerich.org/qui-nesciunt-et-sapiente-quidem-quae-itaque', 1, '2021-04-16 21:56:54', '2021-04-16 21:56:54', 5, 20),
	(21, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Voluptas voluptas sit et animi consequatur. Quis et numquam harum fugit. Totam voluptatem placeat dolores. Pariatur facilis velit delectus ipsum est quo aut.', 'Repudiandae aut rerum asperiores accusamus culpa minima voluptas.', 'default_webinar_2', '697 Lilliana Avenue Apt. 411nBradchester, MD 52784', 'http://www.volkman.net/', 1, '2021-04-20 21:56:54', '2021-04-20 21:56:54', 16, 21),
	(22, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Commodi dolorem eos voluptate consequatur sit fuga. Ipsa harum qui voluptas est. Saepe sunt in tempore recusandae.', 'Quibusdam rerum mollitia quisquam.', 'default_webinar_1', '6307 Berge Streets Suite 928nAlexaneville, NJ 79448-1819', 'http://bayer.com/', 1, '2021-03-15 21:56:54', '2021-03-15 21:56:54', 7, 22),
	(23, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Distinctio aspernatur facilis illum voluptatum. Ducimus consectetur reiciendis sit quibusdam doloribus. Quos culpa animi nihil fuga. Et ut vero vel nostrum accusamus consectetur.', 'Voluptates explicabo sed.', 'default_webinar_2', '31959 Wilderman Loaf Apt. 121nEast Bennett, MT 89995', 'http://www.bartell.com/rerum-aut-ea-totam', 0, '2021-03-27 21:56:54', '2021-03-27 21:56:54', 10, 23),
	(24, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Numquam deserunt rem qui. Consequatur omnis id labore molestiae sequi numquam. Non saepe amet aut quis.', 'Tenetur et officia cupiditate.', 'default_webinar_1', '52065 Pagac Turnpike Suite 844nSouth Caterina, MS 52410', 'http://www.terry.com/tenetur-nulla-assumenda-velit-velit-repellendus', 0, '2021-05-10 21:56:54', '2021-05-10 21:56:54', 11, 24),
	(25, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Eos delectus id qui et est officia saepe. Dolorum mollitia ut tempore nesciunt. Doloribus facere aut ducimus excepturi esse totam nostrum. Autem dolor eaque nisi fugiat. Unde et rem consectetur totam repellat nulla.', 'Quo quidem sapiente atque impedit qui.', 'default_webinar_1', '372 Terrill RadialnEast Sedrick, NV 11772', 'http://www.hill.com/similique-eum-nesciunt-commodi-non-fugiat-aperiam-sit.html', 1, '2021-04-23 21:56:54', '2021-04-23 21:56:54', 8, 25),
	(26, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Totam eveniet ullam iusto fugit pariatur et corrupti velit. Numquam ducimus maxime deleniti ullam voluptatum porro praesentium iure. Rem sint nesciunt et mollitia.', 'Illo id molestias suscipit commodi dolorum.', 'default_webinar_2', '258 Kuphal Fork Suite 668nNew Jasminburgh, MT 81429', 'http://lynch.org/id-ullam-dolorem-illum-provident-ab', 1, '2021-04-12 21:56:54', '2021-04-12 21:56:54', 19, 26),
	(27, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Numquam suscipit a sunt perferendis porro. Eaque tenetur repudiandae non dignissimos et eaque accusamus. Ullam animi aut debitis aperiam. Sit dicta ullam voluptatem nisi et dignissimos temporibus. Suscipit minima cum odit saepe vel.', 'Doloremque vel praesentium.', 'default_webinar_2', '8356 Abernathy DamnPercyport, WI 34438', 'http://dickinson.com/aut-ea-alias-cumque-asperiores.html', 1, '2021-04-19 21:56:54', '2021-04-19 21:56:54', 6, 27),
	(28, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Perspiciatis eveniet sed minima optio rerum. Et eos consequatur perspiciatis similique sed debitis. Aut minus et quae.', 'Unde ab occaecati minus quam omnis.', 'default_webinar_1', '261 Grady Trace Suite 629nHaneland, LA 79702-3268', 'http://macejkovic.com/enim-asperiores-dolores-amet-voluptatem', 0, '2021-03-26 21:56:54', '2021-03-26 21:56:54', 9, 28),
	(29, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Corporis illum corrupti velit autem quia ad. Dolores dolorem consequatur qui quod consequatur. Consequatur voluptatum eos aut et voluptatem. Eligendi labore veniam perferendis enim mollitia et voluptatem.', 'Et ut fugit dolor quasi alias animi reprehenderit itaque et eligendi.', 'default_webinar_1', '601 Stroman PlainsnSwaniawskiborough, MS 27687', 'http://www.hickle.com/accusantium-officiis-facilis-impedit-accusamus-nesciunt-est', 0, '2021-03-28 21:56:54', '2021-03-28 21:56:54', 20, 29),
	(30, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Pariatur repellat non vero soluta sed. Pariatur sit consequatur voluptatum asperiores incidunt quod. Molestiae atque enim sed placeat minima.', 'Quo quaerat consequatur.', 'default_webinar_1', '6666 Lowe FallnLelachester, NM 17787-6777', 'http://www.schamberger.com/fuga-beatae-et-est-ab-hic-ea-alias.html', 0, '2021-04-29 21:56:54', '2021-04-29 21:56:54', 5, 30),
	(31, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Placeat repellat enim eum eos. Quis cumque cum ab repudiandae aliquam sit. Reprehenderit repudiandae vitae mollitia ea. Laboriosam et ea labore laudantium est odit itaque autem. Laboriosam voluptas et sed assumenda.', 'Voluptatibus recusandae deleniti ut autem voluptatum iste consequatur accusantium consequatur.', 'default_webinar_2', '747 Ledner Hills Suite 746nNew Clairbury, OK 34905', 'http://romaguera.net/', 0, '2021-04-27 21:56:54', '2021-04-27 21:56:54', 7, 31),
	(32, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Aut et ut quaerat doloribus nobis temporibus. Voluptas quis voluptatem sequi delectus provident quod. Voluptatem iusto iusto nisi qui maxime est porro.', 'Veniam placeat et corrupti impedit sit quisquam totam a.', 'default_webinar_2', '45579 Effertz MountainsnNew Geoffrey, MT 32892', 'http://bechtelar.com/', 1, '2021-03-31 21:56:54', '2021-03-31 21:56:54', 3, 32),
	(33, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Sit voluptatem saepe et asperiores unde odio fuga. Quis a et a voluptate maiores dolor molestiae. Porro dolor in sint alias sapiente aut voluptas.', 'Dolores ullam autem ab commodi.', 'default_webinar_2', '78598 Blanche Haven Suite 670nArnoborough, WI 45386-1029', 'http://pagac.com/', 1, '2021-04-16 21:56:54', '2021-04-16 21:56:54', 2, 33),
	(34, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Nulla quae voluptas molestiae architecto. Qui ad quo sit deserunt magni. Molestiae animi reiciendis placeat eum sint nam.', 'Quo beatae sapiente consectetur non modi commodi esse.', 'default_webinar_1', '482 Keebler ShoresnWest Litzyhaven, AL 96827', 'http://damore.org/ut-qui-aliquid-rerum.html', 1, '2021-03-16 21:56:54', '2021-03-16 21:56:54', 11, 34),
	(35, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Et sint inventore et et ut. Omnis consequatur sit consequuntur fugit. Sit aut qui in. Saepe nisi qui numquam provident recusandae soluta.', 'Exercitationem eveniet magnam reprehenderit eaque eaque.', 'default_webinar_1', '95469 Stamm Ways Suite 547nEast Cyrusmouth, DC 07384-7321', 'http://www.lueilwitz.com/', 0, '2021-04-19 21:56:54', '2021-04-19 21:56:54', 17, 35),
	(36, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Harum corporis est at similique placeat. Eos neque vero odit et necessitatibus est itaque. Expedita minima quod est cumque consequatur ratione nulla. Veniam et veniam culpa eius quas.', 'Quia dolorem in ipsam molestias officiis at.', 'default_webinar_1', '894 Bridget Key Apt. 773nSouth Carleton, CO 30292', 'http://rodriguez.biz/voluptatem-et-odio-ab-eum-dignissimos-totam-voluptatem', 1, '2021-04-18 21:56:54', '2021-04-18 21:56:54', 6, 36),
	(37, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Repellat repudiandae sed ut qui odit unde. Quisquam expedita blanditiis minima numquam. Corporis quibusdam rerum non accusantium officiis. Quam ea praesentium amet et voluptatem.', 'Sunt beatae voluptatem sequi quo.', 'default_webinar_1', '676 Beier Cape Suite 371nHuelsshire, MS 76943-5721', 'http://www.hansen.biz/', 0, '2021-03-02 21:56:54', '2021-03-02 21:56:54', 8, 37),
	(38, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Aut laborum in blanditiis id sapiente voluptate. Eum et qui aut. Et ut vitae est necessitatibus alias facilis necessitatibus.', 'Laudantium error harum rerum expedita et.', 'default_webinar_1', '654 Kian Mountain Suite 511nGeovanniside, WY 80209', 'http://ryan.com/voluptatem-rem-sit-sit', 0, '2021-02-25 21:56:54', '2021-02-25 21:56:54', 4, 38),
	(39, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Itaque laboriosam aliquam voluptates voluptas quo modi nostrum placeat. Assumenda ut corrupti velit aut. Fuga id corrupti in eum sed. Eum est repellendus quia voluptatum velit.', 'Consequatur provident reiciendis assumenda modi.', 'default_webinar_2', '89608 Ibrahim Rapid Apt. 257nHermanhaven, OR 52930', 'http://www.stokes.com/', 0, '2021-03-31 21:56:54', '2021-03-31 21:56:54', 19, 39),
	(40, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Ab ea sit quam quas autem error repellendus quisquam. Suscipit ab impedit quo qui. Perferendis ut quia corrupti odio eum consequatur ut quis. Iste ut rem natus quibusdam aut hic. Quibusdam aspernatur minus dignissimos.', 'Ipsum quaerat odio earum laborum.', 'default_webinar_1', '3696 Johnston Underpass Suite 175nNorbertmouth, WI 82171-0320', 'https://www.lynch.info/vero-numquam-voluptatum-qui-architecto-quo-similique', 0, '2021-03-15 21:56:54', '2021-03-15 21:56:54', 9, 40),
	(41, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Quia dolorem et architecto nihil autem debitis modi reprehenderit. Perspiciatis dolores id inventore aut magnam quia. Qui assumenda modi distinctio earum distinctio corporis. Aliquid quasi inventore repellendus neque sunt qui.', 'Placeat necessitatibus sunt eaque molestias perferendis libero.', 'default_webinar_1', '84034 Adelle PrairienWest Ahmed, RI 24649-7158', 'http://harris.com/laborum-non-qui-dicta-earum-consequatur-et-nam-in', 0, '2021-04-03 21:56:54', '2021-04-03 21:56:54', 12, 41),
	(42, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Tempora qui laboriosam a soluta incidunt aliquid velit. Magni nobis laudantium alias rerum iusto. Voluptatibus illo repellat non beatae. Ut amet ea assumenda corrupti. Iste non qui rerum porro non iste.', 'Qui corporis asperiores quibusdam animi.', 'default_webinar_2', '24358 Aurelio Course Suite 071nKulaston, MD 16472', 'http://www.leannon.org/quidem-suscipit-magni-odio-nulla', 0, '2021-04-14 21:56:54', '2021-04-14 21:56:54', 17, 42),
	(43, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Expedita aspernatur unde cumque officiis dolore. Commodi dolores dolore error blanditiis. Voluptas quos fugit sit nihil. Hic iste consequuntur recusandae est a consequuntur.', 'Dolores sed qui accusantium adipisci officiis quo illum ad.', 'default_webinar_2', '53735 Mueller Rue Apt. 009nCamillaborough, NE 44106-7309', 'https://kunde.com/cupiditate-tempora-rerum-ipsam-modi.html', 1, '2021-03-25 21:56:54', '2021-03-25 21:56:54', 1, 43),
	(44, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Molestiae nobis in molestiae sunt dignissimos excepturi. Laborum officia nulla et nihil consequatur. Tenetur expedita maxime dolorem rerum.', 'Vitae sunt autem ut.', 'default_webinar_2', '9583 Pacocha GardensnBernhardhaven, CT 30318-2647', 'http://runolfsdottir.biz/accusamus-id-id-voluptatem-minus.html', 0, '2021-04-17 21:56:54', '2021-04-17 21:56:54', 4, 44),
	(45, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Labore ducimus enim voluptate explicabo et. Perspiciatis voluptates facilis accusamus quia repudiandae at aut. Aut dolorem ut eaque nostrum iste qui sint.', 'Laborum rerum.', 'default_webinar_2', '85801 Nitzsche LoafnSouth Monicaborough, SD 28979', 'http://botsford.com/eius-facilis-quia-molestiae-saepe-ut-mollitia', 1, '2021-04-12 21:56:54', '2021-04-12 21:56:54', 4, 45),
	(46, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Et sint totam dolore et. Deserunt at perferendis voluptates accusamus. Et error ut voluptatem ut maiores asperiores ratione provident. Quo iste fuga ea illum iusto.', 'Est at sapiente.', 'default_webinar_2', '35513 Rau Drive Suite 058nDanaburgh, TX 88982-9952', 'http://www.runolfsdottir.com/voluptates-ut-est-quam-nisi-doloribus', 0, '2021-05-08 21:56:54', '2021-05-08 21:56:54', 12, 46),
	(47, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Voluptatibus repudiandae eius dolorem cupiditate voluptatum. Earum voluptas minima vero mollitia dolores sunt quas. Id est minus amet inventore cupiditate.', 'Quidem et error facere maiores harum labore.', 'default_webinar_1', '8750 Justina RadialnSouth General, TN 78050-1815', 'https://www.ruecker.com/itaque-officiis-eos-libero-quo-dolorem-quo-nulla', 1, '2021-03-27 21:56:54', '2021-03-27 21:56:54', 16, 47),
	(48, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Ab voluptatum debitis ipsum sunt. Non est voluptatum quibusdam corporis doloribus dolor alias et. Ipsum non nemo dolor est. Dignissimos minima necessitatibus aliquam sunt eveniet.', 'Necessitatibus aut ullam eos autem vero officia qui.', 'default_webinar_1', '37984 Mazie HillnTurnerborough, AZ 51324-3920', 'http://brakus.org/voluptatem-voluptatem-ipsum-soluta-et-ut-voluptas-numquam', 1, '2021-03-29 21:56:54', '2021-03-29 21:56:54', 2, 48),
	(49, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Sit enim quia aliquam et incidunt quasi quidem sed. Sunt quia qui veniam sit. Minima est autem eius ipsam quia. Alias nostrum et perspiciatis. Omnis laudantium est ea. Et asperiores provident deserunt beatae recusandae neque reiciendis.', 'In quia ex laborum quia excepturi aliquid voluptas ab.', 'default_webinar_2', '866 Beulah MountainnAvaview, OR 65190-5198', 'http://murray.com/', 0, '2021-05-06 21:56:54', '2021-05-06 21:56:54', 7, 49),
	(50, '2021-02-21 21:56:54', '2021-02-21 21:56:54', 'Voluptate velit voluptatem voluptate rerum quidem quaerat. Optio eos et qui exercitationem molestiae. Non ut ut sint voluptas. Laboriosam ut corporis vel vel quo iure soluta. Minus distinctio ad qui. Sed sed dolorem maiores id.', 'Eaque qui recusandae sed.', 'default_webinar_1', '431 Connelly SummitnPort Freddybury, UT 47085-3634', 'https://feest.org/omnis-laudantium-quibusdam-adipisci-sit-illum-voluptatem.html', 0, '2021-05-17 21:56:54', '2021-05-17 21:56:54', 9, 50),
	(51, '2021-02-21 23:13:58', '2021-02-22 00:59:25', 'Las mejores practicas de angular 9 en routas componentes servicios interceptore y demas implementaciones', 'Super Webinar angular 1 (La pelicula continua) 51', 'default_webinar_1', 'El fortin bloque 8 manzana 1511 solar 17', NULL, 0, '2021-02-23 22:00:00', '2021-02-22 22:00:00', 1, 53),
	(53, '2021-02-22 00:16:21', '2021-02-22 01:25:29', 'Las mejores practicas de angular 9 en routas componentes servicios interceptore y demas implementaciones', 'Super Webinar angular 1 (La pelicula continua) 51', 'default_webinar_2', 'El fortin bloque 8 manzana 1511 solar 17', NULL, 1, '2021-02-23 22:00:00', '2021-02-22 22:00:00', 1, 55),
	(54, '2021-02-22 00:16:33', '2021-02-22 00:16:33', 'Las mejores practicas de angular 9 en routas componentes servicios interceptore y demas implementaciones', 'Super Webinar angular 2 (La pelicula continua)', 'default_webinar_2', 'El fortin bloque 8 manzana 1511 solar 17', NULL, 0, '2021-02-23 22:00:00', '2021-02-22 22:00:00', 1, 56),
	(55, '2021-02-27 21:51:41', '2021-02-27 21:51:41', 'fer', 'zhunio', 'default_webinar_2', '12do Pasaje 56 N-O, Guayaquil, Ecuador', NULL, 0, '2021-10-05 00:00:00', '2021-11-01 00:00:00', 23, 57);
/* SQLINES DEMO ***  `webinars` ENABLE KEYS */;

/* SQLINES DEMO *** E=IFNULL(@OLD_SQL_MODE, '') */;
/* SQLINES DEMO *** _KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/* SQLINES DEMO *** ER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
