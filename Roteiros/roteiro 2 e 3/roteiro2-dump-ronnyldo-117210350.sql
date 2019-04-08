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

ALTER TABLE ONLY public.tarefas DROP CONSTRAINT id_unique;
DROP TABLE public.tarefas;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tarefas; Type: TABLE; Schema: public; Owner: ronnyldo
--

CREATE TABLE public.tarefas (
    id bigint NOT NULL,
    descricao character varying(50),
    func_resp_cpf character(11),
    prioridade integer,
    status character(1),
    CONSTRAINT id_not_null CHECK ((id IS NOT NULL)),
    CONSTRAINT remuneracao_valida CHECK (((prioridade >= 0) AND (prioridade <= 32767)))
);


ALTER TABLE public.tarefas OWNER TO ronnyldo;

--
-- Data for Name: tarefas; Type: TABLE DATA; Schema: public; Owner: ronnyldo
--

INSERT INTO public.tarefas (id, descricao, func_resp_cpf, prioridade, status) VALUES (2147483646, 'limpar chão do corredor central', '98765432111', 0, 'F');
INSERT INTO public.tarefas (id, descricao, func_resp_cpf, prioridade, status) VALUES (2147483647, 'limpar janelas da sala 203', '98765432122', 1, 'F');
INSERT INTO public.tarefas (id, descricao, func_resp_cpf, prioridade, status) VALUES (2147483648, 'limpar portas do térreo', '32323232955', 4, 'A');
INSERT INTO public.tarefas (id, descricao, func_resp_cpf, prioridade, status) VALUES (2147483651, 'limpar portas do 1o andar', '32323232911', 32767, 'A');
INSERT INTO public.tarefas (id, descricao, func_resp_cpf, prioridade, status) VALUES (2147483652, 'limpar portas do 2o andar', '32323232911', 32766, 'A');


--
-- Name: id_unique; Type: CONSTRAINT; Schema: public; Owner: ronnyldo
--

ALTER TABLE ONLY public.tarefas
    ADD CONSTRAINT id_unique PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

