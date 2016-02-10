CREATE DATABASE cloudopting WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
ALTER DATABASE cloudopting OWNER TO postgres;
ALTER SCHEMA public OWNER TO postgres;
COMMENT ON SCHEMA public IS 'standard public schema';