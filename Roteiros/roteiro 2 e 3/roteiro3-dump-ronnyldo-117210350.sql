--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_lotado_fkey1;
ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_lotado_fkey;
ALTER TABLE ONLY public.farmacia DROP CONSTRAINT farmacia_gerente_fkey;
ALTER TABLE ONLY public.farmacia DROP CONSTRAINT unico_gerente;
ALTER TABLE ONLY public.funcionario DROP CONSTRAINT lotado_em_unica_farmacia;
ALTER TABLE ONLY public.farmacia DROP CONSTRAINT id_unique;
ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_id_unique;
ALTER TABLE ONLY public.farmacia DROP CONSTRAINT apenas_uma_sede;
DROP TABLE public.funcionario;
DROP TABLE public.farmacia;
DROP TABLE public.cliente;
DROP TYPE public.tipo_funcionario;
DROP EXTENSION btree_gist;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: tipo_funcionario; Type: TYPE; Schema: public; Owner: ronnyldo
--

CREATE TYPE public.tipo_funcionario AS ENUM (
    'farmaceutico',
    'vendedor',
    'entregador',
    'caixa',
    'administrador'
);


ALTER TYPE public.tipo_funcionario OWNER TO ronnyldo;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: ronnyldo
--

CREATE TABLE public.cliente (
    nome character varying(30),
    "endereço" character varying(30),
    CONSTRAINT enderecos_validos CHECK (((("endereço")::text = 'residência'::text) OR (("endereço")::text = 'trabalho'::text) OR (("endereço")::text = 'outro'::text)))
);


ALTER TABLE public.cliente OWNER TO ronnyldo;

--
-- Name: farmacia; Type: TABLE; Schema: public; Owner: ronnyldo
--

CREATE TABLE public.farmacia (
    tipo character varying(10),
    bairro character varying(30),
    cidade character varying(30),
    estado character varying(30),
    id integer NOT NULL,
    gerente integer,
    tipo_gerente character varying(30),
    CONSTRAINT tipo_farmacia CHECK ((((tipo)::text = 'sede'::text) OR ((tipo)::text = 'filial'::text))),
    CONSTRAINT tipo_gerente_valido CHECK ((((tipo_gerente)::text = 'administrador'::text) OR ((tipo_gerente)::text = 'farmaceutico'::text)))
);


ALTER TABLE public.farmacia OWNER TO ronnyldo;

--
-- Name: funcionario; Type: TABLE; Schema: public; Owner: ronnyldo
--

CREATE TABLE public.funcionario (
    tipo public.tipo_funcionario,
    lotado integer,
    id integer NOT NULL
);


ALTER TABLE public.funcionario OWNER TO ronnyldo;

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: ronnyldo
--



--
-- Data for Name: farmacia; Type: TABLE DATA; Schema: public; Owner: ronnyldo
--



--
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: ronnyldo
--



--
-- Name: apenas_uma_sede; Type: CONSTRAINT; Schema: public; Owner: ronnyldo
--

ALTER TABLE ONLY public.farmacia
    ADD CONSTRAINT apenas_uma_sede EXCLUDE USING gist (tipo WITH =) WHERE (((tipo)::text = 'sede'::text));


--
-- Name: funcionario_id_unique; Type: CONSTRAINT; Schema: public; Owner: ronnyldo
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_id_unique UNIQUE (id);


--
-- Name: id_unique; Type: CONSTRAINT; Schema: public; Owner: ronnyldo
--

ALTER TABLE ONLY public.farmacia
    ADD CONSTRAINT id_unique UNIQUE (id);


--
-- Name: lotado_em_unica_farmacia; Type: CONSTRAINT; Schema: public; Owner: ronnyldo
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT lotado_em_unica_farmacia EXCLUDE USING gist (lotado WITH =) WHERE ((lotado IS NOT NULL));


--
-- Name: unico_gerente; Type: CONSTRAINT; Schema: public; Owner: ronnyldo
--

ALTER TABLE ONLY public.farmacia
    ADD CONSTRAINT unico_gerente EXCLUDE USING gist (gerente WITH =);


--
-- Name: farmacia_gerente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ronnyldo
--

ALTER TABLE ONLY public.farmacia
    ADD CONSTRAINT farmacia_gerente_fkey FOREIGN KEY (gerente) REFERENCES public.funcionario(id);


--
-- Name: funcionario_lotado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ronnyldo
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_lotado_fkey FOREIGN KEY (lotado) REFERENCES public.farmacia(id);


--
-- Name: funcionario_lotado_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: ronnyldo
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_lotado_fkey1 FOREIGN KEY (lotado) REFERENCES public.farmacia(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

