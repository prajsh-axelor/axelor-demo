--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_group (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    code character varying(255) NOT NULL,
    home_action character varying(255),
    name character varying(255) NOT NULL,
    navigation character varying(255),
    technical_staff boolean,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.auth_group OWNER TO axelor;

--
-- Name: auth_group_meta_permissions; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_group_meta_permissions (
    auth_group bigint NOT NULL,
    meta_permissions bigint NOT NULL
);


ALTER TABLE public.auth_group_meta_permissions OWNER TO axelor;

--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_group_permissions (
    auth_group bigint NOT NULL,
    permissions bigint NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO axelor;

--
-- Name: auth_group_roles; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_group_roles (
    auth_group bigint NOT NULL,
    roles bigint NOT NULL
);


ALTER TABLE public.auth_group_roles OWNER TO axelor;

--
-- Name: auth_group_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.auth_group_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_seq OWNER TO axelor;

--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_permission (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    can_create boolean,
    can_export boolean,
    can_read boolean,
    can_remove boolean,
    can_write boolean,
    condition_value character varying(1024),
    condition_params character varying(255),
    name character varying(255) NOT NULL,
    object character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.auth_permission OWNER TO axelor;

--
-- Name: auth_permission_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.auth_permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_seq OWNER TO axelor;

--
-- Name: auth_role; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_role (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    description character varying(255),
    name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.auth_role OWNER TO axelor;

--
-- Name: auth_role_meta_permissions; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_role_meta_permissions (
    auth_role bigint NOT NULL,
    meta_permissions bigint NOT NULL
);


ALTER TABLE public.auth_role_meta_permissions OWNER TO axelor;

--
-- Name: auth_role_permissions; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_role_permissions (
    auth_role bigint NOT NULL,
    permissions bigint NOT NULL
);


ALTER TABLE public.auth_role_permissions OWNER TO axelor;

--
-- Name: auth_role_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.auth_role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_role_seq OWNER TO axelor;

--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_user (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    activate_on date,
    blocked boolean,
    code character varying(255) NOT NULL,
    email character varying(255),
    expires_on date,
    home_action character varying(255),
    image oid,
    language character varying(255),
    name character varying(255) NOT NULL,
    no_help boolean,
    password character varying(255) NOT NULL,
    single_tab boolean,
    theme character varying(255),
    created_by bigint,
    updated_by bigint,
    group_id bigint
);


ALTER TABLE public.auth_user OWNER TO axelor;

--
-- Name: auth_user_meta_permissions; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_user_meta_permissions (
    auth_user bigint NOT NULL,
    meta_permissions bigint NOT NULL
);


ALTER TABLE public.auth_user_meta_permissions OWNER TO axelor;

--
-- Name: auth_user_permissions; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_user_permissions (
    auth_user bigint NOT NULL,
    permissions bigint NOT NULL
);


ALTER TABLE public.auth_user_permissions OWNER TO axelor;

--
-- Name: auth_user_roles; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.auth_user_roles (
    auth_user bigint NOT NULL,
    roles bigint NOT NULL
);


ALTER TABLE public.auth_user_roles OWNER TO axelor;

--
-- Name: auth_user_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.auth_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_seq OWNER TO axelor;

--
-- Name: demoimpl_person; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.demoimpl_person (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    age integer,
    attrs jsonb,
    first_name character varying(255),
    hobby character varying(255),
    last_name character varying(255),
    created_by bigint,
    updated_by bigint,
    email bigint
);


ALTER TABLE public.demoimpl_person OWNER TO axelor;

--
-- Name: demoimpl_person_email; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.demoimpl_person_email (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    email_id character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.demoimpl_person_email OWNER TO axelor;

--
-- Name: demoimpl_person_email_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.demoimpl_person_email_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demoimpl_person_email_seq OWNER TO axelor;

--
-- Name: demoimpl_person_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.demoimpl_person_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demoimpl_person_seq OWNER TO axelor;

--
-- Name: dms_file; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.dms_file (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    content text,
    content_type character varying(255),
    file_name character varying(255) NOT NULL,
    is_directory boolean,
    related_id bigint,
    related_model character varying(255),
    created_by bigint,
    updated_by bigint,
    meta_file bigint,
    parent bigint
);


ALTER TABLE public.dms_file OWNER TO axelor;

--
-- Name: dms_file_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.dms_file_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dms_file_seq OWNER TO axelor;

--
-- Name: dms_file_tag; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.dms_file_tag (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    code character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    style character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.dms_file_tag OWNER TO axelor;

--
-- Name: dms_file_tag_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.dms_file_tag_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dms_file_tag_seq OWNER TO axelor;

--
-- Name: dms_file_tags; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.dms_file_tags (
    dms_file bigint NOT NULL,
    tags bigint NOT NULL
);


ALTER TABLE public.dms_file_tags OWNER TO axelor;

--
-- Name: dms_permission; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.dms_permission (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    value character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint,
    file_id bigint,
    group_id bigint,
    permission_id bigint,
    user_id bigint
);


ALTER TABLE public.dms_permission OWNER TO axelor;

--
-- Name: dms_permission_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.dms_permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dms_permission_seq OWNER TO axelor;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO axelor;

--
-- Name: mail_address; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.mail_address (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    email_address character varying(255) NOT NULL,
    personal_name character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.mail_address OWNER TO axelor;

--
-- Name: mail_address_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.mail_address_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_address_seq OWNER TO axelor;

--
-- Name: mail_flags; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.mail_flags (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    is_archived boolean,
    is_read boolean,
    is_starred boolean,
    created_by bigint,
    updated_by bigint,
    message bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.mail_flags OWNER TO axelor;

--
-- Name: mail_flags_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.mail_flags_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_flags_seq OWNER TO axelor;

--
-- Name: mail_follower; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.mail_follower (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    related_id bigint,
    related_model character varying(255),
    created_by bigint,
    updated_by bigint,
    email bigint,
    user_id bigint
);


ALTER TABLE public.mail_follower OWNER TO axelor;

--
-- Name: mail_follower_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.mail_follower_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_follower_seq OWNER TO axelor;

--
-- Name: mail_message; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.mail_message (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    body text,
    message_id character varying(255),
    related_id bigint,
    related_model character varying(255),
    related_name character varying(255),
    subject character varying(255),
    summary character varying(255),
    type character varying(255),
    created_by bigint,
    updated_by bigint,
    author bigint,
    email_from bigint,
    parent bigint,
    root bigint
);


ALTER TABLE public.mail_message OWNER TO axelor;

--
-- Name: mail_message_recipients; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.mail_message_recipients (
    mail_message bigint NOT NULL,
    recipients bigint NOT NULL
);


ALTER TABLE public.mail_message_recipients OWNER TO axelor;

--
-- Name: mail_message_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.mail_message_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_message_seq OWNER TO axelor;

--
-- Name: meta_action; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_action (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    home boolean,
    model character varying(255),
    module character varying(255),
    name character varying(255) NOT NULL,
    priority integer,
    type character varying(255) NOT NULL,
    xml text NOT NULL,
    xml_id character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_action OWNER TO axelor;

--
-- Name: meta_action_menu; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_action_menu (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    category character varying(255),
    hidden boolean,
    module character varying(255),
    name character varying(255) NOT NULL,
    order_seq integer,
    priority integer,
    title character varying(255) NOT NULL,
    xml_id character varying(255),
    created_by bigint,
    updated_by bigint,
    action bigint,
    parent bigint
);


ALTER TABLE public.meta_action_menu OWNER TO axelor;

--
-- Name: meta_action_menu_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_action_menu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_action_menu_seq OWNER TO axelor;

--
-- Name: meta_action_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_action_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_action_seq OWNER TO axelor;

--
-- Name: meta_attachment; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_attachment (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    object_id bigint NOT NULL,
    object_name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint,
    meta_file bigint NOT NULL
);


ALTER TABLE public.meta_attachment OWNER TO axelor;

--
-- Name: meta_attachment_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_attachment_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_attachment_seq OWNER TO axelor;

--
-- Name: meta_enum; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_enum (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_enum OWNER TO axelor;

--
-- Name: meta_enum_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_enum_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_enum_seq OWNER TO axelor;

--
-- Name: meta_field; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_field (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    description text,
    is_json boolean,
    label character varying(255),
    mapped_by character varying(255),
    name character varying(255) NOT NULL,
    package_name character varying(255),
    relationship character varying(255),
    type_name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint,
    meta_model bigint
);


ALTER TABLE public.meta_field OWNER TO axelor;

--
-- Name: meta_field_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_field_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_field_seq OWNER TO axelor;

--
-- Name: meta_file; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_file (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    description character varying(255),
    file_name character varying(255) NOT NULL,
    file_path character varying(255) NOT NULL,
    file_size bigint,
    file_type character varying(255),
    file_size_text character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_file OWNER TO axelor;

--
-- Name: meta_file_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_file_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_file_seq OWNER TO axelor;

--
-- Name: meta_filter; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_filter (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    filter_custom text,
    filter_view character varying(255) NOT NULL,
    filters character varying(255),
    name character varying(255) NOT NULL,
    shared boolean,
    title character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.meta_filter OWNER TO axelor;

--
-- Name: meta_filter_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_filter_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_filter_seq OWNER TO axelor;

--
-- Name: meta_help; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_help (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    field_name character varying(255),
    help_value character varying(1024) NOT NULL,
    language character varying(255) NOT NULL,
    menu_name character varying(255),
    model_name character varying(255),
    style character varying(255),
    help_type character varying(255),
    view_name character varying(255)
);


ALTER TABLE public.meta_help OWNER TO axelor;

--
-- Name: meta_help_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_help_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_help_seq OWNER TO axelor;

--
-- Name: meta_json_field; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_json_field (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    context_field character varying(255),
    context_field_target character varying(255),
    context_field_target_name character varying(255),
    context_field_title character varying(255),
    context_field_value character varying(255),
    default_value character varying(255),
    domain character varying(255),
    enum_type character varying(255),
    form_view character varying(255),
    grid_view character varying(255),
    help character varying(255),
    is_hidden boolean,
    hide_if character varying(255),
    include_if character varying(255),
    max_size integer,
    min_size integer,
    model_name character varying(255) NOT NULL,
    model_field character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    name_field boolean,
    on_change character varying(255),
    on_click character varying(255),
    decimal_precision integer,
    is_readonly boolean,
    readonly_if character varying(255),
    regex character varying(255),
    is_required boolean,
    required_if character varying(255),
    decimal_scale integer,
    selection character varying(255),
    sequence integer,
    show_if character varying(255),
    target_model character varying(255),
    title character varying(255),
    type_name character varying(255) NOT NULL,
    value_expr text,
    visible_in_grid boolean,
    widget character varying(255),
    widget_attrs jsonb,
    created_by bigint,
    updated_by bigint,
    json_model bigint,
    target_json_model bigint
);


ALTER TABLE public.meta_json_field OWNER TO axelor;

--
-- Name: meta_json_field_roles; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_json_field_roles (
    meta_json_field bigint NOT NULL,
    roles bigint NOT NULL
);


ALTER TABLE public.meta_json_field_roles OWNER TO axelor;

--
-- Name: meta_json_field_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_json_field_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_json_field_seq OWNER TO axelor;

--
-- Name: meta_json_model; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_json_model (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    menu_background character varying(255),
    menu_icon character varying(255),
    menu_order integer,
    menu_title character varying(255),
    menu_top boolean,
    name character varying(255) NOT NULL,
    name_field character varying(255),
    on_new character varying(255),
    on_save character varying(255),
    title character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint,
    action bigint,
    form_view bigint,
    grid_view bigint,
    menu bigint,
    menu_parent bigint
);


ALTER TABLE public.meta_json_model OWNER TO axelor;

--
-- Name: meta_json_model_roles; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_json_model_roles (
    meta_json_model bigint NOT NULL,
    roles bigint NOT NULL
);


ALTER TABLE public.meta_json_model_roles OWNER TO axelor;

--
-- Name: meta_json_model_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_json_model_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_json_model_seq OWNER TO axelor;

--
-- Name: meta_json_record; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_json_record (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    json_model character varying(255) NOT NULL,
    name character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_json_record OWNER TO axelor;

--
-- Name: meta_json_record_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_json_record_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_json_record_seq OWNER TO axelor;

--
-- Name: meta_menu; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_menu (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    condition_to_check character varying(1024),
    hidden boolean,
    icon character varying(255),
    icon_background character varying(255),
    left_menu boolean,
    link character varying(255),
    mobile_menu boolean,
    module character varying(255),
    module_to_check character varying(255),
    name character varying(255) NOT NULL,
    order_seq integer,
    priority integer,
    tag character varying(255),
    tag_count boolean,
    tag_get character varying(255),
    tag_style character varying(255),
    title character varying(255) NOT NULL,
    top_menu boolean,
    xml_id character varying(255),
    created_by bigint,
    updated_by bigint,
    action bigint,
    parent bigint,
    user_id bigint
);


ALTER TABLE public.meta_menu OWNER TO axelor;

--
-- Name: meta_menu_groups; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_menu_groups (
    menus bigint NOT NULL,
    groups bigint NOT NULL
);


ALTER TABLE public.meta_menu_groups OWNER TO axelor;

--
-- Name: meta_menu_roles; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_menu_roles (
    menus bigint NOT NULL,
    roles bigint NOT NULL
);


ALTER TABLE public.meta_menu_roles OWNER TO axelor;

--
-- Name: meta_menu_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_menu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_menu_seq OWNER TO axelor;

--
-- Name: meta_model; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_model (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    full_name character varying(255),
    name character varying(255) NOT NULL,
    package_name character varying(255) NOT NULL,
    table_name character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_model OWNER TO axelor;

--
-- Name: meta_model_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_model_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_model_seq OWNER TO axelor;

--
-- Name: meta_module; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_module (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    application boolean,
    description text,
    installed boolean,
    module_version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    pending boolean,
    removable boolean,
    title character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_module OWNER TO axelor;

--
-- Name: meta_module_depends; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_module_depends (
    module_id bigint NOT NULL,
    depend_id bigint NOT NULL
);


ALTER TABLE public.meta_module_depends OWNER TO axelor;

--
-- Name: meta_module_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_module_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_module_seq OWNER TO axelor;

--
-- Name: meta_permission; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_permission (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    active boolean,
    name character varying(255) NOT NULL,
    object character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_permission OWNER TO axelor;

--
-- Name: meta_permission_rule; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_permission_rule (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    can_export boolean,
    can_read boolean,
    can_write boolean,
    field character varying(255) NOT NULL,
    hide_if character varying(255),
    readonly_if character varying(255),
    created_by bigint,
    updated_by bigint,
    meta_permission bigint NOT NULL
);


ALTER TABLE public.meta_permission_rule OWNER TO axelor;

--
-- Name: meta_permission_rule_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_permission_rule_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_permission_rule_seq OWNER TO axelor;

--
-- Name: meta_permission_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_permission_seq OWNER TO axelor;

--
-- Name: meta_schedule; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_schedule (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    active boolean,
    cron character varying(255) NOT NULL,
    description character varying(255),
    job character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_schedule OWNER TO axelor;

--
-- Name: meta_schedule_param; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_schedule_param (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    name character varying(255),
    value character varying(255),
    created_by bigint,
    updated_by bigint,
    schedule bigint NOT NULL
);


ALTER TABLE public.meta_schedule_param OWNER TO axelor;

--
-- Name: meta_schedule_param_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_schedule_param_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_schedule_param_seq OWNER TO axelor;

--
-- Name: meta_schedule_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_schedule_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_schedule_seq OWNER TO axelor;

--
-- Name: meta_select; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_select (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    module character varying(255),
    name character varying(255) NOT NULL,
    priority integer NOT NULL,
    xml_id character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_select OWNER TO axelor;

--
-- Name: meta_select_item; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_select_item (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    data character varying(1024),
    hidden boolean,
    icon character varying(255),
    order_seq integer,
    title character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint,
    select_id bigint NOT NULL
);


ALTER TABLE public.meta_select_item OWNER TO axelor;

--
-- Name: meta_select_item_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_select_item_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_select_item_seq OWNER TO axelor;

--
-- Name: meta_select_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_select_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_select_seq OWNER TO axelor;

--
-- Name: meta_sequence; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_sequence (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    increment_by integer NOT NULL,
    initial_value bigint NOT NULL,
    name character varying(255) NOT NULL,
    next_value bigint NOT NULL,
    padding integer NOT NULL,
    prefix character varying(255),
    suffix character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_sequence OWNER TO axelor;

--
-- Name: meta_translation; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_translation (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    message_key character varying(1024) NOT NULL,
    language character varying(255) NOT NULL,
    message_value character varying(1024)
);


ALTER TABLE public.meta_translation OWNER TO axelor;

--
-- Name: meta_translation_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_translation_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_translation_seq OWNER TO axelor;

--
-- Name: meta_view; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_view (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    extension boolean,
    help_link character varying(255),
    model character varying(255),
    module character varying(255),
    name character varying(255) NOT NULL,
    priority integer NOT NULL,
    title character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    xml text NOT NULL,
    xml_id character varying(255),
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.meta_view OWNER TO axelor;

--
-- Name: meta_view_custom; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_view_custom (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    model character varying(255),
    name character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    xml text NOT NULL,
    created_by bigint,
    updated_by bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.meta_view_custom OWNER TO axelor;

--
-- Name: meta_view_custom_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_view_custom_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_view_custom_seq OWNER TO axelor;

--
-- Name: meta_view_groups; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.meta_view_groups (
    views bigint NOT NULL,
    groups bigint NOT NULL
);


ALTER TABLE public.meta_view_groups OWNER TO axelor;

--
-- Name: meta_view_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.meta_view_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_view_seq OWNER TO axelor;

--
-- Name: partner_address; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_address (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    area character varying(255) NOT NULL,
    attrs jsonb,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    street character varying(255) NOT NULL,
    zip character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint,
    country bigint,
    partner bigint NOT NULL
);


ALTER TABLE public.partner_address OWNER TO axelor;

--
-- Name: partner_address_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.partner_address_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_address_seq OWNER TO axelor;

--
-- Name: partner_company; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_company (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    company_name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.partner_company OWNER TO axelor;

--
-- Name: partner_company_partner; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_company_partner (
    company bigint NOT NULL,
    partner bigint NOT NULL
);


ALTER TABLE public.partner_company_partner OWNER TO axelor;

--
-- Name: partner_company_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.partner_company_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_company_seq OWNER TO axelor;

--
-- Name: partner_country; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_country (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    code character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.partner_country OWNER TO axelor;

--
-- Name: partner_country_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.partner_country_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_country_seq OWNER TO axelor;

--
-- Name: partner_department; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_department (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    code character varying(255),
    is_technical boolean,
    name character varying(255),
    created_by bigint,
    updated_by bigint,
    partner bigint
);


ALTER TABLE public.partner_department OWNER TO axelor;

--
-- Name: partner_department_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.partner_department_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_department_seq OWNER TO axelor;

--
-- Name: partner_email; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_email (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    email_id character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.partner_email OWNER TO axelor;

--
-- Name: partner_email_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.partner_email_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_email_seq OWNER TO axelor;

--
-- Name: partner_partner; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_partner (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    date_of_birth date,
    first_name character varying(255),
    full_name character varying(255),
    image oid,
    is_techi boolean,
    last_name character varying(255),
    partner_seq character varying(255),
    created_by bigint,
    updated_by bigint,
    department bigint,
    email bigint
);


ALTER TABLE public.partner_partner OWNER TO axelor;

--
-- Name: partner_partner_project; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_partner_project (
    partner_partner bigint NOT NULL,
    project bigint NOT NULL
);


ALTER TABLE public.partner_partner_project OWNER TO axelor;

--
-- Name: partner_partner_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.partner_partner_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_partner_seq OWNER TO axelor;

--
-- Name: partner_project; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_project (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    description character varying(255),
    name character varying(255) NOT NULL,
    notes character varying(255),
    priority integer,
    created_by bigint,
    updated_by bigint,
    parent bigint
);


ALTER TABLE public.partner_project OWNER TO axelor;

--
-- Name: partner_project_member_set; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_project_member_set (
    partner_project bigint NOT NULL,
    member_set bigint NOT NULL
);


ALTER TABLE public.partner_project_member_set OWNER TO axelor;

--
-- Name: partner_project_partner_set; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.partner_project_partner_set (
    partner_project bigint NOT NULL,
    partner_set bigint NOT NULL
);


ALTER TABLE public.partner_project_partner_set OWNER TO axelor;

--
-- Name: partner_project_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.partner_project_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_project_seq OWNER TO axelor;

--
-- Name: project_task; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.project_task (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    create_datet timestamp without time zone NOT NULL,
    name character varying(255) NOT NULL,
    notes character varying(255),
    priority integer,
    progress integer,
    state character varying(255),
    created_by bigint,
    updated_by bigint,
    project bigint,
    project_task bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.project_task OWNER TO axelor;

--
-- Name: project_task_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.project_task_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_task_seq OWNER TO axelor;

--
-- Name: project_work; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.project_work (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    work_date date NOT NULL,
    work_hours time without time zone,
    name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint,
    task bigint NOT NULL,
    user_id bigint
);


ALTER TABLE public.project_work OWNER TO axelor;

--
-- Name: project_work_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.project_work_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_work_seq OWNER TO axelor;

--
-- Name: team_task; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.team_task (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    description text,
    name character varying(255) NOT NULL,
    priority character varying(255),
    related_id bigint,
    related_model character varying(255),
    related_name character varying(255),
    sequence integer,
    status character varying(255),
    task_date date,
    task_deadline date,
    task_duration integer,
    created_by bigint,
    updated_by bigint,
    assigned_to bigint,
    team bigint
);


ALTER TABLE public.team_task OWNER TO axelor;

--
-- Name: team_task_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.team_task_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_task_seq OWNER TO axelor;

--
-- Name: team_team; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.team_team (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    attrs jsonb,
    description text,
    image oid,
    name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint
);


ALTER TABLE public.team_team OWNER TO axelor;

--
-- Name: team_team_members; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.team_team_members (
    team_team bigint NOT NULL,
    members bigint NOT NULL
);


ALTER TABLE public.team_team_members OWNER TO axelor;

--
-- Name: team_team_roles; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.team_team_roles (
    team_team bigint NOT NULL,
    roles bigint NOT NULL
);


ALTER TABLE public.team_team_roles OWNER TO axelor;

--
-- Name: team_team_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.team_team_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_team_seq OWNER TO axelor;

--
-- Name: team_topic; Type: TABLE; Schema: public; Owner: axelor
--

CREATE TABLE public.team_topic (
    id bigint NOT NULL,
    archived boolean,
    version integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    active boolean,
    attrs jsonb,
    description text,
    name character varying(255) NOT NULL,
    created_by bigint,
    updated_by bigint,
    team bigint NOT NULL
);


ALTER TABLE public.team_topic OWNER TO axelor;

--
-- Name: team_topic_seq; Type: SEQUENCE; Schema: public; Owner: axelor
--

CREATE SEQUENCE public.team_topic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_topic_seq OWNER TO axelor;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_group (id, archived, version, created_on, updated_on, code, home_action, name, navigation, technical_staff, created_by, updated_by) FROM stdin;
1	\N	1	2019-07-05 13:49:35.947	2019-07-05 13:49:35.961	admins	\N	Administrators	\N	f	1	\N
2	\N	0	2019-07-05 13:49:43.567	\N	users	\N	Users	\N	f	1	\N
\.


--
-- Data for Name: auth_group_meta_permissions; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_group_meta_permissions (auth_group, meta_permissions) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_group_permissions (auth_group, permissions) FROM stdin;
\.


--
-- Data for Name: auth_group_roles; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_group_roles (auth_group, roles) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_permission (id, archived, version, created_on, updated_on, can_create, can_export, can_read, can_remove, can_write, condition_value, condition_params, name, object, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:44.1	\N	t	t	t	t	t	\N	\N	perm.auth.all	com.axelor.auth.db.*	1	\N
2	\N	0	2019-07-05 13:49:44.111	\N	t	\N	\N	\N	\N	\N	\N	perm.auth.create	com.axelor.auth.db.*	1	\N
3	\N	0	2019-07-05 13:49:44.122	\N	\N	\N	t	t	t	self.createdBy = ?	__user__	perm.auth.self	com.axelor.auth.db.*	1	\N
4	\N	0	2019-07-05 13:49:44.135	\N	\N	\N	t	\N	t	self.code = ?	__user__.code	perm.auth.my	com.axelor.auth.db.User	1	\N
\.


--
-- Data for Name: auth_role; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_role (id, archived, version, created_on, updated_on, description, name, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:44.152	\N	Super	role.super	1	\N
2	\N	0	2019-07-05 13:49:44.168	\N	Moderator	role.moderator	1	\N
3	\N	0	2019-07-05 13:49:44.182	\N	Manager	role.manager	1	\N
4	\N	0	2019-07-05 13:49:44.197	\N	User	role.user	1	\N
\.


--
-- Data for Name: auth_role_meta_permissions; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_role_meta_permissions (auth_role, meta_permissions) FROM stdin;
\.


--
-- Data for Name: auth_role_permissions; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_role_permissions (auth_role, permissions) FROM stdin;
1	1
2	3
2	2
3	3
4	4
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_user (id, archived, version, created_on, updated_on, activate_on, blocked, code, email, expires_on, home_action, image, language, name, no_help, password, single_tab, theme, created_by, updated_by, group_id) FROM stdin;
1	\N	0	2019-07-05 13:49:35.954	\N	\N	f	admin	\N	\N	\N	\N	\N	Administrator	f	$shiro1$SHA-512$500000$UoxOx2XfETtiX2cIlFMbFw==$7qOIngEI8nypoTBlfgTtciCAZ5/6jf3IVp/juHRzLuOPbq3JKSp9pzakcjA1+JG0clsKsMG3dZjaLHUljCKkBw==	f	\N	1	\N	1
2	\N	0	2019-07-05 13:49:44.05	\N	\N	f	demo	\N	\N	\N	\N	\N	Demo User	f	$shiro1$SHA-512$500000$nE04y0o97D36The+ggsTjQ==$mxSAY+TlQvCf5GRRWWllsq7FezFRGfsB380t6fvdXg5uC6dl/bdc/Zz+49Zh9ib6YODu4fCmzXwTH5Fk6tbzwA==	f	\N	1	\N	2
\.


--
-- Data for Name: auth_user_meta_permissions; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_user_meta_permissions (auth_user, meta_permissions) FROM stdin;
\.


--
-- Data for Name: auth_user_permissions; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_user_permissions (auth_user, permissions) FROM stdin;
\.


--
-- Data for Name: auth_user_roles; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.auth_user_roles (auth_user, roles) FROM stdin;
\.


--
-- Data for Name: demoimpl_person; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.demoimpl_person (id, archived, version, created_on, updated_on, age, attrs, first_name, hobby, last_name, created_by, updated_by, email) FROM stdin;
1	\N	0	2019-07-05 13:49:46.548	\N	22	\N	prajjwal	reading	singh	1	\N	\N
2	\N	0	2019-07-05 13:49:46.551	\N	20	\N	kinjal	workout	singh	1	\N	\N
3	\N	0	2019-07-05 13:49:46.553	\N	17	\N	prerna	drawing	singh	1	\N	\N
4	\N	0	2019-07-05 13:49:46.554	\N	22	\N	aryan	riding	raj	1	\N	\N
5	\N	0	2019-07-05 13:49:46.556	\N	22	\N	vivek	cooking	singh	1	\N	\N
6	\N	0	2019-07-05 13:49:46.802	\N	22	\N	prajjwal	reading	singh	1	\N	\N
7	\N	0	2019-07-05 13:49:46.803	\N	20	\N	kinjal	workout	singh	1	\N	\N
8	\N	0	2019-07-05 13:49:46.804	\N	17	\N	prerna	drawing	singh	1	\N	\N
9	\N	0	2019-07-05 13:49:46.805	\N	22	\N	aryan	riding	raj	1	\N	\N
10	\N	0	2019-07-05 13:49:46.807	\N	22	\N	vivek	cooking	singh	1	\N	\N
\.


--
-- Data for Name: demoimpl_person_email; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.demoimpl_person_email (id, archived, version, created_on, updated_on, attrs, email_id, created_by, updated_by) FROM stdin;
\.


--
-- Data for Name: dms_file; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.dms_file (id, archived, version, created_on, updated_on, content, content_type, file_name, is_directory, related_id, related_model, created_by, updated_by, meta_file, parent) FROM stdin;
\.


--
-- Data for Name: dms_file_tag; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.dms_file_tag (id, archived, version, created_on, updated_on, code, name, style, created_by, updated_by) FROM stdin;
\.


--
-- Data for Name: dms_file_tags; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.dms_file_tags (dms_file, tags) FROM stdin;
\.


--
-- Data for Name: dms_permission; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.dms_permission (id, archived, version, created_on, updated_on, value, created_by, updated_by, file_id, group_id, permission_id, user_id) FROM stdin;
\.


--
-- Data for Name: mail_address; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.mail_address (id, archived, version, created_on, updated_on, email_address, personal_name, created_by, updated_by) FROM stdin;
\.


--
-- Data for Name: mail_flags; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.mail_flags (id, archived, version, created_on, updated_on, is_archived, is_read, is_starred, created_by, updated_by, message, user_id) FROM stdin;
\.


--
-- Data for Name: mail_follower; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.mail_follower (id, archived, version, created_on, updated_on, related_id, related_model, created_by, updated_by, email, user_id) FROM stdin;
\.


--
-- Data for Name: mail_message; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.mail_message (id, archived, version, created_on, updated_on, body, message_id, related_id, related_model, related_name, subject, summary, type, created_by, updated_by, author, email_from, parent, root) FROM stdin;
\.


--
-- Data for Name: mail_message_recipients; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.mail_message_recipients (mail_message, recipients) FROM stdin;
\.


--
-- Data for Name: meta_action; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_action (id, archived, version, created_on, updated_on, home, model, module, name, priority, type, xml, xml_id, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:38.884	\N	f	\N	axelor-core	action-view-defaults	0	action-attrs	<action-attrs name="action-view-defaults">\n  <attribute name="value" expr="#{defaultType}" for="type"/>\n</action-attrs>\n	\N	1	\N
2	\N	0	2019-07-05 13:49:38.911	\N	\N	com.axelor.meta.db.MetaMenu	axelor-core	menus.fav	0	action-view	<action-view name="menus.fav" model="com.axelor.meta.db.MetaMenu" title="Favorites">\n  <view name="meta-menu-fav-grid" type="grid"/>\n  <view name="meta-menu-fav-form" type="form"/>\n  <domain>self.user = :__user__ and self.link is not null</domain>\n</action-view>\n	\N	1	\N
3	\N	0	2019-07-05 13:49:38.935	\N	f	\N	axelor-core	action-view-validate	0	action-method	<action-method name="action-view-validate">\n  <call method="validateView" class="com.axelor.meta.web.MetaController"/>\n</action-method>\n	\N	1	\N
4	\N	0	2019-07-05 13:49:38.954	\N	f	\N	axelor-core	action-action-validate	0	action-method	<action-method name="action-action-validate">\n  <call method="validateAction" class="com.axelor.meta.web.MetaController"/>\n</action-method>\n	\N	1	\N
5	\N	0	2019-07-05 13:49:38.97	\N	f	\N	axelor-core	action-meta-restore-all	0	action-method	<action-method name="action-meta-restore-all">\n  <call method="restoreAll" class="com.axelor.meta.web.MetaController"/>\n</action-method>\n	\N	1	\N
6	\N	0	2019-07-05 13:49:38.987	\N	f	\N	axelor-core	meta-field-method-open-model	0	action-method	<action-method name="meta-field-method-open-model">\n  <call method="openModel" class="com.axelor.meta.web.MetaController"/>\n</action-method>\n	\N	1	\N
7	\N	0	2019-07-05 13:49:39.012	\N	\N	com.axelor.auth.db.User	axelor-core	action-auth-users	0	action-view	<action-view name="action-auth-users" model="com.axelor.auth.db.User" title="Users">\n  <view name="user-grid" type="grid"/>\n  <view name="user-form" type="form"/>\n</action-view>\n	\N	1	\N
8	\N	0	2019-07-05 13:49:39.028	\N	\N	com.axelor.auth.db.Group	axelor-core	action-auth-groups	0	action-view	<action-view name="action-auth-groups" model="com.axelor.auth.db.Group" title="Groups">\n  <view name="group-grid" type="grid"/>\n  <view name="group-form" type="form"/>\n</action-view>\n	\N	1	\N
9	\N	0	2019-07-05 13:49:39.044	\N	\N	com.axelor.auth.db.Role	axelor-core	action-auth-roles	0	action-view	<action-view name="action-auth-roles" model="com.axelor.auth.db.Role" title="Roles">\n  <view name="role-grid" type="grid"/>\n  <view name="role-form" type="form"/>\n</action-view>\n	\N	1	\N
10	\N	0	2019-07-05 13:49:39.063	\N	\N	com.axelor.auth.db.Permission	axelor-core	action-auth-permissions	0	action-view	<action-view name="action-auth-permissions" model="com.axelor.auth.db.Permission" title="Permissions">\n  <view name="permission-grid" type="grid"/>\n  <view name="permission-form" type="form"/>\n</action-view>\n	\N	1	\N
11	\N	0	2019-07-05 13:49:39.082	\N	\N	com.axelor.meta.db.MetaModule	axelor-core	meta.modules	0	action-view	<action-view name="meta.modules" model="com.axelor.meta.db.MetaModule" title="Modules">\n  <view name="meta-module-grid" type="grid"/>\n  <view name="meta-module-form" type="form"/>\n</action-view>\n	\N	1	\N
12	\N	0	2019-07-05 13:49:39.1	\N	\N	com.axelor.meta.db.MetaModel	axelor-core	action-meta-model-views	0	action-view	<action-view name="action-meta-model-views" model="com.axelor.meta.db.MetaModel" title="Models">\n  <view name="meta-model-grid" type="grid"/>\n  <view name="meta-model-form" type="form"/>\n</action-view>\n	\N	1	\N
13	\N	0	2019-07-05 13:49:39.118	\N	\N	com.axelor.meta.db.MetaView	axelor-core	action-meta-views	0	action-view	<action-view name="action-meta-views" model="com.axelor.meta.db.MetaView" title="Views">\n  <view name="meta-view-grid" type="grid"/>\n  <view name="meta-view-form" type="form"/>\n</action-view>\n	\N	1	\N
14	\N	0	2019-07-05 13:49:39.134	\N	\N	com.axelor.meta.db.MetaViewCustom	axelor-core	action-meta-views-my	0	action-view	<action-view name="action-meta-views-my" model="com.axelor.meta.db.MetaViewCustom" title="All Custom Views">\n  <view name="meta-view-custom-grid" type="grid"/>\n  <view name="meta-view-custom-form" type="form"/>\n  <domain>self.user = :__user__</domain>\n</action-view>\n	\N	1	\N
15	\N	0	2019-07-05 13:49:39.154	\N	\N	com.axelor.meta.db.MetaMenu	axelor-core	action-meta-menus	0	action-view	<action-view name="action-meta-menus" model="com.axelor.meta.db.MetaMenu" title="Menus">\n  <view name="meta-menu-grid" type="grid"/>\n  <view name="meta-menu-form" type="form"/>\n</action-view>\n	\N	1	\N
16	\N	0	2019-07-05 13:49:39.171	\N	\N	com.axelor.meta.db.MetaAction	axelor-core	action-meta-actions	0	action-view	<action-view name="action-meta-actions" model="com.axelor.meta.db.MetaAction" title="Actions">\n  <view name="meta-action-grid" type="grid"/>\n  <view name="meta-action-form" type="form"/>\n</action-view>\n	\N	1	\N
17	\N	0	2019-07-05 13:49:39.187	\N	\N	com.axelor.meta.db.MetaSelect	axelor-core	action-meta-select	0	action-view	<action-view name="action-meta-select" model="com.axelor.meta.db.MetaSelect" title="Selects">\n  <view name="meta-select-grid" type="grid"/>\n  <view name="meta-select-form" type="form"/>\n</action-view>\n	\N	1	\N
18	\N	0	2019-07-05 13:49:39.203	\N	\N	com.axelor.meta.db.MetaActionMenu	axelor-core	action-meta-action-menus	0	action-view	<action-view name="action-meta-action-menus" model="com.axelor.meta.db.MetaActionMenu" title="Action Menus">\n  <view name="meta-action-menu-grid" type="grid"/>\n  <view name="meta-action-menu-form" type="form"/>\n</action-view>\n	\N	1	\N
19	\N	0	2019-07-05 13:49:39.22	\N	\N	com.axelor.meta.db.MetaTranslation	axelor-core	action-meta-translations	0	action-view	<action-view name="action-meta-translations" model="com.axelor.meta.db.MetaTranslation" title="All Translations">\n  <view name="meta-translations-grid" type="grid"/>\n  <view name="meta-translations-form" type="form"/>\n</action-view>\n	\N	1	\N
20	\N	0	2019-07-05 13:49:39.237	\N	\N	com.axelor.meta.db.MetaHelp	axelor-core	action-meta-help-views	0	action-view	<action-view name="action-meta-help-views" model="com.axelor.meta.db.MetaHelp" title="View Help">\n  <view name="meta-help-view-grid" type="grid"/>\n  <view name="meta-help-view-form" type="form"/>\n  <domain>self.menu is null</domain>\n</action-view>\n	\N	1	\N
21	\N	0	2019-07-05 13:49:39.253	\N	\N	com.axelor.meta.db.MetaHelp	axelor-core	action-meta-help-menus	0	action-view	<action-view name="action-meta-help-menus" model="com.axelor.meta.db.MetaHelp" title="Menu Help">\n  <view name="meta-help-menu-grid" type="grid"/>\n  <view name="meta-help-menu-form" type="form"/>\n  <domain>self.menu is not null</domain>\n</action-view>\n	\N	1	\N
22	\N	0	2019-07-05 13:49:39.273	\N	\N	com.axelor.meta.db.MetaView	axelor-core	meta.charts	0	action-view	<action-view name="meta.charts" model="com.axelor.meta.db.MetaView" title="All Charts">\n  <view name="meta-view-chart-grid" type="grid"/>\n  <view name="meta-view-form" type="form"/>\n  <domain>self.type = :defaultType</domain>\n  <context name="defaultType" expr="chart"/>\n</action-view>\n	\N	1	\N
23	\N	0	2019-07-05 13:49:39.29	\N	\N	com.axelor.meta.db.MetaSchedule	axelor-core	meta.jobs	0	action-view	<action-view name="meta.jobs" model="com.axelor.meta.db.MetaSchedule" title="All Schedules">\n  <view name="meta-schedule-grid" type="grid"/>\n  <view name="meta-schedule-form" type="form"/>\n</action-view>\n	\N	1	\N
24	\N	0	2019-07-05 13:49:40.199	\N	f	\N	axelor-core	action-condition-user-validCode	0	action-condition	<action-condition name="action-condition-user-validCode">\n  <check if="code?.length() &lt; 2" field="code" error="Code length should be greater than 2."/>\n</action-condition>\n	\N	1	\N
25	\N	0	2019-07-05 13:49:40.22	\N	f	\N	axelor-core	action-condition-user-validName	0	action-condition	<action-condition name="action-condition-user-validName">\n  <check if="name?.length() &lt; 2" field="name" error="Name length should be greater than 2."/>\n</action-condition>\n	\N	1	\N
26	\N	0	2019-07-05 13:49:40.393	\N	\N	com.axelor.mail.db.MailMessage	axelor-core	mail.inbox	0	action-view	<action-view name="mail.inbox" model="com.axelor.mail.db.MailMessage" title="Inbox">\n  <view name="mail-thread-inbox" type="form"/>\n  <view-param name="show-toolbar" value="false"/>\n</action-view>\n	\N	1	\N
27	\N	0	2019-07-05 13:49:40.413	\N	\N	com.axelor.mail.db.MailMessage	axelor-core	mail.unread	0	action-view	<action-view name="mail.unread" model="com.axelor.mail.db.MailMessage" title="Unread">\n  <view name="mail-thread-inbox" type="form"/>\n  <view-param name="show-toolbar" value="false"/>\n  <view-param name="forceTitle" value="true"/>\n</action-view>\n	\N	1	\N
28	\N	0	2019-07-05 13:49:40.433	\N	\N	com.axelor.mail.db.MailMessage	axelor-core	mail.important	0	action-view	<action-view name="mail.important" model="com.axelor.mail.db.MailMessage" title="Important">\n  <view name="mail-thread-important" type="form"/>\n  <view-param name="show-toolbar" value="false"/>\n</action-view>\n	\N	1	\N
29	\N	0	2019-07-05 13:49:40.454	\N	\N	com.axelor.mail.db.MailMessage	axelor-core	mail.archive	0	action-view	<action-view name="mail.archive" model="com.axelor.mail.db.MailMessage" title="Archived">\n  <view name="mail-thread-archive" type="form"/>\n  <view-param name="show-toolbar" value="false"/>\n</action-view>\n	\N	1	\N
30	\N	0	2019-07-05 13:49:40.645	\N	f	\N	axelor-core	action-condition-group-validName	0	action-condition	<action-condition name="action-condition-group-validName">\n  <check if="name?.length() &lt; 2" field="name" error="Name length should be greater than 2."/>\n</action-condition>\n	\N	1	\N
31	\N	0	2019-07-05 13:49:40.663	\N	f	\N	axelor-core	action-condition-group-validCode	0	action-condition	<action-condition name="action-condition-group-validCode">\n  <check if="code?.length() &lt; 2" field="code" error="Code length should be greater than 2."/>\n</action-condition>\n	\N	1	\N
32	\N	0	2019-07-05 13:49:40.682	\N	\N	com.axelor.auth.db.Permission	axelor-core	action-group-view-permissions	0	action-view	<action-view name="action-group-view-permissions" model="com.axelor.auth.db.Permission" title="Permissions">\n  <view name="permission-grid" type="grid"/>\n  <view name="permission-form" type="form"/>\n  <domain>self.id IN (:permissions)</domain>\n  <context name="permissions" expr="eval: permissions.collect { it.id }"/>\n</action-view>\n	\N	1	\N
33	\N	0	2019-07-05 13:49:41.025	\N	\N	com.axelor.dms.db.DMSFile	axelor-core	dms.all	0	action-view	<action-view name="dms.all" model="com.axelor.dms.db.DMSFile" title="All Documents">\n  <view name="dms-file-grid" type="grid"/>\n  <view-param name="ui-template:grid" value="dms-file-list"/>\n  <view-param name="search-filters" value="dms-file-filters"/>\n</action-view>\n	\N	1	\N
34	\N	0	2019-07-05 13:49:41.044	\N	\N	com.axelor.dms.db.DMSFile	axelor-core	dms.my	0	action-view	<action-view name="dms.my" model="com.axelor.dms.db.DMSFile" title="My Documents">\n  <view name="dms-file-grid" type="grid"/>\n  <view-param name="ui-template:grid" value="dms-file-list"/>\n  <view-param name="search-filters" value="dms-file-filters"/>\n  <domain>self.createdBy = :__user__</domain>\n</action-view>\n	\N	1	\N
35	\N	0	2019-07-05 13:49:41.063	\N	\N	com.axelor.dms.db.DMSFileTag	axelor-core	dms.tags	0	action-view	<action-view name="dms.tags" model="com.axelor.dms.db.DMSFileTag" title="Tags">\n  <view name="dms-tag-grid" type="grid"/>\n  <view name="dms-tag-form" type="form"/>\n</action-view>\n	\N	1	\N
36	\N	0	2019-07-05 13:49:41.381	\N	f	\N	axelor-core	team.task.on-new	0	action-attrs	<action-attrs name="team.task.on-new">\n  <attribute if="teamId" name="value" expr="#{__repo__(Team).find(teamId)}" for="team"/>\n  <attribute name="value" expr="normal" for="priority"/>\n  <attribute name="value" expr="new" for="status"/>\n  <attribute name="value" expr="#{__date__}" for="taskDate"/>\n</action-attrs>\n	\N	1	\N
37	\N	0	2019-07-05 13:49:41.398	\N	f	\N	axelor-core	team.topic.on-new	0	action-attrs	<action-attrs name="team.topic.on-new">\n  <attribute if="teamId" name="value" expr="#{__repo__(Team).find(teamId)}" for="team"/>\n</action-attrs>\n	\N	1	\N
38	\N	0	2019-07-05 13:49:41.417	\N	\N	com.axelor.team.db.Team	axelor-core	teams.all	0	action-view	<action-view name="teams.all" model="com.axelor.team.db.Team" title="All Teams">\n  <view name="team-cards" type="cards"/>\n  <view name="team-form" type="form"/>\n</action-view>\n	\N	1	\N
39	\N	0	2019-07-05 13:49:41.435	\N	\N	com.axelor.team.db.Team	axelor-core	teams.my	0	action-view	<action-view name="teams.my" model="com.axelor.team.db.Team" title="My Teams">\n  <view name="team-cards" type="cards"/>\n  <view name="team-form" type="form"/>\n  <domain>:__user__ member of self.members</domain>\n</action-view>\n	\N	1	\N
40	\N	0	2019-07-05 13:49:41.453	\N	\N	com.axelor.team.db.TeamTask	axelor-core	team.tasks.due	0	action-view	<action-view name="team.tasks.due" model="com.axelor.team.db.TeamTask" title="Tasks due">\n  <view name="team-task-grid" type="grid"/>\n  <view name="team-task-calendar" type="calendar"/>\n  <view name="team-task-form" type="form"/>\n  <domain>\n    (self.assignedTo = :__user__  AND self.status NOT IN :closed_status) AND\n    (self.taskDeadline &lt;= current_date)\n  </domain>\n  <context name="closed_status" expr="#{['closed', 'canceled']}"/>\n</action-view>\n	\N	1	\N
41	\N	0	2019-07-05 13:49:41.471	\N	\N	com.axelor.team.db.TeamTask	axelor-core	team.tasks.todo	0	action-view	<action-view name="team.tasks.todo" model="com.axelor.team.db.TeamTask" title="Tasks todo">\n  <view name="team-task-grid" type="grid"/>\n  <view name="team-task-calendar" type="calendar"/>\n  <view name="team-task-form" type="form"/>\n  <domain>\n    (self.assignedTo = :__user__ AND self.status NOT IN :closed_status) AND\n    (self.taskDeadline &lt;= current_date OR self.taskDate &lt;= current_date)\n  </domain>\n  <context name="closed_status" expr="#{['closed', 'canceled']}"/>\n</action-view>\n	\N	1	\N
42	\N	0	2019-07-05 13:49:41.488	\N	\N	com.axelor.team.db.TeamTask	axelor-core	team.tasks.open	0	action-view	<action-view name="team.tasks.open" model="com.axelor.team.db.TeamTask" title="My open tasks">\n  <view name="team-task-grid" type="grid"/>\n  <view name="team-task-calendar" type="calendar"/>\n  <view name="team-task-form" type="form"/>\n  <domain>self.assignedTo = :__user__ AND self.status NOT IN :closed_status</domain>\n  <context name="closed_status" expr="#{['closed', 'canceled']}"/>\n</action-view>\n	\N	1	\N
43	\N	0	2019-07-05 13:49:41.505	\N	\N	com.axelor.team.db.TeamTask	axelor-core	team.tasks.assigned	0	action-view	<action-view name="team.tasks.assigned" model="com.axelor.team.db.TeamTask" title="Tasks assigned to me">\n  <view name="team-task-grid" type="grid"/>\n  <view name="team-task-calendar" type="calendar"/>\n  <view name="team-task-form" type="form"/>\n  <domain>self.assignedTo = :__user__</domain>\n</action-view>\n	\N	1	\N
44	\N	0	2019-07-05 13:49:41.524	\N	\N	com.axelor.team.db.TeamTask	axelor-core	team.tasks.created	0	action-view	<action-view name="team.tasks.created" model="com.axelor.team.db.TeamTask" title="Tasks created by me">\n  <view name="team-task-grid" type="grid"/>\n  <view name="team-task-calendar" type="calendar"/>\n  <view name="team-task-form" type="form"/>\n  <domain>self.createdBy = :__user__ AND self.status NOT IN :closed_status</domain>\n  <context name="closed_status" expr="#{['closed', 'canceled']}"/>\n</action-view>\n	\N	1	\N
45	\N	0	2019-07-05 13:49:41.541	\N	\N	com.axelor.team.db.TeamTopic	axelor-core	topics.all	0	action-view	<action-view name="topics.all" model="com.axelor.team.db.TeamTopic" title="Topics">\n  <view name="team-topic-grid" type="grid"/>\n  <view name="team-topic-form" type="form"/>\n</action-view>\n	\N	1	\N
46	\N	0	2019-07-05 13:49:41.992	\N	f	com.axelor.meta.db.MetaJsonField	axelor-core	action-json-field-defaults	0	action-record	<action-record name="action-json-field-defaults" model="com.axelor.meta.db.MetaJsonField">\n  <field name="model" expr="com.axelor.meta.db.MetaJsonRecord"/>\n  <field name="modelField" expr="attrs"/>\n</action-record>\n	\N	1	\N
47	\N	0	2019-07-05 13:49:42.012	\N	f	com.axelor.meta.db.MetaJsonRecord	axelor-core	action-json-record-defaults	0	action-record	<action-record name="action-json-record-defaults" model="com.axelor.meta.db.MetaJsonRecord">\n  <field name="jsonModel" expr="#{jsonModel}"/>\n</action-record>\n	\N	1	\N
48	\N	0	2019-07-05 13:49:42.031	\N	\N	com.axelor.meta.db.MetaJsonModel	axelor-core	custom.models.all	0	action-view	<action-view name="custom.models.all" model="com.axelor.meta.db.MetaJsonModel" title="Custom Models">\n  <view name="json-model-grid" type="grid"/>\n  <view name="json-model-form" type="form"/>\n</action-view>\n	\N	1	\N
49	\N	0	2019-07-05 13:49:42.049	\N	\N	com.axelor.meta.db.MetaJsonField	axelor-core	custom.fields.all	0	action-view	<action-view name="custom.fields.all" model="com.axelor.meta.db.MetaJsonField" title="Custom Fields">\n  <view name="json-field-grid" type="grid"/>\n  <view name="json-field-form" type="form"/>\n  <domain>self.jsonModel is null</domain>\n</action-view>\n	\N	1	\N
50	\N	0	2019-07-05 13:49:45.405	\N	f	\N	axelor-partner	onNewMethodCalled	0	action-method	<action-method name="onNewMethodCalled">\n  <call method="onNewSayAddress" class="com.axelor.partner.web.HelloController"/>\n</action-method>\n	\N	1	\N
51	\N	0	2019-07-05 13:49:45.411	\N	f	\N	axelor-partner	onLoadMethodCalled	0	action-method	<action-method name="onLoadMethodCalled">\n  <call method="onLoadSayAddress" class="com.axelor.partner.web.HelloController"/>\n</action-method>\n	\N	1	\N
52	\N	0	2019-07-05 13:49:45.418	\N	f	\N	axelor-partner	onSaveMethodCalled	0	action-method	<action-method name="onSaveMethodCalled">\n  <call method="onSaveSayAddress" class="com.axelor.partner.web.HelloController"/>\n</action-method>\n	\N	1	\N
53	\N	0	2019-07-05 13:49:45.468	\N	\N	com.axelor.partner.db.Project	axelor-partner	projects.task.open.project	0	action-view	<action-view name="projects.task.open.project" model="com.axelor.partner.db.Project" title="Project">\n  <view name="project-grid" type="grid"/>\n  <view name="project-form" type="form"/>\n  <domain>self.id = :project_id</domain>\n  <context name="project_id" expr="eval: id"/>\n  <context name="_showSingle" expr="true"/>\n</action-view>\n	\N	1	\N
54	\N	0	2019-07-05 13:49:45.475	\N	\N	com.axelor.partner.db.ProjectTask	axelor-partner	projects.task.open.task	0	action-view	<action-view name="projects.task.open.task" model="com.axelor.partner.db.ProjectTask" title="Task">\n  <view name="project-task-grid" type="grid"/>\n  <view name="project-task-grid" type="form"/>\n  <domain>self.id = :task_id</domain>\n  <context name="task_id" expr="eval: id"/>\n  <context name="_showSingle" expr="true"/>\n</action-view>\n	\N	1	\N
55	\N	0	2019-07-05 13:49:45.539	\N	f	\N	axelor-partner	partnerForm.onNewSay	0	action-method	<action-method name="partnerForm.onNewSay">\n  <call method="onNewSayPartner()" class="com.axelor.partner.web.HelloController"/>\n</action-method>\n	\N	1	\N
56	\N	0	2019-07-05 13:49:45.545	\N	f	\N	axelor-partner	partnerForm.onLoadSay	0	action-method	<action-method name="partnerForm.onLoadSay">\n  <call method="onLoadSayPartner" class="com.axelor.partner.web.HelloController"/>\n</action-method>\n	\N	1	\N
57	\N	0	2019-07-05 13:49:45.552	\N	f	\N	axelor-partner	partnerForm.onSaveSay	0	action-method	<action-method name="partnerForm.onSaveSay">\n  <call method="onSaveSayPartner()" class="com.axelor.partner.web.HelloController"/>\n</action-method>\n	\N	1	\N
58	\N	0	2019-07-05 13:49:45.559	\N	f	\N	axelor-partner	say.methodCalled	0	action-method	<action-method name="say.methodCalled">\n  <call method="say" class="com.axelor.partner.web.HelloController"/>\n</action-method>\n	\N	1	\N
59	\N	0	2019-07-05 13:49:45.572	\N	f	\N	axelor-partner	say.callToActionScript	0	action-script	<action-script name="say.callToActionScript">\n  <script language="js"><![CDATA[ \nalert("Action Script Running");\n]]></script>\n</action-script>\n	\N	1	\N
60	\N	0	2019-07-05 13:49:45.588	\N	f	\N	axelor-partner	action-validation-one	0	action-validate	<action-validate name="action-validation-one">\n  <error if="dateOfBirth > __date__" message="Your birthday cannot be after today." action="action-validation-one-action"/>\n</action-validate>\n	\N	1	\N
61	\N	0	2019-07-05 13:49:45.594	\N	f	\N	axelor-partner	action-validation-one-action	0	action-attrs	<action-attrs name="action-validation-one-action">\n  <attribute name="title" expr="Date Of Birth" for="dateOfBirth"/>\n</action-attrs>\n	\N	1	\N
62	\N	0	2019-07-05 13:49:45.603	\N	\N	com.axelor.partner.db.Partner	axelor-partner	partner.all	0	action-view	<action-view name="partner.all" model="com.axelor.partner.db.Partner" title="Partner">\n  <view name="partner-cards" type="cards"/>\n  <view name="partner-grid" type="grid"/>\n  <view name="partner-form" type="form"/>\n  <context name="json-enhance" expr="true"/>\n</action-view>\n	\N	1	\N
63	\N	0	2019-07-05 13:49:45.609	\N	\N	com.axelor.partner.db.Department	axelor-partner	department.all	0	action-view	<action-view name="department.all" model="com.axelor.partner.db.Department" title="Department">\n  <view name="dept-grid" type="grid"/>\n  <view name="dept-form" type="form"/>\n</action-view>\n	\N	1	\N
64	\N	0	2019-07-05 13:49:45.615	\N	\N	com.axelor.partner.db.Department	axelor-partner	department.tech	0	action-view	<action-view name="department.tech" model="com.axelor.partner.db.Department" title="Department">\n  <view name="dept-grid" type="grid"/>\n  <view name="dept-form" type="form"/>\n  <view-param name="popup" value="reload"/>\n  <domain> self.isTechnical=true</domain>\n</action-view>\n	\N	1	\N
65	\N	0	2019-07-05 13:49:45.621	\N	\N	com.axelor.partner.db.Department	axelor-partner	department.nonTech	0	action-view	<action-view name="department.nonTech" model="com.axelor.partner.db.Department" title="Department">\n  <view name="dept-grid" type="grid"/>\n  <view name="dept-form" type="form"/>\n  <view-param name="popup" value="reload"/>\n  <domain> self.isTechnical=false</domain>\n</action-view>\n	\N	1	\N
66	\N	0	2019-07-05 13:49:45.627	\N	\N	com.axelor.partner.db.Country	axelor-partner	country.all	0	action-view	<action-view name="country.all" model="com.axelor.partner.db.Country" title="Country">\n  <view name="country-grid" type="grid"/>\n  <view name="country-form" type="form"/>\n</action-view>\n	\N	1	\N
67	\N	0	2019-07-05 13:49:45.633	\N	\N	com.axelor.partner.db.Project	axelor-partner	project.all	0	action-view	<action-view name="project.all" model="com.axelor.partner.db.Project" title="Projects">\n  <view name="project-grid" type="grid"/>\n  <view name="project-form" type="form"/>\n</action-view>\n	\N	1	\N
68	\N	0	2019-07-05 13:49:45.639	\N	\N	com.axelor.partner.db.ProjectTask	axelor-partner	project-task.all	0	action-view	<action-view name="project-task.all" model="com.axelor.partner.db.ProjectTask" title="Project Tasks">\n  <view name="project-task-grid" type="grid"/>\n  <view name="project-task-form" type="form"/>\n  <view name="project-task-kanban" type="kanban"/>\n</action-view>\n	\N	1	\N
69	\N	0	2019-07-05 13:49:45.646	\N	\N	com.axelor.project.db.ProjectTask	axelor-partner	project.task.all.kanban	0	action-view	<action-view name="project.task.all.kanban" model="com.axelor.project.db.ProjectTask" title="All Tasks K">\n  <view name="project-task-kanban" type="kanban"/>\n  <view name="project-task-form" type="form"/>\n</action-view>\n	\N	1	\N
70	\N	0	2019-07-05 13:49:45.653	\N	\N	\N	axelor-partner	project.tasks.tree	0	action-view	<action-view name="project.tasks.tree" title="Projects">\n  <view name="project-task-tree" type="tree"/>\n</action-view>\n	\N	1	\N
71	\N	0	2019-07-05 13:49:46.519	\N	\N	com.axelor.demoimpl.db.Person	axelor-demo-impl	menu-person.action	0	action-view	<action-view name="menu-person.action" model="com.axelor.demoimpl.db.Person" title="Person">\n  <view name="person-grid" type="grid"/>\n  <view name="person-form" type="form"/>\n</action-view>\n	\N	1	\N
\.


--
-- Data for Name: meta_action_menu; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_action_menu (id, archived, version, created_on, updated_on, category, hidden, module, name, order_seq, priority, title, xml_id, created_by, updated_by, action, parent) FROM stdin;
\.


--
-- Data for Name: meta_attachment; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_attachment (id, archived, version, created_on, updated_on, object_id, object_name, created_by, updated_by, meta_file) FROM stdin;
\.


--
-- Data for Name: meta_enum; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_enum (id, archived, version, created_on, updated_on, name, created_by, updated_by) FROM stdin;
\.


--
-- Data for Name: meta_field; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_field (id, archived, version, created_on, updated_on, description, is_json, label, mapped_by, name, package_name, relationship, type_name, created_by, updated_by, meta_model) FROM stdin;
1	\N	0	2019-07-05 13:49:36.129	\N	Whether to grant export access.	f	Export	\N	canExport	java.lang	\N	Boolean	1	\N	1
2	\N	0	2019-07-05 13:49:36.129	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	1
3	\N	0	2019-07-05 13:49:36.13	\N	Whether to grant read access.	f	Read	\N	canRead	java.lang	\N	Boolean	1	\N	1
4	\N	0	2019-07-05 13:49:36.13	\N	Whether to grant write access.	f	Write	\N	canWrite	java.lang	\N	Boolean	1	\N	1
5	\N	0	2019-07-05 13:49:36.13	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	1
6	\N	0	2019-07-05 13:49:36.131	\N	Whether to grant create access.	f	Create	\N	canCreate	java.lang	\N	Boolean	1	\N	1
7	\N	0	2019-07-05 13:49:36.131	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	1
8	\N	0	2019-07-05 13:49:36.131	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	1
9	\N	0	2019-07-05 13:49:36.132	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	1
10	\N	0	2019-07-05 13:49:36.132	\N	Whether to grant remove access.	f	Remove	\N	canRemove	java.lang	\N	Boolean	1	\N	1
11	\N	0	2019-07-05 13:49:36.132	\N	Domain filter as condition.	f		\N	condition	java.lang	\N	String	1	\N	1
12	\N	0	2019-07-05 13:49:36.133	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	1
13	\N	0	2019-07-05 13:49:36.133	\N	An unique permission name.	f		\N	name	java.lang	\N	String	1	\N	1
14	\N	0	2019-07-05 13:49:36.133	\N	Comma separated list of params for the condition.	f		\N	conditionParams	java.lang	\N	String	1	\N	1
15	\N	0	2019-07-05 13:49:36.133	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	1
16	\N	0	2019-07-05 13:49:36.134	\N	Fully qualified object name or wild card package name.	f		\N	object	java.lang	\N	String	1	\N	1
17	\N	0	2019-07-05 13:49:36.155	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	2
18	\N	0	2019-07-05 13:49:36.155	\N		f	Permissions (fields)		metaPermissions	com.axelor.meta.db	ManyToMany	MetaPermission	1	\N	2
19	\N	0	2019-07-05 13:49:36.155	\N	\N	f	\N	\N	description	java.lang	\N	String	1	\N	2
20	\N	0	2019-07-05 13:49:36.156	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	2
21	\N	0	2019-07-05 13:49:36.156	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	2
22	\N	0	2019-07-05 13:49:36.156	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	2
23	\N	0	2019-07-05 13:49:36.156	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	2
24	\N	0	2019-07-05 13:49:36.157	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	2
25	\N	0	2019-07-05 13:49:36.157	\N	\N	f	\N		permissions	com.axelor.auth.db	ManyToMany	Permission	1	\N	2
26	\N	0	2019-07-05 13:49:36.157	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	2
27	\N	0	2019-07-05 13:49:36.157	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	2
28	\N	0	2019-07-05 13:49:36.158	\N	\N	f	\N	roles	menus	com.axelor.meta.db	ManyToMany	MetaMenu	1	\N	2
29	\N	0	2019-07-05 13:49:36.175	\N	\N	f	\N	\N	shared	java.lang	\N	Boolean	1	\N	3
30	\N	0	2019-07-05 13:49:36.175	\N	\N	f	\N	\N	filterCustom	java.lang	\N	String	1	\N	3
31	\N	0	2019-07-05 13:49:36.176	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	3
32	\N	0	2019-07-05 13:49:36.177	\N	\N	f	\N	\N	filters	java.lang	\N	String	1	\N	3
33	\N	0	2019-07-05 13:49:36.177	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	3
34	\N	0	2019-07-05 13:49:36.177	\N	\N	f	\N	\N	title	java.lang	\N	String	1	\N	3
35	\N	0	2019-07-05 13:49:36.178	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	3
36	\N	0	2019-07-05 13:49:36.178	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	3
37	\N	0	2019-07-05 13:49:36.178	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	3
38	\N	0	2019-07-05 13:49:36.179	\N	\N	f	\N	\N	filterView	java.lang	\N	String	1	\N	3
39	\N	0	2019-07-05 13:49:36.179	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	3
40	\N	0	2019-07-05 13:49:36.179	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	3
41	\N	0	2019-07-05 13:49:36.179	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	3
42	\N	0	2019-07-05 13:49:36.18	\N	\N	f	\N	\N	user	com.axelor.auth.db	ManyToOne	User	1	\N	3
43	\N	0	2019-07-05 13:49:36.2	\N	\N	f	\N	\N	installed	java.lang	\N	Boolean	1	\N	4
44	\N	0	2019-07-05 13:49:36.2	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	4
45	\N	0	2019-07-05 13:49:36.2	\N	\N	f	\N		depends	com.axelor.meta.db	ManyToMany	MetaModule	1	\N	4
46	\N	0	2019-07-05 13:49:36.201	\N	\N	f	\N	\N	pending	java.lang	\N	Boolean	1	\N	4
47	\N	0	2019-07-05 13:49:36.201	\N	\N	f	\N	\N	description	java.lang	\N	String	1	\N	4
48	\N	0	2019-07-05 13:49:36.201	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	4
49	\N	0	2019-07-05 13:49:36.202	\N	\N	f	\N	\N	title	java.lang	\N	String	1	\N	4
50	\N	0	2019-07-05 13:49:36.202	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	4
51	\N	0	2019-07-05 13:49:36.202	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	4
52	\N	0	2019-07-05 13:49:36.202	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	4
53	\N	0	2019-07-05 13:49:36.203	\N	\N	f	\N	\N	application	java.lang	\N	Boolean	1	\N	4
54	\N	0	2019-07-05 13:49:36.203	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	4
55	\N	0	2019-07-05 13:49:36.203	\N		f	Version	\N	moduleVersion	java.lang	\N	String	1	\N	4
56	\N	0	2019-07-05 13:49:36.203	\N	\N	f	\N	\N	removable	java.lang	\N	Boolean	1	\N	4
57	\N	0	2019-07-05 13:49:36.203	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	4
58	\N	0	2019-07-05 13:49:36.204	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	4
59	\N	0	2019-07-05 13:49:36.221	\N	\N	f	\N	\N	extension	java.lang	\N	Boolean	1	\N	5
60	\N	0	2019-07-05 13:49:36.221	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	5
61	\N	0	2019-07-05 13:49:36.222	\N	\N	f	\N	\N	module	java.lang	\N	String	1	\N	5
62	\N	0	2019-07-05 13:49:36.222	\N	\N	f	\N		groups	com.axelor.auth.db	ManyToMany	Group	1	\N	5
63	\N	0	2019-07-05 13:49:36.222	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	5
64	\N	0	2019-07-05 13:49:36.222	\N	\N	f	\N	\N	priority	java.lang	\N	Integer	1	\N	5
65	\N	0	2019-07-05 13:49:36.223	\N	\N	f	\N	\N	title	java.lang	\N	String	1	\N	5
66	\N	0	2019-07-05 13:49:36.223	\N		f		\N	type	java.lang	\N	String	1	\N	5
67	\N	0	2019-07-05 13:49:36.223	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	5
68	\N	0	2019-07-05 13:49:36.224	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	5
69	\N	0	2019-07-05 13:49:36.224	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	5
70	\N	0	2019-07-05 13:49:36.224	\N	\N	f	\N	\N	helpLink	java.lang	\N	String	1	\N	5
71	\N	0	2019-07-05 13:49:36.224	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	5
72	\N	0	2019-07-05 13:49:36.225	\N	\N	f	\N	\N	xml	java.lang	\N	String	1	\N	5
73	\N	0	2019-07-05 13:49:36.225	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	5
74	\N	0	2019-07-05 13:49:36.225	\N	\N	f	\N	\N	model	java.lang	\N	String	1	\N	5
75	\N	0	2019-07-05 13:49:36.225	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	5
76	\N	0	2019-07-05 13:49:36.225	\N	\N	f	\N	\N	xmlId	java.lang	\N	String	1	\N	5
77	\N	0	2019-07-05 13:49:36.245	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	6
78	\N	0	2019-07-05 13:49:36.246	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	6
79	\N	0	2019-07-05 13:49:36.246	\N	\N	f	\N	\N	title	java.lang	\N	String	1	\N	6
80	\N	0	2019-07-05 13:49:36.246	\N		f		\N	type	java.lang	\N	String	1	\N	6
81	\N	0	2019-07-05 13:49:36.247	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	6
82	\N	0	2019-07-05 13:49:36.247	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	6
83	\N	0	2019-07-05 13:49:36.247	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	6
84	\N	0	2019-07-05 13:49:36.248	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	6
85	\N	0	2019-07-05 13:49:36.248	\N	\N	f	\N	\N	xml	java.lang	\N	String	1	\N	6
86	\N	0	2019-07-05 13:49:36.248	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	6
87	\N	0	2019-07-05 13:49:36.248	\N	\N	f	\N	\N	model	java.lang	\N	String	1	\N	6
88	\N	0	2019-07-05 13:49:36.248	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	6
89	\N	0	2019-07-05 13:49:36.249	\N	\N	f	\N	\N	user	com.axelor.auth.db	ManyToOne	User	1	\N	6
90	\N	0	2019-07-05 13:49:36.267	\N	\N	f	\N	\N	parent	com.axelor.meta.db	ManyToOne	MetaMenu	1	\N	7
91	\N	0	2019-07-05 13:49:36.267	\N	Only use this menu-item if the given module is installed.	f	If-module	\N	moduleToCheck	java.lang	\N	String	1	\N	7
92	\N	0	2019-07-05 13:49:36.267	\N		f	Hidden menu	\N	hidden	java.lang	\N	Boolean	1	\N	7
93	\N	0	2019-07-05 13:49:36.268	\N	\N	f	\N		roles	com.axelor.auth.db	ManyToMany	Role	1	\N	7
94	\N	0	2019-07-05 13:49:36.268	\N	\N	f	\N	\N	icon	java.lang	\N	String	1	\N	7
95	\N	0	2019-07-05 13:49:36.268	\N	\N	f	\N	\N	link	java.lang	\N	String	1	\N	7
96	\N	0	2019-07-05 13:49:36.268	\N	\N	f	\N	\N	title	java.lang	\N	String	1	\N	7
97	\N	0	2019-07-05 13:49:36.269	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	7
98	\N	0	2019-07-05 13:49:36.269	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	7
99	\N	0	2019-07-05 13:49:36.269	\N		f	Top menu	\N	top	java.lang	\N	Boolean	1	\N	7
100	\N	0	2019-07-05 13:49:36.27	\N	\N	f	\N	\N	action	com.axelor.meta.db	ManyToOne	MetaAction	1	\N	7
101	\N	0	2019-07-05 13:49:36.27	\N	Only use this menu-item if the given expression is true.	f	If	\N	conditionToCheck	java.lang	\N	String	1	\N	7
102	\N	0	2019-07-05 13:49:36.27	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	7
103	\N	0	2019-07-05 13:49:36.271	\N		f	Tag label	\N	tag	java.lang	\N	String	1	\N	7
104	\N	0	2019-07-05 13:49:36.271	\N	\N	f	\N	\N	xmlId	java.lang	\N	String	1	\N	7
105	\N	0	2019-07-05 13:49:36.271	\N	\N	f	\N	\N	iconBackground	java.lang	\N	String	1	\N	7
106	\N	0	2019-07-05 13:49:36.271	\N		f	Menu order	\N	order	java.lang	\N	Integer	1	\N	7
107	\N	0	2019-07-05 13:49:36.272	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	7
108	\N	0	2019-07-05 13:49:36.272	\N		f	Tag method	\N	tagGet	java.lang	\N	String	1	\N	7
109	\N	0	2019-07-05 13:49:36.272	\N	\N	f	\N	\N	module	java.lang	\N	String	1	\N	7
110	\N	0	2019-07-05 13:49:36.273	\N		f	Tag style	\N	tagStyle	java.lang	\N	String	1	\N	7
111	\N	0	2019-07-05 13:49:36.273	\N		f	Mobile menu	\N	mobile	java.lang	\N	Boolean	1	\N	7
112	\N	0	2019-07-05 13:49:36.273	\N	\N	f	\N		groups	com.axelor.auth.db	ManyToMany	Group	1	\N	7
113	\N	0	2019-07-05 13:49:36.274	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	7
114	\N	0	2019-07-05 13:49:36.274	\N	\N	f	\N	\N	priority	java.lang	\N	Integer	1	\N	7
115	\N	0	2019-07-05 13:49:36.274	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	7
116	\N	0	2019-07-05 13:49:36.275	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	7
117	\N	0	2019-07-05 13:49:36.275	\N		f	Left menu	\N	left	java.lang	\N	Boolean	1	\N	7
118	\N	0	2019-07-05 13:49:36.275	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	7
119	\N	0	2019-07-05 13:49:36.276	\N		f	Tag count	\N	tagCount	java.lang	\N	Boolean	1	\N	7
120	\N	0	2019-07-05 13:49:36.276	\N	\N	f	\N	\N	user	com.axelor.auth.db	ManyToOne	User	1	\N	7
121	\N	0	2019-07-05 13:49:36.307	\N	\N	f	\N	\N	parent	com.axelor.meta.db	ManyToOne	MetaActionMenu	1	\N	8
122	\N	0	2019-07-05 13:49:36.307	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	8
123	\N	0	2019-07-05 13:49:36.307	\N	\N	f	\N	\N	hidden	java.lang	\N	Boolean	1	\N	8
124	\N	0	2019-07-05 13:49:36.307	\N	\N	f	\N	\N	module	java.lang	\N	String	1	\N	8
125	\N	0	2019-07-05 13:49:36.308	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	8
126	\N	0	2019-07-05 13:49:36.308	\N	\N	f	\N	\N	priority	java.lang	\N	Integer	1	\N	8
127	\N	0	2019-07-05 13:49:36.308	\N	\N	f	\N	\N	title	java.lang	\N	String	1	\N	8
128	\N	0	2019-07-05 13:49:36.308	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	8
129	\N	0	2019-07-05 13:49:36.309	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	8
130	\N	0	2019-07-05 13:49:36.309	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	8
131	\N	0	2019-07-05 13:49:36.309	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	8
132	\N	0	2019-07-05 13:49:36.309	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	8
133	\N	0	2019-07-05 13:49:36.309	\N	\N	f	\N	\N	action	com.axelor.meta.db	ManyToOne	MetaAction	1	\N	8
134	\N	0	2019-07-05 13:49:36.31	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	8
135	\N	0	2019-07-05 13:49:36.31	\N	Category name to group action menus.	f		\N	category	java.lang	\N	String	1	\N	8
136	\N	0	2019-07-05 13:49:36.31	\N	\N	f	\N	\N	xmlId	java.lang	\N	String	1	\N	8
137	\N	0	2019-07-05 13:49:36.31	\N	\N	f	\N	\N	order	java.lang	\N	Integer	1	\N	8
138	\N	0	2019-07-05 13:49:36.329	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	9
139	\N	0	2019-07-05 13:49:36.329	\N	\N	f	\N	\N	module	java.lang	\N	String	1	\N	9
140	\N	0	2019-07-05 13:49:36.33	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	9
141	\N	0	2019-07-05 13:49:36.33	\N	\N	f	\N	\N	priority	java.lang	\N	Integer	1	\N	9
142	\N	0	2019-07-05 13:49:36.33	\N		f		\N	type	java.lang	\N	String	1	\N	9
143	\N	0	2019-07-05 13:49:36.33	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	9
144	\N	0	2019-07-05 13:49:36.331	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	9
145	\N	0	2019-07-05 13:49:36.331	\N	Specify whether this action can be used as home action.	f	Used as home action	\N	home	java.lang	\N	Boolean	1	\N	9
146	\N	0	2019-07-05 13:49:36.331	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	9
147	\N	0	2019-07-05 13:49:36.332	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	9
148	\N	0	2019-07-05 13:49:36.332	\N	\N	f	\N	\N	xml	java.lang	\N	String	1	\N	9
149	\N	0	2019-07-05 13:49:36.332	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	9
150	\N	0	2019-07-05 13:49:36.333	\N	\N	f	\N	\N	model	java.lang	\N	String	1	\N	9
151	\N	0	2019-07-05 13:49:36.333	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	9
152	\N	0	2019-07-05 13:49:36.333	\N	\N	f	\N	\N	xmlId	java.lang	\N	String	1	\N	9
153	\N	0	2019-07-05 13:49:36.354	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	10
154	\N	0	2019-07-05 13:49:36.355	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	10
155	\N	0	2019-07-05 13:49:36.355	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	10
156	\N	0	2019-07-05 13:49:36.355	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	10
157	\N	0	2019-07-05 13:49:36.355	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	10
158	\N	0	2019-07-05 13:49:36.356	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	10
159	\N	0	2019-07-05 13:49:36.356	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	10
160	\N	0	2019-07-05 13:49:36.356	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	10
161	\N	0	2019-07-05 13:49:36.377	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	11
162	\N	0	2019-07-05 13:49:36.378	\N	\N	f	\N	\N	module	java.lang	\N	String	1	\N	11
163	\N	0	2019-07-05 13:49:36.378	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	11
164	\N	0	2019-07-05 13:49:36.379	\N	\N	f	\N	\N	priority	java.lang	\N	Integer	1	\N	11
165	\N	0	2019-07-05 13:49:36.379	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	11
166	\N	0	2019-07-05 13:49:36.379	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	11
167	\N	0	2019-07-05 13:49:36.38	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	11
168	\N	0	2019-07-05 13:49:36.38	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	11
169	\N	0	2019-07-05 13:49:36.38	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	11
170	\N	0	2019-07-05 13:49:36.38	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	11
171	\N	0	2019-07-05 13:49:36.381	\N	\N	f	\N	\N	xmlId	java.lang	\N	String	1	\N	11
172	\N	0	2019-07-05 13:49:36.381	\N	\N	f	\N	select	items	com.axelor.meta.db	OneToMany	MetaSelectItem	1	\N	11
173	\N	0	2019-07-05 13:49:36.4	\N	\N	f	\N	\N	select	com.axelor.meta.db	ManyToOne	MetaSelect	1	\N	12
174	\N	0	2019-07-05 13:49:36.4	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	12
175	\N	0	2019-07-05 13:49:36.401	\N	The addition data for UI widgets.	f		\N	data	java.lang	\N	String	1	\N	12
176	\N	0	2019-07-05 13:49:36.401	\N	\N	f	\N	\N	hidden	java.lang	\N	Boolean	1	\N	12
177	\N	0	2019-07-05 13:49:36.401	\N	The image icon to show in UI widgets.	f		\N	icon	java.lang	\N	String	1	\N	12
178	\N	0	2019-07-05 13:49:36.401	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	12
179	\N	0	2019-07-05 13:49:36.401	\N	The select item title.	f		\N	title	java.lang	\N	String	1	\N	12
180	\N	0	2019-07-05 13:49:36.402	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	12
181	\N	0	2019-07-05 13:49:36.402	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	12
182	\N	0	2019-07-05 13:49:36.402	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	12
183	\N	0	2019-07-05 13:49:36.402	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	12
184	\N	0	2019-07-05 13:49:36.403	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	12
185	\N	0	2019-07-05 13:49:36.403	\N	The select item value.	f		\N	value	java.lang	\N	String	1	\N	12
186	\N	0	2019-07-05 13:49:36.403	\N	\N	f	\N	\N	order	java.lang	\N	Integer	1	\N	12
187	\N	0	2019-07-05 13:49:36.42	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	13
188	\N	0	2019-07-05 13:49:36.421	\N		f	Fullname	\N	fullName	java.lang	\N	String	1	\N	13
189	\N	0	2019-07-05 13:49:36.421	\N		f	Fields	metaModel	metaFields	com.axelor.meta.db	OneToMany	MetaField	1	\N	13
190	\N	0	2019-07-05 13:49:36.421	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	13
191	\N	0	2019-07-05 13:49:36.421	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	13
192	\N	0	2019-07-05 13:49:36.422	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	13
193	\N	0	2019-07-05 13:49:36.422	\N		f	Table	\N	tableName	java.lang	\N	String	1	\N	13
194	\N	0	2019-07-05 13:49:36.422	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	13
195	\N	0	2019-07-05 13:49:36.422	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	13
196	\N	0	2019-07-05 13:49:36.422	\N		f	Name	\N	name	java.lang	\N	String	1	\N	13
197	\N	0	2019-07-05 13:49:36.423	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	13
198	\N	0	2019-07-05 13:49:36.423	\N		f	Package	\N	packageName	java.lang	\N	String	1	\N	13
199	\N	0	2019-07-05 13:49:36.438	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	14
200	\N	0	2019-07-05 13:49:36.438	\N	\N	f	\N	\N	metaModel	com.axelor.meta.db	ManyToOne	MetaModel	1	\N	14
201	\N	0	2019-07-05 13:49:36.439	\N		f	Type	\N	typeName	java.lang	\N	String	1	\N	14
202	\N	0	2019-07-05 13:49:36.439	\N		f	Description	\N	description	java.lang	\N	String	1	\N	14
203	\N	0	2019-07-05 13:49:36.439	\N		f	Label	\N	label	java.lang	\N	String	1	\N	14
204	\N	0	2019-07-05 13:49:36.439	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	14
205	\N	0	2019-07-05 13:49:36.439	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	14
206	\N	0	2019-07-05 13:49:36.44	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	14
207	\N	0	2019-07-05 13:49:36.44	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	14
208	\N	0	2019-07-05 13:49:36.44	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	14
209	\N	0	2019-07-05 13:49:36.44	\N		f	Name	\N	name	java.lang	\N	String	1	\N	14
210	\N	0	2019-07-05 13:49:36.44	\N	\N	f	\N	\N	json	java.lang	\N	Boolean	1	\N	14
211	\N	0	2019-07-05 13:49:36.441	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	14
212	\N	0	2019-07-05 13:49:36.441	\N		f	Package	\N	packageName	java.lang	\N	String	1	\N	14
213	\N	0	2019-07-05 13:49:36.441	\N		f	Relationship	\N	relationship	java.lang	\N	String	1	\N	14
214	\N	0	2019-07-05 13:49:36.441	\N		f	Mapped by	\N	mappedBy	java.lang	\N	String	1	\N	14
215	\N	0	2019-07-05 13:49:36.458	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	15
216	\N	0	2019-07-05 13:49:36.458	\N	\N	f	\N	\N	language	java.lang	\N	String	1	\N	15
217	\N	0	2019-07-05 13:49:36.458	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	15
218	\N	0	2019-07-05 13:49:36.458	\N		f		\N	message	java.lang	\N	String	1	\N	15
219	\N	0	2019-07-05 13:49:36.458	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	15
220	\N	0	2019-07-05 13:49:36.459	\N		f		\N	key	java.lang	\N	String	1	\N	15
221	\N	0	2019-07-05 13:49:36.47	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	16
222	\N	0	2019-07-05 13:49:36.47	\N		f		\N	help	java.lang	\N	String	1	\N	16
223	\N	0	2019-07-05 13:49:36.47	\N	\N	f	\N	\N	view	java.lang	\N	String	1	\N	16
224	\N	0	2019-07-05 13:49:36.471	\N	\N	f	\N	\N	field	java.lang	\N	String	1	\N	16
225	\N	0	2019-07-05 13:49:36.471	\N		f		\N	language	java.lang	\N	String	1	\N	16
226	\N	0	2019-07-05 13:49:36.471	\N	\N	f	\N	\N	model	java.lang	\N	String	1	\N	16
227	\N	0	2019-07-05 13:49:36.471	\N	\N	f	\N	\N	style	java.lang	\N	String	1	\N	16
228	\N	0	2019-07-05 13:49:36.471	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	16
229	\N	0	2019-07-05 13:49:36.471	\N	\N	f	\N	\N	menu	java.lang	\N	String	1	\N	16
230	\N	0	2019-07-05 13:49:36.472	\N		f		\N	type	java.lang	\N	String	1	\N	16
231	\N	0	2019-07-05 13:49:36.472	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	16
232	\N	0	2019-07-05 13:49:36.489	\N	\N	f	\N	\N	fileName	java.lang	\N	String	1	\N	17
233	\N	0	2019-07-05 13:49:36.489	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	17
234	\N	0	2019-07-05 13:49:36.489	\N	\N	f	\N	\N	filePath	java.lang	\N	String	1	\N	17
235	\N	0	2019-07-05 13:49:36.49	\N		f		\N	description	java.lang	\N	String	1	\N	17
236	\N	0	2019-07-05 13:49:36.49	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	17
237	\N	0	2019-07-05 13:49:36.49	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	17
238	\N	0	2019-07-05 13:49:36.49	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	17
239	\N	0	2019-07-05 13:49:36.49	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	17
240	\N	0	2019-07-05 13:49:36.491	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	17
241	\N	0	2019-07-05 13:49:36.491	\N		f	Size in bytes	\N	fileSize	java.lang	\N	Long	1	\N	17
242	\N	0	2019-07-05 13:49:36.491	\N		f	Size	\N	sizeText	java.lang	\N	String	1	\N	17
243	\N	0	2019-07-05 13:49:36.491	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	17
244	\N	0	2019-07-05 13:49:36.491	\N		f	File type	\N	fileType	java.lang	\N	String	1	\N	17
245	\N	0	2019-07-05 13:49:36.511	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	18
246	\N	0	2019-07-05 13:49:36.511	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	18
247	\N	0	2019-07-05 13:49:36.512	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	18
248	\N	0	2019-07-05 13:49:36.512	\N	\N	f	\N	\N	objectName	java.lang	\N	String	1	\N	18
249	\N	0	2019-07-05 13:49:36.512	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	18
250	\N	0	2019-07-05 13:49:36.512	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	18
251	\N	0	2019-07-05 13:49:36.512	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	18
252	\N	0	2019-07-05 13:49:36.512	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	18
253	\N	0	2019-07-05 13:49:36.513	\N		f	File	\N	metaFile	com.axelor.meta.db	ManyToOne	MetaFile	1	\N	18
254	\N	0	2019-07-05 13:49:36.513	\N	\N	f	\N	\N	objectId	java.lang	\N	Long	1	\N	18
255	\N	0	2019-07-05 13:49:36.532	\N		f	Login	\N	code	java.lang	\N	String	1	\N	19
256	\N	0	2019-07-05 13:49:36.532	\N	\N	f	\N		roles	com.axelor.auth.db	ManyToMany	Role	1	\N	19
257	\N	0	2019-07-05 13:49:36.533	\N	Whether to use tabbed ui.	f		\N	singleTab	java.lang	\N	Boolean	1	\N	19
258	\N	0	2019-07-05 13:49:36.533	\N		f		\N	language	java.lang	\N	String	1	\N	19
259	\N	0	2019-07-05 13:49:36.533	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	19
260	\N	0	2019-07-05 13:49:36.533	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	19
261	\N	0	2019-07-05 13:49:36.533	\N	Whether to show help messages.	f		\N	noHelp	java.lang	\N	Boolean	1	\N	19
262	\N	0	2019-07-05 13:49:36.534	\N		f		\N	password	java.lang	\N	String	1	\N	19
263	\N	0	2019-07-05 13:49:36.534	\N	Specify whether to block the user for an indeterminate times.	f		\N	blocked	java.lang	\N	Boolean	1	\N	19
264	\N	0	2019-07-05 13:49:36.534	\N	\N	f	\N		permissions	com.axelor.auth.db	ManyToMany	Permission	1	\N	19
265	\N	0	2019-07-05 13:49:36.534	\N	Activate the user from the specified date.	f		\N	activateOn	java.time	\N	LocalDate	1	\N	19
266	\N	0	2019-07-05 13:49:36.534	\N	Disable the user from the specified date.	f		\N	expiresOn	java.time	\N	LocalDate	1	\N	19
267	\N	0	2019-07-05 13:49:36.535	\N	\N	f	\N	\N	theme	java.lang	\N	String	1	\N	19
268	\N	0	2019-07-05 13:49:36.535	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	19
269	\N	0	2019-07-05 13:49:36.535	\N	\N	f	\N	\N	email	java.lang	\N	String	1	\N	19
270	\N	0	2019-07-05 13:49:36.535	\N	\N	f	\N	\N	group	com.axelor.auth.db	ManyToOne	Group	1	\N	19
271	\N	0	2019-07-05 13:49:36.535	\N	Max size 4MB.	f	Photo	\N	image	\N	\N	byte[]	1	\N	19
272	\N	0	2019-07-05 13:49:36.536	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	19
273	\N	0	2019-07-05 13:49:36.536	\N		f	Permissions (fields)		metaPermissions	com.axelor.meta.db	ManyToMany	MetaPermission	1	\N	19
274	\N	0	2019-07-05 13:49:36.536	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	19
275	\N	0	2019-07-05 13:49:36.536	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	19
276	\N	0	2019-07-05 13:49:36.536	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	19
277	\N	0	2019-07-05 13:49:36.537	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	19
278	\N	0	2019-07-05 13:49:36.537	\N	\N	f	\N	\N	homeAction	java.lang	\N	String	1	\N	19
279	\N	0	2019-07-05 13:49:36.561	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	20
280	\N	0	2019-07-05 13:49:36.561	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	20
281	\N	0	2019-07-05 13:49:36.562	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	20
282	\N	0	2019-07-05 13:49:36.562	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	20
283	\N	0	2019-07-05 13:49:36.562	\N	\N	f	\N	\N	active	java.lang	\N	Boolean	1	\N	20
284	\N	0	2019-07-05 13:49:36.562	\N	\N	f	\N	metaPermission	rules	com.axelor.meta.db	OneToMany	MetaPermissionRule	1	\N	20
285	\N	0	2019-07-05 13:49:36.562	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	20
286	\N	0	2019-07-05 13:49:36.562	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	20
287	\N	0	2019-07-05 13:49:36.563	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	20
288	\N	0	2019-07-05 13:49:36.563	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	20
289	\N	0	2019-07-05 13:49:36.563	\N	\N	f	\N	\N	object	java.lang	\N	String	1	\N	20
290	\N	0	2019-07-05 13:49:36.581	\N		f	Export	\N	canExport	java.lang	\N	Boolean	1	\N	21
291	\N	0	2019-07-05 13:49:36.581	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	21
292	\N	0	2019-07-05 13:49:36.581	\N		f	Read	\N	canRead	java.lang	\N	Boolean	1	\N	21
293	\N	0	2019-07-05 13:49:36.581	\N		f	Write	\N	canWrite	java.lang	\N	Boolean	1	\N	21
294	\N	0	2019-07-05 13:49:36.582	\N	\N	f	\N	\N	metaPermission	com.axelor.meta.db	ManyToOne	MetaPermission	1	\N	21
295	\N	0	2019-07-05 13:49:36.582	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	21
296	\N	0	2019-07-05 13:49:36.582	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	21
297	\N	0	2019-07-05 13:49:36.582	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	21
298	\N	0	2019-07-05 13:49:36.582	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	21
299	\N	0	2019-07-05 13:49:36.582	\N	\N	f	\N	\N	hideIf	java.lang	\N	String	1	\N	21
300	\N	0	2019-07-05 13:49:36.582	\N	\N	f	\N	\N	field	java.lang	\N	String	1	\N	21
301	\N	0	2019-07-05 13:49:36.583	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	21
302	\N	0	2019-07-05 13:49:36.583	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	21
303	\N	0	2019-07-05 13:49:36.583	\N	\N	f	\N	\N	readonlyIf	java.lang	\N	String	1	\N	21
304	\N	0	2019-07-05 13:49:36.603	\N	\N	f	\N	\N	next	java.lang	\N	Long	1	\N	22
305	\N	0	2019-07-05 13:49:36.603	\N	\N	f	\N	\N	padding	java.lang	\N	Integer	1	\N	22
306	\N	0	2019-07-05 13:49:36.603	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	22
307	\N	0	2019-07-05 13:49:36.604	\N	\N	f	\N	\N	initial	java.lang	\N	Long	1	\N	22
308	\N	0	2019-07-05 13:49:36.604	\N	\N	f	\N	\N	prefix	java.lang	\N	String	1	\N	22
309	\N	0	2019-07-05 13:49:36.604	\N	\N	f	\N	\N	increment	java.lang	\N	Integer	1	\N	22
310	\N	0	2019-07-05 13:49:36.604	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	22
311	\N	0	2019-07-05 13:49:36.604	\N	\N	f	\N	\N	suffix	java.lang	\N	String	1	\N	22
312	\N	0	2019-07-05 13:49:36.604	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	22
313	\N	0	2019-07-05 13:49:36.604	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	22
314	\N	0	2019-07-05 13:49:36.604	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	22
315	\N	0	2019-07-05 13:49:36.605	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	22
316	\N	0	2019-07-05 13:49:36.605	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	22
317	\N	0	2019-07-05 13:49:36.605	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	22
318	\N	0	2019-07-05 13:49:36.621	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	23
319	\N	0	2019-07-05 13:49:36.621	\N	\N	f	\N	\N	address	java.lang	\N	String	1	\N	23
320	\N	0	2019-07-05 13:49:36.621	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	23
321	\N	0	2019-07-05 13:49:36.621	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	23
322	\N	0	2019-07-05 13:49:36.621	\N	\N	f	\N	\N	personal	java.lang	\N	String	1	\N	23
323	\N	0	2019-07-05 13:49:36.621	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	23
324	\N	0	2019-07-05 13:49:36.622	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	23
325	\N	0	2019-07-05 13:49:36.622	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	23
326	\N	0	2019-07-05 13:49:36.622	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	23
327	\N	0	2019-07-05 13:49:36.638	\N	\N	f	\N	\N	summary	java.lang	\N	String	1	\N	24
328	\N	0	2019-07-05 13:49:36.639	\N	\N	f	\N	\N	parent	com.axelor.mail.db	ManyToOne	MailMessage	1	\N	24
329	\N	0	2019-07-05 13:49:36.639	\N		f	Related document name	\N	relatedName	java.lang	\N	String	1	\N	24
330	\N	0	2019-07-05 13:49:36.639	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	24
331	\N	0	2019-07-05 13:49:36.639	\N	\N	f	\N	\N	author	com.axelor.auth.db	ManyToOne	User	1	\N	24
332	\N	0	2019-07-05 13:49:36.639	\N	\N	f	\N	\N	subject	java.lang	\N	String	1	\N	24
333	\N	0	2019-07-05 13:49:36.64	\N	\N	f	\N	message	flags	com.axelor.mail.db	OneToMany	MailFlags	1	\N	24
334	\N	0	2019-07-05 13:49:36.64	\N	Unique message identifier	f		\N	messageId	java.lang	\N	String	1	\N	24
335	\N	0	2019-07-05 13:49:36.64	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	24
336	\N	0	2019-07-05 13:49:36.64	\N		f		\N	body	java.lang	\N	String	1	\N	24
337	\N	0	2019-07-05 13:49:36.64	\N		f		\N	type	java.lang	\N	String	1	\N	24
338	\N	0	2019-07-05 13:49:36.64	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	24
339	\N	0	2019-07-05 13:49:36.641	\N		f	Related document model	\N	relatedModel	java.lang	\N	String	1	\N	24
340	\N	0	2019-07-05 13:49:36.641	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	24
341	\N	0	2019-07-05 13:49:36.641	\N		f	Related document id	\N	relatedId	java.lang	\N	Long	1	\N	24
342	\N	0	2019-07-05 13:49:36.641	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	24
343	\N	0	2019-07-05 13:49:36.641	\N	\N	f	\N	parent	replies	com.axelor.mail.db	OneToMany	MailMessage	1	\N	24
344	\N	0	2019-07-05 13:49:36.641	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	24
345	\N	0	2019-07-05 13:49:36.641	\N	\N	f	\N		recipients	com.axelor.mail.db	ManyToMany	MailAddress	1	\N	24
346	\N	0	2019-07-05 13:49:36.642	\N	\N	f	\N	\N	root	com.axelor.mail.db	ManyToOne	MailMessage	1	\N	24
347	\N	0	2019-07-05 13:49:36.642	\N	\N	f	\N	\N	from	com.axelor.mail.db	ManyToOne	MailAddress	1	\N	24
348	\N	0	2019-07-05 13:49:36.642	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	24
349	\N	0	2019-07-05 13:49:36.667	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	25
350	\N	0	2019-07-05 13:49:36.667	\N	\N	f	\N	\N	isArchived	java.lang	\N	Boolean	1	\N	25
351	\N	0	2019-07-05 13:49:36.667	\N	\N	f	\N	\N	isRead	java.lang	\N	Boolean	1	\N	25
352	\N	0	2019-07-05 13:49:36.667	\N	\N	f	\N	\N	isStarred	java.lang	\N	Boolean	1	\N	25
353	\N	0	2019-07-05 13:49:36.668	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	25
354	\N	0	2019-07-05 13:49:36.668	\N	\N	f	\N	\N	message	com.axelor.mail.db	ManyToOne	MailMessage	1	\N	25
355	\N	0	2019-07-05 13:49:36.668	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	25
356	\N	0	2019-07-05 13:49:36.668	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	25
357	\N	0	2019-07-05 13:49:36.668	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	25
358	\N	0	2019-07-05 13:49:36.668	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	25
359	\N	0	2019-07-05 13:49:36.669	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	25
360	\N	0	2019-07-05 13:49:36.669	\N	\N	f	\N	\N	user	com.axelor.auth.db	ManyToOne	User	1	\N	25
361	\N	0	2019-07-05 13:49:36.688	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	26
362	\N	0	2019-07-05 13:49:36.688	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	26
363	\N	0	2019-07-05 13:49:36.688	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	26
364	\N	0	2019-07-05 13:49:36.688	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	26
365	\N	0	2019-07-05 13:49:36.688	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	26
366	\N	0	2019-07-05 13:49:36.689	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	26
367	\N	0	2019-07-05 13:49:36.689	\N	\N	f	\N	\N	relatedModel	java.lang	\N	String	1	\N	26
368	\N	0	2019-07-05 13:49:36.689	\N	\N	f	\N	\N	user	com.axelor.auth.db	ManyToOne	User	1	\N	26
369	\N	0	2019-07-05 13:49:36.689	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	26
370	\N	0	2019-07-05 13:49:36.689	\N	\N	f	\N	\N	email	com.axelor.mail.db	ManyToOne	MailAddress	1	\N	26
371	\N	0	2019-07-05 13:49:36.689	\N	\N	f	\N	\N	relatedId	java.lang	\N	Long	1	\N	26
372	\N	0	2019-07-05 13:49:36.709	\N	\N	f	\N	\N	code	java.lang	\N	String	1	\N	27
373	\N	0	2019-07-05 13:49:36.709	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	27
374	\N	0	2019-07-05 13:49:36.709	\N		f	Permissions (fields)		metaPermissions	com.axelor.meta.db	ManyToMany	MetaPermission	1	\N	27
375	\N	0	2019-07-05 13:49:36.71	\N	\N	f	\N		roles	com.axelor.auth.db	ManyToMany	Role	1	\N	27
376	\N	0	2019-07-05 13:49:36.71	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	27
377	\N	0	2019-07-05 13:49:36.71	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	27
378	\N	0	2019-07-05 13:49:36.71	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	27
379	\N	0	2019-07-05 13:49:36.71	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	27
380	\N	0	2019-07-05 13:49:36.71	\N		f		\N	navigation	java.lang	\N	String	1	\N	27
381	\N	0	2019-07-05 13:49:36.71	\N	Specify whether the members of this group are technical staff.	f		\N	technicalStaff	java.lang	\N	Boolean	1	\N	27
382	\N	0	2019-07-05 13:49:36.711	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	27
383	\N	0	2019-07-05 13:49:36.711	\N	\N	f	\N		permissions	com.axelor.auth.db	ManyToMany	Permission	1	\N	27
384	\N	0	2019-07-05 13:49:36.711	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	27
385	\N	0	2019-07-05 13:49:36.711	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	27
386	\N	0	2019-07-05 13:49:36.711	\N	\N	f	\N	groups	menus	com.axelor.meta.db	ManyToMany	MetaMenu	1	\N	27
387	\N	0	2019-07-05 13:49:36.711	\N	Default home action.	f		\N	homeAction	java.lang	\N	String	1	\N	27
388	\N	0	2019-07-05 13:49:36.712	\N	\N	f	\N	groups	views	com.axelor.meta.db	ManyToMany	MetaView	1	\N	27
389	\N	0	2019-07-05 13:49:36.734	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	28
390	\N	0	2019-07-05 13:49:36.734	\N	\N	f	\N	\N	schedule	com.axelor.meta.db	ManyToOne	MetaSchedule	1	\N	28
391	\N	0	2019-07-05 13:49:36.734	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	28
392	\N	0	2019-07-05 13:49:36.734	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	28
393	\N	0	2019-07-05 13:49:36.735	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	28
394	\N	0	2019-07-05 13:49:36.735	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	28
395	\N	0	2019-07-05 13:49:36.735	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	28
396	\N	0	2019-07-05 13:49:36.735	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	28
397	\N	0	2019-07-05 13:49:36.735	\N	\N	f	\N	\N	value	java.lang	\N	String	1	\N	28
398	\N	0	2019-07-05 13:49:36.735	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	28
399	\N	0	2019-07-05 13:49:36.754	\N	\N	f	\N	\N	cron	java.lang	\N	String	1	\N	29
400	\N	0	2019-07-05 13:49:36.754	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	29
401	\N	0	2019-07-05 13:49:36.754	\N	\N	f	\N	\N	active	java.lang	\N	Boolean	1	\N	29
402	\N	0	2019-07-05 13:49:36.754	\N	\N	f	\N	\N	description	java.lang	\N	String	1	\N	29
403	\N	0	2019-07-05 13:49:36.755	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	29
404	\N	0	2019-07-05 13:49:36.755	\N	\N	f	\N	schedule	params	com.axelor.meta.db	OneToMany	MetaScheduleParam	1	\N	29
405	\N	0	2019-07-05 13:49:36.755	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	29
406	\N	0	2019-07-05 13:49:36.755	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	29
407	\N	0	2019-07-05 13:49:36.755	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	29
408	\N	0	2019-07-05 13:49:36.755	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	29
409	\N	0	2019-07-05 13:49:36.755	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	29
410	\N	0	2019-07-05 13:49:36.755	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	29
411	\N	0	2019-07-05 13:49:36.756	\N	\N	f	\N	\N	job	java.lang	\N	String	1	\N	29
412	\N	0	2019-07-05 13:49:36.777	\N	\N	f	\N	\N	parent	com.axelor.dms.db	ManyToOne	DMSFile	1	\N	30
413	\N	0	2019-07-05 13:49:36.777	\N	\N	f	\N	\N	fileName	java.lang	\N	String	1	\N	30
414	\N	0	2019-07-05 13:49:36.777	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	30
415	\N	0	2019-07-05 13:49:36.778	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	30
416	\N	0	2019-07-05 13:49:36.778	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	30
417	\N	0	2019-07-05 13:49:36.778	\N		f	Related object	\N	relatedModel	java.lang	\N	String	1	\N	30
418	\N	0	2019-07-05 13:49:36.778	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	30
419	\N	0	2019-07-05 13:49:36.778	\N	\N	f	\N	\N	content	java.lang	\N	String	1	\N	30
420	\N	0	2019-07-05 13:49:36.778	\N		f		\N	relatedId	java.lang	\N	Long	1	\N	30
421	\N	0	2019-07-05 13:49:36.778	\N	\N	f	\N		tags	com.axelor.dms.db	ManyToMany	DMSFileTag	1	\N	30
422	\N	0	2019-07-05 13:49:36.779	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	30
423	\N	0	2019-07-05 13:49:36.779	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	30
424	\N	0	2019-07-05 13:49:36.779	\N	\N	f	\N	file	permissions	com.axelor.dms.db	OneToMany	DMSPermission	1	\N	30
425	\N	0	2019-07-05 13:49:36.779	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	30
426	\N	0	2019-07-05 13:49:36.779	\N	\N	f	\N	\N	contentType	java.lang	\N	String	1	\N	30
427	\N	0	2019-07-05 13:49:36.779	\N	\N	f	\N	\N	isDirectory	java.lang	\N	Boolean	1	\N	30
428	\N	0	2019-07-05 13:49:36.779	\N	\N	f	\N	\N	metaFile	com.axelor.meta.db	ManyToOne	MetaFile	1	\N	30
429	\N	0	2019-07-05 13:49:36.808	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	31
430	\N	0	2019-07-05 13:49:36.809	\N	\N	f	\N	\N	code	java.lang	\N	String	1	\N	31
431	\N	0	2019-07-05 13:49:36.809	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	31
432	\N	0	2019-07-05 13:49:36.809	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	31
433	\N	0	2019-07-05 13:49:36.809	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	31
434	\N	0	2019-07-05 13:49:36.81	\N		f		\N	style	java.lang	\N	String	1	\N	31
435	\N	0	2019-07-05 13:49:36.81	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	31
436	\N	0	2019-07-05 13:49:36.811	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	31
437	\N	0	2019-07-05 13:49:36.811	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	31
438	\N	0	2019-07-05 13:49:36.811	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	31
439	\N	0	2019-07-05 13:49:36.839	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	32
440	\N	0	2019-07-05 13:49:36.839	\N	\N	f	\N	\N	permission	com.axelor.auth.db	ManyToOne	Permission	1	\N	32
441	\N	0	2019-07-05 13:49:36.84	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	32
442	\N	0	2019-07-05 13:49:36.84	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	32
443	\N	0	2019-07-05 13:49:36.84	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	32
444	\N	0	2019-07-05 13:49:36.84	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	32
445	\N	0	2019-07-05 13:49:36.841	\N	\N	f	\N	\N	file	com.axelor.dms.db	ManyToOne	DMSFile	1	\N	32
446	\N	0	2019-07-05 13:49:36.841	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	32
447	\N	0	2019-07-05 13:49:36.841	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	32
448	\N	0	2019-07-05 13:49:36.841	\N	\N	f	\N	\N	user	com.axelor.auth.db	ManyToOne	User	1	\N	32
449	\N	0	2019-07-05 13:49:36.841	\N		f		\N	value	java.lang	\N	String	1	\N	32
450	\N	0	2019-07-05 13:49:36.842	\N	\N	f	\N	\N	group	com.axelor.auth.db	ManyToOne	Group	1	\N	32
451	\N	0	2019-07-05 13:49:36.872	\N		f	Photo	\N	image	\N	\N	byte[]	1	\N	33
452	\N	0	2019-07-05 13:49:36.872	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	33
453	\N	0	2019-07-05 13:49:36.872	\N	\N	f	\N	team	topics	com.axelor.team.db	OneToMany	TeamTopic	1	\N	33
454	\N	0	2019-07-05 13:49:36.873	\N		f	Authorized roles		roles	com.axelor.auth.db	ManyToMany	Role	1	\N	33
455	\N	0	2019-07-05 13:49:36.873	\N	\N	f	\N	\N	description	java.lang	\N	String	1	\N	33
456	\N	0	2019-07-05 13:49:36.873	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	33
457	\N	0	2019-07-05 13:49:36.873	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	33
458	\N	0	2019-07-05 13:49:36.873	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	33
459	\N	0	2019-07-05 13:49:36.874	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	33
460	\N	0	2019-07-05 13:49:36.874	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	33
461	\N	0	2019-07-05 13:49:36.874	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	33
462	\N	0	2019-07-05 13:49:36.874	\N	\N	f	\N		members	com.axelor.auth.db	ManyToMany	User	1	\N	33
463	\N	0	2019-07-05 13:49:36.874	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	33
464	\N	0	2019-07-05 13:49:36.875	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	33
465	\N	0	2019-07-05 13:49:36.902	\N	\N	f	\N	\N	relatedName	java.lang	\N	String	1	\N	34
466	\N	0	2019-07-05 13:49:36.902	\N	\N	f	\N	\N	taskDeadline	java.time	\N	LocalDate	1	\N	34
467	\N	0	2019-07-05 13:49:36.902	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	34
468	\N	0	2019-07-05 13:49:36.902	\N	\N	f	\N	\N	taskDuration	java.lang	\N	Integer	1	\N	34
469	\N	0	2019-07-05 13:49:36.902	\N	\N	f	\N	\N	description	java.lang	\N	String	1	\N	34
470	\N	0	2019-07-05 13:49:36.903	\N	\N	f	\N	\N	team	com.axelor.team.db	ManyToOne	Team	1	\N	34
471	\N	0	2019-07-05 13:49:36.903	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	34
472	\N	0	2019-07-05 13:49:36.903	\N		f		\N	priority	java.lang	\N	String	1	\N	34
473	\N	0	2019-07-05 13:49:36.903	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	34
474	\N	0	2019-07-05 13:49:36.903	\N	\N	f	\N	\N	relatedModel	java.lang	\N	String	1	\N	34
475	\N	0	2019-07-05 13:49:36.903	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	34
476	\N	0	2019-07-05 13:49:36.904	\N	\N	f	\N	\N	assignedTo	com.axelor.auth.db	ManyToOne	User	1	\N	34
477	\N	0	2019-07-05 13:49:36.904	\N	\N	t	\N	\N	attrs	java.lang	\N	String	1	\N	34
478	\N	0	2019-07-05 13:49:36.904	\N	\N	f	\N	\N	relatedId	java.lang	\N	Long	1	\N	34
479	\N	0	2019-07-05 13:49:36.904	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	34
480	\N	0	2019-07-05 13:49:36.904	\N	\N	f	\N	\N	sequence	java.lang	\N	Integer	1	\N	34
481	\N	0	2019-07-05 13:49:36.905	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	34
482	\N	0	2019-07-05 13:49:36.905	\N	\N	f	\N	\N	taskDate	java.time	\N	LocalDate	1	\N	34
483	\N	0	2019-07-05 13:49:36.905	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	34
484	\N	0	2019-07-05 13:49:36.905	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	34
485	\N	0	2019-07-05 13:49:36.905	\N		f		\N	status	java.lang	\N	String	1	\N	34
486	\N	0	2019-07-05 13:49:36.934	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	35
487	\N	0	2019-07-05 13:49:36.934	\N	\N	f	\N	\N	active	java.lang	\N	Boolean	1	\N	35
488	\N	0	2019-07-05 13:49:36.934	\N	\N	f	\N	\N	description	java.lang	\N	String	1	\N	35
489	\N	0	2019-07-05 13:49:36.935	\N	\N	f	\N	\N	team	com.axelor.team.db	ManyToOne	Team	1	\N	35
490	\N	0	2019-07-05 13:49:36.935	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	35
491	\N	0	2019-07-05 13:49:36.935	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	35
492	\N	0	2019-07-05 13:49:36.935	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	35
493	\N	0	2019-07-05 13:49:36.935	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	35
494	\N	0	2019-07-05 13:49:36.935	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	35
495	\N	0	2019-07-05 13:49:36.935	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	35
496	\N	0	2019-07-05 13:49:36.936	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	35
497	\N	0	2019-07-05 13:49:36.936	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	35
498	\N	0	2019-07-05 13:49:36.957	\N	\N	f	\N	\N	onClick	java.lang	\N	String	1	\N	36
499	\N	0	2019-07-05 13:49:36.957	\N	\N	f	\N	\N	defaultValue	java.lang	\N	String	1	\N	36
500	\N	0	2019-07-05 13:49:36.957	\N	\N	f	\N	\N	precision	java.lang	\N	Integer	1	\N	36
501	\N	0	2019-07-05 13:49:36.958	\N	\N	f	\N	\N	nameField	java.lang	\N	Boolean	1	\N	36
502	\N	0	2019-07-05 13:49:36.958	\N		f		\N	type	java.lang	\N	String	1	\N	36
503	\N	0	2019-07-05 13:49:36.958	\N	\N	f	\N	\N	required	java.lang	\N	Boolean	1	\N	36
504	\N	0	2019-07-05 13:49:36.958	\N	\N	f	\N	\N	hideIf	java.lang	\N	String	1	\N	36
505	\N	0	2019-07-05 13:49:36.958	\N	\N	f	\N	\N	readonly	java.lang	\N	Boolean	1	\N	36
506	\N	0	2019-07-05 13:49:36.958	\N	\N	f	\N	\N	minSize	java.lang	\N	Integer	1	\N	36
507	\N	0	2019-07-05 13:49:36.958	\N	\N	f	\N	\N	model	java.lang	\N	String	1	\N	36
508	\N	0	2019-07-05 13:49:36.958	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	36
509	\N	0	2019-07-05 13:49:36.959	\N	\N	f	\N	\N	targetJsonModel	com.axelor.meta.db	ManyToOne	MetaJsonModel	1	\N	36
510	\N	0	2019-07-05 13:49:36.959	\N	\N	f	\N	\N	includeIf	java.lang	\N	String	1	\N	36
511	\N	0	2019-07-05 13:49:36.959	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	36
512	\N	0	2019-07-05 13:49:36.959	\N	\N	f	\N	\N	onChange	java.lang	\N	String	1	\N	36
513	\N	0	2019-07-05 13:49:36.959	\N	\N	f	\N	\N	contextField	java.lang	\N	String	1	\N	36
514	\N	0	2019-07-05 13:49:36.959	\N	\N	f	\N	\N	targetModel	java.lang	\N	String	1	\N	36
515	\N	0	2019-07-05 13:49:36.96	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	36
516	\N	0	2019-07-05 13:49:36.96	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	36
517	\N	0	2019-07-05 13:49:36.96	\N	\N	f	\N	\N	sequence	java.lang	\N	Integer	1	\N	36
518	\N	0	2019-07-05 13:49:36.96	\N	\N	f	\N	\N	regex	java.lang	\N	String	1	\N	36
519	\N	0	2019-07-05 13:49:36.96	\N	\N	f	\N	\N	selection	java.lang	\N	String	1	\N	36
520	\N	0	2019-07-05 13:49:36.96	\N	\N	f	\N	\N	formView	java.lang	\N	String	1	\N	36
521	\N	0	2019-07-05 13:49:36.96	\N	\N	f	\N	\N	domain	java.lang	\N	String	1	\N	36
522	\N	0	2019-07-05 13:49:36.961	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	36
523	\N	0	2019-07-05 13:49:36.961	\N	\N	f	\N	\N	modelField	java.lang	\N	String	1	\N	36
524	\N	0	2019-07-05 13:49:36.961	\N	\N	f	\N	\N	widget	java.lang	\N	String	1	\N	36
525	\N	0	2019-07-05 13:49:36.961	\N	\N	f	\N	\N	hidden	java.lang	\N	Boolean	1	\N	36
526	\N	0	2019-07-05 13:49:36.961	\N	\N	f	\N		roles	com.axelor.auth.db	ManyToMany	Role	1	\N	36
527	\N	0	2019-07-05 13:49:36.961	\N	\N	f	\N	\N	enumType	java.lang	\N	String	1	\N	36
528	\N	0	2019-07-05 13:49:36.961	\N	\N	f	\N	\N	scale	java.lang	\N	Integer	1	\N	36
529	\N	0	2019-07-05 13:49:36.961	\N	\N	f	\N	\N	maxSize	java.lang	\N	Integer	1	\N	36
530	\N	0	2019-07-05 13:49:36.961	\N	\N	f	\N	\N	title	java.lang	\N	String	1	\N	36
531	\N	0	2019-07-05 13:49:36.962	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	36
532	\N	0	2019-07-05 13:49:36.962	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	36
533	\N	0	2019-07-05 13:49:36.962	\N	\N	f	\N	\N	showIf	java.lang	\N	String	1	\N	36
534	\N	0	2019-07-05 13:49:36.962	\N		f	Value Expression	\N	valueExpr	java.lang	\N	String	1	\N	36
535	\N	0	2019-07-05 13:49:36.962	\N	\N	f	\N	\N	jsonModel	com.axelor.meta.db	ManyToOne	MetaJsonModel	1	\N	36
536	\N	0	2019-07-05 13:49:36.962	\N	\N	f	\N	\N	contextFieldValue	java.lang	\N	String	1	\N	36
537	\N	0	2019-07-05 13:49:36.962	\N	\N	f	\N	\N	readonlyIf	java.lang	\N	String	1	\N	36
538	\N	0	2019-07-05 13:49:36.962	\N	\N	f	\N	\N	requiredIf	java.lang	\N	String	1	\N	36
539	\N	0	2019-07-05 13:49:36.962	\N	\N	f	\N	\N	contextFieldTargetName	java.lang	\N	String	1	\N	36
540	\N	0	2019-07-05 13:49:36.963	\N	\N	t	\N	\N	widgetAttrs	java.lang	\N	String	1	\N	36
541	\N	0	2019-07-05 13:49:36.963	\N	\N	f	\N	\N	contextFieldTitle	java.lang	\N	String	1	\N	36
542	\N	0	2019-07-05 13:49:36.963	\N	\N	f	\N	\N	help	java.lang	\N	String	1	\N	36
543	\N	0	2019-07-05 13:49:36.963	\N	\N	f	\N	\N	contextFieldTarget	java.lang	\N	String	1	\N	36
544	\N	0	2019-07-05 13:49:36.963	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	36
545	\N	0	2019-07-05 13:49:36.963	\N	\N	f	\N	\N	visibleInGrid	java.lang	\N	Boolean	1	\N	36
546	\N	0	2019-07-05 13:49:36.963	\N	\N	f	\N	\N	gridView	java.lang	\N	String	1	\N	36
547	\N	0	2019-07-05 13:49:36.991	\N	\N	f	\N	\N	menuIcon	java.lang	\N	String	1	\N	37
548	\N	0	2019-07-05 13:49:36.991	\N	\N	f	\N		roles	com.axelor.auth.db	ManyToMany	Role	1	\N	37
549	\N	0	2019-07-05 13:49:36.992	\N	\N	f	\N	\N	menuBackground	java.lang	\N	String	1	\N	37
550	\N	0	2019-07-05 13:49:36.992	\N	\N	f	\N	\N	nameField	java.lang	\N	String	1	\N	37
551	\N	0	2019-07-05 13:49:36.992	\N	\N	f	\N	\N	title	java.lang	\N	String	1	\N	37
552	\N	0	2019-07-05 13:49:36.992	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	37
553	\N	0	2019-07-05 13:49:36.992	\N	\N	f	\N	\N	onNew	java.lang	\N	String	1	\N	37
554	\N	0	2019-07-05 13:49:36.992	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	37
555	\N	0	2019-07-05 13:49:36.992	\N	\N	f	\N	\N	menuTop	java.lang	\N	Boolean	1	\N	37
556	\N	0	2019-07-05 13:49:36.992	\N		f		\N	action	com.axelor.meta.db	ManyToOne	MetaAction	1	\N	37
557	\N	0	2019-07-05 13:49:36.992	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	37
558	\N	0	2019-07-05 13:49:36.993	\N	\N	f	\N	\N	onSave	java.lang	\N	String	1	\N	37
559	\N	0	2019-07-05 13:49:36.993	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	37
560	\N	0	2019-07-05 13:49:36.993	\N	\N	f	\N	\N	menuParent	com.axelor.meta.db	ManyToOne	MetaMenu	1	\N	37
561	\N	0	2019-07-05 13:49:36.993	\N	\N	f	\N	\N	menuTitle	java.lang	\N	String	1	\N	37
562	\N	0	2019-07-05 13:49:36.993	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	37
563	\N	0	2019-07-05 13:49:36.993	\N		f		\N	menu	com.axelor.meta.db	ManyToOne	MetaMenu	1	\N	37
564	\N	0	2019-07-05 13:49:36.993	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	37
565	\N	0	2019-07-05 13:49:36.994	\N	\N	f	\N	\N	menuOrder	java.lang	\N	Integer	1	\N	37
566	\N	0	2019-07-05 13:49:36.994	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	37
567	\N	0	2019-07-05 13:49:36.994	\N		f		\N	formView	com.axelor.meta.db	ManyToOne	MetaView	1	\N	37
568	\N	0	2019-07-05 13:49:36.994	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	37
569	\N	0	2019-07-05 13:49:36.994	\N	\N	f	\N	jsonModel	fields	com.axelor.meta.db	OneToMany	MetaJsonField	1	\N	37
570	\N	0	2019-07-05 13:49:36.994	\N		f		\N	gridView	com.axelor.meta.db	ManyToOne	MetaView	1	\N	37
571	\N	0	2019-07-05 13:49:37.021	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	38
572	\N	0	2019-07-05 13:49:37.021	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	38
573	\N	0	2019-07-05 13:49:37.021	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	38
574	\N	0	2019-07-05 13:49:37.021	\N	\N	f	\N	\N	jsonModel	java.lang	\N	String	1	\N	38
575	\N	0	2019-07-05 13:49:37.021	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	38
576	\N	0	2019-07-05 13:49:37.021	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	38
577	\N	0	2019-07-05 13:49:37.021	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	38
578	\N	0	2019-07-05 13:49:37.021	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	38
579	\N	0	2019-07-05 13:49:37.022	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	38
580	\N	0	2019-07-05 13:49:37.022	\N	\N	t	\N	\N	attrs	java.lang	\N	String	1	\N	38
581	\N	0	2019-07-05 13:49:45.236	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	39
582	\N	0	2019-07-05 13:49:45.236	\N	\N	f	\N	\N	code	java.lang	\N	String	1	\N	39
583	\N	0	2019-07-05 13:49:45.236	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	39
584	\N	0	2019-07-05 13:49:45.236	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	39
585	\N	0	2019-07-05 13:49:45.237	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	39
586	\N	0	2019-07-05 13:49:45.237	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	39
587	\N	0	2019-07-05 13:49:45.237	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	39
588	\N	0	2019-07-05 13:49:45.237	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	39
589	\N	0	2019-07-05 13:49:45.237	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	39
590	\N	0	2019-07-05 13:49:45.237	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	39
591	\N	0	2019-07-05 13:49:45.242	\N	\N	f	\N	\N	date	java.time	\N	LocalDate	1	\N	40
592	\N	0	2019-07-05 13:49:45.243	\N		f	Time Spent	\N	hours	java.time	\N	LocalTime	1	\N	40
593	\N	0	2019-07-05 13:49:45.243	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	40
594	\N	0	2019-07-05 13:49:45.243	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	40
595	\N	0	2019-07-05 13:49:45.243	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	40
596	\N	0	2019-07-05 13:49:45.243	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	40
597	\N	0	2019-07-05 13:49:45.243	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	40
598	\N	0	2019-07-05 13:49:45.243	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	40
599	\N	0	2019-07-05 13:49:45.243	\N	\N	f	\N	\N	task	com.axelor.partner.db	ManyToOne	ProjectTask	1	\N	40
600	\N	0	2019-07-05 13:49:45.243	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	40
601	\N	0	2019-07-05 13:49:45.243	\N	\N	f	\N	\N	name	java.lang	\N	String	1	\N	40
602	\N	0	2019-07-05 13:49:45.243	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	40
603	\N	0	2019-07-05 13:49:45.244	\N	\N	f	\N	\N	user	com.axelor.auth.db	ManyToOne	User	1	\N	40
604	\N	0	2019-07-05 13:49:45.25	\N	\N	f	\N	\N	parent	com.axelor.partner.db	ManyToOne	Project	1	\N	41
605	\N	0	2019-07-05 13:49:45.25	\N		f		\N	notes	java.lang	\N	String	1	\N	41
606	\N	0	2019-07-05 13:49:45.251	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	41
607	\N	0	2019-07-05 13:49:45.251	\N	\N	f	\N		memberSet	com.axelor.auth.db	ManyToMany	User	1	\N	41
608	\N	0	2019-07-05 13:49:45.251	\N		f		\N	description	java.lang	\N	String	1	\N	41
609	\N	0	2019-07-05 13:49:45.251	\N	\N	f	\N	project	taskList	com.axelor.partner.db	OneToMany	ProjectTask	1	\N	41
610	\N	0	2019-07-05 13:49:45.251	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	41
611	\N	0	2019-07-05 13:49:45.251	\N	\N	f	\N	\N	priority	java.lang	\N	Integer	1	\N	41
612	\N	0	2019-07-05 13:49:45.251	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	41
613	\N	0	2019-07-05 13:49:45.251	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	41
614	\N	0	2019-07-05 13:49:45.251	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	41
615	\N	0	2019-07-05 13:49:45.251	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	41
616	\N	0	2019-07-05 13:49:45.251	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	41
617	\N	0	2019-07-05 13:49:45.251	\N		f		\N	name	java.lang	\N	String	1	\N	41
618	\N	0	2019-07-05 13:49:45.252	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	41
619	\N	0	2019-07-05 13:49:45.252	\N	\N	f	\N		partnerSet	com.axelor.partner.db	ManyToMany	Partner	1	\N	41
620	\N	0	2019-07-05 13:49:45.259	\N	\N	f	\N	\N	area	java.lang	\N	String	1	\N	42
621	\N	0	2019-07-05 13:49:45.259	\N	\N	f	\N	\N	zip	java.lang	\N	String	1	\N	42
622	\N	0	2019-07-05 13:49:45.259	\N	\N	f	\N	\N	country	com.axelor.partner.db	ManyToOne	Country	1	\N	42
623	\N	0	2019-07-05 13:49:45.259	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	42
624	\N	0	2019-07-05 13:49:45.259	\N	\N	f	\N	\N	city	java.lang	\N	String	1	\N	42
625	\N	0	2019-07-05 13:49:45.259	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	42
626	\N	0	2019-07-05 13:49:45.259	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	42
627	\N	0	2019-07-05 13:49:45.259	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	42
628	\N	0	2019-07-05 13:49:45.259	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	42
629	\N	0	2019-07-05 13:49:45.259	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	42
630	\N	0	2019-07-05 13:49:45.259	\N	\N	f	\N	\N	partner	com.axelor.partner.db	ManyToOne	Partner	1	\N	42
631	\N	0	2019-07-05 13:49:45.26	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	42
632	\N	0	2019-07-05 13:49:45.26	\N	\N	f	\N	\N	street	java.lang	\N	String	1	\N	42
633	\N	0	2019-07-05 13:49:45.26	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	42
634	\N	0	2019-07-05 13:49:45.26	\N	\N	f	\N	\N	state	java.lang	\N	String	1	\N	42
635	\N	0	2019-07-05 13:49:45.268	\N	\N	f	\N	task	workList	com.axelor.partner.db	OneToMany	ProjectWork	1	\N	43
636	\N	0	2019-07-05 13:49:45.268	\N		f		\N	notes	java.lang	\N	String	1	\N	43
637	\N	0	2019-07-05 13:49:45.268	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	43
638	\N	0	2019-07-05 13:49:45.268	\N		f	Parent task	\N	projectTask	com.axelor.partner.db	ManyToOne	ProjectTask	1	\N	43
639	\N	0	2019-07-05 13:49:45.268	\N	\N	f	\N	\N	createDateT	java.time	\N	LocalDateTime	1	\N	43
640	\N	0	2019-07-05 13:49:45.268	\N	\N	f	\N	\N	project	com.axelor.partner.db	ManyToOne	Project	1	\N	43
641	\N	0	2019-07-05 13:49:45.268	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	43
642	\N	0	2019-07-05 13:49:45.268	\N	\N	f	\N	\N	priority	java.lang	\N	Integer	1	\N	43
643	\N	0	2019-07-05 13:49:45.269	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	43
644	\N	0	2019-07-05 13:49:45.269	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	43
645	\N	0	2019-07-05 13:49:45.269	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	43
646	\N	0	2019-07-05 13:49:45.269	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	43
647	\N	0	2019-07-05 13:49:45.269	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	43
648	\N	0	2019-07-05 13:49:45.269	\N		f	Task Summary	\N	name	java.lang	\N	String	1	\N	43
649	\N	0	2019-07-05 13:49:45.269	\N	\N	f	\N	\N	progress	java.lang	\N	Integer	1	\N	43
650	\N	0	2019-07-05 13:49:45.269	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	43
651	\N	0	2019-07-05 13:49:45.269	\N		f		\N	state	java.lang	\N	String	1	\N	43
652	\N	0	2019-07-05 13:49:45.269	\N	\N	f	\N	\N	user	com.axelor.auth.db	ManyToOne	User	1	\N	43
653	\N	0	2019-07-05 13:49:45.278	\N		f	Department Code	\N	code	java.lang	\N	String	1	\N	44
654	\N	0	2019-07-05 13:49:45.278	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	44
655	\N	0	2019-07-05 13:49:45.278	\N		f	Is Technical	\N	isTechnical	java.lang	\N	Boolean	1	\N	44
656	\N	0	2019-07-05 13:49:45.278	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	44
657	\N	0	2019-07-05 13:49:45.278	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	44
658	\N	0	2019-07-05 13:49:45.278	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	44
659	\N	0	2019-07-05 13:49:45.278	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	44
660	\N	0	2019-07-05 13:49:45.278	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	44
661	\N	0	2019-07-05 13:49:45.278	\N	\N	f	\N	\N	partner	com.axelor.partner.db	ManyToOne	Partner	1	\N	44
662	\N	0	2019-07-05 13:49:45.278	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	44
663	\N	0	2019-07-05 13:49:45.278	\N		f	Department Name	\N	name	java.lang	\N	String	1	\N	44
664	\N	0	2019-07-05 13:49:45.278	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	44
665	\N	0	2019-07-05 13:49:45.285	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	45
666	\N	0	2019-07-05 13:49:45.285	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	45
667	\N	0	2019-07-05 13:49:45.285	\N	\N	f	\N		partner	com.axelor.partner.db	ManyToMany	Partner	1	\N	45
668	\N	0	2019-07-05 13:49:45.285	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	45
669	\N	0	2019-07-05 13:49:45.285	\N	\N	f	\N	\N	companyName	java.lang	\N	String	1	\N	45
670	\N	0	2019-07-05 13:49:45.285	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	45
671	\N	0	2019-07-05 13:49:45.285	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	45
672	\N	0	2019-07-05 13:49:45.286	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	45
673	\N	0	2019-07-05 13:49:45.286	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	45
674	\N	0	2019-07-05 13:49:45.286	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	45
675	\N	0	2019-07-05 13:49:45.298	\N	Max size 4MB.	f	Photo	\N	image	\N	\N	byte[]	1	\N	46
676	\N	0	2019-07-05 13:49:45.298	\N	\N	f	\N	\N	lastName	java.lang	\N	String	1	\N	46
677	\N	0	2019-07-05 13:49:45.298	\N	\N	f	\N	partner	address	com.axelor.partner.db	OneToMany	Address	1	\N	46
678	\N	0	2019-07-05 13:49:45.298	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	46
679	\N	0	2019-07-05 13:49:45.298	\N		f		\N	fullName	java.lang	\N	String	1	\N	46
680	\N	0	2019-07-05 13:49:45.298	\N	\N	f	\N		project	com.axelor.partner.db	ManyToMany	Project	1	\N	46
681	\N	0	2019-07-05 13:49:45.298	\N	\N	f	\N	\N	dateOfBirth	java.time	\N	LocalDate	1	\N	46
682	\N	0	2019-07-05 13:49:45.298	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	46
683	\N	0	2019-07-05 13:49:45.298	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	46
684	\N	0	2019-07-05 13:49:45.299	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	46
685	\N	0	2019-07-05 13:49:45.299	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	46
686	\N	0	2019-07-05 13:49:45.299	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	46
687	\N	0	2019-07-05 13:49:45.299	\N	\N	f	\N	\N	firstName	java.lang	\N	String	1	\N	46
688	\N	0	2019-07-05 13:49:45.299	\N		f	Is Techinical	\N	isTechi	java.lang	\N	Boolean	1	\N	46
689	\N	0	2019-07-05 13:49:45.299	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	46
690	\N	0	2019-07-05 13:49:45.299	\N		f	PartnerSeq	\N	partnerSeq	java.lang	\N	String	1	\N	46
691	\N	0	2019-07-05 13:49:45.299	\N	\N	f	\N	partner	company	com.axelor.partner.db	ManyToMany	Company	1	\N	46
692	\N	0	2019-07-05 13:49:45.299	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	46
693	\N	0	2019-07-05 13:49:45.299	\N	\N	f	\N	\N	department	com.axelor.partner.db	ManyToOne	Department	1	\N	46
694	\N	0	2019-07-05 13:49:45.299	\N		f	Email		email	com.axelor.partner.db	OneToOne	Email	1	\N	46
695	\N	0	2019-07-05 13:49:45.309	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	47
696	\N	0	2019-07-05 13:49:45.309	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	47
697	\N	0	2019-07-05 13:49:45.309	\N	\N	f	\N	email	partner	com.axelor.partner.db	OneToOne	Partner	1	\N	47
698	\N	0	2019-07-05 13:49:45.309	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	47
699	\N	0	2019-07-05 13:49:45.309	\N	\N	f	\N	\N	emailId	java.lang	\N	String	1	\N	47
700	\N	0	2019-07-05 13:49:45.309	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	47
701	\N	0	2019-07-05 13:49:45.309	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	47
702	\N	0	2019-07-05 13:49:45.31	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	47
703	\N	0	2019-07-05 13:49:45.31	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	47
704	\N	0	2019-07-05 13:49:45.31	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	47
705	\N	0	2019-07-05 13:49:46.491	\N	\N	f	\N	\N	lastName	java.lang	\N	String	1	\N	48
706	\N	0	2019-07-05 13:49:46.491	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	48
707	\N	0	2019-07-05 13:49:46.491	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	48
708	\N	0	2019-07-05 13:49:46.492	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	48
709	\N	0	2019-07-05 13:49:46.492	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	48
710	\N	0	2019-07-05 13:49:46.492	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	48
711	\N	0	2019-07-05 13:49:46.492	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	48
712	\N	0	2019-07-05 13:49:46.492	\N	\N	f	\N	\N	firstName	java.lang	\N	String	1	\N	48
713	\N	0	2019-07-05 13:49:46.492	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	48
714	\N	0	2019-07-05 13:49:46.492	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	48
715	\N	0	2019-07-05 13:49:46.492	\N	\N	f	\N	\N	age	java.lang	\N	Integer	1	\N	48
716	\N	0	2019-07-05 13:49:46.492	\N		f	Email		email	com.axelor.demoimpl.db	OneToOne	PersonEmail	1	\N	48
717	\N	0	2019-07-05 13:49:46.493	\N	\N	f	\N	\N	hobby	java.lang	\N	String	1	\N	48
718	\N	0	2019-07-05 13:49:46.498	\N		f		\N	archived	java.lang	\N	Boolean	1	\N	49
719	\N	0	2019-07-05 13:49:46.499	\N		f	Updated by	\N	updatedBy	com.axelor.auth.db	ManyToOne	User	1	\N	49
720	\N	0	2019-07-05 13:49:46.499	\N		f	Created by	\N	createdBy	com.axelor.auth.db	ManyToOne	User	1	\N	49
721	\N	0	2019-07-05 13:49:46.499	\N	\N	f	\N	email	person	com.axelor.demoimpl.db	OneToOne	Person	1	\N	49
722	\N	0	2019-07-05 13:49:46.499	\N	\N	f	\N	\N	emailId	java.lang	\N	String	1	\N	49
723	\N	0	2019-07-05 13:49:46.499	\N	\N	f	\N	\N	id	java.lang	\N	Long	1	\N	49
724	\N	0	2019-07-05 13:49:46.499	\N		f	Updated on	\N	updatedOn	java.time	\N	LocalDateTime	1	\N	49
725	\N	0	2019-07-05 13:49:46.499	\N		f	Created on	\N	createdOn	java.time	\N	LocalDateTime	1	\N	49
726	\N	0	2019-07-05 13:49:46.499	\N	\N	f	\N	\N	version	java.lang	\N	Integer	1	\N	49
727	\N	0	2019-07-05 13:49:46.499	\N		t	Attributes	\N	attrs	java.lang	\N	String	1	\N	49
\.


--
-- Data for Name: meta_file; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_file (id, archived, version, created_on, updated_on, description, file_name, file_path, file_size, file_type, file_size_text, created_by, updated_by) FROM stdin;
\.


--
-- Data for Name: meta_filter; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_filter (id, archived, version, created_on, updated_on, filter_custom, filter_view, filters, name, shared, title, created_by, updated_by, user_id) FROM stdin;
\.


--
-- Data for Name: meta_help; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_help (id, archived, version, field_name, help_value, language, menu_name, model_name, style, help_type, view_name) FROM stdin;
\.


--
-- Data for Name: meta_json_field; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_json_field (id, archived, version, created_on, updated_on, context_field, context_field_target, context_field_target_name, context_field_title, context_field_value, default_value, domain, enum_type, form_view, grid_view, help, is_hidden, hide_if, include_if, max_size, min_size, model_name, model_field, name, name_field, on_change, on_click, decimal_precision, is_readonly, readonly_if, regex, is_required, required_if, decimal_scale, selection, sequence, show_if, target_model, title, type_name, value_expr, visible_in_grid, widget, widget_attrs, created_by, updated_by, json_model, target_json_model) FROM stdin;
\.


--
-- Data for Name: meta_json_field_roles; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_json_field_roles (meta_json_field, roles) FROM stdin;
\.


--
-- Data for Name: meta_json_model; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_json_model (id, archived, version, created_on, updated_on, menu_background, menu_icon, menu_order, menu_title, menu_top, name, name_field, on_new, on_save, title, created_by, updated_by, action, form_view, grid_view, menu, menu_parent) FROM stdin;
\.


--
-- Data for Name: meta_json_model_roles; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_json_model_roles (meta_json_model, roles) FROM stdin;
\.


--
-- Data for Name: meta_json_record; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_json_record (id, archived, version, created_on, updated_on, attrs, json_model, name, created_by, updated_by) FROM stdin;
\.


--
-- Data for Name: meta_menu; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_menu (id, archived, version, created_on, updated_on, condition_to_check, hidden, icon, icon_background, left_menu, link, mobile_menu, module, module_to_check, name, order_seq, priority, tag, tag_count, tag_get, tag_style, title, top_menu, xml_id, created_by, updated_by, action, parent, user_id) FROM stdin;
1	\N	0	2019-07-05 13:49:39.32	\N	\N	\N	fa-wrench	red	t	\N	\N	axelor-core	\N	menu-admin	100	0	\N	\N	\N	\N	Administration	\N	\N	1	\N	\N	\N	\N
2	\N	0	2019-07-05 13:49:39.377	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-auth	0	0	\N	\N	\N	\N	User Management	\N	\N	1	\N	\N	1	\N
3	\N	0	2019-07-05 13:49:39.404	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-model	0	0	\N	\N	\N	\N	Model Management	\N	\N	1	\N	\N	1	\N
4	\N	0	2019-07-05 13:49:39.433	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-management	0	0	\N	\N	\N	\N	View Management	\N	\N	1	\N	\N	1	\N
5	\N	0	2019-07-05 13:49:39.462	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-help-management	0	0	\N	\N	\N	\N	Help Management	\N	\N	1	\N	\N	1	\N
6	\N	0	2019-07-05 13:49:39.547	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-module-management	0	0	\N	\N	\N	\N	Module Management	\N	\N	1	\N	\N	1	\N
7	\N	0	2019-07-05 13:49:39.578	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-job-management	0	0	\N	\N	\N	\N	Job Management	\N	\N	1	\N	\N	1	\N
8	\N	0	2019-07-05 13:49:39.62	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-auth-users	0	0	\N	\N	\N	\N	Users	\N	\N	1	\N	7	2	\N
9	\N	0	2019-07-05 13:49:39.66	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-auth-groups	0	0	\N	\N	\N	\N	Groups	\N	\N	1	\N	8	2	\N
10	\N	0	2019-07-05 13:49:39.697	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-auth-roles	0	0	\N	\N	\N	\N	Roles	\N	\N	1	\N	9	2	\N
11	\N	0	2019-07-05 13:49:39.737	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-auth-permissions	0	0	\N	\N	\N	\N	Permissions	\N	\N	1	\N	10	2	\N
12	\N	0	2019-07-05 13:49:39.767	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-meta-module	0	0	\N	\N	\N	\N	All Modules	\N	\N	1	\N	11	6	\N
13	\N	0	2019-07-05 13:49:39.793	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-meta-model	0	0	\N	\N	\N	\N	All Models	\N	\N	1	\N	12	3	\N
14	\N	0	2019-07-05 13:49:39.819	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-all	0	0	\N	\N	\N	\N	All Views	\N	\N	1	\N	13	4	\N
15	\N	0	2019-07-05 13:49:39.846	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-my	0	0	\N	\N	\N	\N	All Custom Views	\N	\N	1	\N	14	4	\N
16	\N	0	2019-07-05 13:49:39.872	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-menus	0	0	\N	\N	\N	\N	All Menus	\N	\N	1	\N	15	4	\N
17	\N	0	2019-07-05 13:49:39.897	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-actions	0	0	\N	\N	\N	\N	All Actions	\N	\N	1	\N	16	4	\N
18	\N	0	2019-07-05 13:49:39.922	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-selects	0	0	\N	\N	\N	\N	All Selects	\N	\N	1	\N	17	4	\N
19	\N	0	2019-07-05 13:49:39.947	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-action-menus	0	0	\N	\N	\N	\N	Action Menus	\N	\N	1	\N	18	4	\N
20	\N	0	2019-07-05 13:49:39.972	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-translations	0	0	\N	\N	\N	\N	All Translations	\N	\N	1	\N	19	4	\N
21	\N	0	2019-07-05 13:49:39.997	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-help-views	0	0	\N	\N	\N	\N	View Help	\N	\N	1	\N	20	5	\N
22	\N	0	2019-07-05 13:49:40.025	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-help-menus	0	0	\N	\N	\N	\N	Menu Help	\N	\N	1	\N	21	5	\N
23	\N	0	2019-07-05 13:49:40.053	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-view-charts	0	0	\N	\N	\N	\N	All Charts	\N	\N	1	\N	22	4	\N
24	\N	0	2019-07-05 13:49:40.081	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-job-all	0	0	\N	\N	\N	\N	All Schedules	\N	\N	1	\N	23	7	\N
26	\N	0	2019-07-05 13:49:40.509	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-mail-inbox	-90	0	\N	\N	com.axelor.mail.web.MailController:inboxMenuTag()	warning	Inbox	\N	\N	1	\N	26	25	\N
27	\N	0	2019-07-05 13:49:40.539	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-mail-important	-85	0	\N	\N	\N	\N	Important	\N	\N	1	\N	28	25	\N
28	\N	0	2019-07-05 13:49:40.566	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-mail-archive	-80	0	\N	\N	\N	\N	Archived	\N	\N	1	\N	29	25	\N
29	\N	0	2019-07-05 13:49:41.082	\N	\N	\N	fa-archive	brown	t	\N	\N	axelor-core	\N	menu-dms	-109	0	\N	\N	\N	\N	Documents	\N	\N	1	\N	\N	\N	\N
30	\N	0	2019-07-05 13:49:41.106	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-dms-all	-90	0	\N	\N	\N	\N	All Documents	\N	\N	1	\N	33	29	\N
31	\N	0	2019-07-05 13:49:41.131	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-dms-my	-80	0	\N	\N	\N	\N	My Documents	\N	\N	1	\N	34	29	\N
32	\N	0	2019-07-05 13:49:41.152	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-dms-config	-70	0	\N	\N	\N	\N	Configuration	\N	\N	1	\N	\N	29	\N
33	\N	0	2019-07-05 13:49:41.178	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-dms-config-tags	0	0	\N	\N	\N	\N	Tags	\N	\N	1	\N	35	32	\N
34	\N	0	2019-07-05 13:49:41.559	\N	\N	\N	fa-users	blue	t	\N	\N	axelor-core	\N	menu-team	-110	0	\N	\N	\N	\N	Teamwork	\N	\N	1	\N	\N	\N	\N
25	\N	1	2019-07-05 13:49:40.478	2019-07-05 13:49:41.568	\N	\N	fa-envelope	\N	t	\N	\N	axelor-core	\N	menu-mail	-110	0	\N	\N	\N	\N	Mail	\N	\N	1	1	\N	34	\N
35	\N	0	2019-07-05 13:49:41.591	\N	\N	\N	fa-tasks	\N	t	\N	\N	axelor-core	\N	menu-team-tasks	-80	0	\N	\N	\N	\N	Tasks	\N	\N	1	\N	\N	34	\N
36	\N	0	2019-07-05 13:49:41.615	\N	\N	\N	fa-group	\N	t	\N	\N	axelor-core	\N	menu-team-teams	-70	0	\N	\N	\N	\N	Teams	\N	\N	1	\N	\N	34	\N
37	\N	0	2019-07-05 13:49:41.644	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-team-tasks-due	-80	0	\N	\N	\N	\N	Tasks due	\N	\N	1	\N	40	35	\N
38	\N	0	2019-07-05 13:49:41.668	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-team-tasks-todo	-70	0	\N	\N	\N	\N	Tasks todo	\N	\N	1	\N	41	35	\N
39	\N	0	2019-07-05 13:49:41.693	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-team-tasks-open	-60	0	\N	\N	\N	\N	My open tasks	\N	\N	1	\N	42	35	\N
40	\N	0	2019-07-05 13:49:41.718	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-team-tasks-assigned	-55	0	\N	\N	\N	\N	Tasks assigned to me	\N	\N	1	\N	43	35	\N
41	\N	0	2019-07-05 13:49:41.744	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-team-tasks-created	-50	0	\N	\N	\N	\N	Tasks created by me	\N	\N	1	\N	44	35	\N
42	\N	0	2019-07-05 13:49:41.77	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-team-teams-all	-110	0	\N	\N	\N	\N	All Teams	\N	\N	1	\N	38	36	\N
43	\N	0	2019-07-05 13:49:41.799	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-team-teams-my	-100	0	\N	\N	\N	\N	My Teams	\N	\N	1	\N	39	36	\N
44	\N	0	2019-07-05 13:49:42.079	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-custom-models	0	0	\N	\N	\N	\N	Custom Models	\N	\N	1	\N	48	3	\N
45	\N	0	2019-07-05 13:49:42.107	\N	\N	\N	\N	\N	t	\N	\N	axelor-core	\N	menu-custom-fields	0	0	\N	\N	\N	\N	Custom Fields	\N	\N	1	\N	49	3	\N
46	\N	0	2019-07-05 13:49:45.66	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-partner	0	0	\N	\N	\N	\N	Partner	\N	\N	1	\N	\N	\N	\N
47	\N	0	2019-07-05 13:49:45.671	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-partner-detail	0	0	\N	\N	\N	\N	Partner Details	\N	\N	1	\N	62	46	\N
48	\N	0	2019-07-05 13:49:45.679	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-config	0	0	\N	\N	\N	\N	Configuration	\N	\N	1	\N	\N	46	\N
49	\N	0	2019-07-05 13:49:45.686	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-config-department	0	0	\N	\N	\N	\N	Department	\N	\N	1	\N	\N	48	\N
50	\N	0	2019-07-05 13:49:45.697	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-config-department-all	0	0	\N	\N	\N	\N	All Department	\N	\N	1	\N	63	49	\N
51	\N	0	2019-07-05 13:49:45.707	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-config-department-tech	0	0	\N	\N	\N	\N	Technical Department	\N	\N	1	\N	64	49	\N
52	\N	0	2019-07-05 13:49:45.72	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-config-department-nonTech	0	0	\N	\N	\N	\N	Non Tech Department	\N	\N	1	\N	65	49	\N
53	\N	0	2019-07-05 13:49:45.732	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-config-country	0	0	\N	\N	\N	\N	Country	\N	\N	1	\N	66	48	\N
54	\N	0	2019-07-05 13:49:45.739	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-config-project	0	0	\N	\N	\N	\N	Project	\N	\N	1	\N	\N	48	\N
55	\N	0	2019-07-05 13:49:45.749	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-config-project-all	0	0	\N	\N	\N	\N	All Project	\N	\N	1	\N	67	54	\N
56	\N	0	2019-07-05 13:49:45.758	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-config-project-task-all	0	0	\N	\N	\N	\N	Project Task	\N	\N	1	\N	68	54	\N
57	\N	0	2019-07-05 13:49:45.767	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-project-tasks	0	0	\N	\N	\N	\N	All Tasks (kanban)	\N	\N	1	\N	69	54	\N
58	\N	0	2019-07-05 13:49:45.778	\N	\N	\N	\N	\N	t	\N	\N	axelor-partner	\N	menu-project-tasks-tree	0	0	\N	\N	\N	\N	All Tasks (tree)	\N	\N	1	\N	70	54	\N
59	\N	0	2019-07-05 13:49:46.523	\N	\N	\N	\N	\N	t	\N	\N	axelor-demo-impl	\N	menu-demo-impl	0	0	\N	\N	\N	\N	DemoImpl	\N	\N	1	\N	\N	\N	\N
60	\N	0	2019-07-05 13:49:46.529	\N	\N	\N	\N	\N	t	\N	\N	axelor-demo-impl	\N	menu-person	0	0	\N	\N	\N	\N	Person	\N	\N	1	\N	71	59	\N
\.


--
-- Data for Name: meta_menu_groups; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_menu_groups (menus, groups) FROM stdin;
1	1
\.


--
-- Data for Name: meta_menu_roles; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_menu_roles (menus, roles) FROM stdin;
\.


--
-- Data for Name: meta_model; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_model (id, archived, version, created_on, updated_on, full_name, name, package_name, table_name, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:36.128	\N	com.axelor.auth.db.Permission	Permission	com.axelor.auth.db	AUTH_PERMISSION	1	\N
2	\N	0	2019-07-05 13:49:36.154	\N	com.axelor.auth.db.Role	Role	com.axelor.auth.db	AUTH_ROLE	1	\N
3	\N	0	2019-07-05 13:49:36.175	\N	com.axelor.meta.db.MetaFilter	MetaFilter	com.axelor.meta.db	META_FILTER	1	\N
4	\N	0	2019-07-05 13:49:36.199	\N	com.axelor.meta.db.MetaModule	MetaModule	com.axelor.meta.db	META_MODULE	1	\N
5	\N	0	2019-07-05 13:49:36.221	\N	com.axelor.meta.db.MetaView	MetaView	com.axelor.meta.db	META_VIEW	1	\N
6	\N	0	2019-07-05 13:49:36.245	\N	com.axelor.meta.db.MetaViewCustom	MetaViewCustom	com.axelor.meta.db	META_VIEW_CUSTOM	1	\N
7	\N	0	2019-07-05 13:49:36.267	\N	com.axelor.meta.db.MetaMenu	MetaMenu	com.axelor.meta.db	META_MENU	1	\N
8	\N	0	2019-07-05 13:49:36.306	\N	com.axelor.meta.db.MetaActionMenu	MetaActionMenu	com.axelor.meta.db	META_ACTION_MENU	1	\N
9	\N	0	2019-07-05 13:49:36.329	\N	com.axelor.meta.db.MetaAction	MetaAction	com.axelor.meta.db	META_ACTION	1	\N
10	\N	0	2019-07-05 13:49:36.354	\N	com.axelor.meta.db.MetaEnum	MetaEnum	com.axelor.meta.db	META_ENUM	1	\N
11	\N	0	2019-07-05 13:49:36.377	\N	com.axelor.meta.db.MetaSelect	MetaSelect	com.axelor.meta.db	META_SELECT	1	\N
12	\N	0	2019-07-05 13:49:36.4	\N	com.axelor.meta.db.MetaSelectItem	MetaSelectItem	com.axelor.meta.db	META_SELECT_ITEM	1	\N
13	\N	0	2019-07-05 13:49:36.42	\N	com.axelor.meta.db.MetaModel	MetaModel	com.axelor.meta.db	META_MODEL	1	\N
14	\N	0	2019-07-05 13:49:36.438	\N	com.axelor.meta.db.MetaField	MetaField	com.axelor.meta.db	META_FIELD	1	\N
15	\N	0	2019-07-05 13:49:36.457	\N	com.axelor.meta.db.MetaTranslation	MetaTranslation	com.axelor.meta.db	META_TRANSLATION	1	\N
16	\N	0	2019-07-05 13:49:36.47	\N	com.axelor.meta.db.MetaHelp	MetaHelp	com.axelor.meta.db	META_HELP	1	\N
17	\N	0	2019-07-05 13:49:36.488	\N	com.axelor.meta.db.MetaFile	MetaFile	com.axelor.meta.db	META_FILE	1	\N
18	\N	0	2019-07-05 13:49:36.511	\N	com.axelor.meta.db.MetaAttachment	MetaAttachment	com.axelor.meta.db	META_ATTACHMENT	1	\N
19	\N	0	2019-07-05 13:49:36.532	\N	com.axelor.auth.db.User	User	com.axelor.auth.db	AUTH_USER	1	\N
20	\N	0	2019-07-05 13:49:36.561	\N	com.axelor.meta.db.MetaPermission	MetaPermission	com.axelor.meta.db	META_PERMISSION	1	\N
21	\N	0	2019-07-05 13:49:36.581	\N	com.axelor.meta.db.MetaPermissionRule	MetaPermissionRule	com.axelor.meta.db	META_PERMISSION_RULE	1	\N
22	\N	0	2019-07-05 13:49:36.603	\N	com.axelor.meta.db.MetaSequence	MetaSequence	com.axelor.meta.db	META_SEQUENCE	1	\N
23	\N	0	2019-07-05 13:49:36.62	\N	com.axelor.mail.db.MailAddress	MailAddress	com.axelor.mail.db	MAIL_ADDRESS	1	\N
24	\N	0	2019-07-05 13:49:36.638	\N	com.axelor.mail.db.MailMessage	MailMessage	com.axelor.mail.db	MAIL_MESSAGE	1	\N
25	\N	0	2019-07-05 13:49:36.666	\N	com.axelor.mail.db.MailFlags	MailFlags	com.axelor.mail.db	MAIL_FLAGS	1	\N
26	\N	0	2019-07-05 13:49:36.687	\N	com.axelor.mail.db.MailFollower	MailFollower	com.axelor.mail.db	MAIL_FOLLOWER	1	\N
27	\N	0	2019-07-05 13:49:36.709	\N	com.axelor.auth.db.Group	Group	com.axelor.auth.db	AUTH_GROUP	1	\N
28	\N	0	2019-07-05 13:49:36.734	\N	com.axelor.meta.db.MetaScheduleParam	MetaScheduleParam	com.axelor.meta.db	META_SCHEDULE_PARAM	1	\N
29	\N	0	2019-07-05 13:49:36.754	\N	com.axelor.meta.db.MetaSchedule	MetaSchedule	com.axelor.meta.db	META_SCHEDULE	1	\N
30	\N	0	2019-07-05 13:49:36.777	\N	com.axelor.dms.db.DMSFile	DMSFile	com.axelor.dms.db	DMS_FILE	1	\N
31	\N	0	2019-07-05 13:49:36.808	\N	com.axelor.dms.db.DMSFileTag	DMSFileTag	com.axelor.dms.db	DMS_FILE_TAG	1	\N
32	\N	0	2019-07-05 13:49:36.839	\N	com.axelor.dms.db.DMSPermission	DMSPermission	com.axelor.dms.db	DMS_PERMISSION	1	\N
33	\N	0	2019-07-05 13:49:36.872	\N	com.axelor.team.db.Team	Team	com.axelor.team.db	TEAM_TEAM	1	\N
34	\N	0	2019-07-05 13:49:36.902	\N	com.axelor.team.db.TeamTask	TeamTask	com.axelor.team.db	TEAM_TASK	1	\N
35	\N	0	2019-07-05 13:49:36.933	\N	com.axelor.team.db.TeamTopic	TeamTopic	com.axelor.team.db	TEAM_TOPIC	1	\N
36	\N	0	2019-07-05 13:49:36.957	\N	com.axelor.meta.db.MetaJsonField	MetaJsonField	com.axelor.meta.db	META_JSON_FIELD	1	\N
37	\N	0	2019-07-05 13:49:36.991	\N	com.axelor.meta.db.MetaJsonModel	MetaJsonModel	com.axelor.meta.db	META_JSON_MODEL	1	\N
38	\N	0	2019-07-05 13:49:37.02	\N	com.axelor.meta.db.MetaJsonRecord	MetaJsonRecord	com.axelor.meta.db	META_JSON_RECORD	1	\N
39	\N	0	2019-07-05 13:49:45.236	\N	com.axelor.partner.db.Country	Country	com.axelor.partner.db	PARTNER_COUNTRY	1	\N
40	\N	0	2019-07-05 13:49:45.242	\N	com.axelor.partner.db.ProjectWork	ProjectWork	com.axelor.partner.db	PROJECT_WORK	1	\N
41	\N	0	2019-07-05 13:49:45.25	\N	com.axelor.partner.db.Project	Project	com.axelor.partner.db	PARTNER_PROJECT	1	\N
42	\N	0	2019-07-05 13:49:45.258	\N	com.axelor.partner.db.Address	Address	com.axelor.partner.db	PARTNER_ADDRESS	1	\N
43	\N	0	2019-07-05 13:49:45.268	\N	com.axelor.partner.db.ProjectTask	ProjectTask	com.axelor.partner.db	PROJECT_TASK	1	\N
44	\N	0	2019-07-05 13:49:45.277	\N	com.axelor.partner.db.Department	Department	com.axelor.partner.db	PARTNER_DEPARTMENT	1	\N
45	\N	0	2019-07-05 13:49:45.285	\N	com.axelor.partner.db.Company	Company	com.axelor.partner.db	PARTNER_COMPANY	1	\N
46	\N	0	2019-07-05 13:49:45.298	\N	com.axelor.partner.db.Partner	Partner	com.axelor.partner.db	PARTNER_PARTNER	1	\N
47	\N	0	2019-07-05 13:49:45.309	\N	com.axelor.partner.db.Email	Email	com.axelor.partner.db	PARTNER_EMAIL	1	\N
48	\N	0	2019-07-05 13:49:46.491	\N	com.axelor.demoimpl.db.Person	Person	com.axelor.demoimpl.db	DEMOIMPL_PERSON	1	\N
49	\N	0	2019-07-05 13:49:46.498	\N	com.axelor.demoimpl.db.PersonEmail	PersonEmail	com.axelor.demoimpl.db	DEMOIMPL_PERSON_EMAIL	1	\N
\.


--
-- Data for Name: meta_module; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_module (id, archived, version, created_on, updated_on, application, description, installed, module_version, name, pending, removable, title, created_by, updated_by) FROM stdin;
3	\N	2	2019-07-05 13:49:36.033	2019-07-05 13:49:44.205	f		t	5.0.17-SNAPSHOT	axelor-core	f	f	Axelor Core	\N	1
2	\N	2	2019-07-05 13:49:36.03	2019-07-05 13:49:45.216	f		t	5.0.17-SNAPSHOT	axelor-web	f	f	Axelor Web	\N	1
4	\N	2	2019-07-05 13:49:36.036	2019-07-05 13:49:46.456	f		t	1.0.0	axelor-partner	f	f	Axelor :: Partner	\N	1
5	\N	2	2019-07-05 13:49:36.04	2019-07-05 13:49:46.579	f		t	1.0.0	axelor-demo-impl	f	f	Axelor :: DemoImpl	\N	1
1	\N	2	2019-07-05 13:49:36.027	2019-07-05 13:49:46.824	t		t	1.0.0	axelor-demo	f	f	Axelor :: AxelorDemo	\N	1
\.


--
-- Data for Name: meta_module_depends; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_module_depends (module_id, depend_id) FROM stdin;
2	3
5	3
1	2
1	3
1	5
1	4
4	3
\.


--
-- Data for Name: meta_permission; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_permission (id, archived, version, created_on, updated_on, active, name, object, created_by, updated_by) FROM stdin;
\.


--
-- Data for Name: meta_permission_rule; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_permission_rule (id, archived, version, created_on, updated_on, can_export, can_read, can_write, field, hide_if, readonly_if, created_by, updated_by, meta_permission) FROM stdin;
\.


--
-- Data for Name: meta_schedule; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_schedule (id, archived, version, created_on, updated_on, active, cron, description, job, name, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:43.62	\N	t	* */5 * * * ?	fetch new emails on every 5 minutes.	com.axelor.mail.service.MailFetchJob	mail.fetcher	1	\N
\.


--
-- Data for Name: meta_schedule_param; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_schedule_param (id, archived, version, created_on, updated_on, name, value, created_by, updated_by, schedule) FROM stdin;
\.


--
-- Data for Name: meta_select; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_select (id, archived, version, created_on, updated_on, module, name, priority, xml_id, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:38.768	\N	axelor-core	view.type.selection	20	\N	1	\N
2	\N	0	2019-07-05 13:49:38.794	\N	axelor-core	action.type.selection	20	\N	1	\N
3	\N	0	2019-07-05 13:49:38.815	\N	axelor-core	label.style.selection	20	\N	1	\N
4	\N	0	2019-07-05 13:49:38.834	\N	axelor-core	help.type.selection	20	\N	1	\N
5	\N	0	2019-07-05 13:49:38.852	\N	axelor-core	relationship.field.selection	20	\N	1	\N
6	\N	0	2019-07-05 13:49:40.169	\N	axelor-core	select.language	20	\N	1	\N
7	\N	0	2019-07-05 13:49:40.369	\N	axelor-core	message.type.selection	20	\N	1	\N
8	\N	0	2019-07-05 13:49:40.625	\N	axelor-core	select.user.navigation	20	\N	1	\N
9	\N	0	2019-07-05 13:49:40.983	\N	axelor-core	dms.permission.selection	20	\N	1	\N
10	\N	0	2019-07-05 13:49:41.003	\N	axelor-core	dms.tag.style.selection	20	\N	1	\N
11	\N	0	2019-07-05 13:49:41.327	\N	axelor-core	team.task.status	20	\N	1	\N
12	\N	0	2019-07-05 13:49:41.344	\N	axelor-core	team.task.priority	20	\N	1	\N
13	\N	0	2019-07-05 13:49:41.363	\N	axelor-core	team.task.links	20	\N	1	\N
14	\N	0	2019-07-05 13:49:41.961	\N	axelor-core	json.field.type	20	\N	1	\N
15	\N	0	2019-07-05 13:49:45.459	\N	axelor-partner	project.task.state.selection	20	\N	1	\N
\.


--
-- Data for Name: meta_select_item; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_select_item (id, archived, version, created_on, updated_on, data, hidden, icon, order_seq, title, value, created_by, updated_by, select_id) FROM stdin;
1	\N	0	2019-07-05 13:49:38.769	\N	\N	\N	\N	0	Grid	grid	1	\N	1
2	\N	0	2019-07-05 13:49:38.769	\N	\N	\N	\N	1	Form	form	1	\N	1
3	\N	0	2019-07-05 13:49:38.769	\N	\N	\N	\N	2	Tree	tree	1	\N	1
4	\N	0	2019-07-05 13:49:38.769	\N	\N	\N	\N	3	Chart	chart	1	\N	1
5	\N	0	2019-07-05 13:49:38.77	\N	\N	\N	\N	4	Dashboard	dashboard	1	\N	1
6	\N	0	2019-07-05 13:49:38.77	\N	\N	\N	\N	5	Calendar	calendar	1	\N	1
7	\N	0	2019-07-05 13:49:38.77	\N	\N	\N	\N	6	Gantt	gantt	1	\N	1
8	\N	0	2019-07-05 13:49:38.77	\N	\N	\N	\N	7	Cards	cards	1	\N	1
9	\N	0	2019-07-05 13:49:38.77	\N	\N	\N	\N	8	Kanban	kanban	1	\N	1
10	\N	0	2019-07-05 13:49:38.77	\N	\N	\N	\N	9	Custom	custom	1	\N	1
11	\N	0	2019-07-05 13:49:38.77	\N	\N	\N	\N	10	Search	search	1	\N	1
12	\N	0	2019-07-05 13:49:38.77	\N	\N	\N	\N	11	Filters	search-filters	1	\N	1
13	\N	0	2019-07-05 13:49:38.794	\N	\N	\N	\N	0	action-attrs	action-attrs	1	\N	2
14	\N	0	2019-07-05 13:49:38.794	\N	\N	\N	\N	1	action-view	action-view	1	\N	2
15	\N	0	2019-07-05 13:49:38.794	\N	\N	\N	\N	2	action-script	action-script	1	\N	2
16	\N	0	2019-07-05 13:49:38.794	\N	\N	\N	\N	3	action-group	action-group	1	\N	2
17	\N	0	2019-07-05 13:49:38.794	\N	\N	\N	\N	4	action-validate	action-validate	1	\N	2
18	\N	0	2019-07-05 13:49:38.795	\N	\N	\N	\N	5	action-condition	action-condition	1	\N	2
19	\N	0	2019-07-05 13:49:38.795	\N	\N	\N	\N	6	action-record	action-record	1	\N	2
20	\N	0	2019-07-05 13:49:38.795	\N	\N	\N	\N	7	action-method	action-method	1	\N	2
21	\N	0	2019-07-05 13:49:38.795	\N	\N	\N	\N	8	action-import	action-import	1	\N	2
22	\N	0	2019-07-05 13:49:38.795	\N	\N	\N	\N	9	action-export	action-export	1	\N	2
23	\N	0	2019-07-05 13:49:38.795	\N	\N	\N	\N	10	action-report	action-report	1	\N	2
24	\N	0	2019-07-05 13:49:38.795	\N	\N	\N	\N	11	action-ws	action-ws	1	\N	2
25	\N	0	2019-07-05 13:49:38.815	\N	\N	\N	\N	0	Default	default	1	\N	3
26	\N	0	2019-07-05 13:49:38.815	\N	\N	\N	\N	1	Important	important	1	\N	3
27	\N	0	2019-07-05 13:49:38.815	\N	\N	\N	\N	2	Success	success	1	\N	3
28	\N	0	2019-07-05 13:49:38.815	\N	\N	\N	\N	3	Warning	warning	1	\N	3
29	\N	0	2019-07-05 13:49:38.815	\N	\N	\N	\N	4	Inverse	inverse	1	\N	3
30	\N	0	2019-07-05 13:49:38.816	\N	\N	\N	\N	5	Information	info	1	\N	3
31	\N	0	2019-07-05 13:49:38.834	\N	\N	\N	\N	0	Tooltip	tooltip	1	\N	4
32	\N	0	2019-07-05 13:49:38.834	\N	\N	\N	\N	1	Placeholder	placeholder	1	\N	4
33	\N	0	2019-07-05 13:49:38.834	\N	\N	\N	\N	2	Inline	inline	1	\N	4
34	\N	0	2019-07-05 13:49:38.852	\N	\N	\N	\N	0	OneToOne	OneToOne	1	\N	5
35	\N	0	2019-07-05 13:49:38.852	\N	\N	\N	\N	1	ManyToOne	ManyToOne	1	\N	5
36	\N	0	2019-07-05 13:49:38.852	\N	\N	\N	\N	2	OneToMany	OneToMany	1	\N	5
37	\N	0	2019-07-05 13:49:38.852	\N	\N	\N	\N	3	ManyToMany	ManyToMany	1	\N	5
38	\N	0	2019-07-05 13:49:40.169	\N	\N	\N	\N	0	English	en	1	\N	6
39	\N	0	2019-07-05 13:49:40.169	\N	\N	\N	\N	1	French	fr	1	\N	6
40	\N	0	2019-07-05 13:49:40.369	\N	\N	\N	\N	0	Email	email	1	\N	7
41	\N	0	2019-07-05 13:49:40.369	\N	\N	\N	\N	1	Comment	comment	1	\N	7
42	\N	0	2019-07-05 13:49:40.369	\N	\N	\N	\N	2	System notification	notification	1	\N	7
43	\N	0	2019-07-05 13:49:40.625	\N	\N	\N	\N	0	Visible	visible	1	\N	8
44	\N	0	2019-07-05 13:49:40.625	\N	\N	\N	\N	1	Hidden	hidden	1	\N	8
45	\N	0	2019-07-05 13:49:40.625	\N	\N	\N	\N	2	Collapse	collapse	1	\N	8
46	\N	0	2019-07-05 13:49:40.983	\N	\N	\N	\N	0	Can read	READ	1	\N	9
47	\N	0	2019-07-05 13:49:40.984	\N	\N	\N	\N	1	Can write	WRITE	1	\N	9
48	\N	0	2019-07-05 13:49:40.984	\N	\N	\N	\N	2	Can share	FULL	1	\N	9
49	\N	0	2019-07-05 13:49:41.003	\N	\N	\N	\N	0	Default	label	1	\N	10
50	\N	0	2019-07-05 13:49:41.003	\N	\N	\N	\N	1	Success	label-success	1	\N	10
51	\N	0	2019-07-05 13:49:41.003	\N	\N	\N	\N	2	Warning	label-warning	1	\N	10
52	\N	0	2019-07-05 13:49:41.004	\N	\N	\N	\N	3	Important	label-important	1	\N	10
53	\N	0	2019-07-05 13:49:41.004	\N	\N	\N	\N	4	Information	label-info	1	\N	10
54	\N	0	2019-07-05 13:49:41.004	\N	\N	\N	\N	5	Inverse	label-inverse	1	\N	10
55	\N	0	2019-07-05 13:49:41.327	\N	\N	\N	\N	0	New	new	1	\N	11
56	\N	0	2019-07-05 13:49:41.327	\N	\N	\N	\N	1	In Progress	in-progress	1	\N	11
57	\N	0	2019-07-05 13:49:41.327	\N	\N	\N	\N	2	Closed	closed	1	\N	11
58	\N	0	2019-07-05 13:49:41.327	\N	\N	\N	\N	3	Canceled	canceled	1	\N	11
59	\N	0	2019-07-05 13:49:41.344	\N	\N	\N	\N	0	Low	low	1	\N	12
60	\N	0	2019-07-05 13:49:41.344	\N	\N	\N	\N	1	Normal	normal	1	\N	12
61	\N	0	2019-07-05 13:49:41.344	\N	\N	\N	\N	2	High	high	1	\N	12
62	\N	0	2019-07-05 13:49:41.345	\N	\N	\N	\N	3	Urgent	urgent	1	\N	12
63	\N	0	2019-07-05 13:49:41.363	\N	\N	\N	\N	0	Team	com.axelor.team.db.Team	1	\N	13
64	\N	0	2019-07-05 13:49:41.961	\N	\N	\N	\N	0	String	string	1	\N	14
65	\N	0	2019-07-05 13:49:41.962	\N	\N	\N	\N	1	Integer	integer	1	\N	14
66	\N	0	2019-07-05 13:49:41.962	\N	\N	\N	\N	2	Decimal	decimal	1	\N	14
67	\N	0	2019-07-05 13:49:41.962	\N	\N	\N	\N	3	Boolean	boolean	1	\N	14
68	\N	0	2019-07-05 13:49:41.962	\N	\N	\N	\N	4	DateTime	datetime	1	\N	14
69	\N	0	2019-07-05 13:49:41.962	\N	\N	\N	\N	5	Date	date	1	\N	14
70	\N	0	2019-07-05 13:49:41.962	\N	\N	\N	\N	6	Time	time	1	\N	14
71	\N	0	2019-07-05 13:49:41.962	\N	\N	\N	\N	7	Panel	panel	1	\N	14
72	\N	0	2019-07-05 13:49:41.962	\N	\N	\N	\N	8	Enum	enum	1	\N	14
73	\N	0	2019-07-05 13:49:41.963	\N	\N	\N	\N	9	Button	button	1	\N	14
74	\N	0	2019-07-05 13:49:41.963	\N	\N	\N	\N	10	Separator	separator	1	\N	14
75	\N	0	2019-07-05 13:49:41.963	\N	\N	\N	\N	11	ManyToOne	many-to-one	1	\N	14
76	\N	0	2019-07-05 13:49:41.963	\N	\N	\N	\N	12	ManyToMany	many-to-many	1	\N	14
77	\N	0	2019-07-05 13:49:41.963	\N	\N	\N	\N	13	OneToMany	one-to-many	1	\N	14
78	\N	0	2019-07-05 13:49:41.963	\N	\N	\N	\N	14	Custom-ManyToOne	json-many-to-one	1	\N	14
79	\N	0	2019-07-05 13:49:41.963	\N	\N	\N	\N	15	Custom-ManyToMany	json-many-to-many	1	\N	14
80	\N	0	2019-07-05 13:49:41.963	\N	\N	\N	\N	16	Custom-OneToMany	json-one-to-many	1	\N	14
81	\N	0	2019-07-05 13:49:45.459	\N	\N	\N	\N	0	To-do	todo	1	\N	15
82	\N	0	2019-07-05 13:49:45.459	\N	\N	\N	\N	1	In progress	progress	1	\N	15
83	\N	0	2019-07-05 13:49:45.46	\N	\N	\N	\N	2	Completed	complete	1	\N	15
\.


--
-- Data for Name: meta_sequence; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_sequence (id, archived, version, created_on, updated_on, increment_by, initial_value, name, next_value, padding, prefix, suffix, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:45.293	\N	1	1	partner.id.seq	1	3	pat		1	\N
\.


--
-- Data for Name: meta_translation; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_translation (id, archived, version, message_key, language, message_value) FROM stdin;
1	\N	0	A server error occurred. Please contact the administrator.	fr	Une erreur serveur s’est produite. Merci de contacter l’administrateur.
2	\N	0	Access error	fr	Erreur d'accès
3	\N	0	Action	fr	Action
4	\N	0	Action Menu	fr	Action de menu
5	\N	0	Action Menus	fr	Les Action Menus
6	\N	0	Action name can't be changed.	fr	Le nom de l'action ne peut pas être changé.
7	\N	0	Actions	fr	Les Actions
8	\N	0	Activate on	fr	Autoriser à partir de
9	\N	0	Activate the user from the specified date.	fr	Active l'utilisateur à partir de la date spécifiée.
10	\N	0	Active	fr	Actif
11	\N	0	Address	fr	Adresse
12	\N	0	Administration	fr	Administration
13	\N	0	All Actions	fr	Les Actions
14	\N	0	All Charts	fr	Les Graphiques
15	\N	0	All Custom Views	fr	Toutes les vues personnalisées
16	\N	0	All Documents	fr	Tous les fichiers
17	\N	0	All Menu Help	fr	Aide de tous les menus
18	\N	0	All Menus	fr	Les Menus
19	\N	0	All Models	fr	Les Modèles
20	\N	0	All Modules	fr	Les Modules
21	\N	0	All Schedules	fr	Les Planificateurs
22	\N	0	All Selects	fr	Les Sélections
23	\N	0	All Teams	fr	Toutes les équipes
24	\N	0	All Translations	fr	Les Traductions
25	\N	0	All View Help	fr	Aide de toutes les vues
26	\N	0	All Views	fr	Les Vues
27	\N	0	All the customizations will be lost. Are you sure ?	fr	Tous les changements seront perdus. Voulez-vous continuer ?
28	\N	0	All views have been restored.	fr	Toutes les vues ont été restaurées.
29	\N	0	Allow	fr	Autorisations
30	\N	0	An unique permission name.	fr	Nom unique de la permission
31	\N	0	Application	fr	Application
32	\N	0	Archived	fr	Archivés
33	\N	0	Assigned to	fr	Assigné à
34	\N	0	Attached to	fr	Attaché à
35	\N	0	Attributes	fr	Attributs
36	\N	0	Attrs	fr	Attrs
37	\N	0	Author	fr	Auteur
38	\N	0	Authorization	fr	Autorisation
39	\N	0	Authorized roles	fr	Rôles autorisés
40	\N	0	Blocked	fr	Bloquer utilisateur ?
41	\N	0	Body	fr	Corps
42	\N	0	Boolean	fr	Booléen
43	\N	0	Button	fr	Bouton
44	\N	0	Calendar	fr	Calendrier
45	\N	0	Can read	fr	Peut lire
46	\N	0	Can share	fr	Peut partager
47	\N	0	Can write	fr	Peut écrire
48	\N	0	Canceled	fr	Annulé
49	\N	0	Cards	fr	Cartes
50	\N	0	Category	fr	Catégorie
51	\N	0	Category name to group action menus.	fr	Nom de la catégorie pour grouper les actions menus
52	\N	0	Change password?	fr	Changer mot de passe ?
53	\N	0	Chart	fr	Graphique
54	\N	0	Client side js expression	fr	Expression js côté client
55	\N	0	Closed	fr	Fermé
56	\N	0	Code	fr	Code
57	\N	0	Code length should be greater than 2.	fr	La longueur de l'identifiant doit être supérieur à 2
58	\N	0	Collapse	fr	Regrouper
59	\N	0	Come back later. There are no messages in this folder...	fr	Revenez plus tard. Il n'y a pas aucun message dans ce dossier...
60	\N	0	Comma separated list of params for the condition.	fr	Liste de paramètres séparée par des virgules
61	\N	0	Comment	fr	Commentaire
62	\N	0	Concurrent updates error	fr	Modification concurrente détectée
63	\N	0	Condition	fr	Condition
64	\N	0	Condition params	fr	Paramètres
65	\N	0	Conditions	fr	Conditions
66	\N	0	Configuration	fr	Configuration
67	\N	0	Confirm password	fr	Confirmer le mot de passe
68	\N	0	Content	fr	Contenu
69	\N	0	Content type	fr	Type de contenu
70	\N	0	Context field	fr	Champ de contexte
71	\N	0	Context field target	fr	Cible de champ de contexte
72	\N	0	Context field target name	fr	Nom de cible de champ de contexte
73	\N	0	Context field title	fr	Titre de champ de contexte
74	\N	0	Context field value	fr	Valeur de champ de contexte
76	\N	0	Created by	fr	Créé par
77	\N	0	Created on	fr	Créé le
78	\N	0	Cron	fr	Cron
79	\N	0	Current password	fr	Mot de passe actuel
80	\N	0	Custom	fr	Personnalisé
81	\N	0	Custom Fields	fr	Champs personnalisés
82	\N	0	Custom Models	fr	Modèles personnalisés
83	\N	0	Custom field	fr	Champ personnalisé
84	\N	0	Custom fields	fr	Champs personnalisés
85	\N	0	Custom model	fr	Modèle personnalisé
86	\N	0	Custom models	fr	Modèles personnalisés
87	\N	0	Custom-ManyToMany	fr	Custom-ManyToMany
88	\N	0	Custom-ManyToOne	fr	Custom-ManyToOne
89	\N	0	Custom-OneToMany	fr	Custom-OneToMany
90	\N	0	Dashboard	fr	Dashboard
91	\N	0	Data	fr	Données
92	\N	0	Date	fr	Date
93	\N	0	DateTime	fr	DateTime
94	\N	0	Decimal	fr	Décimal
95	\N	0	Default	fr	Défaut
96	\N	0	Default home action.	fr	Action par défaut.
97	\N	0	Default value	fr	Valeur par défaut
98	\N	0	Depends	fr	Dépend de
99	\N	0	Depends On	fr	Dépend de
100	\N	0	Description	fr	Description
101	\N	0	Directories	fr	Répertoires
102	\N	0	Directory	fr	Répertoire
103	\N	0	Disable the user from the specified date.	fr	Bloque l'utilisateur à partir de la date spécifiée.
104	\N	0	Document	fr	Document
105	\N	0	Documents	fr	Documents
107	\N	0	Domain filter as condition.	fr	Condition d'application des accès
108	\N	0	Email	fr	Email
109	\N	0	Encryption error	fr	Erreur de chiffrement
110	\N	0	Encryption key might be wrong.	fr	La clé de cryptage peut être incorrecte.
111	\N	0	English	fr	Anglais
112	\N	0	Enum	fr	Enum
113	\N	0	Enum type	fr	Type d’enum
114	\N	0	Expires on	fr	Autoriser jusqu'au
116	\N	0	Export complete.	fr	Export complet.
117	\N	0	Extension	fr	Extension
118	\N	0	Favorite	fr	Favori
119	\N	0	Favorites	fr	Favoris
120	\N	0	Field	fr	Champ
121	\N	0	Field is required.	fr	Champ requis.
122	\N	0	Fields	fr	Champs
123	\N	0	File	fr	Fichier
124	\N	0	File added	fr	Fichier ajouté
125	\N	0	File name	fr	Nom du fichier
126	\N	0	File path	fr	Chemin du fichier
127	\N	0	File removed	fr	Fichier supprimé
128	\N	0	File type	fr	Type
129	\N	0	Files	fr	Fichiers
130	\N	0	Filter custom	fr	Filtre personnalisé
131	\N	0	Filter files	fr	Filtrer les fichiers
132	\N	0	Filter view	fr	Filtre de vue
133	\N	0	Filters	fr	Filtres
134	\N	0	Flags	fr	Drapeaux
135	\N	0	Following modules will be installed : <p>%s</p> Are you sure ?	fr	Les modules suivant seront installés : <p>%s</p> Voulez-vous continuer ?
136	\N	0	Following modules will be uninstalled : <p>%s</p> Are you sure ?	fr	Les modules suivant seront déinstallés : <p>%s</p> Voulez-vous continuer ?
137	\N	0	Form	fr	Formulaire
138	\N	0	Form record	fr	Enregistrement de formulaire
139	\N	0	Form records	fr	Enregistrements de formulaire
140	\N	0	Form view	fr	Vue formulaire
141	\N	0	French	fr	Français
142	\N	0	From	fr	De
143	\N	0	Fullname	fr	Nom complet
144	\N	0	Fully qualified object name or wild card package name.	fr	Nom de l'objet
145	\N	0	Gantt	fr	Gantt
146	\N	0	General	fr	Général
147	\N	0	Grid	fr	Liste
148	\N	0	Grid view	fr	Vue liste
149	\N	0	Group	fr	Groupe
150	\N	0	Groups	fr	Les Groupes
151	\N	0	Help	fr	Aide
152	\N	0	Help Management	fr	Gestion de l’aide
153	\N	0	Help link	fr	Lien aide
154	\N	0	Hidden	fr	Caché
155	\N	0	Hidden menu	fr	Menu caché
156	\N	0	Hide if	fr	Caché si
157	\N	0	High	fr	Haut
158	\N	0	Home action	fr	Action d'accueil
159	\N	0	Icon	fr	Icône
160	\N	0	Icon background	fr	Icône de fond
161	\N	0	If	fr	Si
162	\N	0	If-module	fr	If-module
163	\N	0	Important	fr	Important
164	\N	0	In Progress	fr	En cours
165	\N	0	Inbox	fr	Boite de réception
166	\N	0	Inbox is empty!	fr	Boite de réception vide!
167	\N	0	Include if	fr	Inclure si
168	\N	0	Increment	fr	Incrément
169	\N	0	Information	fr	Information
170	\N	0	Initial	fr	Valeur origine
171	\N	0	Inline	fr	En ligne
172	\N	0	Install	fr	Installer
173	\N	0	Install module	fr	Installer le module
174	\N	0	Installed	fr	Installé ?
175	\N	0	Integer	fr	Entier
177	\N	0	Invalid XML.	fr	XML invalide.
178	\N	0	Invalid cron:	fr	Cron non valide:
179	\N	0	Invalid field value.	fr	Valeur non valide.
180	\N	0	Invalid permission	fr	Permission invalide
181	\N	0	Invalid use of action-record: %s, must be the last action.	fr	Utilisation incorrecte de l'action-record :%s, doit être la dernière action.
182	\N	0	Inverse	fr	Inverse
183	\N	0	Is archived	fr	Est archivé
184	\N	0	Is directory	fr	Est un répertoire
185	\N	0	Is read	fr	Est lu
186	\N	0	Is starred	fr	Est favori
187	\N	0	Items	fr	Elément
188	\N	0	Job	fr	Job
189	\N	0	Job Management	fr	Gestion des planificateurs
190	\N	0	Json	fr	Json
191	\N	0	Json model	fr	Modèle Json
192	\N	0	Kanban	fr	Kanban
193	\N	0	Key	fr	Clé
194	\N	0	Label	fr	Label
195	\N	0	Language	fr	Langue
196	\N	0	Last modified	fr	Modifié le
197	\N	0	Left menu	fr	Menu à gauche
198	\N	0	Link	fr	Lien
199	\N	0	Login	fr	Identifiant
200	\N	0	Low	fr	Bas
201	\N	0	Mail	fr	Mail
202	\N	0	ManyToMany	fr	ManyToMany
203	\N	0	ManyToOne	fr	ManyToOne
204	\N	0	Mapped by	fr	Mappé avec
205	\N	0	Max	fr	Max
206	\N	0	Max size	fr	Taille max
207	\N	0	Max size 4MB.	fr	Taille max 4MO.
208	\N	0	Members	fr	Membres
209	\N	0	Menu	fr	Menu
210	\N	0	Menu Help	fr	Aide de menu
211	\N	0	Menu Item	fr	Menu Item
212	\N	0	Menu Items	fr	Menu Items
213	\N	0	Menu background	fr	Arrière-plan de menu
214	\N	0	Menu icon	fr	Icône de menu
215	\N	0	Menu order	fr	Ordre de menu
216	\N	0	Menu parent	fr	Parent du menu
217	\N	0	Menu title	fr	Titre de menu
218	\N	0	Menu top	fr	Haut de menu
219	\N	0	Menus	fr	Les Menus
220	\N	0	Message	fr	Message
221	\N	0	Meta file	fr	Fichier meta
222	\N	0	Meta model	fr	Modèle
223	\N	0	Meta permission	fr	Permission meta
224	\N	0	MetaScheduleParam	fr	MetaScheduleParam
225	\N	0	Min	fr	Min
226	\N	0	Min size	fr	Taille min
227	\N	0	Mobile menu	fr	Menu mobile
228	\N	0	Model	fr	Objet
229	\N	0	Model Management	fr	Gestion des modèles
230	\N	0	Model field	fr	Champ de modèle
231	\N	0	Models	fr	Les Modèles
232	\N	0	Module	fr	Module
233	\N	0	Module Management	fr	Gestion des modules
234	\N	0	Modules	fr	Les Modules
235	\N	0	My Documents	fr	Mes fichiers
236	\N	0	My Teams	fr	Mes équipes
237	\N	0	My open tasks	fr	Mes tâches ouvertes
238	\N	0	Name	fr	Nom
239	\N	0	Name field	fr	Champ de nom
240	\N	0	Name length should be greater than 2.	fr	La longueur du nom doit être supérieur à 2
241	\N	0	Navigation	fr	Navigation
242	\N	0	New	fr	Nouveau
243	\N	0	New password	fr	Nouveau mot de passe
245	\N	0	No archived messages!	fr	Aucun message archivé
246	\N	0	No help	fr	Aucune aide
247	\N	0	No important messages!	fr	Aucun message important
248	\N	0	Normal	fr	Normal
249	\N	0	Object	fr	Objet
250	\N	0	Object name	fr	Nom de l'objet
251	\N	0	On change	fr	Sur changement
252	\N	0	On click	fr	Sur clic
253	\N	0	On new	fr	Sur nouveau
254	\N	0	On save	fr	Sur sauvegarde
255	\N	0	OneToMany	fr	OneToMany
256	\N	0	OneToOne	fr	OneToOne
257	\N	0	Only if	fr	Seulement si
258	\N	0	Only use this menu-item if the given expression is true.	fr	Utiliser uniquement ce menu-item si l'expression donnée est vraie
259	\N	0	Only use this menu-item if the given module is installed.	fr	Utiliser uniquement ce menu-item si le module est installé
260	\N	0	Options	fr	Options
261	\N	0	Order	fr	
262	\N	0	Overview	fr	Général
263	\N	0	Package	fr	Nom du package
264	\N	0	Padding	fr	Remplissage
265	\N	0	Panel	fr	Panneau
266	\N	0	Params	fr	Paramètres
267	\N	0	Parent	fr	Parent
268	\N	0	Parent menu	fr	Menu parent
269	\N	0	Password	fr	Mot de passe
271	\N	0	Permission	fr	Permission
273	\N	0	Permissions (fields)	fr	Permissions (champs)
274	\N	0	Personal	fr	Personnel
275	\N	0	Personalized View	fr	Vue personnalisée
276	\N	0	Personalized Views	fr	Vues personnalisées
277	\N	0	Photo	fr	Photo
278	\N	0	Placeholder	fr	Marque substitutive
279	\N	0	Please refresh your browser to see updated views.	fr	Merci de rafraîchir votre navigateur afin d'afficher les mises à jour.
280	\N	0	Precision	fr	Précision
281	\N	0	Preferences	fr	Préférences
282	\N	0	Prefix	fr	Prefix
283	\N	0	Priority	fr	Priorité
284	\N	0	Read	fr	Lecture
285	\N	0	Readonly	fr	Lecture seule
286	\N	0	Readonly if	fr	Lecture seule si
287	\N	0	Recipients	fr	Destinataires
288	\N	0	Record created	fr	Enregistrement créé
289	\N	0	Record updated	fr	Enregistrement modifié
290	\N	0	Record was updated or deleted by another transaction	fr	L'enregistrement a été mis à jour ou supprimé par une autre transaction
291	\N	0	Reference error	fr	Erreur de référence
292	\N	0	Regex	fr	Regex
293	\N	0	Related	fr	Lié à
294	\N	0	Related document id	fr	Id du document lié
295	\N	0	Related document model	fr	Model du document lié
296	\N	0	Related document name	fr	Nom du document lié
297	\N	0	Related model	fr	Modèle lié
298	\N	0	Related name	fr	Nom lié
299	\N	0	Related object	fr	Objet lié
300	\N	0	Relationship	fr	Relation
301	\N	0	Removable	fr	Supprimable ?
303	\N	0	Replies	fr	Réponses
304	\N	0	Required	fr	Requis
305	\N	0	Required if	fr	Requis si
306	\N	0	Restart jobs...	fr	Redémarrer
307	\N	0	Restart the server for updates to take effect.	fr	Redémarrez le serveur pour que les mises à jour prennent effet.
308	\N	0	Restore all...	fr	Tout restaurer…
309	\N	0	Role	fr	Role
310	\N	0	Roles	fr	Les Roles
311	\N	0	Root	fr	Racine
312	\N	0	Rule	fr	Règle
313	\N	0	Rules	fr	Règles
314	\N	0	SQL error	fr	Erreur SQL
315	\N	0	Scale	fr	Échelle
316	\N	0	Schedule	fr	Planificateur
317	\N	0	Schedules	fr	Planificateurs
318	\N	0	Schema	fr	Définition
321	\N	0	Select Item	fr	Elément de la selection
322	\N	0	Selection	fr	Sélection
323	\N	0	Selects	fr	Les Sélections
324	\N	0	Separator	fr	Séparateurs
325	\N	0	Sequence	fr	Séquence
326	\N	0	Sequence order	fr	Ordre d'affichage
327	\N	0	Server expression to check whether to use this field.	fr	Expression serveur pour utiliser ce champ ou non
328	\N	0	Shared	fr	Partagé ?
329	\N	0	Shared with me	fr	Partagés avec moi
330	\N	0	Show Model	fr	Voir le modèle
331	\N	0	Show if	fr	Afficher si
332	\N	0	Show in top menu	fr	Afficher dans le menu du haut
333	\N	0	Show permissions	fr	Voir les permissions
334	\N	0	Single tab	fr	Onglet unique
335	\N	0	Size	fr	Taille
336	\N	0	Size in bytes	fr	Taille en bytes
337	\N	0	Specify whether the members of this group are technical staff.	fr	Indiquez si les membres de ce groupe sont des utilisateurs technique.
338	\N	0	Specify whether this action can be used as home action.	fr	Indique si cette action peut être utilisé comme action par défaut.
339	\N	0	Specify whether to block the user for an indeterminate times.	fr	Bloque l'utilisateur pour une période indéterminée.
340	\N	0	Status	fr	Statut
341	\N	0	String	fr	Chaîne de caractère
342	\N	0	Style	fr	Style
343	\N	0	Subject	fr	Sujet
344	\N	0	Subscribe	fr	S'abonner
346	\N	0	Suffix	fr	Suffixe
347	\N	0	Summary	fr	Sommaire
348	\N	0	System notification	fr	Système de notification
349	\N	0	Table	fr	Table
350	\N	0	Tag	fr	Tag
351	\N	0	Tag count	fr	Compteur
352	\N	0	Tag label	fr	Libellé du tag
353	\N	0	Tag method	fr	Méthode de calcul
354	\N	0	Tag style	fr	Style de tag
355	\N	0	Tags	fr	Tags
356	\N	0	Target custom model	fr	Modèle personnalisé cible
357	\N	0	Target json model	fr	Modèle Json cible
358	\N	0	Target model	fr	Modèle cible
359	\N	0	Task	fr	Tâche
360	\N	0	Task closed	fr	Tâche fermée
361	\N	0	Task created	fr	Tâche créée
362	\N	0	Task date	fr	Date de tâche
363	\N	0	Task deadline	fr	Date limite de tâche
364	\N	0	Task duration	fr	Durée de tâche
365	\N	0	Tasks	fr	Tâches à réaliser
366	\N	0	Tasks assigned to me	fr	Mes tâches assignées
367	\N	0	Tasks created by me	fr	Mes tâches soumises
370	\N	0	Team	fr	Équipe
371	\N	0	Teams	fr	Équipes
372	\N	0	Teamwork	fr	Travail d’équipe
373	\N	0	Technical staff	fr	Données techniques
374	\N	0	The addition data for UI widgets.	fr	Données additionnelles utilisés par l'interface
375	\N	0	The image icon to show in UI widgets.	fr	Icone utilisé par l'interface.
376	\N	0	The module can't be uninstalled because other modules are pending. Please restart the server before.	fr	Le module ne peut pas être désinstallé car d'autres modules sont en attente. Redémarrer le serveur avant.
377	\N	0	The module can't be uninstalled because other non-removable modules depend on it.	fr	Le module ne peut pas être désinstallé car d'autres modules non supprimable en dépendent.
378	\N	0	The record(s) are referenced by other records, please remove all the references first.	fr	Cet enregistrement est déjà utilisé dans d'autres enregistrements, veuillez d’abord supprimer ces références.
379	\N	0	The record(s) can't be updated as it violates unique constraint.	fr	L'enregistrement ne peut pas être mis à jour car il enfreint la contrainte d'unicité.
380	\N	0	The scheduler service is disabled.	fr	Le service de planificateur est désactivé.
381	\N	0	The select item title.	fr	Label de la selection
382	\N	0	The select item value.	fr	Valeur de la selection
383	\N	0	Theme	fr	Thème
384	\N	0	This may terminate any running jobs. Are sure to continue?	fr	Cela va arrêter les instances en cours. Voulez-vous continuer ?
385	\N	0	Time	fr	Temps
386	\N	0	Title	fr	Titre
387	\N	0	Tooltip	fr	Info-bulle
388	\N	0	Top menu	fr	Menu du haut
389	\N	0	Topic	fr	Sujet
390	\N	0	Topic closed	fr	Sujet fermé
391	\N	0	Topic created	fr	Sujet créé
392	\N	0	Topic re-opened	fr	Sujet rouvert
393	\N	0	Topics	fr	Sujets
394	\N	0	Translation	fr	Traduction
395	\N	0	Tree	fr	Arbre
396	\N	0	Type	fr	Type
397	\N	0	Unexpected database error occurred on the server.	fr	Une erreur de base de données est survenue sur le serveur.
398	\N	0	Uninstall	fr	Désinstaller
399	\N	0	Unique constraint violation	fr	Violation de contrainte unique
400	\N	0	Unique message identifier	fr	Identifiant unique de message
401	\N	0	Unread	fr	Non lus
402	\N	0	Unsubscribe	fr	Se désabonner
403	\N	0	Updated by	fr	Mis à jour par
404	\N	0	Updated on	fr	Mis à jour le
405	\N	0	Urgent	fr	Urgent
406	\N	0	Used as home action	fr	Utilisable comme action d'accueil
408	\N	0	User Management	fr	Gestion des utilisateurs
409	\N	0	User preferences	fr	Préférences
410	\N	0	Users	fr	Les Utilisateurs
411	\N	0	Validate	fr	Valider
412	\N	0	Validation error	fr	Erreur de validation
413	\N	0	Value	fr	Valeur
414	\N	0	Value Expression	fr	Expression de valeur
415	\N	0	Version	fr	Version
416	\N	0	View	fr	Vue
417	\N	0	View Help	fr	Aide des vues
418	\N	0	View Management	fr	Gestion des vues
419	\N	0	Views	fr	Les Vues
420	\N	0	Visibility	fr	Visibilité
421	\N	0	Visible	fr	Visible
422	\N	0	Visible in grid	fr	Visible dans la liste
424	\N	0	Whether to grant create access.	fr	Autorise un accès en creation
425	\N	0	Whether to grant export access.	fr	Autorise l'export
426	\N	0	Whether to grant read access.	fr	Autorise un accès en lecture
427	\N	0	Whether to grant remove access.	fr	Autorise un accès en suppression
428	\N	0	Whether to grant write access.	fr	Autorise un accès en modification
429	\N	0	Whether to show help messages.	fr	Afficher les messages d'aide
430	\N	0	Whether to use tabbed ui.	fr	Navigation sans onglets
431	\N	0	Widget	fr	Widget
432	\N	0	Widget Attributes	fr	Attributs de widget
433	\N	0	Widget attrs	fr	Attrs widget
434	\N	0	Write	fr	Modification
435	\N	0	Xml	fr	Xml
436	\N	0	You are not allowed to remove this filter	fr	Vous n'êtes pas autorisé à supprimer ce filtre.
437	\N	0	You are not authorized to create this resource.	fr	Vous n'êtes pas autorisé à créer cette ressource.
438	\N	0	You are not authorized to export the data.	fr	Vous n'êtes pas autorisé à exporter cette ressource.
439	\N	0	You are not authorized to read this resource.	fr	Vous n'êtes pas autorisé à lire cette ressource.
440	\N	0	You are not authorized to remove this resource.	fr	Vous n'êtes pas autorisé à supprimer cette ressource.
441	\N	0	You are not authorized to update this resource.	fr	Vous n'êtes pas autorisé à modifier cette ressource.
442	\N	0	You can't create document here.	fr	Vous ne pouvez pas créer un document ici.
443	\N	0	You can't move document here.	fr	Vous ne pouvez pas déplacer le document ici.
444	\N	0	Your password	fr	Votre mot de passe
445	\N	0	action-attrs	fr	action-attrs
446	\N	0	action-condition	fr	action-condition
447	\N	0	action-export	fr	action-export
448	\N	0	action-group	fr	action-group
449	\N	0	action-import	fr	action-import
450	\N	0	action-method	fr	action-method
451	\N	0	action-record	fr	action-record
452	\N	0	action-report	fr	action-report
453	\N	0	action-script	fr	action-script
454	\N	0	action-validate	fr	action-validate
455	\N	0	action-view	fr	action-view
456	\N	0	action-ws	fr	action-ws
457	\N	0	added comment	fr	commentaire ajouté
458	\N	0	confirm password	fr	confirmation
459	\N	0	current password	fr	mot de passe actuel
460	\N	0	form::Select	fr	Sélection
461	\N	0	important	fr	important
462	\N	0	login name	fr	login
463	\N	0	new password	fr	nouveau
464	\N	0	success	fr	succès
465	\N	0	updated document	fr	a modifié le document
466	\N	0	user group	fr	groupe
467	\N	0	user name	fr	nom
468	\N	0	your password	fr	Votre mot de passe
469	\N	0	{0} customized view is deleted.	fr	{0} vue personnalisée est supprimée
470	\N	0	{0} customized views are deleted.	fr	{0} vues personnalisée sont supprimées
471	\N	0	A server error occurred. Please contact the administrator.	en	
472	\N	0	Access error	en	
473	\N	0	Action	en	
474	\N	0	Action Menu	en	
475	\N	0	Action Menus	en	
476	\N	0	Action name can't be changed.	en	
477	\N	0	Actions	en	
478	\N	0	Activate on	en	
479	\N	0	Activate the user from the specified date.	en	
480	\N	0	Active	en	
481	\N	0	Address	en	
482	\N	0	Administration	en	
483	\N	0	All Actions	en	
484	\N	0	All Charts	en	
485	\N	0	All Custom Views	en	
486	\N	0	All Documents	en	
487	\N	0	All Menu Help	en	
488	\N	0	All Menus	en	
489	\N	0	All Models	en	
490	\N	0	All Modules	en	
491	\N	0	All Schedules	en	
492	\N	0	All Selects	en	
493	\N	0	All Teams	en	
494	\N	0	All Translations	en	
495	\N	0	All View Help	en	
496	\N	0	All Views	en	
497	\N	0	All the customizations will be lost. Are you sure ?	en	
498	\N	0	All views have been restored.	en	
499	\N	0	Allow	en	
500	\N	0	An unique permission name.	en	
501	\N	0	Application	en	
502	\N	0	Archived	en	
503	\N	0	Assigned to	en	
504	\N	0	Attached to	en	
505	\N	0	Attributes	en	
506	\N	0	Attrs	en	
507	\N	0	Author	en	
508	\N	0	Authorization	en	
509	\N	0	Authorized roles	en	
510	\N	0	Blocked	en	
511	\N	0	Body	en	
512	\N	0	Boolean	en	
513	\N	0	Button	en	
514	\N	0	Calendar	en	
515	\N	0	Can read	en	
516	\N	0	Can share	en	
517	\N	0	Can write	en	
518	\N	0	Canceled	en	
519	\N	0	Cards	en	
520	\N	0	Category	en	
521	\N	0	Category name to group action menus.	en	
522	\N	0	Change password?	en	
523	\N	0	Chart	en	
524	\N	0	Client side js expression	en	
525	\N	0	Closed	en	
526	\N	0	Code	en	
527	\N	0	Code length should be greater than 2.	en	
528	\N	0	Collapse	en	
529	\N	0	Come back later. There are no messages in this folder...	en	
530	\N	0	Comma separated list of params for the condition.	en	
531	\N	0	Comment	en	
532	\N	0	Concurrent updates error	en	
533	\N	0	Condition	en	
534	\N	0	Condition params	en	
535	\N	0	Conditions	en	
536	\N	0	Configuration	en	
537	\N	0	Confirm password	en	
538	\N	0	Content	en	
539	\N	0	Content type	en	
540	\N	0	Context field	en	
541	\N	0	Context field target	en	
542	\N	0	Context field target name	en	
543	\N	0	Context field title	en	
544	\N	0	Context field value	en	
545	\N	0	Create	en	
546	\N	0	Created by	en	
547	\N	0	Created on	en	
548	\N	0	Cron	en	
549	\N	0	Current password	en	
550	\N	0	Custom	en	
551	\N	0	Custom Fields	en	
552	\N	0	Custom Models	en	
553	\N	0	Custom field	en	
554	\N	0	Custom fields	en	
555	\N	0	Custom model	en	
556	\N	0	Custom models	en	
557	\N	0	Custom-ManyToMany	en	
558	\N	0	Custom-ManyToOne	en	
559	\N	0	Custom-OneToMany	en	
560	\N	0	Dashboard	en	
561	\N	0	Data	en	
562	\N	0	Date	en	
563	\N	0	DateTime	en	
564	\N	0	Decimal	en	
565	\N	0	Default	en	
566	\N	0	Default home action.	en	
567	\N	0	Default value	en	
568	\N	0	Depends	en	
569	\N	0	Depends On	en	
570	\N	0	Description	en	
571	\N	0	Directories	en	
572	\N	0	Directory	en	
573	\N	0	Disable the user from the specified date.	en	
574	\N	0	Document	en	
575	\N	0	Documents	en	
576	\N	0	Domain	en	
577	\N	0	Domain filter as condition.	en	
578	\N	0	Email	en	
579	\N	0	Encryption error	en	
580	\N	0	Encryption key might be wrong.	en	
581	\N	0	English	en	
582	\N	0	Enum	en	
583	\N	0	Enum type	en	
584	\N	0	Expires on	en	
585	\N	0	Export	en	
586	\N	0	Export complete.	en	
587	\N	0	Extension	en	
588	\N	0	Favorite	en	
589	\N	0	Favorites	en	
590	\N	0	Field	en	
591	\N	0	Field is required.	en	
592	\N	0	Fields	en	
593	\N	0	File	en	
594	\N	0	File added	en	
595	\N	0	File name	en	
596	\N	0	File path	en	
597	\N	0	File removed	en	
598	\N	0	File type	en	
599	\N	0	Files	en	
600	\N	0	Filter custom	en	
601	\N	0	Filter files	en	
602	\N	0	Filter view	en	
603	\N	0	Filters	en	
604	\N	0	Flags	en	
605	\N	0	Following modules will be installed : <p>%s</p> Are you sure ?	en	
606	\N	0	Following modules will be uninstalled : <p>%s</p> Are you sure ?	en	
607	\N	0	Form	en	
608	\N	0	Form record	en	
609	\N	0	Form records	en	
610	\N	0	Form view	en	
611	\N	0	French	en	
612	\N	0	From	en	
613	\N	0	Fullname	en	
614	\N	0	Fully qualified object name or wild card package name.	en	
615	\N	0	Gantt	en	
616	\N	0	General	en	
617	\N	0	Grid	en	
618	\N	0	Grid view	en	
619	\N	0	Group	en	
620	\N	0	Groups	en	
621	\N	0	Help	en	
622	\N	0	Help Management	en	
623	\N	0	Help link	en	
624	\N	0	Hidden	en	
625	\N	0	Hidden menu	en	
626	\N	0	Hide if	en	
627	\N	0	High	en	
628	\N	0	Home action	en	
629	\N	0	Icon	en	
630	\N	0	Icon background	en	
631	\N	0	If	en	
632	\N	0	If-module	en	
633	\N	0	Important	en	
634	\N	0	In Progress	en	
635	\N	0	Inbox	en	
636	\N	0	Inbox is empty!	en	
637	\N	0	Include if	en	
638	\N	0	Increment	en	
639	\N	0	Information	en	
640	\N	0	Initial	en	
641	\N	0	Inline	en	
642	\N	0	Install	en	
643	\N	0	Install module	en	
644	\N	0	Installed	en	
645	\N	0	Integer	en	
646	\N	0	Internal Server Error	en	
647	\N	0	Invalid XML.	en	
648	\N	0	Invalid cron:	en	
649	\N	0	Invalid field value.	en	
650	\N	0	Invalid permission	en	
651	\N	0	Invalid use of action-record: %s, must be the last action.	en	
652	\N	0	Inverse	en	
653	\N	0	Is archived	en	
654	\N	0	Is directory	en	
655	\N	0	Is read	en	
656	\N	0	Is starred	en	
657	\N	0	Items	en	
658	\N	0	Job	en	
659	\N	0	Job Management	en	
660	\N	0	Json	en	
661	\N	0	Json model	en	
662	\N	0	Kanban	en	
663	\N	0	Key	en	
664	\N	0	Label	en	
665	\N	0	Language	en	
666	\N	0	Last modified	en	
667	\N	0	Left menu	en	
668	\N	0	Link	en	
669	\N	0	Login	en	
670	\N	0	Low	en	
671	\N	0	Mail	en	
672	\N	0	ManyToMany	en	
673	\N	0	ManyToOne	en	
674	\N	0	Mapped by	en	
675	\N	0	Max	en	
676	\N	0	Max size	en	
677	\N	0	Max size 4MB.	en	
678	\N	0	Members	en	
679	\N	0	Menu	en	
680	\N	0	Menu Help	en	
681	\N	0	Menu Item	en	
682	\N	0	Menu Items	en	
683	\N	0	Menu background	en	
684	\N	0	Menu icon	en	
685	\N	0	Menu order	en	
686	\N	0	Menu parent	en	
687	\N	0	Menu title	en	
688	\N	0	Menu top	en	
689	\N	0	Menus	en	
690	\N	0	Message	en	
691	\N	0	Meta file	en	
692	\N	0	Meta model	en	
693	\N	0	Meta permission	en	
694	\N	0	MetaScheduleParam	en	
695	\N	0	Min	en	
696	\N	0	Min size	en	
697	\N	0	Mobile menu	en	
698	\N	0	Model	en	
699	\N	0	Model Management	en	
700	\N	0	Model field	en	
701	\N	0	Models	en	
702	\N	0	Module	en	
703	\N	0	Module Management	en	
704	\N	0	Modules	en	
705	\N	0	My Documents	en	
706	\N	0	My Teams	en	
707	\N	0	My open tasks	en	
708	\N	0	Name	en	
709	\N	0	Name field	en	
710	\N	0	Name length should be greater than 2.	en	
711	\N	0	Navigation	en	
712	\N	0	New	en	
713	\N	0	New password	en	
714	\N	0	Next	en	
715	\N	0	No archived messages!	en	
716	\N	0	No help	en	
717	\N	0	No important messages!	en	
718	\N	0	Normal	en	
719	\N	0	Object	en	
720	\N	0	Object name	en	
721	\N	0	On change	en	
722	\N	0	On click	en	
723	\N	0	On new	en	
724	\N	0	On save	en	
725	\N	0	OneToMany	en	
726	\N	0	OneToOne	en	
727	\N	0	Only if	en	
728	\N	0	Only use this menu-item if the given expression is true.	en	
729	\N	0	Only use this menu-item if the given module is installed.	en	
730	\N	0	Options	en	
731	\N	0	Order	en	
732	\N	0	Overview	en	
733	\N	0	Package	en	
734	\N	0	Padding	en	
735	\N	0	Panel	en	
736	\N	0	Params	en	
737	\N	0	Parent	en	
738	\N	0	Parent menu	en	
739	\N	0	Password	en	
740	\N	0	Pending	en	
741	\N	0	Permission	en	
742	\N	0	Permissions	en	
743	\N	0	Permissions (fields)	en	
744	\N	0	Personal	en	
745	\N	0	Personalized View	en	
746	\N	0	Personalized Views	en	
747	\N	0	Photo	en	
748	\N	0	Placeholder	en	
749	\N	0	Please refresh your browser to see updated views.	en	
750	\N	0	Precision	en	
751	\N	0	Preferences	en	
752	\N	0	Prefix	en	
753	\N	0	Priority	en	
754	\N	0	Read	en	
755	\N	0	Readonly	en	
756	\N	0	Readonly if	en	
757	\N	0	Recipients	en	
758	\N	0	Record created	en	
759	\N	0	Record updated	en	
760	\N	0	Record was updated or deleted by another transaction	en	
761	\N	0	Reference error	en	
762	\N	0	Regex	en	
763	\N	0	Related	en	
764	\N	0	Related document id	en	
765	\N	0	Related document model	en	
766	\N	0	Related document name	en	
767	\N	0	Related model	en	
768	\N	0	Related name	en	
769	\N	0	Related object	en	
770	\N	0	Relationship	en	
771	\N	0	Removable	en	
772	\N	0	Remove	en	
773	\N	0	Replies	en	
774	\N	0	Required	en	
775	\N	0	Required if	en	
776	\N	0	Restart jobs...	en	
777	\N	0	Restart the server for updates to take effect.	en	
778	\N	0	Restore all...	en	
779	\N	0	Role	en	
780	\N	0	Roles	en	
781	\N	0	Root	en	
782	\N	0	Rule	en	
783	\N	0	Rules	en	
784	\N	0	SQL error	en	
785	\N	0	Scale	en	
786	\N	0	Schedule	en	
787	\N	0	Schedules	en	
788	\N	0	Schema	en	
789	\N	0	Search	en	
790	\N	0	Select	en	
791	\N	0	Select Item	en	
792	\N	0	Selection	en	
793	\N	0	Selects	en	
794	\N	0	Separator	en	
795	\N	0	Sequence	en	
796	\N	0	Sequence order	en	
797	\N	0	Server expression to check whether to use this field.	en	
798	\N	0	Shared	en	
799	\N	0	Shared with me	en	
800	\N	0	Show Model	en	
801	\N	0	Show if	en	
802	\N	0	Show in top menu	en	
803	\N	0	Show permissions	en	
804	\N	0	Single tab	en	
805	\N	0	Size	en	
806	\N	0	Size in bytes	en	
807	\N	0	Specify whether the members of this group are technical staff.	en	
808	\N	0	Specify whether this action can be used as home action.	en	
809	\N	0	Specify whether to block the user for an indeterminate times.	en	
810	\N	0	Status	en	
811	\N	0	String	en	
812	\N	0	Style	en	
813	\N	0	Subject	en	
814	\N	0	Subscribe	en	
815	\N	0	Success	en	
816	\N	0	Suffix	en	
817	\N	0	Summary	en	
818	\N	0	System notification	en	
819	\N	0	Table	en	
820	\N	0	Tag	en	
821	\N	0	Tag count	en	
822	\N	0	Tag label	en	
823	\N	0	Tag method	en	
824	\N	0	Tag style	en	
825	\N	0	Tags	en	
826	\N	0	Target custom model	en	
827	\N	0	Target json model	en	
828	\N	0	Target model	en	
829	\N	0	Task	en	
830	\N	0	Task closed	en	
831	\N	0	Task created	en	
832	\N	0	Task date	en	
833	\N	0	Task deadline	en	
834	\N	0	Task duration	en	
835	\N	0	Tasks	en	
836	\N	0	Tasks assigned to me	en	
837	\N	0	Tasks created by me	en	
838	\N	0	Tasks due	en	
839	\N	0	Tasks todo	en	
840	\N	0	Team	en	
841	\N	0	Teams	en	
842	\N	0	Teamwork	en	
843	\N	0	Technical staff	en	
844	\N	0	The addition data for UI widgets.	en	
845	\N	0	The image icon to show in UI widgets.	en	
846	\N	0	The module can't be uninstalled because other modules are pending. Please restart the server before.	en	
847	\N	0	The module can't be uninstalled because other non-removable modules depend on it.	en	
848	\N	0	The record(s) are referenced by other records, please remove all the references first.	en	
849	\N	0	The record(s) can't be updated as it violates unique constraint.	en	
850	\N	0	The scheduler service is disabled.	en	
851	\N	0	The select item title.	en	
852	\N	0	The select item value.	en	
853	\N	0	Theme	en	
854	\N	0	This may terminate any running jobs. Are sure to continue?	en	
855	\N	0	Time	en	
856	\N	0	Title	en	
857	\N	0	Tooltip	en	
858	\N	0	Top menu	en	
859	\N	0	Topic	en	
860	\N	0	Topic closed	en	
861	\N	0	Topic created	en	
862	\N	0	Topic re-opened	en	
863	\N	0	Topics	en	
864	\N	0	Translation	en	
865	\N	0	Tree	en	
866	\N	0	Type	en	
867	\N	0	Unexpected database error occurred on the server.	en	
868	\N	0	Uninstall	en	
869	\N	0	Unique constraint violation	en	
870	\N	0	Unique message identifier	en	
871	\N	0	Unread	en	
872	\N	0	Unsubscribe	en	
873	\N	0	Updated by	en	
874	\N	0	Updated on	en	
875	\N	0	Urgent	en	
876	\N	0	Used as home action	en	
877	\N	0	User	en	
878	\N	0	User Management	en	
879	\N	0	User preferences	en	
880	\N	0	Users	en	
881	\N	0	Validate	en	
882	\N	0	Validation error	en	
883	\N	0	Value	en	
884	\N	0	Value Expression	en	
885	\N	0	Version	en	
886	\N	0	View	en	
887	\N	0	View Help	en	
888	\N	0	View Management	en	
889	\N	0	Views	en	
890	\N	0	Visibility	en	
891	\N	0	Visible	en	
892	\N	0	Visible in grid	en	
893	\N	0	Warning	en	
894	\N	0	Whether to grant create access.	en	
895	\N	0	Whether to grant export access.	en	
896	\N	0	Whether to grant read access.	en	
897	\N	0	Whether to grant remove access.	en	
898	\N	0	Whether to grant write access.	en	
899	\N	0	Whether to show help messages.	en	
900	\N	0	Whether to use tabbed ui.	en	
901	\N	0	Widget	en	
902	\N	0	Widget Attributes	en	
903	\N	0	Widget attrs	en	
904	\N	0	Write	en	
905	\N	0	Xml	en	
906	\N	0	You are not allowed to remove this filter	en	
907	\N	0	You are not authorized to create this resource.	en	
908	\N	0	You are not authorized to export the data.	en	
909	\N	0	You are not authorized to read this resource.	en	
910	\N	0	You are not authorized to remove this resource.	en	
911	\N	0	You are not authorized to update this resource.	en	
912	\N	0	You can't create document here.	en	
913	\N	0	You can't move document here.	en	
914	\N	0	Your password	en	
915	\N	0	action-attrs	en	
916	\N	0	action-condition	en	
917	\N	0	action-export	en	
918	\N	0	action-group	en	
919	\N	0	action-import	en	
920	\N	0	action-method	en	
921	\N	0	action-record	en	
922	\N	0	action-report	en	
923	\N	0	action-script	en	
924	\N	0	action-validate	en	
925	\N	0	action-view	en	
926	\N	0	action-ws	en	
927	\N	0	added comment	en	
928	\N	0	confirm password	en	
929	\N	0	current password	en	
930	\N	0	form::Select	en	Select
931	\N	0	important	en	
932	\N	0	login name	en	
933	\N	0	new password	en	
934	\N	0	success	en	
935	\N	0	updated document	en	
936	\N	0	user group	en	
937	\N	0	user name	en	
938	\N	0	your password	en	
939	\N	0	{0} customized view is deleted.	en	
940	\N	0	{0} customized views are deleted.	en	
941	\N	0	%d days	fr	%d jours
942	\N	0	%d hours	fr	%d heures
943	\N	0	%d minutes	fr	%d minutes
944	\N	0	%d months	fr	%d mois
945	\N	0	%d years	fr	%d ans
946	\N	0	%s ago	fr	il y a %s
947	\N	0	(end)	fr	(fin)
948	\N	0	(start)	fr	(début)
949	\N	0	({0} items)	fr	({0} éléments)
950	\N	0	About	fr	A propos
951	\N	0	Action Category	fr	Catégorie
952	\N	0	Action Sub-Category	fr	Sous catégorie
953	\N	0	Active Users	fr	Utilisateurs actifs
954	\N	0	Adblocker detected!	fr	Dispositif de blocage de publicités détecté!
955	\N	0	Add	fr	Ajouter
956	\N	0	Add Field	fr	Ajouter un champ
957	\N	0	Add filter	fr	Ajouter filtre
958	\N	0	Add followers	fr	Ajouter des abonnés
959	\N	0	Add some tags	fr	Ajouter des tags
960	\N	0	Add to favorites...	fr	Ajouter aux favoris…
961	\N	0	Advanced Search	fr	Recherche avancée
962	\N	0	Alert	fr	Alerte
963	\N	0	All Day	fr	Toute la journée
964	\N	0	Apply	fr	Appliquer
965	\N	0	Apr	fr	Avril
966	\N	0	April	fr	Avril
967	\N	0	Archive	fr	Archiver
968	\N	0	Are you sure to unfollow this document?	fr	Êtes-vous sûr de vouloir vous désabonner de ce document ?
969	\N	0	Are you sure to unfollow this group?	fr	Êtes-vous sûr de vouloir vous désabonner de ce groupe ?
970	\N	0	Are you sure you want to delete the {0} selected documents?	fr	Êtes-vous sûr de vouloir supprimer les {0} documents sélictionnés ?
971	\N	0	Are you sure you want to delete {0}?	fr	Êtes-vous sûr de vouloir supprimer {0} ?
972	\N	0	Attached to...	fr	Attaché à
973	\N	0	Attachments	fr	Pièces jointes
974	\N	0	Aug	fr	Août
975	\N	0	August	fr	Août
976	\N	0	Back	fr	Retour
977	\N	0	Background color	fr	Couleur de fond
978	\N	0	Blockquote	fr	Citation
979	\N	0	Bold (Ctrl+B)	fr	Gras (Ctrl+B)
980	\N	0	Cancel	fr	Annuler
981	\N	0	Cancelled	fr	Annulé
982	\N	0	Center	fr	Centrer
983	\N	0	Clear	fr	Effacer
984	\N	0	Click or drop image	fr	Cliquer ou déposer image
985	\N	0	Close	fr	Fermer
986	\N	0	Close All	fr	Fermer tout
987	\N	0	Close Others	fr	Fermer les autres
75	\N	1	Create	fr	Créer
988	\N	0	Create "{0}" and select...	fr	Créer "{0}" et sélectionner...
989	\N	0	Create "{0}"...	fr	Créer "{0}"...
990	\N	0	Create document	fr	Créer document
991	\N	0	Create folder	fr	Créer dossier
992	\N	0	Create spreadsheet	fr	Tableur
993	\N	0	Create...	fr	Créer...
994	\N	0	Created	fr	Créé
995	\N	0	Created By:	fr	Créé par :
996	\N	0	Created On:	fr	Créé le :
997	\N	0	Current changes will be lost.	fr	Les modifications en cours vont être perdues.
998	\N	0	Current changes will be lost. Do you really want to proceed?	fr	Les modifications en cours vont être perdues, voulez-vous continuer ?
999	\N	0	Custom ({0})	fr	Perso. ({0})
1000	\N	0	Customize...	fr	Personnaliser ...
1001	\N	0	Day	fr	Journée
1002	\N	0	Days	fr	Jours
1003	\N	0	Dec	fr	Déc
1004	\N	0	December	fr	Décembre
1005	\N	0	Delete	fr	Supprimer
1006	\N	0	Delete...	fr	Supprimer...
1007	\N	0	Details	fr	Détails
1008	\N	0	Do you really want to archive the selected record(s)?	fr	Êtes-vous sûr de vouloir archiver les enregistrements sélectionnés ?
1009	\N	0	Do you really want to archive the selected record?	fr	Êtes-vous sûr de vouloir archiver l’enregistrement sélectionné ?
1010	\N	0	Do you really want to delete the selected record(s)?	fr	Êtes-vous sûr de vouloir supprimer ce(s) enregistrement(s) ?
1011	\N	0	Do you really want to delete the selected record?	fr	Êtes-vous sûr de vouloir supprimer l'enregistrement sélectionné ?
1012	\N	0	Do you really want to unarchive the selected record(s)?	fr	Êtes-vous sûr de vouloir désarchiver les enregistrements sélectionnés ?
1013	\N	0	Do you really want to unarchive the selected record?	fr	Êtes-vous sûr de vouloir désarchiver l’enregistrement sélectionné ?
1014	\N	0	Do you really want to update all {0} record(s)?	fr	Etes-vous sûr de vouloir mettre à jour ces {0} enregistrement(s) ?
106	\N	1	Domain	fr	Domain
1015	\N	0	Done	fr	Choisir
1016	\N	0	Download	fr	Télécharger
1017	\N	0	Downloading {0}...	fr	Téléchargement {0}...
1018	\N	0	Drop your files to start upload.	fr	Déposez vos fichiers pour commencer le chargement. 
1019	\N	0	Duplicate	fr	Copier
1020	\N	0	Duration	fr	Durée
1021	\N	0	Edit	fr	Modifier
1022	\N	0	Edit event	fr	Modifier évènement
1023	\N	0	Edit...	fr	Éditer…
1024	\N	0	Error	fr	Erreur
1025	\N	0	Expanded	fr	Etendu
115	\N	1	Export	fr	Exporter
1026	\N	0	Export full	fr	Tout exporter
1027	\N	0	Failed	fr	Échec
1028	\N	0	Failed!	fr	Échec
1029	\N	0	False	fr	Faux
1030	\N	0	Feb	fr	Févr
1031	\N	0	February	fr	Février
1032	\N	0	Field Name	fr	Nom du champ
1033	\N	0	Field Type	fr	Type de champ
1034	\N	0	File upload	fr	Charger fichiers
1035	\N	0	File {0} does not exist.	fr	Le fichier {0} n’existe pas.
1036	\N	0	Filter	fr	Filtre
1037	\N	0	Filters ({0})	fr	Filtres ({0})
1038	\N	0	Folder	fr	Dossier
1039	\N	0	Follow: {0}	fr	Suivre: {0}
1040	\N	0	Followers	fr	Abonnés
1041	\N	0	Font	fr	Police
1042	\N	0	Font size	fr	Taille police
1043	\N	0	Formatted	fr	Formaté
1044	\N	0	Fr	fr	V
1045	\N	0	Free Memory	fr	Mémoire libre
1046	\N	0	Fri	fr	Ven
1047	\N	0	Friday	fr	Vendredi
1048	\N	0	Go	fr	Lancer
1049	\N	0	Group by	fr	Grouper par
1050	\N	0	Grouped	fr	Groupé
1051	\N	0	Header 1	fr	Titre niveau 1
1052	\N	0	Header 2	fr	Titre niveau 2
1053	\N	0	Header 3	fr	Titre niveau 3
1054	\N	0	Header 4	fr	Titre niveau 4
1055	\N	0	Header 5	fr	Titre niveau 5
1056	\N	0	Header 6	fr	Titre niveau 6
1057	\N	0	Hide	fr	Cacher
1058	\N	0	Home	fr	Accueil
1059	\N	0	Hour	fr	Heure
1060	\N	0	Hours	fr	Heures
1061	\N	0	Indent	fr	Augmenter le retrait
1062	\N	0	Insert image	fr	Insérer image
1063	\N	0	Insert link	fr	Insérer lien
176	\N	1	Internal Server Error	fr	Erreur interne du serveur
1064	\N	0	Invalid permissions	fr	Permissions invalides
1065	\N	0	Invalid use of "{0}" action, must be the first action.	fr	Utilisation incorrecte de l'action "{0}", doit être la première action.
1066	\N	0	Invalid use of "{0}" action, must be the last action.	fr	Utilisation incorrecte de l'action "{0}", doit être la dernière action.
1067	\N	0	Italic (Ctrl+I)	fr	Italique (Ctrl+I)
1068	\N	0	Jan	fr	Janv
1069	\N	0	January	fr	Janvier
1070	\N	0	Java Runtime	fr	Runtime Java
1071	\N	0	Java Version	fr	Version Java
1072	\N	0	Jul	fr	Juil
1073	\N	0	July	fr	Juillet
1074	\N	0	Jun	fr	Juin
1075	\N	0	June	fr	Juin
1076	\N	0	Justify	fr	Justifier
1077	\N	0	L	fr	L
1078	\N	0	Large	fr	Grand
1079	\N	0	Larger	fr	Plus grand
1080	\N	0	Last access time	fr	Heure du dernier accès
1081	\N	0	Last modified...	fr	Dernière modification...
1082	\N	0	Left	fr	Gauche
1083	\N	0	Loading	fr	Chargement
1084	\N	0	Log in	fr	Se connecter
1085	\N	0	Log in attempt failed.	fr	Tentative de connexion échoué.
1086	\N	0	Log in time	fr	Heure de connexion
1087	\N	0	Log out	fr	Déconnexion
1088	\N	0	Mar	fr	Mars
1089	\N	0	March	fr	Mars
1090	\N	0	Mark as important	fr	Marquer comme important
1091	\N	0	Mark as not important	fr	Marquer comme non important
1092	\N	0	Mark as read	fr	Marquer comme lu
1093	\N	0	Mark as unread	fr	Marquer comme non lu
1094	\N	0	Mass Update	fr	Mise à jour en masse
1095	\N	0	Max Memory	fr	Mémoire max
1096	\N	0	May	fr	Mai
1097	\N	0	Medium	fr	Moyen
1098	\N	0	Memory Information	fr	Information mémoire
1099	\N	0	Milestone	fr	Etape
1100	\N	0	Minute	fr	Minute
1101	\N	0	Minutes	fr	Minutes
1102	\N	0	Mo	fr	L
1103	\N	0	Modified	fr	Modifié
1104	\N	0	Mon	fr	Lun
1105	\N	0	Monday	fr	Lundi
1106	\N	0	Month	fr	Mois
1107	\N	0	Months	fr	Mois
1108	\N	0	More	fr	Plus
1109	\N	0	More actions	fr	Plus d'actions
1110	\N	0	More...	fr	Plus…
1111	\N	0	Move to archive	fr	Archiver
1112	\N	0	Move to inbox	fr	Déplacer vers la boîte de reception
1113	\N	0	My Filters	fr	Mes filtres
1114	\N	0	N/A	fr	N/A
1115	\N	0	New Document	fr	Nouveau document
1116	\N	0	New Folder	fr	Dossier
1117	\N	0	New Spreadsheet	fr	Feuille de calcul
1118	\N	0	New task	fr	Nouvelle tâche
244	\N	1	Next	fr	Suivant
1119	\N	0	No	fr	Non
1120	\N	0	No documents found.	fr	Aucun document trouvé
1121	\N	0	No filters available	fr	Aucun filtre disponible
1122	\N	0	No records found.	fr	Aucune donnée trouvée.
1123	\N	0	No results found	fr	Aucun résultat trouvé
1124	\N	0	Normalize	fr	Normaliser
1125	\N	0	Nov	fr	Nov
1126	\N	0	November	fr	Novembre
1127	\N	0	Now	fr	Aujourd'hui
1128	\N	0	OK	fr	OK
1129	\N	0	Oct	fr	Oct
1130	\N	0	October	fr	Octobre
1131	\N	0	Offline!	fr	Hors ligne
1132	\N	0	Operating System	fr	Système d'exploitation
1133	\N	0	Ordered list	fr	Liste numérotée
1134	\N	0	Organize favorites...	fr	Organiser les favoris…
1135	\N	0	Orig. Value	fr	Valeur orig.
1136	\N	0	Outdent	fr	Diminuer le retrait
1137	\N	0	Owner	fr	Propriétaire
270	\N	1	Pending	fr	En attente
272	\N	1	Permissions	fr	Permissions
1138	\N	0	Permissions ({0})	fr	Permissions ({0})
1139	\N	0	Permissions...	fr	Permissions...
1140	\N	0	Please correct the invalid form values.	fr	Merci de corriger les champs du formulaire non valides.
1141	\N	0	Please disable the adblocker as it may slow down the application.	fr	Veuillez désactiver le dispositif de blocage de publicités, car cela pourrait ralentir l'application.
1142	\N	0	Please sign in	fr	Veuillez vous connecter
1143	\N	0	Please wait...	fr	Merci de patienter...
1144	\N	0	Post	fr	Envoyer
1145	\N	0	Prev	fr	Précédent
1146	\N	0	Print	fr	Imprimer
1147	\N	0	Project	fr	Projet
1148	\N	0	Question	fr	Question
1149	\N	0	Reference	fr	Référence
1150	\N	0	Refresh	fr	Actualiser
1151	\N	0	Remember me	fr	Se souvenir de moi
302	\N	1	Remove	fr	Supprimer
1152	\N	0	Remove format	fr	Supprimer la mise en forme
1153	\N	0	Rename...	fr	Renommer...
1154	\N	0	Report attached to current object. Would you like to download?	fr	Rapport attaché à l'objet courant. Voulez-vous le télécharger?
1155	\N	0	Retry	fr	Réessayer
1156	\N	0	Right	fr	Droite
1157	\N	0	Sa	fr	S
1158	\N	0	Sat	fr	Sam
1159	\N	0	Saturday	fr	Samedi
1160	\N	0	Save	fr	Enregistrer
1161	\N	0	Save as	fr	Sauvegarder sous
1162	\N	0	Save filter as	fr	Sauver filter sous
319	\N	1	Search	fr	Rechercher
1163	\N	0	Search Objects	fr	Sélectionner objet
1164	\N	0	Search more...	fr	Plus de résultats...
1165	\N	0	Search...	fr	Rechercher...
1166	\N	0	Second	fr	Seconde
320	\N	1	Select	fr	Selectionner
1167	\N	0	Select "{0}"...	fr	Sélectionner "{0}"...
1168	\N	0	Send	fr	Envoyer
1169	\N	0	Sep	fr	Sept
1170	\N	0	September	fr	Septembre
1171	\N	0	Server is not responding.	fr	Le serveur ne répond pas
1172	\N	0	Share	fr	Partager
1173	\N	0	Show	fr	Voir
1174	\N	0	Show Details	fr	Afficher les détails
1175	\N	0	Show archived	fr	Afficher archives
1176	\N	0	Show translations.	fr	Afficher les traductions.
1177	\N	0	Small	fr	Plus petit
1178	\N	0	Smaller	fr	Petit
1179	\N	0	Sort Ascending	fr	Tri croissant
1180	\N	0	Sort Descending	fr	Tri décroissant
1181	\N	0	Spreadsheet	fr	Feuille de calcul
1182	\N	0	Stack %	fr	Empilé %
1183	\N	0	Stacked	fr	Empilé
1184	\N	0	Start time	fr	Heure de début
1185	\N	0	Stream	fr	Flux
1186	\N	0	Strikethrough (Ctrl+S)	fr	Rayé
1187	\N	0	Su	fr	D
1188	\N	0	Submit	fr	Soumettre
345	\N	1	Success	fr	Succès
1189	\N	0	Sun	fr	Dim
1190	\N	0	Sunday	fr	Dimanche
1191	\N	0	System Information	fr	Information système
1192	\N	0	Task name	fr	Nom tâche
1193	\N	0	Task will be deleted permanently, are you sure?	fr	La tâche va être supprimée, êtes-vous sûr? 
368	\N	1	Tasks due	fr	Tâche échue
369	\N	1	Tasks todo	fr	Tâche à faire
1194	\N	0	Text color	fr	Couleur du texte
1195	\N	0	Th	fr	J
1196	\N	0	The following fields are invalid:	fr	Les champs suivants sont invalides:
1197	\N	0	The record has been updated or delete by another action.	fr	L'enregistrement a été modifié ou supprimé par une autre action.
1198	\N	0	The {0}={1} event can't call 'save' action on unsaved o2m item.	fr	L'événement {0}={1} ne peut pas appeler l'action «save» sur un élément de O2M non persisté.
1199	\N	0	There are some invalid rows.	fr	Il y a des lignes invalides.
1200	\N	0	Thu	fr	Jeu
1201	\N	0	Thursday	fr	Jeudi
1202	\N	0	Time period	fr	Période de temps
1203	\N	0	Today	fr	Aujourd'hui
1204	\N	0	Toggle	fr	Réduire
1205	\N	0	Total Memory	fr	Mémoire totale
1206	\N	0	Translations	fr	Traductions
1207	\N	0	True	fr	Vrai
1208	\N	0	Tu	fr	M
1209	\N	0	Tue	fr	Mar
1210	\N	0	Tuesday	fr	Mardi
1211	\N	0	Unarchive	fr	Désarchiver
1212	\N	0	Underline (Ctrl+U)	fr	Souligné (Ctrl+U)
1213	\N	0	Ungroup	fr	Dégrouper
1214	\N	0	Unknown	fr	Inconnue
1215	\N	0	Unordered list	fr	Liste à puces
1216	\N	0	Update	fr	Mettre à jour
1217	\N	0	Update all	fr	Tout mettre à jour
1218	\N	0	Update your browser!	fr	Mettez à jour votre navigateur!
1219	\N	0	Updated By:	fr	Mis à jour par :
1220	\N	0	Updated On:	fr	Mis à jour le :
1221	\N	0	Upload complete	fr	Chargement terminé
1222	\N	0	Uploading files...	fr	Chargement des fichiers
1223	\N	0	Used Memory	fr	Mémoire utilisé
407	\N	1	User	fr	Utilisateur
1224	\N	0	Username	fr	Nom de l'utilisateur
423	\N	1	Warning	fr	Avertissement
1225	\N	0	Warning!	fr	Avertissement !
1226	\N	0	We	fr	M
1227	\N	0	Wed	fr	Mer
1228	\N	0	Wednesday	fr	Mercredi
1229	\N	0	Week	fr	Semaine
1230	\N	0	Wk	fr	Sem.
1231	\N	0	Would you like to reload the current record?	fr	Voulez-vous actualiser l'enregistrement actuel ?
1232	\N	0	Would you like to remove the filter?	fr	Voulez-vous supprimer le filtre ?
1233	\N	0	Write your comment here	fr	Entrez votre commentaire
1234	\N	0	Year	fr	Année
1235	\N	0	Years	fr	Années
1236	\N	0	Yes	fr	Oui
1237	\N	0	You are not allow to upload a file bigger than	fr	Vous n'êtes pas autoriser à uploader un fichier plus grand que
1238	\N	0	[Last] dddd [at] LT	fr	dddd [dernier à] LT
1239	\N	0	[Today at] LT	fr	[Aujourd'hui à] LT
1240	\N	0	[Tomorrow at] LT	fr	[Demain à] LT
1241	\N	0	[Yesterday at] LT	fr	[Hier à] LT
1242	\N	0	a day	fr	un jour
1243	\N	0	a few seconds	fr	quelques secondes
1244	\N	0	a minute	fr	une minute
1245	\N	0	a month	fr	un mois
1246	\N	0	a year	fr	un an
1247	\N	0	an hour	fr	une heure
1248	\N	0	and	fr	et
1249	\N	0	and {0} more	fr	et {0} plus
1250	\N	0	contains	fr	contient
1251	\N	0	dddd [at] LT	fr	dddd [à] LT
1252	\N	0	doesn't contain	fr	ne contient pas
1253	\N	0	equals	fr	égal
1254	\N	0	greater or equal	fr	supérieur ou égal
1255	\N	0	greater than	fr	supérieure à
1256	\N	0	in	fr	dans
1257	\N	0	in %s	fr	dans %s
1258	\N	0	in range	fr	compris entre
1259	\N	0	is false	fr	est faux
1260	\N	0	is not null	fr	n'est pas null
1261	\N	0	is null	fr	est null
1262	\N	0	is true	fr	est vrai
1263	\N	0	less or equal	fr	inférieure ou égale
1264	\N	0	less than	fr	inférieure à
1265	\N	0	load more	fr	charger plus
1266	\N	0	name	fr	nom
1267	\N	0	no tasks	fr	aucune tâche
1268	\N	0	not equal	fr	pas égal
1269	\N	0	not in	fr	pas dans
1270	\N	0	not in range	fr	non compris entre
1271	\N	0	or	fr	ou
1272	\N	0	replies ({0} of {1})	fr	réponses ({0} sur {1})
1273	\N	0	value	fr	valeur
1274	\N	0	will be deleted	fr	sera supprimé
1275	\N	0	{0} of {1}	fr	{0} sur {1}
1276	\N	0	{0} records exported.	fr	{0} enregistrements exportés.
1277	\N	0	{0} task	fr	{0} tâche
1278	\N	0	{0} tasks	fr	{0} tâches
1279	\N	0	{0} to {1} of {2}	fr	{0} à {1} sur {2}
1280	\N	0	%d days	en	
1281	\N	0	%d hours	en	
1282	\N	0	%d minutes	en	
1283	\N	0	%d months	en	
1284	\N	0	%d years	en	
1285	\N	0	%s ago	en	
1286	\N	0	(end)	en	
1287	\N	0	(start)	en	
1288	\N	0	({0} items)	en	
1289	\N	0	About	en	
1290	\N	0	Action Category	en	
1291	\N	0	Action Sub-Category	en	
1292	\N	0	Active Users	en	
1293	\N	0	Adblocker detected!	en	
1294	\N	0	Add	en	
1295	\N	0	Add Field	en	
1296	\N	0	Add filter	en	
1297	\N	0	Add followers	en	
1298	\N	0	Add some tags	en	
1299	\N	0	Add to favorites...	en	
1300	\N	0	Advanced Search	en	
1301	\N	0	Alert	en	
1302	\N	0	All Day	en	
1303	\N	0	Apply	en	
1304	\N	0	Apr	en	
1305	\N	0	April	en	
1306	\N	0	Archive	en	
1307	\N	0	Are you sure to unfollow this document?	en	
1308	\N	0	Are you sure to unfollow this group?	en	
1309	\N	0	Are you sure you want to delete the {0} selected documents?	en	
1310	\N	0	Are you sure you want to delete {0}?	en	
1311	\N	0	Attached to...	en	
1312	\N	0	Attachments	en	
1313	\N	0	Aug	en	
1314	\N	0	August	en	
1315	\N	0	Back	en	
1316	\N	0	Background color	en	
1317	\N	0	Blockquote	en	
1318	\N	0	Bold (Ctrl+B)	en	
1319	\N	0	Cancel	en	
1320	\N	0	Cancelled	en	
1321	\N	0	Center	en	
1322	\N	0	Clear	en	
1323	\N	0	Click or drop image	en	
1324	\N	0	Close	en	
1325	\N	0	Close All	en	
1326	\N	0	Close Others	en	
1327	\N	0	Create "{0}" and select...	en	
1328	\N	0	Create "{0}"...	en	
1329	\N	0	Create document	en	
1330	\N	0	Create folder	en	
1331	\N	0	Create spreadsheet	en	
1332	\N	0	Create...	en	
1333	\N	0	Created	en	
1334	\N	0	Created By:	en	
1335	\N	0	Created On:	en	
1336	\N	0	Current changes will be lost.	en	
1337	\N	0	Current changes will be lost. Do you really want to proceed?	en	
1338	\N	0	Custom ({0})	en	
1339	\N	0	Customize...	en	
1340	\N	0	Day	en	
1341	\N	0	Days	en	
1342	\N	0	Dec	en	
1343	\N	0	December	en	
1344	\N	0	Delete	en	
1345	\N	0	Delete...	en	
1346	\N	0	Details	en	
1347	\N	0	Do you really want to archive the selected record(s)?	en	
1348	\N	0	Do you really want to archive the selected record?	en	
1349	\N	0	Do you really want to delete the selected record(s)?	en	
1350	\N	0	Do you really want to delete the selected record?	en	
1351	\N	0	Do you really want to unarchive the selected record(s)?	en	
1352	\N	0	Do you really want to unarchive the selected record?	en	
1353	\N	0	Do you really want to update all {0} record(s)?	en	
1354	\N	0	Done	en	
1355	\N	0	Download	en	
1356	\N	0	Downloading {0}...	en	
1357	\N	0	Drop your files to start upload.	en	
1358	\N	0	Duplicate	en	
1359	\N	0	Duration	en	
1360	\N	0	Edit	en	
1361	\N	0	Edit event	en	
1362	\N	0	Edit...	en	
1363	\N	0	Error	en	
1364	\N	0	Expanded	en	
1365	\N	0	Export full	en	
1366	\N	0	Failed	en	
1367	\N	0	Failed!	en	
1368	\N	0	False	en	
1369	\N	0	Feb	en	
1370	\N	0	February	en	
1371	\N	0	Field Name	en	
1372	\N	0	Field Type	en	
1373	\N	0	File upload	en	
1374	\N	0	File {0} does not exist.	en	
1375	\N	0	Filter	en	
1376	\N	0	Filters ({0})	en	
1377	\N	0	Folder	en	
1378	\N	0	Follow: {0}	en	
1379	\N	0	Followers	en	
1380	\N	0	Font	en	
1381	\N	0	Font size	en	
1382	\N	0	Formatted	en	
1383	\N	0	Fr	en	
1384	\N	0	Free Memory	en	
1385	\N	0	Fri	en	
1386	\N	0	Friday	en	
1387	\N	0	Go	en	
1388	\N	0	Group by	en	
1389	\N	0	Grouped	en	
1390	\N	0	Header 1	en	
1391	\N	0	Header 2	en	
1392	\N	0	Header 3	en	
1393	\N	0	Header 4	en	
1394	\N	0	Header 5	en	
1395	\N	0	Header 6	en	
1396	\N	0	Hide	en	
1397	\N	0	Home	en	
1398	\N	0	Hour	en	
1399	\N	0	Hours	en	
1400	\N	0	Indent	en	
1401	\N	0	Insert image	en	
1402	\N	0	Insert link	en	
1403	\N	0	Invalid permissions	en	
1404	\N	0	Invalid use of "{0}" action, must be the first action.	en	
1405	\N	0	Invalid use of "{0}" action, must be the last action.	en	
1406	\N	0	Italic (Ctrl+I)	en	
1407	\N	0	Jan	en	
1408	\N	0	January	en	
1409	\N	0	Java Runtime	en	
1410	\N	0	Java Version	en	
1411	\N	0	Jul	en	
1412	\N	0	July	en	
1413	\N	0	Jun	en	
1414	\N	0	June	en	
1415	\N	0	Justify	en	
1416	\N	0	L	en	
1417	\N	0	Large	en	
1418	\N	0	Larger	en	
1419	\N	0	Last access time	en	
1420	\N	0	Last modified...	en	
1421	\N	0	Left	en	
1422	\N	0	Loading	en	
1423	\N	0	Log in	en	
1424	\N	0	Log in attempt failed.	en	
1425	\N	0	Log in time	en	
1426	\N	0	Log out	en	
1427	\N	0	Mar	en	
1428	\N	0	March	en	
1429	\N	0	Mark as important	en	
1430	\N	0	Mark as not important	en	
1431	\N	0	Mark as read	en	
1432	\N	0	Mark as unread	en	
1433	\N	0	Mass Update	en	
1434	\N	0	Max Memory	en	
1435	\N	0	May	en	
1436	\N	0	Medium	en	
1437	\N	0	Memory Information	en	
1438	\N	0	Milestone	en	
1439	\N	0	Minute	en	
1440	\N	0	Minutes	en	
1441	\N	0	Mo	en	
1442	\N	0	Modified	en	
1443	\N	0	Mon	en	
1444	\N	0	Monday	en	
1445	\N	0	Month	en	
1446	\N	0	Months	en	
1447	\N	0	More	en	
1448	\N	0	More actions	en	
1449	\N	0	More...	en	
1450	\N	0	Move to archive	en	
1451	\N	0	Move to inbox	en	
1452	\N	0	My Filters	en	
1453	\N	0	N/A	en	
1454	\N	0	New Document	en	
1455	\N	0	New Folder	en	
1456	\N	0	New Spreadsheet	en	
1457	\N	0	New task	en	
1458	\N	0	No	en	
1459	\N	0	No documents found.	en	
1460	\N	0	No filters available	en	
1461	\N	0	No records found.	en	
1462	\N	0	No results found	en	
1463	\N	0	Normalize	en	
1464	\N	0	Nov	en	
1465	\N	0	November	en	
1466	\N	0	Now	en	
1467	\N	0	OK	en	
1468	\N	0	Oct	en	
1469	\N	0	October	en	
1470	\N	0	Offline!	en	
1471	\N	0	Operating System	en	
1472	\N	0	Ordered list	en	
1473	\N	0	Organize favorites...	en	
1474	\N	0	Orig. Value	en	
1475	\N	0	Outdent	en	
1476	\N	0	Owner	en	
1477	\N	0	Permissions ({0})	en	
1478	\N	0	Permissions...	en	
1479	\N	0	Please correct the invalid form values.	en	
1480	\N	0	Please disable the adblocker as it may slow down the application.	en	
1481	\N	0	Please sign in	en	
1482	\N	0	Please wait...	en	
1483	\N	0	Post	en	
1484	\N	0	Prev	en	
1485	\N	0	Print	en	
1486	\N	0	Project	en	
1487	\N	0	Question	en	
1488	\N	0	Reference	en	
1489	\N	0	Refresh	en	
1490	\N	0	Remember me	en	
1491	\N	0	Remove format	en	
1492	\N	0	Rename...	en	
1493	\N	0	Report attached to current object. Would you like to download?	en	
1494	\N	0	Retry	en	
1495	\N	0	Right	en	
1496	\N	0	Sa	en	
1497	\N	0	Sat	en	
1498	\N	0	Saturday	en	
1499	\N	0	Save	en	
1500	\N	0	Save as	en	
1501	\N	0	Save filter as	en	
1502	\N	0	Search Objects	en	
1503	\N	0	Search more...	en	
1504	\N	0	Search...	en	
1505	\N	0	Second	en	
1506	\N	0	Select "{0}"...	en	
1507	\N	0	Send	en	
1508	\N	0	Sep	en	
1509	\N	0	September	en	
1510	\N	0	Server is not responding.	en	
1511	\N	0	Share	en	
1512	\N	0	Show	en	
1513	\N	0	Show Details	en	
1514	\N	0	Show archived	en	
1515	\N	0	Show translations.	en	
1516	\N	0	Small	en	
1517	\N	0	Smaller	en	
1518	\N	0	Sort Ascending	en	
1519	\N	0	Sort Descending	en	
1520	\N	0	Spreadsheet	en	
1521	\N	0	Stack %	en	
1522	\N	0	Stacked	en	
1523	\N	0	Start time	en	
1524	\N	0	Stream	en	
1525	\N	0	Strikethrough (Ctrl+S)	en	
1526	\N	0	Su	en	
1527	\N	0	Submit	en	
1528	\N	0	Sun	en	
1529	\N	0	Sunday	en	
1530	\N	0	System Information	en	
1531	\N	0	Task name	en	
1532	\N	0	Task will be deleted permanently, are you sure?	en	
1533	\N	0	Text color	en	
1534	\N	0	Th	en	
1535	\N	0	The following fields are invalid:	en	
1536	\N	0	The record has been updated or delete by another action.	en	
1537	\N	0	The {0}={1} event can't call 'save' action on unsaved o2m item.	en	
1538	\N	0	There are some invalid rows.	en	
1539	\N	0	Thu	en	
1540	\N	0	Thursday	en	
1541	\N	0	Time period	en	
1542	\N	0	Today	en	
1543	\N	0	Toggle	en	
1544	\N	0	Total Memory	en	
1545	\N	0	Translations	en	
1546	\N	0	True	en	
1547	\N	0	Tu	en	
1548	\N	0	Tue	en	
1549	\N	0	Tuesday	en	
1550	\N	0	Unarchive	en	
1551	\N	0	Underline (Ctrl+U)	en	
1552	\N	0	Ungroup	en	
1553	\N	0	Unknown	en	
1554	\N	0	Unordered list	en	
1555	\N	0	Update	en	
1556	\N	0	Update all	en	
1557	\N	0	Update your browser!	en	
1558	\N	0	Updated By:	en	
1559	\N	0	Updated On:	en	
1560	\N	0	Upload complete	en	
1561	\N	0	Uploading files...	en	
1562	\N	0	Used Memory	en	
1563	\N	0	Username	en	
1564	\N	0	Warning!	en	
1565	\N	0	We	en	
1566	\N	0	Wed	en	
1567	\N	0	Wednesday	en	
1568	\N	0	Week	en	
1569	\N	0	Wk	en	
1570	\N	0	Would you like to reload the current record?	en	
1571	\N	0	Would you like to remove the filter?	en	
1572	\N	0	Write your comment here	en	
1573	\N	0	Year	en	
1574	\N	0	Years	en	
1575	\N	0	Yes	en	
1576	\N	0	You are not allow to upload a file bigger than	en	
1577	\N	0	[Last] dddd [at] LT	en	
1578	\N	0	[Today at] LT	en	
1579	\N	0	[Tomorrow at] LT	en	
1580	\N	0	[Yesterday at] LT	en	
1581	\N	0	a day	en	
1582	\N	0	a few seconds	en	
1583	\N	0	a minute	en	
1584	\N	0	a month	en	
1585	\N	0	a year	en	
1586	\N	0	an hour	en	
1587	\N	0	and	en	
1588	\N	0	and {0} more	en	
1589	\N	0	contains	en	
1590	\N	0	dddd [at] LT	en	
1591	\N	0	doesn't contain	en	
1592	\N	0	equals	en	
1593	\N	0	greater or equal	en	
1594	\N	0	greater than	en	
1595	\N	0	in	en	
1596	\N	0	in %s	en	
1597	\N	0	in range	en	
1598	\N	0	is false	en	
1599	\N	0	is not null	en	
1600	\N	0	is null	en	
1601	\N	0	is true	en	
1602	\N	0	less or equal	en	
1603	\N	0	less than	en	
1604	\N	0	load more	en	
1605	\N	0	name	en	
1606	\N	0	no tasks	en	
1607	\N	0	not equal	en	
1608	\N	0	not in	en	
1609	\N	0	not in range	en	
1610	\N	0	or	en	
1611	\N	0	replies ({0} of {1})	en	
1612	\N	0	value	en	
1613	\N	0	will be deleted	en	
1614	\N	0	{0} of {1}	en	
1615	\N	0	{0} records exported.	en	
1616	\N	0	{0} task	en	
1617	\N	0	{0} tasks	en	
1618	\N	0	{0} to {1} of {2}	en	
\.


--
-- Data for Name: meta_view; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_view (id, archived, version, created_on, updated_on, extension, help_link, model, module, name, priority, title, type, xml, xml_id, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:38.083	\N	\N	\N	com.axelor.auth.db.Permission	axelor-core	simple-permission-grid	20	Permissions	grid	<grid name="simple-permission-grid" title="Permissions" model="com.axelor.auth.db.Permission" edit-icon="true">\n  <field name="name"/>\n  <field name="object"/>\n</grid>\n	\N	1	\N
2	\N	0	2019-07-05 13:49:38.102	\N	\N	\N	com.axelor.auth.db.Permission	axelor-core	permission-grid	20	Permissions	grid	<grid name="permission-grid" title="Permissions" model="com.axelor.auth.db.Permission" edit-icon="true">\n  <field name="name"/>\n  <field name="object"/>\n  <field name="canRead" width="100"/>\n  <field name="canWrite" width="100"/>\n  <field name="canCreate" width="100"/>\n  <field name="canRemove" width="100"/>\n  <field name="canExport" width="100"/>\n</grid>\n	\N	1	\N
3	\N	0	2019-07-05 13:49:38.12	\N	\N	\N	com.axelor.auth.db.Permission	axelor-core	permission-form	20	Permission	form	<form name="permission-form" title="Permission" model="com.axelor.auth.db.Permission">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="object"/>\n  </panel>\n  <panel title="Allow" itemSpan="2">\n    <field name="canRead" widget="inline-checkbox"/>\n    <field name="canWrite" widget="inline-checkbox"/>\n    <field name="canCreate" widget="inline-checkbox"/>\n    <field name="canRemove" widget="inline-checkbox"/>\n    <field name="canExport" widget="inline-checkbox"/>\n  </panel>\n  <panel title="Condition" itemSpan="12">\n    <field name="condition" title="Condition"/>\n    <field name="conditionParams" title="Params"/>\n  </panel>\n</form>\n	\N	1	\N
4	\N	0	2019-07-05 13:49:38.138	\N	\N	\N	com.axelor.auth.db.Role	axelor-core	role-grid	20	Roles	grid	<grid name="role-grid" title="Roles" model="com.axelor.auth.db.Role" edit-icon="true">\n  <field name="name"/>\n</grid>\n	\N	1	\N
5	\N	0	2019-07-05 13:49:38.154	\N	\N	\N	com.axelor.auth.db.Role	axelor-core	role-form	20	Role	form	<form name="role-form" title="Role" model="com.axelor.auth.db.Role">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="description"/>\n  </panel>\n  <panel-related field="permissions"/>\n  <panel-related field="metaPermissions"/>\n  <panel-related field="menus" form-view="meta-menu-form" grid-view="simple-meta-menu-grid"/>\n</form>\n	\N	1	\N
6	\N	0	2019-07-05 13:49:38.208	\N	\N	\N	com.axelor.meta.db.MetaModule	axelor-core	meta-module-grid	20	All Modules	grid	<grid name="meta-module-grid" title="All Modules" model="com.axelor.meta.db.MetaModule" canNew="false" canEdit="false" canDelete="false" edit-icon="false">\n  <hilite color="danger" if="!installed &amp;&amp; !pending"/>\n  <hilite color="warning" if="pending"/>\n  <field name="name"/>\n  <field name="title"/>\n  <field name="moduleVersion" width="200"/>\n  <field name="installed" width="100"/>\n  <field name="pending" width="100"/>\n  <button name="btnInstall" help="Install module" readonlyIf="installed || pending" icon="fa-download" onClick="com.axelor.meta.web.ModuleController:validInstall(name),com.axelor.meta.web.ModuleController:install(name)"/>\n</grid>\n	\N	1	\N
7	\N	0	2019-07-05 13:49:38.224	\N	\N	\N	com.axelor.meta.db.MetaModule	axelor-core	meta-module-form	20	Module	form	<form name="meta-module-form" title="Module" model="com.axelor.meta.db.MetaModule" canNew="false" canEdit="false" canDelete="false" canCopy="false" canAttach="false">\n  <panel title="Module">\n    <field name="name"/>\n    <field name="moduleVersion"/>\n    <field name="title"/>\n    <field name="application"/>\n    <field name="removable" widget="inline-checkbox"/>\n    <field name="installed" widget="inline-checkbox"/>\n    <field name="pending" widget="inline-checkbox"/>\n    <panel showIf="removable" colSpan="3" stacked="true">\n      <button name="btnInstall" title="Install" showIf="!installed &amp;&amp; !pending" onClick="com.axelor.meta.web.ModuleController:validInstall(name),com.axelor.meta.web.ModuleController:install(name)"/>\n      <button name="btnUninstall" title="Uninstall" showIf="installed &amp;&amp; !pending &amp;&amp; removable" onClick="com.axelor.meta.web.ModuleController:validUninstall(name),com.axelor.meta.web.ModuleController:uninstall(name)"/>\n    </panel>\n  </panel>\n  <panel title="Depends On">\n    <field name="depends" showTitle="false" colSpan="12" widget="TagSelect"/>\n  </panel>\n  <panel title="Description">\n    <field name="description" showTitle="false" colSpan="12"/>\n  </panel>\n</form>\n	\N	1	\N
8	\N	0	2019-07-05 13:49:38.24	\N	\N	\N	com.axelor.meta.db.MetaView	axelor-core	simple-meta-view-grid	20	Views	grid	<grid name="simple-meta-view-grid" title="Views" model="com.axelor.meta.db.MetaView" orderBy="priority,name" edit-icon="true">\n  <field name="name"/>\n  <field name="title"/>\n  <field name="type"/>\n  <field name="priority" width="75"/>\n</grid>\n	\N	1	\N
9	\N	0	2019-07-05 13:49:38.257	\N	\N	\N	com.axelor.meta.db.MetaView	axelor-core	meta-view-grid	20	All Views	grid	<grid name="meta-view-grid" title="All Views" model="com.axelor.meta.db.MetaView" orderBy="priority,name" edit-icon="true">\n  <toolbar>\n    <button name="restoreAll" help="Restore all..." icon="fa-undo" prompt="All the customizations will be lost. Are you sure ?" onClick="action-meta-restore-all"/>\n  </toolbar>\n  <field name="name"/>\n  <field name="title"/>\n  <field name="type"/>\n  <field name="model"/>\n  <field name="module"/>\n  <field name="priority" width="75"/>\n</grid>\n	\N	1	\N
10	\N	0	2019-07-05 13:49:38.274	\N	\N	\N	com.axelor.meta.db.MetaView	axelor-core	meta-view-chart-grid	20	All Charts	grid	<grid name="meta-view-chart-grid" title="All Charts" model="com.axelor.meta.db.MetaView" orderBy="priority,name" edit-icon="true">\n  <field name="name"/>\n  <field name="title"/>\n  <field name="module"/>\n  <field name="priority" width="75"/>\n</grid>\n	\N	1	\N
11	\N	0	2019-07-05 13:49:38.291	\N	\N	\N	com.axelor.meta.db.MetaView	axelor-core	meta-view-form	20	View	form	<form name="meta-view-form" title="View" model="com.axelor.meta.db.MetaView" width="large" onSave="action-view-validate,com.axelor.meta.web.MetaController:clearCache" onNew="action-view-defaults">\n  <panel title="Overview">\n    <panel>\n      <field name="name" colSpan="12"/>\n      <field name="title" colSpan="12"/>\n      <field name="type"/>\n      <field name="priority"/>\n      <field name="helpLink" colSpan="12"/>\n    </panel>\n    <panel itemSpan="12">\n      <field name="model"/>\n      <field name="module"/>\n      <field name="groups" widget="TagSelect" x-create="code,name"/>\n      <field name="extension" showIf="type === 'form'"/>\n    </panel>\n  </panel>\n  <panel title="Schema">\n    <field name="xml" showTitle="false" colSpan="12" height="500" widget="CodeEditor" x-code-syntax="xml"/>\n  </panel>\n</form>\n	\N	1	\N
12	\N	0	2019-07-05 13:49:38.308	\N	\N	\N	com.axelor.meta.db.MetaViewCustom	axelor-core	meta-view-custom-grid	20	Personalized Views	grid	<grid name="meta-view-custom-grid" title="Personalized Views" model="com.axelor.meta.db.MetaViewCustom" edit-icon="true">\n  <field name="name"/>\n  <field name="title"/>\n  <field name="type"/>\n  <field name="model"/>\n  <field name="user"/>\n</grid>\n	\N	1	\N
13	\N	0	2019-07-05 13:49:38.326	\N	\N	\N	com.axelor.meta.db.MetaViewCustom	axelor-core	meta-view-custom-form	20	Personalized View	form	<form name="meta-view-custom-form" title="Personalized View" model="com.axelor.meta.db.MetaViewCustom" width="large" onSave="com.axelor.meta.web.MetaController:clearCache">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="title"/>\n    <field name="type"/>\n    <field name="user"/>\n  </panel>\n  <panel title="Schema">\n    <field name="xml" showTitle="false" colSpan="12" height="500" widget="CodeEditor" x-code-syntax="xml"/>\n  </panel>\n</form>\n	\N	1	\N
14	\N	0	2019-07-05 13:49:38.348	\N	\N	\N	com.axelor.meta.db.MetaAction	axelor-core	meta-action-grid	20	All Actions	grid	<grid name="meta-action-grid" title="All Actions" model="com.axelor.meta.db.MetaAction" edit-icon="true">\n  <field name="name"/>\n  <field name="type"/>\n  <field name="model"/>\n  <field name="module"/>\n  <field name="priority"/>\n</grid>\n	\N	1	\N
15	\N	0	2019-07-05 13:49:38.367	\N	\N	\N	com.axelor.meta.db.MetaAction	axelor-core	meta-action-form	20	Action	form	<form name="meta-action-form" title="Action" model="com.axelor.meta.db.MetaAction" width="large" onSave="action-action-validate,com.axelor.meta.web.MetaController:clearCache">\n  <panel title="Overview">\n    <field name="name" readonlyIf="id"/>\n    <field name="type" readonlyIf="id"/>\n    <field name="model"/>\n    <field name="module"/>\n    <field name="priority"/>\n    <field name="home"/>\n  </panel>\n  <panel title="Schema">\n    <field name="xml" showTitle="false" colSpan="12" height="500" widget="CodeEditor" x-code-syntax="xml"/>\n  </panel>\n</form>\n	\N	1	\N
16	\N	0	2019-07-05 13:49:38.385	\N	\N	\N	com.axelor.meta.db.MetaMenu	axelor-core	simple-meta-menu-grid	20	Menu Items	grid	<grid name="simple-meta-menu-grid" title="Menu Items" model="com.axelor.meta.db.MetaMenu" edit-icon="true">\n  <field name="name"/>\n  <field name="title"/>\n  <field name="priority" width="75"/>\n</grid>\n	\N	1	\N
17	\N	0	2019-07-05 13:49:38.405	\N	\N	\N	com.axelor.meta.db.MetaMenu	axelor-core	meta-menu-grid	20	Menu Items	grid	<grid name="meta-menu-grid" title="Menu Items" model="com.axelor.meta.db.MetaMenu" edit-icon="true">\n  <field name="name"/>\n  <field name="title"/>\n  <field name="parent"/>\n  <field name="action"/>\n  <field name="module"/>\n  <field name="top"/>\n  <field name="left"/>\n  <field name="mobile"/>\n  <field name="hidden"/>\n  <field name="order"/>\n  <field name="priority"/>\n</grid>\n	\N	1	\N
18	\N	0	2019-07-05 13:49:38.426	\N	\N	\N	com.axelor.meta.db.MetaMenu	axelor-core	meta-menu-fav-grid	20	Favorites	grid	<grid name="meta-menu-fav-grid" title="Favorites" model="com.axelor.meta.db.MetaMenu" editable="true" orderBy="-priority" canNew="false" edit-icon="true">\n  <field name="title"/>\n  <field name="link"/>\n  <field name="priority" width="100"/>\n</grid>\n	\N	1	\N
19	\N	0	2019-07-05 13:49:38.445	\N	\N	\N	com.axelor.meta.db.MetaMenu	axelor-core	meta-menu-fav-form	20	Favorite	form	<form name="meta-menu-fav-form" title="Favorite" model="com.axelor.meta.db.MetaMenu" canNew="false">\n  <panel title="Overview">\n    <field name="title"/>\n    <field name="priority"/>\n    <field name="link" colSpan="12"/>\n  </panel>\n</form>\n	\N	1	\N
20	\N	0	2019-07-05 13:49:38.465	\N	\N	\N	com.axelor.meta.db.MetaMenu	axelor-core	meta-menu-form	20	Menu Item	form	<form name="meta-menu-form" title="Menu Item" model="com.axelor.meta.db.MetaMenu">\n  <panel title="General" colSpan="12">\n    <field name="name"/>\n    <field name="parent" domain="self.name != :name" form-view="meta-menu-form" grid-view="meta-menu-grid"/>\n    <field name="title"/>\n    <field name="action"/>\n    <field name="icon"/>\n    <field name="iconBackground"/>\n    <field name="link"/>\n    <field name="module"/>\n  </panel>\n  <panel title="Visibility" itemSpan="6" sidebar="true">\n    <field name="order"/>\n    <field name="priority"/>\n    <field name="top" widget="inline-checkbox"/>\n    <field name="left" widget="inline-checkbox"/>\n    <field name="mobile" widget="inline-checkbox"/>\n    <field name="hidden" widget="inline-checkbox"/>\n  </panel>\n  <panel title="Tag" itemSpan="6" sidebar="true">\n    <field name="tag"/>\n    <field name="tagStyle"/>\n    <field name="tagGet"/>\n    <field name="tagCount"/>\n  </panel>\n  <panel-related field="groups"/>\n  <panel-related field="roles"/>\n</form>\n	\N	1	\N
21	\N	0	2019-07-05 13:49:38.485	\N	\N	\N	com.axelor.meta.db.MetaActionMenu	axelor-core	meta-action-menu-grid	20	Action Menus	grid	<grid name="meta-action-menu-grid" title="Action Menus" model="com.axelor.meta.db.MetaActionMenu" edit-icon="true">\n  <field name="name"/>\n  <field name="title"/>\n  <field name="parent"/>\n  <field name="category"/>\n  <field name="action"/>\n  <field name="module"/>\n  <field name="hidden"/>\n  <field name="order"/>\n  <field name="priority"/>\n</grid>\n	\N	1	\N
22	\N	0	2019-07-05 13:49:38.504	\N	\N	\N	com.axelor.meta.db.MetaActionMenu	axelor-core	meta-action-menu-form	20	Action Menu	form	<form name="meta-action-menu-form" title="Action Menu" model="com.axelor.meta.db.MetaActionMenu">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="title"/>\n    <field name="parent" domain="self.name != :name"/>\n    <field name="category"/>\n    <field name="action"/>\n    <field name="module"/>\n    <field name="hidden"/>\n    <field name="order"/>\n    <field name="priority"/>\n  </panel>\n</form>\n	\N	1	\N
23	\N	0	2019-07-05 13:49:38.524	\N	\N	\N	com.axelor.meta.db.MetaSelect	axelor-core	meta-select-grid	20	All Selects	grid	<grid name="meta-select-grid" title="All Selects" model="com.axelor.meta.db.MetaSelect" edit-icon="true">\n  <field name="name"/>\n  <field name="module"/>\n  <field name="priority"/>\n</grid>\n	\N	1	\N
24	\N	0	2019-07-05 13:49:38.544	\N	\N	\N	com.axelor.meta.db.MetaSelect	axelor-core	meta-select-form	20	form::Select	form	<form name="meta-select-form" title="form::Select" model="com.axelor.meta.db.MetaSelect">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="module"/>\n    <field name="priority"/>\n  </panel>\n  <panel-related field="items" editable="true" orderBy="order">\n    <field name="title"/>\n    <field name="value"/>\n    <field name="icon"/>\n    <field name="data"/>\n    <field name="hidden"/>\n    <field name="order" width="100"/>\n  </panel-related>\n</form>\n	\N	1	\N
25	\N	0	2019-07-05 13:49:38.562	\N	\N	\N	com.axelor.meta.db.MetaSelectItem	axelor-core	meta-select-item-form	20	Select Item	form	<form name="meta-select-item-form" title="Select Item" model="com.axelor.meta.db.MetaSelectItem">\n  <panel title="Overview">\n    <field name="title"/>\n    <field name="value"/>\n    <field name="icon"/>\n    <field name="data"/>\n    <field name="hidden"/>\n    <field name="order" help="Sequence order" width="100"/>\n  </panel>\n</form>\n	\N	1	\N
26	\N	0	2019-07-05 13:49:38.58	\N	\N	\N	com.axelor.meta.db.MetaModel	axelor-core	meta-model-grid	20	Models	grid	<grid name="meta-model-grid" title="Models" model="com.axelor.meta.db.MetaModel" canNew="false" canEdit="false" canDelete="false" edit-icon="false">\n  <field name="packageName"/>\n  <field name="name"/>\n  <field name="tableName"/>\n</grid>\n	\N	1	\N
27	\N	0	2019-07-05 13:49:38.597	\N	\N	\N	com.axelor.meta.db.MetaModel	axelor-core	meta-model-form	20	Model	form	<form name="meta-model-form" title="Model" model="com.axelor.meta.db.MetaModel" canNew="false" canEdit="false" canDelete="false" canCopy="false" canAttach="false">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="tableName"/>\n    <field name="packageName"/>\n  </panel>\n  <panel-related field="metaFields" orderBy="id"/>\n</form>\n	\N	1	\N
28	\N	0	2019-07-05 13:49:38.611	\N	\N	\N	com.axelor.meta.db.MetaField	axelor-core	meta-field-grid	20	Fields	grid	<grid name="meta-field-grid" title="Fields" model="com.axelor.meta.db.MetaField" edit-icon="true">\n  <field name="name"/>\n  <field name="typeName"/>\n  <field name="label"/>\n  <field name="relationship"/>\n  <field name="mappedBy"/>\n</grid>\n	\N	1	\N
54	\N	0	2019-07-05 13:49:40.809	\N	\N	\N	com.axelor.dms.db.DMSFile	axelor-core	dms-folder-grid	20	Directories	grid	<grid name="dms-folder-grid" title="Directories" model="com.axelor.dms.db.DMSFile" edit-icon="false">\n  <field name="fileName"/>\n</grid>\n	\N	1	\N
29	\N	0	2019-07-05 13:49:38.628	\N	\N	\N	com.axelor.meta.db.MetaField	axelor-core	meta-field-form	20	Field	form	<form name="meta-field-form" title="Field" model="com.axelor.meta.db.MetaField">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="packageName"/>\n    <field name="typeName"/>\n    <field name="label"/>\n    <field name="relationship"/>\n    <field name="mappedBy" showIf="relationship == 'OneToMany' || relationship == 'OneToOne' || relationship == 'ManyToMany'"/>\n    <button name="openModel" title="Show Model" hideIf="!relationship" onClick="meta-field-method-open-model"/>\n  </panel>\n  <panel title="Description">\n    <field name="description" showTitle="false" colSpan="12"/>\n  </panel>\n</form>\n	\N	1	\N
30	\N	0	2019-07-05 13:49:38.643	\N	\N	\N	com.axelor.meta.db.MetaTranslation	axelor-core	meta-translations-grid	20	All Translations	grid	<grid name="meta-translations-grid" title="All Translations" model="com.axelor.meta.db.MetaTranslation" editable="true" edit-icon="true">\n  <toolbar>\n    <button name="btnExport" help="Export" icon="fa-rocket" onClick="com.axelor.meta.web.MetaController:exportI18n"/>\n  </toolbar>\n  <field name="key"/>\n  <field name="message"/>\n  <field name="language"/>\n</grid>\n	\N	1	\N
31	\N	0	2019-07-05 13:49:38.658	\N	\N	\N	com.axelor.meta.db.MetaTranslation	axelor-core	meta-translations-form	20	Translation	form	<form name="meta-translations-form" title="Translation" model="com.axelor.meta.db.MetaTranslation">\n  <panel title="Translation" itemSpan="12">\n    <field name="key"/>\n    <field name="message"/>\n    <field name="language"/>\n  </panel>\n</form>\n	\N	1	\N
32	\N	0	2019-07-05 13:49:38.674	\N	\N	\N	com.axelor.meta.db.MetaHelp	axelor-core	meta-help-view-grid	20	All View Help	grid	<grid name="meta-help-view-grid" title="All View Help" model="com.axelor.meta.db.MetaHelp" edit-icon="true">\n  <field name="model"/>\n  <field name="field"/>\n  <field name="type" selection="help.type.selection"/>\n  <field name="view"/>\n  <field name="language"/>\n</grid>\n	\N	1	\N
33	\N	0	2019-07-05 13:49:38.69	\N	\N	\N	com.axelor.meta.db.MetaHelp	axelor-core	meta-help-view-form	20	View Help	form	<form name="meta-help-view-form" title="View Help" model="com.axelor.meta.db.MetaHelp">\n  <panel title="Overview">\n    <field name="model" widget="ref-text" required="true" x-target-name="fullName" x-target="com.axelor.meta.db.MetaModel"/>\n    <field name="field" widget="ref-text" required="true" x-create="name" x-domain="self.metaModel.fullName = :model AND self.name NOT IN ('id', 'version', 'archived', 'createdBy', 'updatedBy', 'createdOn', 'updatedOn')" x-target-name="name" x-target="com.axelor.meta.db.MetaField"/>\n    <field name="type" selection="help.type.selection"/>\n    <field name="style"/>\n    <field name="view" widget="ref-text" x-domain="self.model = :model AND self.type IN ('form', 'grid')" x-target-name="name" x-target="com.axelor.meta.db.MetaView"/>\n    <field name="language"/>\n  </panel>\n  <panel title="Help">\n    <field name="help" showTitle="false" colSpan="12"/>\n  </panel>\n</form>\n	\N	1	\N
34	\N	0	2019-07-05 13:49:38.705	\N	\N	\N	com.axelor.meta.db.MetaHelp	axelor-core	meta-help-menu-grid	20	All Menu Help	grid	<grid name="meta-help-menu-grid" title="All Menu Help" model="com.axelor.meta.db.MetaHelp" edit-icon="true">\n  <field name="menu"/>\n  <field name="language"/>\n</grid>\n	\N	1	\N
35	\N	0	2019-07-05 13:49:38.719	\N	\N	\N	com.axelor.meta.db.MetaHelp	axelor-core	meta-help-menu-form	20	Menu Help	form	<form name="meta-help-menu-form" title="Menu Help" model="com.axelor.meta.db.MetaHelp">\n  <panel title="Overview">\n    <field name="menu" widget="ref-text" required="true" x-target-name="name" x-target="com.axelor.meta.db.MetaMenu"/>\n    <field name="language"/>\n  </panel>\n  <panel title="Help">\n    <field name="help" showTitle="false" colSpan="12"/>\n  </panel>\n</form>\n	\N	1	\N
36	\N	0	2019-07-05 13:49:38.734	\N	\N	\N	com.axelor.meta.db.MetaFile	axelor-core	meta-files-grid	20	Files	grid	<grid name="meta-files-grid" title="Files" model="com.axelor.meta.db.MetaFile" edit-icon="true">\n  <field name="fileName"/>\n  <field name="sizeText" width="100"/>\n  <field name="fileType" width="175"/>\n  <field name="createdBy" width="175"/>\n  <field name="createdOn" width="150"/>\n</grid>\n	\N	1	\N
37	\N	0	2019-07-05 13:49:38.749	\N	\N	\N	com.axelor.meta.db.MetaFile	axelor-core	meta-files-form	20	Files	form	<form name="meta-files-form" title="Files" model="com.axelor.meta.db.MetaFile">\n  <panel title="Overview">\n    <field name="content" title="File" widget="binary"/>\n    <field name="fileName"/>\n    <field name="fileSize"/>\n    <field name="fileType"/>\n    <field name="description"/>\n  </panel>\n</form>\n	\N	1	\N
38	\N	0	2019-07-05 13:49:40.11	\N	\N	\N	com.axelor.auth.db.User	axelor-core	user-grid	20	Users	grid	<grid name="user-grid" title="Users" model="com.axelor.auth.db.User" edit-icon="true">\n  <field name="name"/>\n  <field name="code"/>\n  <field name="email"/>\n  <field name="language"/>\n  <field name="group"/>\n</grid>\n	\N	1	\N
39	\N	0	2019-07-05 13:49:40.13	\N	\N	\N	com.axelor.auth.db.User	axelor-core	user-form	20	User	form	<form name="user-form" title="User" model="com.axelor.auth.db.User">\n  <panel title="Overview">\n    <field name="name" placeholder="user name" onChange="action-condition-user-validName" validIf="name.length >= 2"/>\n    <field name="code" readonlyIf="id &amp;&amp; code == 'admin'" placeholder="login name" onChange="action-condition-user-validCode" validIf="code.length >= 2"/>\n    <field name="group" placeholder="user group"/>\n    <field name="email" widget="Email"/>\n    <field name="language"/>\n    <field name="theme" widget="theme-select"/>\n    <panel stacked="true">\n      <field name="homeAction" hidden="true" x-bind="{{__actionSelect.name}}"/>\n      <field name="__actionSelect" title="Action" widget="SuggestBox" canNew="false" target="com.axelor.meta.db.MetaAction" target-name="name" domain="self.home = true"/>\n    </panel>\n    <field name="singleTab" widget="inline-checkbox"/>\n    <field name="noHelp" widget="inline-checkbox"/>\n  </panel>\n  <panel title="Authorization">\n    <field name="activateOn" validIf="!activateOn || (activateOn &amp;&amp; !expiresOn) || (activateOn &amp;&amp; expiresOn &amp;&amp; $moment(expiresOn) >= $moment(activateOn))"/>\n    <field name="expiresOn" validIf="!expiresOn || (!activateOn &amp;&amp; expiresOn) || (activateOn &amp;&amp; expiresOn &amp;&amp; $moment(expiresOn) >= $moment(activateOn))"/>\n    <field name="blocked"/>\n    <field name="change" title="Change password?" showIf="id &amp;&amp; !$readonly()" widget="boolean"/>\n    <panel showIf="change || !id" colSpan="12" itemSpan="12">\n      <field name="oldPassword" title="Your password" placeholder="your password" widget="password" requiredIf="change || !id"/>\n      <field name="newPassword" title="New password" placeholder="new password" widget="password" requiredIf="!id" validIf="(!change &amp;&amp; id) || (newPassword.length >= 4 &amp;&amp; chkPassword === newPassword)"/>\n      <field name="chkPassword" title="Confirm password" placeholder="confirm password" widget="password"/>\n    </panel>\n  </panel>\n  <panel-tabs>\n    <panel-related field="roles" form-view="role-form" grid-view="role-grid"/>\n    <panel-related field="permissions" form-view="permission-form" grid-view="simple-permission-grid"/>\n    <panel-related field="metaPermissions"/>\n  </panel-tabs>\n</form>\n	\N	1	\N
40	\N	0	2019-07-05 13:49:40.151	\N	\N	\N	com.axelor.auth.db.User	axelor-core	user-preferences-form	20	Preferences	form	<form name="user-preferences-form" title="Preferences" model="com.axelor.auth.db.User">\n  <panel title="User preferences" itemSpan="12">\n    <field name="image" showTitle="false"/>\n    <field name="email" widget="Email"/>\n    <field name="language"/>\n    <field name="theme" widget="theme-select"/>\n    <field name="singleTab" widget="inline-checkbox"/>\n    <field name="noHelp" widget="inline-checkbox"/>\n    <field name="change" title="Change password?" widget="inline-checkbox"/>\n    <panel showIf="change" itemSpan="12">\n      <field name="oldPassword" title="Current password" placeholder="current password" widget="password" requiredIf="change"/>\n      <field name="newPassword" title="New password" placeholder="new password" widget="password" requiredIf="change" validIf="(!change) || (newPassword.length >= 4 &amp;&amp; chkPassword === newPassword)"/>\n      <field name="chkPassword" title="Confirm password" placeholder="confirm password" widget="password"/>\n    </panel>\n  </panel>\n</form>\n	\N	1	\N
41	\N	0	2019-07-05 13:49:40.245	\N	\N	\N	com.axelor.meta.db.MetaPermission	axelor-core	meta-permission-grid	20	Permissions	grid	<grid name="meta-permission-grid" title="Permissions" model="com.axelor.meta.db.MetaPermission" edit-icon="true">\n  <field name="name"/>\n  <field name="object"/>\n</grid>\n	\N	1	\N
42	\N	0	2019-07-05 13:49:40.264	\N	\N	\N	com.axelor.meta.db.MetaPermission	axelor-core	meta-permission-form	20	Permissions	form	<form name="meta-permission-form" title="Permissions" model="com.axelor.meta.db.MetaPermission">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="active" widget="inline-checkbox"/>\n    <field name="object" colSpan="12"/>\n  </panel>\n  <panel-related field="rules" editable="true">\n    <field name="field"/>\n    <field name="canRead"/>\n    <field name="canWrite"/>\n    <field name="canExport"/>\n  </panel-related>\n</form>\n	\N	1	\N
43	\N	0	2019-07-05 13:49:40.282	\N	\N	\N	com.axelor.meta.db.MetaPermissionRule	axelor-core	meta-permission-rule-form	20	Rule	form	<form name="meta-permission-rule-form" title="Rule" model="com.axelor.meta.db.MetaPermissionRule">\n  <panel title="Overview">\n    <field name="field" colSpan="12"/>\n    <field name="canRead" colSpan="4" widget="inline-checkbox"/>\n    <field name="canWrite" colSpan="4" widget="inline-checkbox"/>\n    <field name="canExport" colSpan="4" widget="inline-checkbox"/>\n  </panel>\n  <panel title="Conditions" itemSpan="12">\n    <field name="readonlyIf" help="Client side js expression"/>\n    <field name="hideIf" help="Client side js expression"/>\n  </panel>\n</form>\n	\N	1	\N
44	\N	0	2019-07-05 13:49:40.309	\N	\N	\N	com.axelor.mail.db.MailMessage	axelor-core	mail-thread-inbox	20	Inbox	form	<form name="mail-thread-inbox" title="Inbox" css="mail-thread-view" model="com.axelor.mail.db.MailMessage" width="100%">\n  <panel hidden="true" showIf="__empty" x-item-span="12">\n    <label name="__empty" title="Inbox is empty!" css="label-bold label-large"/>\n    <label title="Come back later. There are no messages in this folder..." css="label-italic label-big"/>\n  </panel>\n  <panel-mail>\n    <mail-messages limit="10"/>\n  </panel-mail>\n</form>\n	\N	1	\N
45	\N	0	2019-07-05 13:49:40.331	\N	\N	\N	com.axelor.mail.db.MailMessage	axelor-core	mail-thread-important	20	Important	form	<form name="mail-thread-important" title="Important" css="mail-thread-view" model="com.axelor.mail.db.MailMessage" width="100%">\n  <panel hidden="true" showIf="__empty" x-item-span="12">\n    <label name="__empty" title="No important messages!" css="label-bold label-large"/>\n    <label title="Come back later. There are no messages in this folder..." css="label-italic label-big"/>\n  </panel>\n  <panel-mail>\n    <mail-messages limit="10"/>\n  </panel-mail>\n</form>\n	\N	1	\N
46	\N	0	2019-07-05 13:49:40.35	\N	\N	\N	com.axelor.mail.db.MailMessage	axelor-core	mail-thread-archive	20	Archived	form	<form name="mail-thread-archive" title="Archived" css="mail-thread-view" model="com.axelor.mail.db.MailMessage" width="100%">\n  <panel hidden="true" showIf="__empty" x-item-span="12">\n    <label name="__empty" title="No archived messages!" css="label-bold label-large"/>\n    <label title="Come back later. There are no messages in this folder..." css="label-italic label-big"/>\n  </panel>\n  <panel-mail>\n    <mail-messages limit="10"/>\n  </panel-mail>\n</form>\n	\N	1	\N
47	\N	0	2019-07-05 13:49:40.587	\N	\N	\N	com.axelor.auth.db.Group	axelor-core	group-grid	20	Groups	grid	<grid name="group-grid" title="Groups" model="com.axelor.auth.db.Group" edit-icon="true">\n  <field name="name"/>\n  <field name="code"/>\n  <field name="navigation"/>\n</grid>\n	\N	1	\N
48	\N	0	2019-07-05 13:49:40.606	\N	\N	\N	com.axelor.auth.db.Group	axelor-core	group-form	20	Group	form	<form name="group-form" title="Group" model="com.axelor.auth.db.Group">\n  <toolbar>\n    <button name="showPermissions" title="Show permissions" hideIf="permissions == null || permissions.length == 0" onClick="action-group-view-permissions"/>\n  </toolbar>\n  <panel title="Overview">\n    <field name="name" onChange="action-condition-group-validName" validIf="name.length >= 2"/>\n    <field name="code" readonlyIf="id &amp;&amp; code == 'admins'" onChange="action-condition-group-validCode" validIf="code.length >= 2"/>\n    <field name="navigation"/>\n    <panel stacked="true">\n      <field name="homeAction" hidden="true" x-bind="{{__actionSelect.name}}"/>\n      <field name="__actionSelect" title="Action" widget="SuggestBox" canNew="false" target="com.axelor.meta.db.MetaAction" target-name="name" domain="self.type = 'action-view' and self.home = true"/>\n    </panel>\n    <field name="technicalStaff"/>\n  </panel>\n  <panel-tabs>\n    <panel-related field="roles" form-view="role-form" grid-view="role-grid"/>\n    <panel-related field="permissions" form-view="permission-form" grid-view="simple-permission-grid"/>\n    <panel-related field="metaPermissions"/>\n    <panel-related field="menus" form-view="meta-menu-form" grid-view="simple-meta-menu-grid"/>\n    <panel-related field="views" form-view="meta-view-form" grid-view="simple-meta-view-grid"/>\n  </panel-tabs>\n</form>\n	\N	1	\N
49	\N	0	2019-07-05 13:49:40.704	\N	\N	\N	com.axelor.meta.db.MetaSchedule	axelor-core	meta-schedule-grid	20	Schedules	grid	<grid name="meta-schedule-grid" title="Schedules" model="com.axelor.meta.db.MetaSchedule" editable="true" edit-icon="true">\n  <field name="name"/>\n  <field name="job"/>\n  <field name="cron"/>\n  <field name="active"/>\n</grid>\n	\N	1	\N
50	\N	0	2019-07-05 13:49:40.727	\N	\N	\N	com.axelor.meta.db.MetaSchedule	axelor-core	meta-schedule-form	20	Schedule	form	<form name="meta-schedule-form" title="Schedule" model="com.axelor.meta.db.MetaSchedule">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="active"/>\n    <field name="description" colSpan="12"/>\n    <field name="job" colSpan="12"/>\n    <field name="cron" colSpan="12"/>\n    <button-group colSpan="4">\n      <button name="btnValidate" title="Validate" onClick="com.axelor.quartz.JobRunner:validate(cron)"/>\n      <button name="btnRestart" title="Restart jobs..." prompt="This may terminate any running jobs. Are sure to continue?" onClick="com.axelor.quartz.JobRunner:restart()"/>\n    </button-group>\n  </panel>\n  <panel-related field="params" editable="true">\n    <field name="name"/>\n    <field name="value"/>\n  </panel-related>\n</form>\n	\N	1	\N
51	\N	0	2019-07-05 13:49:40.747	\N	\N	\N	com.axelor.meta.db.MetaScheduleParam	axelor-core	meta-schedule-param-form	20	MetaScheduleParam	form	<form name="meta-schedule-param-form" title="MetaScheduleParam" css="mini-form" model="com.axelor.meta.db.MetaScheduleParam">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="value"/>\n  </panel>\n</form>\n	\N	1	\N
52	\N	0	2019-07-05 13:49:40.772	\N	\N	\N	com.axelor.dms.db.DMSFile	axelor-core	dms-file-grid	20	Documents	grid	<grid name="dms-file-grid" title="Documents" model="com.axelor.dms.db.DMSFile" edit-icon="false">\n  <field name="typeIcon" x-type="icon"/>\n  <field name="fileName"/>\n  <field name="downloadIcon" x-type="icon"/>\n  <field name="detailsIcon" x-type="icon"/>\n  <field name="updatedOn" title="Last modified" width="130"/>\n  <field name="metaFile.sizeText" title="Size" width="80"/>\n</grid>\n	\N	1	\N
53	\N	0	2019-07-05 13:49:40.79	\N	\N	\N	com.axelor.dms.db.DMSFile	axelor-core	dms-file-form	20	Document	form	<form name="dms-file-form" title="Document" model="com.axelor.dms.db.DMSFile">\n  <panel title="Overview">\n    <field name="fileName" title="Name"/>\n    <field name="parent" domain="self.isDirectory = true" form-view="dms-folder-form" grid-view="dms-folder-grid"/>\n    <field name="metaFile"/>\n  </panel>\n  <panel-tabs>\n    <panel-related field="groups" target="com.axelor.auth.db.Group">\n      <field name="name"/>\n    </panel-related>\n    <panel-related field="users" target="com.axelor.auth.db.User">\n      <field name="name"/>\n    </panel-related>\n  </panel-tabs>\n</form>\n	\N	1	\N
55	\N	0	2019-07-05 13:49:40.828	\N	\N	\N	com.axelor.dms.db.DMSFile	axelor-core	dms-folder-form	20	Directory	form	<form name="dms-folder-form" title="Directory" model="com.axelor.dms.db.DMSFile">\n  <panel title="Overview">\n    <field name="fileName" title="Name"/>\n    <field name="parent" domain="self.isDirectory = true" form-view="dms-folder-form" grid-view="dms-folder-grid"/>\n  </panel>\n  <panel-tabs>\n    <panel-related field="groups" target="com.axelor.auth.db.Group">\n      <field name="name"/>\n    </panel-related>\n    <panel-related field="users" target="com.axelor.auth.db.User">\n      <field name="name"/>\n    </panel-related>\n  </panel-tabs>\n</form>\n	\N	1	\N
56	\N	0	2019-07-05 13:49:40.847	\N	\N	\N	com.axelor.dms.db.DMSPermission	axelor-core	dms-permission-grid	20	Permissions	grid	<grid name="dms-permission-grid" title="Permissions" model="com.axelor.dms.db.DMSPermission" edit-icon="true">\n  <field name="file.fileName"/>\n  <field name="user.name"/>\n  <field name="group.name"/>\n  <field name="value"/>\n</grid>\n	\N	1	\N
57	\N	0	2019-07-05 13:49:40.867	\N	\N	\N	com.axelor.dms.db.DMSPermission	axelor-core	dms-permission-form	20	Permission	form	<form name="dms-permission-form" title="Permission" model="com.axelor.dms.db.DMSPermission">\n  <panel title="General">\n    <field name="file"/>\n    <field name="value"/>\n    <field name="user"/>\n    <field name="group"/>\n  </panel>\n</form>\n	\N	1	\N
58	\N	0	2019-07-05 13:49:40.886	\N	\N	\N	com.axelor.dms.db.DMSFile	axelor-core	dms-file-permission-form	20	Permission	form	<form name="dms-file-permission-form" title="Permission" model="com.axelor.dms.db.DMSFile">\n  <panel itemSpan="12" showFrame="false">\n    <field name="permissions" showTitle="false">\n      <editor layout="table" x-viewer="true" x-show-titles="false">\n        <field name="user" widget="SuggestBox" canEdit="false"/>\n        <field name="group" widget="SuggestBox" canEdit="false"/>\n        <field name="value" width="120px" placeholder="Permission"/>\n      </editor>\n    </field>\n  </panel>\n</form>\n	\N	1	\N
59	\N	0	2019-07-05 13:49:40.905	\N	\N	\N	com.axelor.dms.db.DMSFile	axelor-core	dms-file-tags-form	20	Tags	form	<form name="dms-file-tags-form" title="Tags" model="com.axelor.dms.db.DMSFile">\n  <panel itemSpan="12" showFrame="false">\n    <field name="tags" showTitle="false" widget="TagSelect" x-create="code,name"/>\n  </panel>\n</form>\n	\N	1	\N
60	\N	0	2019-07-05 13:49:40.925	\N	\N	\N	com.axelor.dms.db.DMSFileTag	axelor-core	dms-tag-grid	20	Tags	grid	<grid name="dms-tag-grid" title="Tags" model="com.axelor.dms.db.DMSFileTag" editable="true" edit-icon="true">\n  <field name="code"/>\n  <field name="name"/>\n  <field name="style"/>\n</grid>\n	\N	1	\N
61	\N	0	2019-07-05 13:49:40.945	\N	\N	\N	com.axelor.dms.db.DMSFileTag	axelor-core	dms-tag-form	20	Tag	form	<form name="dms-tag-form" title="Tag" css="mini-form" model="com.axelor.dms.db.DMSFileTag">\n  <panel itemSpan="4" showFrame="false">\n    <field name="code"/>\n    <field name="name"/>\n    <field name="style"/>\n  </panel>\n</form>\n	\N	1	\N
62	\N	0	2019-07-05 13:49:40.964	\N	\N	\N	com.axelor.dms.db.DMSFile	axelor-core	dms-file-filters	20	Filter files	search-filters	<search-filters name="dms-file-filters" title="Filter files" model="com.axelor.dms.db.DMSFile">\n  <field name="relatedModel" title="Attached to"/>\n  <field name="relatedId" hidden="true"/>\n  <field name="metaFile" hidden="true"/>\n  <field name="parent" hidden="true"/>\n  <field name="tags" hidden="true"/>\n  <field name="permissions" hidden="true"/>\n  <field name="tags.name" title="Tag"/>\n  <filter title="Shared with me">\n    <domain>self.isDirectory = false AND self.createdBy != :__user__</domain>\n  </filter>\n</search-filters>\n	\N	1	\N
63	\N	0	2019-07-05 13:49:41.199	\N	\N	\N	com.axelor.team.db.Team	axelor-core	team-grid	20	Teams	grid	<grid name="team-grid" title="Teams" model="com.axelor.team.db.Team" edit-icon="true">\n  <field name="name"/>\n</grid>\n	\N	1	\N
64	\N	0	2019-07-05 13:49:41.215	\N	\N	\N	com.axelor.team.db.Team	axelor-core	team-cards	20	Teams	cards	<cards name="team-cards" title="Teams" model="com.axelor.team.db.Team">\n  <field name="name"/>\n  <field name="description"/>\n  <template><![CDATA[\n  <div>\n    <div class="span4 card-image">\n      <img ng-src="{{$image(null, 'image')}}">\n      <strong>{{name}}</strong>\n    </div>\n    <div class="span8">\n      <strong>{{name}}</strong>\n      <p class="muted">{{description}}</p>\n      <div class="buttons">\n        <a class="btn btn-small btn-success" href="" ng-show="!_following" ui-action-click="com.axelor.mail.web.MailController:follow" x-translate>Subscribe</a>\n        <a class="btn btn-small btn-danger" href="" ng-show="_following" ui-action-click="com.axelor.mail.web.MailController:unfollow" x-translate>Unsubscribe</a>\n      </div>\n    </div>\n  </div>\n\n  ]]></template>\n</cards>\n	\N	1	\N
65	\N	0	2019-07-05 13:49:41.232	\N	\N	\N	com.axelor.team.db.Team	axelor-core	team-form	20	Team	form	<form name="team-form" title="Team" model="com.axelor.team.db.Team" onSave="com.axelor.mail.web.MailController:autoSubscribe">\n  <panel title="Overview" css="fix-child-3">\n    <panel colSpan="3">\n      <field name="image" showTitle="false" colSpan="12" widget="Image"/>\n    </panel>\n    <panel colSpan="9" itemSpan="12">\n      <field name="name"/>\n      <field name="description" showTitle="false" height="4"/>\n      <field name="roles" colSpan="12" widget="TagSelect"/>\n      <field name="members" colSpan="12" widget="TagSelect"/>\n    </panel>\n  </panel>\n  <panel-mail>\n    <mail-messages limit="4"/>\n    <mail-followers/>\n  </panel-mail>\n</form>\n	\N	1	\N
66	\N	0	2019-07-05 13:49:41.248	\N	\N	\N	com.axelor.team.db.TeamTask	axelor-core	team-task-grid	20	Tasks	grid	<grid name="team-task-grid" title="Tasks" model="com.axelor.team.db.TeamTask" edit-icon="true">\n  <field name="name"/>\n  <field name="team"/>\n  <field name="taskDate"/>\n  <field name="status"/>\n  <field name="priority"/>\n</grid>\n	\N	1	\N
67	\N	0	2019-07-05 13:49:41.265	\N	\N	\N	com.axelor.team.db.TeamTask	axelor-core	team-task-calendar	20	Tasks	calendar	<calendar name="team-task-calendar" title="Tasks" model="com.axelor.team.db.TeamTask" colorBy="assignedTo" eventStart="taskDate" eventStop="taskDeadline">\n  <field name="name"/>\n</calendar>\n	\N	1	\N
68	\N	0	2019-07-05 13:49:41.281	\N	\N	\N	com.axelor.team.db.TeamTask	axelor-core	team-task-form	20	Task	form	<form name="team-task-form" title="Task" model="com.axelor.team.db.TeamTask" onNew="team.task.on-new">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="team"/>\n    <field name="description" colSpan="12"/>\n    <field name="priority"/>\n    <field name="status"/>\n    <field name="taskDate"/>\n    <field name="taskDeadline"/>\n    <field name="taskDuration"/>\n    <field name="assignedTo"/>\n    <field name="relatedModel" title="Link" colSpan="12" widget="RefLink" selection="team.task.links" x-related="relatedId"/>\n  </panel>\n  <panel title="Attributes">\n    <field name="attrs" showTitle="false" colSpan="12"/>\n  </panel>\n  <panel-mail>\n    <mail-messages limit="4"/>\n    <mail-followers/>\n  </panel-mail>\n</form>\n	\N	1	\N
69	\N	0	2019-07-05 13:49:41.296	\N	\N	\N	com.axelor.team.db.TeamTopic	axelor-core	team-topic-grid	20	Topics	grid	<grid name="team-topic-grid" title="Topics" model="com.axelor.team.db.TeamTopic" edit-icon="true">\n  <field name="name"/>\n</grid>\n	\N	1	\N
70	\N	0	2019-07-05 13:49:41.312	\N	\N	\N	com.axelor.team.db.TeamTopic	axelor-core	team-topic-form	20	Topic	form	<form name="team-topic-form" title="Topic" model="com.axelor.team.db.TeamTopic" onNew="team.topic.on-new">\n  <panel title="Overview">\n    <field name="name" colSpan="12"/>\n    <field name="description" colSpan="12"/>\n    <field name="team"/>\n    <field name="active"/>\n  </panel>\n  <panel-mail>\n    <mail-messages limit="4"/>\n    <mail-followers/>\n  </panel-mail>\n</form>\n	\N	1	\N
71	\N	0	2019-07-05 13:49:41.824	\N	\N	\N	com.axelor.meta.db.MetaJsonField	axelor-core	json-field-grid	20	Custom fields	grid	<grid name="json-field-grid" title="Custom fields" model="com.axelor.meta.db.MetaJsonField" edit-icon="true">\n  <field name="name"/>\n  <field name="type"/>\n  <field name="model"/>\n  <field name="modelField"/>\n</grid>\n	\N	1	\N
72	\N	0	2019-07-05 13:49:41.842	\N	\N	\N	com.axelor.meta.db.MetaJsonField	axelor-core	json-field-form-base	20	Custom field	form	<form name="json-field-form-base" title="Custom field" model="com.axelor.meta.db.MetaJsonField">\n  <panel-tabs>\n    <panel title="Options">\n      <panel itemSpan="12">\n        <field name="enumType" showIf="type === 'enum'" widget="ref-text" x-target-name="name" x-target="com.axelor.meta.db.MetaEnum"/>\n        <field name="selection" showIf="type !== 'enum'" widget="ref-text" x-target-name="name" x-target="com.axelor.meta.db.MetaSelect"/>\n      </panel>\n      <field name="widget" widget="widget-select"/>\n      <field name="onChange" hideIf="type === 'button'" colSpan="12"/>\n      <field name="onClick" showIf="type === 'button'" colSpan="12" requiredIf="type === 'button'"/>\n      <field name="minSize" title="Min" showIf="type.match('string|integer|decimal')"/>\n      <field name="maxSize" title="Max" showIf="type.match('string|integer|decimal')"/>\n      <field name="precision" showIf="type === 'decimal'"/>\n      <field name="scale" showIf="type === 'decimal'"/>\n      <field name="regex" showIf="type === 'string'" colSpan="12"/>\n      <panel itemSpan="12">\n        <field name="targetModel" showIf="type.match('^(one|many)-to-')" widget="ref-text" x-target-name="fullName" x-target="com.axelor.meta.db.MetaModel"/>\n        <field name="targetJsonModel" title="Target custom model" showIf="type.match('^json-')" canView="false" canEdit="false"/>\n      </panel>\n      <field name="domain" showIf="type.match('-to-')"/>\n      <field name="gridView" showIf="type.match('^(one|many)-to-')" widget="ref-text" x-domain="self.model = :targetModel AND self.type = 'grid'" x-target-name="name" x-target="com.axelor.meta.db.MetaView"/>\n      <field name="formView" showIf="type.match('^(one|many)-to-')" widget="ref-text" x-domain="self.model = :targetModel AND self.type = 'form'" x-target-name="name" x-target="com.axelor.meta.db.MetaView"/>\n    </panel>\n    <panel title="Conditions" itemSpan="12">\n      <field name="contextField" title="Only if" showIf="model" colSpan="6" widget="ref-text" onChange="com.axelor.meta.web.MetaController:contextFieldChange" x-domain="self.name not in ('createdBy', 'updatedBy') and self.relationship = 'ManyToOne' and self.metaModel.fullName = :model" x-target-name="name" x-target="com.axelor.meta.db.MetaField"/>\n      <field name="contextFieldValue" title="Value" showIf="model" colSpan="6" widget="EvalRefSelect" x-eval-target="record.contextFieldTarget" x-eval-value="record.contextFieldValue" x-eval-title="record.contextFieldTitle" x-eval-target-name="record.contextFieldTargetName"/>\n      <field name="contextFieldTitle" hidden="true"/>\n      <field name="contextFieldTarget" hidden="true"/>\n      <field name="contextFieldTargetName" hidden="true"/>\n      <field name="showIf"/>\n      <field name="hideIf"/>\n      <field name="requiredIf"/>\n      <field name="readonlyIf"/>\n      <field name="includeIf" help="Server expression to check whether to use this field."/>\n    </panel>\n    <panel title="Value Expression">\n      <field name="valueExpr" showTitle="false" colSpan="12" widget="code-editor" x-height="100" x-mode="javascript"/>\n    </panel>\n    <panel-related field="roles">\n      <field name="name"/>\n    </panel-related>\n  </panel-tabs>\n  <panel title="Options" itemSpan="6" sidebar="true">\n    <field name="required" widget="inline-checkbox"/>\n    <field name="readonly" widget="inline-checkbox"/>\n    <field name="nameField" showIf="type === 'string'" widget="inline-checkbox"/>\n    <field name="hidden" widget="inline-checkbox"/>\n    <field name="visibleInGrid" widget="inline-checkbox"/>\n  </panel>\n  <panel title="Widget Attributes" sidebar="true">\n    <field name="widgetAttrs" widget="json-raw"/>\n  </panel>\n</form>\n	\N	1	\N
73	\N	0	2019-07-05 13:49:41.859	\N	\N	\N	com.axelor.meta.db.MetaJsonField	axelor-core	json-field-form	20	Custom field	form	<form name="json-field-form" title="Custom field" model="com.axelor.meta.db.MetaJsonField">\n  <panel title="Overview">\n    <field name="name" x-pattern="[a-zA-Z][a-zA-Z0-9_\\\\$]+"/>\n    <field name="type"/>\n    <field name="title"/>\n    <field name="defaultValue"/>\n    <field name="help"/>\n    <field name="sequence"/>\n    <field name="model" widget="ref-text" x-domain="self.metaFields.json = true AND self.fullName NOT LIKE 'com.axelor.meta.db%'" x-target-name="fullName" x-target="com.axelor.meta.db.MetaModel"/>\n    <field name="modelField" widget="ref-text" x-domain="self.json = true AND self.metaModel.fullName = :model" x-target-name="name" x-target="com.axelor.meta.db.MetaField"/>\n  </panel>\n  <panel-include view="json-field-form-base"/>\n</form>\n	\N	1	\N
74	\N	0	2019-07-05 13:49:41.876	\N	\N	\N	com.axelor.meta.db.MetaJsonField	axelor-core	json-field-form-2	20	Custom field	form	<form name="json-field-form-2" title="Custom field" model="com.axelor.meta.db.MetaJsonField" onNew="action-json-field-defaults">\n  <panel title="Overview">\n    <field name="name" x-pattern="[a-zA-Z][a-zA-Z0-9_\\\\$]+"/>\n    <field name="type"/>\n    <field name="title"/>\n    <field name="defaultValue"/>\n    <field name="help"/>\n    <field name="sequence"/>\n  </panel>\n  <panel-include view="json-field-form-base"/>\n</form>\n	\N	1	\N
75	\N	0	2019-07-05 13:49:41.892	\N	\N	\N	com.axelor.meta.db.MetaJsonModel	axelor-core	json-model-grid	20	Custom models	grid	<grid name="json-model-grid" title="Custom models" model="com.axelor.meta.db.MetaJsonModel" edit-icon="true">\n  <field name="title"/>\n  <field name="name"/>\n</grid>\n	\N	1	\N
76	\N	0	2019-07-05 13:49:41.909	\N	\N	\N	com.axelor.meta.db.MetaJsonModel	axelor-core	json-model-form	20	Custom model	form	<form name="json-model-form" title="Custom model" model="com.axelor.meta.db.MetaJsonModel">\n  <panel title="Overview">\n    <field name="name" readonlyIf="id" x-pattern="[a-zA-Z][a-zA-Z0-9_\\\\$]+"/>\n    <field name="title"/>\n    <field name="onNew"/>\n    <field name="onSave"/>\n  </panel>\n  <panel title="Menu">\n    <field name="menuTitle" title="Title"/>\n    <field name="menuParent" title="Parent menu" canNew="true" domain="self.action is null" form-view="meta-menu-form"/>\n    <field name="menuIcon" title="Icon"/>\n    <field name="menuBackground" title="Icon background"/>\n    <field name="menuOrder" title="Order"/>\n    <field name="menuTop" title="Show in top menu"/>\n  </panel>\n  <panel-tabs>\n    <panel-related field="fields" form-view="json-field-form-2" orderBy="sequence" canMove="true">\n      <field name="name"/>\n      <field name="type"/>\n    </panel-related>\n    <panel-related field="roles">\n      <field name="name"/>\n    </panel-related>\n  </panel-tabs>\n</form>\n	\N	1	\N
77	\N	0	2019-07-05 13:49:41.926	\N	\N	\N	com.axelor.meta.db.MetaJsonRecord	axelor-core	json-record-grid	20	Form records	grid	<grid name="json-record-grid" title="Form records" model="com.axelor.meta.db.MetaJsonRecord" edit-icon="true">\n  <field name="attrs"/>\n</grid>\n	\N	1	\N
78	\N	0	2019-07-05 13:49:41.944	\N	\N	\N	com.axelor.meta.db.MetaJsonRecord	axelor-core	json-record-form	20	Form record	form	<form name="json-record-form" title="Form record" model="com.axelor.meta.db.MetaJsonRecord" onNew="action-json-record-defaults">\n  <panel title="Overview">\n    <field name="attrs" colSpan="12"/>\n  </panel>\n</form>\n	\N	1	\N
79	\N	0	2019-07-05 13:49:45.326	\N	\N	\N	com.axelor.partner.db.Country	axelor-partner	country-grid	20	Countries	grid	<grid name="country-grid" title="Countries" model="com.axelor.partner.db.Country" edit-icon="true">\n  <field name="name"/>\n  <field name="code"/>\n</grid>\n	\N	1	\N
80	\N	0	2019-07-05 13:49:45.335	\N	\N	\N	com.axelor.partner.db.Country	axelor-partner	country-form	20	Country	form	<form name="country-form" title="Country" model="com.axelor.partner.db.Country" width="mini">\n  <panel title="Overview" itemSpan="12">\n    <field name="name"/>\n    <field name="code"/>\n  </panel>\n</form>\n	\N	1	\N
81	\N	0	2019-07-05 13:49:45.347	\N	\N	\N	com.axelor.partner.db.ProjectWork	axelor-partner	project-work-grid	20	Project Work	grid	<grid name="project-work-grid" title="Project Work" model="com.axelor.partner.db.ProjectWork" editable="true" edit-icon="true">\n  <field name="name"/>\n  <field name="date"/>\n  <field name="hours"/>\n</grid>\n	\N	1	\N
82	\N	0	2019-07-05 13:49:45.356	\N	\N	\N	com.axelor.partner.db.ProjectWork	axelor-partner	project-work-form	20	Project Work	form	<form name="project-work-form" title="Project Work" model="com.axelor.partner.db.ProjectWork" width="mini">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="date"/>\n    <field name="hours"/>\n  </panel>\n</form>\n	\N	1	\N
83	\N	0	2019-07-05 13:49:45.369	\N	\N	\N	com.axelor.partner.db.Project	axelor-partner	project-grid	20	Project Grid	grid	<grid name="project-grid" title="Project Grid" model="com.axelor.partner.db.Project" edit-icon="true">\n  <field name="name"/>\n  <field name="description"/>\n  <field name="priority"/>\n</grid>\n	\N	1	\N
84	\N	0	2019-07-05 13:49:45.379	\N	\N	\N	com.axelor.partner.db.Project	axelor-partner	project-form	20	Project Form	form	<form name="project-form" title="Project Form" model="com.axelor.partner.db.Project">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="priority"/>\n    <field name="description"/>\n    <field name="parent"/>\n    <field name="memberSet" widget="TagSelect"/>\n    <field name="partnerSet" widget="TagSelect"/>\n  </panel>\n  <panel-tabs>\n    <panel-related title="Task List" field="taskList" form-view="project-task-form" grid-view="project-task-grid">\n      <field name="name"/>\n      <field name="priority"/>\n      <field name="state"/>\n      <field name="createDate"/>\n      <field name="notes"/>\n    </panel-related>\n    <panel title="Notes">\n      <field name="notes"/>\n    </panel>\n  </panel-tabs>\n</form>\n	\N	1	\N
85	\N	0	2019-07-05 13:49:45.391	\N	\N	\N	com.axelor.partner.db.Address	axelor-partner	address-grid	20	Address List	grid	<grid name="address-grid" title="Address List" model="com.axelor.partner.db.Address" edit-icon="true">\n  <field name="partner"/>\n  <field name="street"/>\n  <field name="area"/>\n  <field name="city"/>\n  <field name="zip"/>\n  <field name="state"/>\n  <field name="country"/>\n</grid>\n	\N	1	\N
86	\N	0	2019-07-05 13:49:45.399	\N	\N	\N	com.axelor.partner.db.Address	axelor-partner	address-form	20	Address	form	<form name="address-form" title="Address" model="com.axelor.partner.db.Address" onLoad="onLoadMethodCalled" onSave="onSaveMethodCalled" onNew="onNewMethodCalled">\n  <panel title="Overview">\n    <field name="partner"/>\n    <field name="street"/>\n    <field name="area"/>\n    <field name="city"/>\n    <field name="zip"/>\n    <field name="state"/>\n    <field name="country"/>\n  </panel>\n</form>\n	\N	1	\N
87	\N	0	2019-07-05 13:49:45.427	\N	\N	\N	com.axelor.partner.db.ProjectTask	axelor-partner	project-task-grid	20	Project Tasks	grid	<grid name="project-task-grid" title="Project Tasks" model="com.axelor.partner.db.ProjectTask" edit-icon="true">\n  <field name="name"/>\n  <field name="createDateT"/>\n  <field name="user"/>\n  <field name="project"/>\n  <field name="priority"/>\n  <field name="state"/>\n  <field name="progress" widget="Progress"/>\n</grid>\n	\N	1	\N
88	\N	0	2019-07-05 13:49:45.436	\N	\N	\N	com.axelor.partner.db.ProjectTask	axelor-partner	project-task-form	20	Project Task	form	<form name="project-task-form" title="Project Task" model="com.axelor.partner.db.ProjectTask">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="priority"/>\n    <field name="createDateT"/>\n    <field name="project"/>\n    <field name="user"/>\n    <field name="projectTask"/>\n    <field name="state"/>\n    <field name="progress" widget="Progress"/>\n  </panel>\n  <panel-tabs>\n    <panel-related title="Work Items" field="workList" editable="true">\n      <field name="name"/>\n      <field name="date"/>\n      <field name="hours"/>\n    </panel-related>\n    <panel title="Notes">\n      <field name="notes" showTitle="false" colSpan="12"/>\n    </panel>\n  </panel-tabs>\n</form>\n	\N	1	\N
89	\N	0	2019-07-05 13:49:45.447	\N	\N	\N	\N	axelor-partner	project-task-tree	20	Project Task	tree	<tree name="project-task-tree" title="Project Task">\n  <column name="title" type="string"/>\n  <column name="progress" type="integer"/>\n  <node model="com.axelor.partner.db.Project" onClick="projects.task.open.project">\n    <field name="name" as="title"/>\n  </node>\n  <node model="com.axelor.partner.db.ProjectTask" parent="project" onClick="projects.task.open.task" draggable="true">\n    <field name="name" as="title"/>\n    <field name="progress" as="progress"/>\n  </node>\n</tree>\n	\N	1	\N
90	\N	0	2019-07-05 13:49:45.454	\N	\N	\N	com.axelor.partner.db.ProjectTask	axelor-partner	project-task-kanban	20	All Tasks KanBan	kanban	<kanban name="project-task-kanban" title="All Tasks KanBan" model="com.axelor.partner.db.ProjectTask" columnBy="state" sequenceBy="priority" draggable="true">\n  <field name="name"/>\n  <field name="notes"/>\n  <field name="state"/>\n  <field name="priority"/>\n  <field name="progress"/>\n  <field name="dateCreateT"/>\n  <template><![CDATA[ \n\t<h4>{{name}}</h4>\n\t<img nf-if="user" ng-src="{{$image('user', 'image')}}">\n\t<div class="card-body">{{notes}}</div>\n\t<div class="card-footer">\n\t<i class='fa fa-clock-o'></i>\n\t<span>{{dateCreateT|date:'yyyy-MM-dd HH:mm:ss'}}</span>\n]]></template>\n</kanban>\n	\N	1	\N
91	\N	0	2019-07-05 13:49:45.484	\N	\N	\N	com.axelor.partner.db.Department	axelor-partner	dept-grid	20	Department Grid	grid	<grid name="dept-grid" title="Department Grid" model="com.axelor.partner.db.Department" edit-icon="true">\n  <field name="code" title="Department Code"/>\n  <field name="name" title="Department Name"/>\n  <field name="isTechnical"/>\n</grid>\n	\N	1	\N
92	\N	0	2019-07-05 13:49:45.492	\N	\N	\N	com.axelor.partner.db.Department	axelor-partner	dept-form	20	Department Form	form	<form name="dept-form" title="Department Form" model="com.axelor.partner.db.Department">\n  <panel title="Department" css="panel-red">\n    <field name="code" title="Department Code"/>\n    <field name="name" title="Department Name"/>\n    <field name="isTechnical" title="Is Technical" readonly="false" css="inline-checkbox" widget="boolean-switch"/>\n  </panel>\n</form>\n	\N	1	\N
93	\N	0	2019-07-05 13:49:45.5	\N	\N	\N	com.axelor.partner.db.Company	axelor-partner	company-grid	20	Company Grid	grid	<grid name="company-grid" title="Company Grid" model="com.axelor.partner.db.Company" edit-icon="true">\n  <field name="companyName"/>\n</grid>\n	\N	1	\N
94	\N	0	2019-07-05 13:49:45.507	\N	\N	\N	com.axelor.partner.db.Company	axelor-partner	company-form	20	Company Form	form	<form name="company-form" title="Company Form" model="com.axelor.partner.db.Company">\n  <panel title="Company">\n    <field name="companyName"/>\n  </panel>\n</form>\n	\N	1	\N
95	\N	0	2019-07-05 13:49:45.518	\N	\N	\N	com.axelor.partner.db.Partner	axelor-partner	partner-grid	20	Partner	grid	<grid name="partner-grid" title="Partner" model="com.axelor.partner.db.Partner" edit-icon="true">\n  <field name="partnerSeq"/>\n  <field name="fullName"/>\n  <field name="dateOfBirth"/>\n</grid>\n	\N	1	\N
96	\N	0	2019-07-05 13:49:45.526	\N	\N	\N	com.axelor.partner.db.Partner	axelor-partner	partner-form	20	Partner	form	<form name="partner-form" title="Partner" model="com.axelor.partner.db.Partner" onLoad="partnerForm.onLoadSay" onSave="partnerForm.onSaveSay,action-validation-one" onNew="partnerForm.onNewSay">\n  <panel title="Personal" css="panel-red">\n    <panel colSpan="4">\n      <field name="image" showTitle="false" colSpan="12"/>\n    </panel>\n    <panel colSpan="8">\n      <field name="partnerSeq" title="Partner Seq" readonly="true" colSpan="4"/>\n      <field name="isTechi" title="Is Technical" readonly="false" colSpan="4" css="inline-checkbox" widget="boolean-switch"/>\n      <field name="fullName" title="Name" readonly="false" colSpan="10">\n        <editor x-show-titles="false">\n          <field name="firstName" colSpan="5"/>\n          <field name="lastName" colSpan="5"/>\n        </editor>\n      </field>\n      <field name="dateOfBirth" title="dob" colSpan="4"/>\n      <field name="email" colSpan="6">\n        <viewer><![CDATA[\n      <a href="mailto:{{record.emailId}}">{{record.emailId}}</a>\n      ]]></viewer>\n        <editor x-show-titles="false">\n          <field name="emailId" colSpan="12" placeholder="whatever@example.com" pattern="^[a-z0-9A-ZáàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ!#$%&amp;'*+/=?^_`{|}~-]+(?:\\.[a-z0-9A-ZáàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+(?:[a-z]{2,})$"/>\n        </editor>\n      </field>\n      <field name="department" title="Department" colSpan="10" domain="self.isTechnical=:isTechi"/>\n    </panel>\n  </panel>\n  <panel title="Contacts" css="panel-green">\n    <field name="address" colSpan="12" css="address-list">\n      <viewer><![CDATA[\n      <address>\n      {{record.street}}, {{record.area}}<br>\n      {{record.city}}, {{record.state}} - {{record.zip}}<br>\n      {{record.country.name}}\n      </address>\n\n      ]]></viewer>\n      <editor x-show-titles="false">\n        <field name="street" colSpan="12"/>\n        <field name="area" colSpan="12"/>\n        <field name="city" colSpan="4"/>\n        <field name="state" colSpan="4"/>\n        <field name="zip" colSpan="4"/>\n        <field name="country" colSpan="12" widget="SuggestBox"/>\n      </editor>\n    </field>\n  </panel>\n  <panel title="Company" css="panel-blue">\n    <field name="company" colSpan="12" canEdit="true"/>\n  </panel>\n  <panel-related css="panel-red" field="project"/>\n  <panel title="ButtonTest" css="panel-yellow">\n    <button name="sayBtn" title="ClickMe!!" onClick="say.methodCalled" type="button" class="btn"/>\n    <button name="scriptBtn" title="CallToActionScript!!" onClick="say.callToActionScript" type="button" class="btn"/>\n  </panel>\n</form>\n	\N	1	\N
97	\N	0	2019-07-05 13:49:45.533	\N	\N	\N	com.axelor.partner.db.Partner	axelor-partner	partner-card	20	Partner Card	cards	<cards name="partner-card" title="Partner Card" model="com.axelor.partner.db.Partner">\n  <field name="fullName"/>\n  <field name="address"/>\n  <field name="hasImage"/>\n  <field name="email"/>\n  <template><![CDATA[\n  \t\t<div class="span4 card-image">\n  \t\t\t<img ng-if="hasImage" ng-src="{{$image(null, 'image')}}">\n    \t\t\t<img ng-if="!hasImage" src="img/user.png">\n  \t\t\t<strong>{{fullName}}</strong>\n  \t\t</div>\n  \t\t<div class="span8">\n\t\t <address>\n        \t\t\t<strong>{{address.street}} {{address.area}}</strong><br>\n\t          {{address.city}}<span ng-if="address.state">, {{address.state}}\n\t          <abbr ng-if="phone" title="Phone">P:</abbr> {{phone}}<br>\n\t          <abbr ng-if="email" title="Email">E:</abbr> {{email.emailId}}<br>\n      \t\t</address>\n        \t</div>\n        \t<button type="button" class="btn" ui-action-clicks="say.methodCalled" />\n  \t\t]]></template>\n</cards>\n	\N	1	\N
98	\N	0	2019-07-05 13:49:46.508	\N	\N	\N	com.axelor.demoimpl.db.Person	axelor-demo-impl	person-grid	20	Person Grid	grid	<grid name="person-grid" title="Person Grid" model="com.axelor.demoimpl.db.Person" edit-icon="true">\n  <field name="firstName"/>\n  <field name="lastName"/>\n  <field name="age"/>\n  <field name="hobby"/>\n</grid>\n	\N	1	\N
99	\N	0	2019-07-05 13:49:46.513	\N	\N	\N	com.axelor.demoimpl.db.Person	axelor-demo-impl	person-form	20	Person Form	form	<form name="person-form" title="Person Form" model="com.axelor.demoimpl.db.Person">\n  <panel name="PersonPanel" css="panel-red">\n    <field name="firstName"/>\n    <field name="lastName"/>\n    <field name="age"/>\n    <field name="hobby"/>\n    <field name="email" colSpan="6">\n      <viewer><![CDATA[\n        <a href="mailto:{{record.emailId}}">{{record.emailId}}</a>\n        ]]></viewer>\n      <editor x-show-titles="false">\n        <field name="emailId" colSpan="12" placeholder="whatever@example.com" pattern="^[a-z0-9A-ZáàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ!#$%&amp;'*+/=?^_`{|}~-]+(?:\\.[a-z0-9A-ZáàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+(?:[a-z]{2,})$"/>\n      </editor>\n    </field>\n  </panel>\n</form>\n	\N	1	\N
100	\N	0	2019-07-05 13:49:46.871	\N	\N	\N	com.axelor.mail.db.MailFlags	axelor-core	mail-flags-grid	10	Mail flags	grid	<grid name="mail-flags-grid" title="Mail flags" model="com.axelor.mail.db.MailFlags" edit-icon="true">\n  <field name="user"/>\n  <field name="message"/>\n  <field name="isStarred"/>\n  <field name="isRead"/>\n  <field name="isArchived"/>\n  <field name="archived"/>\n</grid>\n	\N	1	\N
101	\N	0	2019-07-05 13:49:46.875	\N	\N	\N	com.axelor.mail.db.MailFlags	axelor-core	mail-flags-form	10	Mail flags	form	<form name="mail-flags-form" title="Mail flags" model="com.axelor.mail.db.MailFlags">\n  <panel title="Overview">\n    <field name="user"/>\n    <field name="message"/>\n    <field name="isStarred"/>\n    <field name="isRead"/>\n    <field name="isArchived"/>\n    <field name="archived"/>\n  </panel>\n</form>\n	\N	1	\N
102	\N	0	2019-07-05 13:49:46.884	\N	\N	\N	com.axelor.mail.db.MailAddress	axelor-core	mail-address-grid	10	Mail addresses	grid	<grid name="mail-address-grid" title="Mail addresses" model="com.axelor.mail.db.MailAddress" edit-icon="true">\n  <field name="address"/>\n  <field name="personal"/>\n  <field name="archived"/>\n</grid>\n	\N	1	\N
103	\N	0	2019-07-05 13:49:46.887	\N	\N	\N	com.axelor.mail.db.MailAddress	axelor-core	mail-address-form	10	Mail address	form	<form name="mail-address-form" title="Mail address" model="com.axelor.mail.db.MailAddress">\n  <panel title="Overview">\n    <field name="address"/>\n    <field name="personal"/>\n    <field name="archived"/>\n  </panel>\n</form>\n	\N	1	\N
104	\N	0	2019-07-05 13:49:46.892	\N	\N	\N	com.axelor.meta.db.MetaSequence	axelor-core	meta-sequence-grid	10	Meta sequences	grid	<grid name="meta-sequence-grid" title="Meta sequences" model="com.axelor.meta.db.MetaSequence" edit-icon="true">\n  <field name="name"/>\n  <field name="prefix"/>\n  <field name="suffix"/>\n  <field name="padding"/>\n  <field name="increment"/>\n  <field name="initial"/>\n  <field name="next"/>\n  <field name="archived"/>\n</grid>\n	\N	1	\N
105	\N	0	2019-07-05 13:49:46.896	\N	\N	\N	com.axelor.meta.db.MetaSequence	axelor-core	meta-sequence-form	10	Meta sequence	form	<form name="meta-sequence-form" title="Meta sequence" model="com.axelor.meta.db.MetaSequence">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="prefix"/>\n    <field name="suffix"/>\n    <field name="padding"/>\n    <field name="increment"/>\n    <field name="initial"/>\n    <field name="next"/>\n    <field name="archived"/>\n  </panel>\n</form>\n	\N	1	\N
106	\N	0	2019-07-05 13:49:46.9	\N	\N	\N	com.axelor.meta.db.MetaFilter	axelor-core	meta-filter-grid	10	Meta filters	grid	<grid name="meta-filter-grid" title="Meta filters" model="com.axelor.meta.db.MetaFilter" edit-icon="true">\n  <field name="name"/>\n  <field name="title"/>\n  <field name="filters"/>\n  <field name="filterCustom"/>\n  <field name="filterView"/>\n  <field name="shared"/>\n  <field name="user"/>\n  <field name="archived"/>\n</grid>\n	\N	1	\N
107	\N	0	2019-07-05 13:49:46.904	\N	\N	\N	com.axelor.meta.db.MetaFilter	axelor-core	meta-filter-form	10	Meta filter	form	<form name="meta-filter-form" title="Meta filter" model="com.axelor.meta.db.MetaFilter">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="title"/>\n    <field name="filters"/>\n    <field name="filterCustom"/>\n    <field name="filterView"/>\n    <field name="shared"/>\n    <field name="user"/>\n    <field name="archived"/>\n  </panel>\n</form>\n	\N	1	\N
108	\N	0	2019-07-05 13:49:46.908	\N	\N	\N	com.axelor.mail.db.MailFollower	axelor-core	mail-follower-grid	10	Mail followers	grid	<grid name="mail-follower-grid" title="Mail followers" model="com.axelor.mail.db.MailFollower" edit-icon="true">\n  <field name="relatedId"/>\n  <field name="relatedModel"/>\n  <field name="user"/>\n  <field name="email"/>\n  <field name="archived"/>\n</grid>\n	\N	1	\N
109	\N	0	2019-07-05 13:49:46.912	\N	\N	\N	com.axelor.mail.db.MailFollower	axelor-core	mail-follower-form	10	Mail follower	form	<form name="mail-follower-form" title="Mail follower" model="com.axelor.mail.db.MailFollower">\n  <panel title="Overview">\n    <field name="relatedId"/>\n    <field name="relatedModel"/>\n    <field name="user"/>\n    <field name="email"/>\n    <field name="archived"/>\n  </panel>\n</form>\n	\N	1	\N
110	\N	0	2019-07-05 13:49:46.916	\N	\N	\N	com.axelor.meta.db.MetaEnum	axelor-core	meta-enum-grid	10	Meta enums	grid	<grid name="meta-enum-grid" title="Meta enums" model="com.axelor.meta.db.MetaEnum" edit-icon="true">\n  <field name="name"/>\n  <field name="archived"/>\n</grid>\n	\N	1	\N
111	\N	0	2019-07-05 13:49:46.92	\N	\N	\N	com.axelor.meta.db.MetaEnum	axelor-core	meta-enum-form	10	Meta enum	form	<form name="meta-enum-form" title="Meta enum" model="com.axelor.meta.db.MetaEnum">\n  <panel title="Overview">\n    <field name="name"/>\n    <field name="archived"/>\n  </panel>\n</form>\n	\N	1	\N
112	\N	0	2019-07-05 13:49:46.925	\N	\N	\N	com.axelor.meta.db.MetaAttachment	axelor-core	meta-attachment-grid	10	Meta attachments	grid	<grid name="meta-attachment-grid" title="Meta attachments" model="com.axelor.meta.db.MetaAttachment" edit-icon="true">\n  <field name="objectName"/>\n  <field name="objectId"/>\n  <field name="metaFile"/>\n  <field name="archived"/>\n</grid>\n	\N	1	\N
113	\N	0	2019-07-05 13:49:46.929	\N	\N	\N	com.axelor.meta.db.MetaAttachment	axelor-core	meta-attachment-form	10	Meta attachment	form	<form name="meta-attachment-form" title="Meta attachment" model="com.axelor.meta.db.MetaAttachment">\n  <panel title="Overview">\n    <field name="objectName"/>\n    <field name="objectId"/>\n    <field name="metaFile"/>\n    <field name="archived"/>\n  </panel>\n</form>\n	\N	1	\N
114	\N	0	2019-07-05 13:49:46.96	\N	\N	\N	com.axelor.partner.db.Email	axelor-partner	email-grid	10	Emails	grid	<grid name="email-grid" title="Emails" model="com.axelor.partner.db.Email" edit-icon="true">\n  <field name="partner"/>\n  <field name="emailId"/>\n  <field name="attrs"/>\n  <field name="archived"/>\n</grid>\n	\N	1	\N
115	\N	0	2019-07-05 13:49:46.964	\N	\N	\N	com.axelor.partner.db.Email	axelor-partner	email-form	10	Email	form	<form name="email-form" title="Email" model="com.axelor.partner.db.Email">\n  <panel title="Overview">\n    <field name="partner"/>\n    <field name="emailId"/>\n    <field name="attrs"/>\n    <field name="archived"/>\n  </panel>\n</form>\n	\N	1	\N
116	\N	0	2019-07-05 13:49:46.981	\N	\N	\N	com.axelor.demoimpl.db.PersonEmail	axelor-demo-impl	person-email-grid	10	Person emails	grid	<grid name="person-email-grid" title="Person emails" model="com.axelor.demoimpl.db.PersonEmail" edit-icon="true">\n  <field name="emailId"/>\n  <field name="person"/>\n  <field name="attrs"/>\n  <field name="archived"/>\n</grid>\n	\N	1	\N
117	\N	0	2019-07-05 13:49:46.986	\N	\N	\N	com.axelor.demoimpl.db.PersonEmail	axelor-demo-impl	person-email-form	10	Person email	form	<form name="person-email-form" title="Person email" model="com.axelor.demoimpl.db.PersonEmail">\n  <panel title="Overview">\n    <field name="emailId"/>\n    <field name="person"/>\n    <field name="attrs"/>\n    <field name="archived"/>\n  </panel>\n</form>\n	\N	1	\N
\.


--
-- Data for Name: meta_view_custom; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_view_custom (id, archived, version, created_on, updated_on, model, name, title, type, xml, created_by, updated_by, user_id) FROM stdin;
\.


--
-- Data for Name: meta_view_groups; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.meta_view_groups (views, groups) FROM stdin;
\.


--
-- Data for Name: partner_address; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_address (id, archived, version, created_on, updated_on, area, attrs, city, state, street, zip, created_by, updated_by, country, partner) FROM stdin;
1	\N	0	2019-07-05 13:49:46.445	\N	anishabad	\N	patna	Bihar	police colony	80002	1	\N	1	1
\.


--
-- Data for Name: partner_company; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_company (id, archived, version, created_on, updated_on, attrs, company_name, created_by, updated_by) FROM stdin;
3	\N	0	2019-07-05 13:49:45.85	\N	\N	Yahoo	1	\N
4	\N	0	2019-07-05 13:49:45.852	\N	\N	Amazon	1	\N
5	\N	0	2019-07-05 13:49:45.853	\N	\N	Flipkart	1	\N
6	\N	0	2019-07-05 13:49:45.854	\N	\N	Salesforce	1	\N
7	\N	0	2019-07-05 13:49:45.856	\N	\N	Zenser	1	\N
1	\N	1	2019-07-05 13:49:45.847	2019-07-05 13:49:46.445	\N	Google	1	1
2	\N	1	2019-07-05 13:49:45.849	2019-07-05 13:49:46.445	\N	Axelor	1	1
\.


--
-- Data for Name: partner_company_partner; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_company_partner (company, partner) FROM stdin;
1	1
2	1
\.


--
-- Data for Name: partner_country; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_country (id, archived, version, created_on, updated_on, attrs, code, name, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:45.813	\N	\N	india	India	1	\N
2	\N	0	2019-07-05 13:49:45.817	\N	\N	russia	Russia	1	\N
3	\N	0	2019-07-05 13:49:45.819	\N	\N	france	France	1	\N
4	\N	0	2019-07-05 13:49:45.821	\N	\N	japan	Japan	1	\N
5	\N	0	2019-07-05 13:49:45.824	\N	\N	pakistan	Pakistan	1	\N
6	\N	0	2019-07-05 13:49:45.826	\N	\N	nepal	Nepal	1	\N
\.


--
-- Data for Name: partner_department; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_department (id, archived, version, created_on, updated_on, attrs, code, is_technical, name, created_by, updated_by, partner) FROM stdin;
1	\N	0	2019-07-05 13:49:45.833	\N	\N	pro	t	production	1	\N	\N
2	\N	0	2019-07-05 13:49:45.835	\N	\N	des	t	design	1	\N	\N
3	\N	0	2019-07-05 13:49:45.836	\N	\N	hres	f	human resource	1	\N	\N
4	\N	0	2019-07-05 13:49:45.838	\N	\N	tes	t	testing	1	\N	\N
5	\N	0	2019-07-05 13:49:45.839	\N	\N	mar	f	marketing	1	\N	\N
6	\N	0	2019-07-05 13:49:45.841	\N	\N	adv	f	advertisement	1	\N	\N
7	\N	1	2019-07-05 13:49:45.842	2019-07-05 13:49:46.445	\N	dev	t	Development	1	1	\N
\.


--
-- Data for Name: partner_email; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_email (id, archived, version, created_on, updated_on, attrs, email_id, created_by, updated_by) FROM stdin;
1	\N	0	2019-07-05 13:49:46.444	\N	\N	prajjwal@gmail.com	1	\N
\.


--
-- Data for Name: partner_partner; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_partner (id, archived, version, created_on, updated_on, attrs, date_of_birth, first_name, full_name, image, is_techi, last_name, partner_seq, created_by, updated_by, department, email) FROM stdin;
1	\N	0	2019-07-05 13:49:46.444	\N	\N	1996-01-22	Prajjwal	Prajjwal Singh	\N	t	Singh	pat001	1	\N	7	1
\.


--
-- Data for Name: partner_partner_project; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_partner_project (partner_partner, project) FROM stdin;
\.


--
-- Data for Name: partner_project; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_project (id, archived, version, created_on, updated_on, attrs, description, name, notes, priority, created_by, updated_by, parent) FROM stdin;
1	\N	0	2019-07-05 15:04:05.368	\N	\N	Aerospace Company	Boeing	\N	10	1	\N	\N
2	\N	0	2019-07-05 15:05:28.316	\N	\N	Commercial passenger planes	Boeing : Commercial	\N	7	1	\N	1
3	\N	1	2019-07-05 15:10:10.057	2019-07-05 15:14:06.134	\N	Business class jet for personal usages	Boeing : Business Jet	\N	5	1	1	1
4	\N	0	2019-07-05 15:14:51.682	\N	\N	For national security	Boeing : Defense	\N	1	1	\N	1
5	\N	0	2019-07-05 15:15:47.419	\N	\N	Best in class fighter plane	Boeing P26	\N	2	1	\N	4
\.


--
-- Data for Name: partner_project_member_set; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_project_member_set (partner_project, member_set) FROM stdin;
1	1
2	1
3	1
4	1
5	1
\.


--
-- Data for Name: partner_project_partner_set; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.partner_project_partner_set (partner_project, partner_set) FROM stdin;
3	1
4	1
\.


--
-- Data for Name: project_task; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.project_task (id, archived, version, created_on, updated_on, attrs, create_datet, name, notes, priority, progress, state, created_by, updated_by, project, project_task, user_id) FROM stdin;
1	\N	0	2019-07-05 15:07:52.811	\N	\N	2019-07-04 00:00:00	737 Max	\N	4	0	todo	1	\N	2	\N	1
2	\N	0	2019-07-05 15:12:13.68	\N	\N	2019-07-03 00:00:00	Freighters	\N	6	43	progress	1	\N	2	\N	1
3	\N	0	2019-07-05 15:13:58.84	\N	\N	2019-07-04 00:00:00	BBJ 777X	\N	5	100	complete	1	\N	3	\N	1
4	\N	0	2019-07-05 15:17:07.107	\N	\N	2019-07-05 00:00:00	P26 Design	\N	2	33	progress	1	\N	5	\N	1
5	\N	0	2019-07-05 15:21:13.264	\N	\N	2019-07-07 00:00:00	P26 design analysis	\N	2	0	complete	1	\N	5	4	1
6	\N	0	2019-07-05 15:21:13.265	\N	\N	2019-07-09 00:00:00	P26 design validation	\N	4	64	progress	1	\N	5	4	1
\.


--
-- Data for Name: project_work; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.project_work (id, archived, version, created_on, updated_on, attrs, work_date, work_hours, name, created_by, updated_by, task, user_id) FROM stdin;
1	\N	0	2019-07-05 15:07:52.812	\N	\N	2019-07-03	08:45:00	Preanalysis of Idea	1	\N	1	\N
2	\N	0	2019-07-05 15:07:52.812	\N	\N	2019-07-04	10:10:00	Requirement Gathering	1	\N	1	\N
3	\N	0	2019-07-05 15:07:52.812	\N	\N	2019-07-05	12:12:00	Designing	1	\N	1	\N
4	\N	0	2019-07-05 15:07:52.812	\N	\N	2019-07-06	14:45:00	Implementing	1	\N	1	\N
5	\N	0	2019-07-05 15:12:13.681	\N	\N	2019-07-05	14:14:00	requirement	1	\N	2	\N
6	\N	0	2019-07-05 15:12:13.681	\N	\N	2019-07-06	12:12:00	design	1	\N	2	\N
7	\N	0	2019-07-05 15:12:13.681	\N	\N	2019-07-07	16:16:00	building	1	\N	2	\N
8	\N	0	2019-07-05 15:12:13.681	\N	\N	2019-07-12	22:22:00	flying	1	\N	2	\N
9	\N	0	2019-07-05 15:13:58.841	\N	\N	2019-07-06	12:12:00	Feedback from the customers	1	\N	3	\N
10	\N	0	2019-07-05 15:21:13.266	\N	\N	2019-07-06	12:21:00	initial testing	1	\N	6	\N
11	\N	0	2019-07-05 15:21:13.266	\N	\N	2019-07-09	20:45:00	final testing	1	\N	6	\N
\.


--
-- Data for Name: team_task; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.team_task (id, archived, version, created_on, updated_on, attrs, description, name, priority, related_id, related_model, related_name, sequence, status, task_date, task_deadline, task_duration, created_by, updated_by, assigned_to, team) FROM stdin;
\.


--
-- Data for Name: team_team; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.team_team (id, archived, version, created_on, updated_on, attrs, description, image, name, created_by, updated_by) FROM stdin;
\.


--
-- Data for Name: team_team_members; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.team_team_members (team_team, members) FROM stdin;
\.


--
-- Data for Name: team_team_roles; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.team_team_roles (team_team, roles) FROM stdin;
\.


--
-- Data for Name: team_topic; Type: TABLE DATA; Schema: public; Owner: axelor
--

COPY public.team_topic (id, archived, version, created_on, updated_on, active, attrs, description, name, created_by, updated_by, team) FROM stdin;
\.


--
-- Name: auth_group_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.auth_group_seq', 2, true);


--
-- Name: auth_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.auth_permission_seq', 4, true);


--
-- Name: auth_role_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.auth_role_seq', 4, true);


--
-- Name: auth_user_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.auth_user_seq', 2, true);


--
-- Name: demoimpl_person_email_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.demoimpl_person_email_seq', 1, false);


--
-- Name: demoimpl_person_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.demoimpl_person_seq', 10, true);


--
-- Name: dms_file_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.dms_file_seq', 1, false);


--
-- Name: dms_file_tag_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.dms_file_tag_seq', 1, false);


--
-- Name: dms_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.dms_permission_seq', 1, false);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, true);


--
-- Name: mail_address_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.mail_address_seq', 1, false);


--
-- Name: mail_flags_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.mail_flags_seq', 1, false);


--
-- Name: mail_follower_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.mail_follower_seq', 1, false);


--
-- Name: mail_message_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.mail_message_seq', 1, false);


--
-- Name: meta_action_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_action_menu_seq', 1, false);


--
-- Name: meta_action_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_action_seq', 71, true);


--
-- Name: meta_attachment_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_attachment_seq', 1, false);


--
-- Name: meta_enum_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_enum_seq', 1, false);


--
-- Name: meta_field_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_field_seq', 727, true);


--
-- Name: meta_file_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_file_seq', 1, false);


--
-- Name: meta_filter_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_filter_seq', 1, false);


--
-- Name: meta_help_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_help_seq', 1, false);


--
-- Name: meta_json_field_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_json_field_seq', 1, false);


--
-- Name: meta_json_model_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_json_model_seq', 1, false);


--
-- Name: meta_json_record_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_json_record_seq', 1, false);


--
-- Name: meta_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_menu_seq', 60, true);


--
-- Name: meta_model_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_model_seq', 49, true);


--
-- Name: meta_module_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_module_seq', 5, true);


--
-- Name: meta_permission_rule_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_permission_rule_seq', 1, false);


--
-- Name: meta_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_permission_seq', 1, false);


--
-- Name: meta_schedule_param_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_schedule_param_seq', 1, false);


--
-- Name: meta_schedule_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_schedule_seq', 1, true);


--
-- Name: meta_select_item_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_select_item_seq', 83, true);


--
-- Name: meta_select_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_select_seq', 15, true);


--
-- Name: meta_translation_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_translation_seq', 1618, true);


--
-- Name: meta_view_custom_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_view_custom_seq', 1, false);


--
-- Name: meta_view_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.meta_view_seq', 117, true);


--
-- Name: partner_address_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.partner_address_seq', 1, true);


--
-- Name: partner_company_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.partner_company_seq', 7, true);


--
-- Name: partner_country_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.partner_country_seq', 6, true);


--
-- Name: partner_department_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.partner_department_seq', 7, true);


--
-- Name: partner_email_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.partner_email_seq', 1, true);


--
-- Name: partner_partner_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.partner_partner_seq', 1, true);


--
-- Name: partner_project_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.partner_project_seq', 5, true);


--
-- Name: project_task_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.project_task_seq', 6, true);


--
-- Name: project_work_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.project_work_seq', 11, true);


--
-- Name: team_task_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.team_task_seq', 1, false);


--
-- Name: team_team_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.team_team_seq', 1, false);


--
-- Name: team_topic_seq; Type: SEQUENCE SET; Schema: public; Owner: axelor
--

SELECT pg_catalog.setval('public.team_topic_seq', 1, false);


--
-- Name: auth_group_meta_permissions auth_group_meta_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group_meta_permissions
    ADD CONSTRAINT auth_group_meta_permissions_pkey PRIMARY KEY (auth_group, meta_permissions);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (auth_group, permissions);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_group_roles auth_group_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group_roles
    ADD CONSTRAINT auth_group_roles_pkey PRIMARY KEY (auth_group, roles);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_role_meta_permissions auth_role_meta_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role_meta_permissions
    ADD CONSTRAINT auth_role_meta_permissions_pkey PRIMARY KEY (auth_role, meta_permissions);


--
-- Name: auth_role_permissions auth_role_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role_permissions
    ADD CONSTRAINT auth_role_permissions_pkey PRIMARY KEY (auth_role, permissions);


--
-- Name: auth_role auth_role_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role
    ADD CONSTRAINT auth_role_pkey PRIMARY KEY (id);


--
-- Name: auth_user_meta_permissions auth_user_meta_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user_meta_permissions
    ADD CONSTRAINT auth_user_meta_permissions_pkey PRIMARY KEY (auth_user, meta_permissions);


--
-- Name: auth_user_permissions auth_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user_permissions
    ADD CONSTRAINT auth_user_permissions_pkey PRIMARY KEY (auth_user, permissions);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_roles auth_user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user_roles
    ADD CONSTRAINT auth_user_roles_pkey PRIMARY KEY (auth_user, roles);


--
-- Name: demoimpl_person_email demoimpl_person_email_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.demoimpl_person_email
    ADD CONSTRAINT demoimpl_person_email_pkey PRIMARY KEY (id);


--
-- Name: demoimpl_person demoimpl_person_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.demoimpl_person
    ADD CONSTRAINT demoimpl_person_pkey PRIMARY KEY (id);


--
-- Name: dms_file dms_file_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file
    ADD CONSTRAINT dms_file_pkey PRIMARY KEY (id);


--
-- Name: dms_file_tag dms_file_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file_tag
    ADD CONSTRAINT dms_file_tag_pkey PRIMARY KEY (id);


--
-- Name: dms_file_tags dms_file_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file_tags
    ADD CONSTRAINT dms_file_tags_pkey PRIMARY KEY (dms_file, tags);


--
-- Name: dms_permission dms_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_permission
    ADD CONSTRAINT dms_permission_pkey PRIMARY KEY (id);


--
-- Name: mail_address mail_address_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_address
    ADD CONSTRAINT mail_address_pkey PRIMARY KEY (id);


--
-- Name: mail_flags mail_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_flags
    ADD CONSTRAINT mail_flags_pkey PRIMARY KEY (id);


--
-- Name: mail_follower mail_follower_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_follower
    ADD CONSTRAINT mail_follower_pkey PRIMARY KEY (id);


--
-- Name: mail_message mail_message_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_pkey PRIMARY KEY (id);


--
-- Name: mail_message_recipients mail_message_recipients_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message_recipients
    ADD CONSTRAINT mail_message_recipients_pkey PRIMARY KEY (mail_message, recipients);


--
-- Name: meta_action_menu meta_action_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action_menu
    ADD CONSTRAINT meta_action_menu_pkey PRIMARY KEY (id);


--
-- Name: meta_action meta_action_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action
    ADD CONSTRAINT meta_action_pkey PRIMARY KEY (id);


--
-- Name: meta_attachment meta_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_attachment
    ADD CONSTRAINT meta_attachment_pkey PRIMARY KEY (id);


--
-- Name: meta_enum meta_enum_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_enum
    ADD CONSTRAINT meta_enum_pkey PRIMARY KEY (id);


--
-- Name: meta_field meta_field_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_field
    ADD CONSTRAINT meta_field_pkey PRIMARY KEY (id);


--
-- Name: meta_file meta_file_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_file
    ADD CONSTRAINT meta_file_pkey PRIMARY KEY (id);


--
-- Name: meta_filter meta_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_filter
    ADD CONSTRAINT meta_filter_pkey PRIMARY KEY (id);


--
-- Name: meta_help meta_help_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_help
    ADD CONSTRAINT meta_help_pkey PRIMARY KEY (id);


--
-- Name: meta_json_field meta_json_field_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_field
    ADD CONSTRAINT meta_json_field_pkey PRIMARY KEY (id);


--
-- Name: meta_json_field_roles meta_json_field_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_field_roles
    ADD CONSTRAINT meta_json_field_roles_pkey PRIMARY KEY (meta_json_field, roles);


--
-- Name: meta_json_model meta_json_model_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model
    ADD CONSTRAINT meta_json_model_pkey PRIMARY KEY (id);


--
-- Name: meta_json_model_roles meta_json_model_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model_roles
    ADD CONSTRAINT meta_json_model_roles_pkey PRIMARY KEY (meta_json_model, roles);


--
-- Name: meta_json_record meta_json_record_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_record
    ADD CONSTRAINT meta_json_record_pkey PRIMARY KEY (id);


--
-- Name: meta_menu_groups meta_menu_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu_groups
    ADD CONSTRAINT meta_menu_groups_pkey PRIMARY KEY (menus, groups);


--
-- Name: meta_menu meta_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu
    ADD CONSTRAINT meta_menu_pkey PRIMARY KEY (id);


--
-- Name: meta_menu_roles meta_menu_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu_roles
    ADD CONSTRAINT meta_menu_roles_pkey PRIMARY KEY (menus, roles);


--
-- Name: meta_model meta_model_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_model
    ADD CONSTRAINT meta_model_pkey PRIMARY KEY (id);


--
-- Name: meta_module_depends meta_module_depends_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_module_depends
    ADD CONSTRAINT meta_module_depends_pkey PRIMARY KEY (module_id, depend_id);


--
-- Name: meta_module meta_module_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_module
    ADD CONSTRAINT meta_module_pkey PRIMARY KEY (id);


--
-- Name: meta_permission meta_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_permission
    ADD CONSTRAINT meta_permission_pkey PRIMARY KEY (id);


--
-- Name: meta_permission_rule meta_permission_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_permission_rule
    ADD CONSTRAINT meta_permission_rule_pkey PRIMARY KEY (id);


--
-- Name: meta_schedule_param meta_schedule_param_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_schedule_param
    ADD CONSTRAINT meta_schedule_param_pkey PRIMARY KEY (id);


--
-- Name: meta_schedule meta_schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_schedule
    ADD CONSTRAINT meta_schedule_pkey PRIMARY KEY (id);


--
-- Name: meta_select_item meta_select_item_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_select_item
    ADD CONSTRAINT meta_select_item_pkey PRIMARY KEY (id);


--
-- Name: meta_select meta_select_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_select
    ADD CONSTRAINT meta_select_pkey PRIMARY KEY (id);


--
-- Name: meta_sequence meta_sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_sequence
    ADD CONSTRAINT meta_sequence_pkey PRIMARY KEY (id);


--
-- Name: meta_translation meta_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_translation
    ADD CONSTRAINT meta_translation_pkey PRIMARY KEY (id);


--
-- Name: meta_view_custom meta_view_custom_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view_custom
    ADD CONSTRAINT meta_view_custom_pkey PRIMARY KEY (id);


--
-- Name: meta_view_groups meta_view_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view_groups
    ADD CONSTRAINT meta_view_groups_pkey PRIMARY KEY (views, groups);


--
-- Name: meta_view meta_view_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view
    ADD CONSTRAINT meta_view_pkey PRIMARY KEY (id);


--
-- Name: partner_address partner_address_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_address
    ADD CONSTRAINT partner_address_pkey PRIMARY KEY (id);


--
-- Name: partner_company_partner partner_company_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_company_partner
    ADD CONSTRAINT partner_company_partner_pkey PRIMARY KEY (company, partner);


--
-- Name: partner_company partner_company_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_company
    ADD CONSTRAINT partner_company_pkey PRIMARY KEY (id);


--
-- Name: partner_country partner_country_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_country
    ADD CONSTRAINT partner_country_pkey PRIMARY KEY (id);


--
-- Name: partner_department partner_department_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_department
    ADD CONSTRAINT partner_department_pkey PRIMARY KEY (id);


--
-- Name: partner_email partner_email_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_email
    ADD CONSTRAINT partner_email_pkey PRIMARY KEY (id);


--
-- Name: partner_partner partner_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_partner
    ADD CONSTRAINT partner_partner_pkey PRIMARY KEY (id);


--
-- Name: partner_partner_project partner_partner_project_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_partner_project
    ADD CONSTRAINT partner_partner_project_pkey PRIMARY KEY (partner_partner, project);


--
-- Name: partner_project_member_set partner_project_member_set_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project_member_set
    ADD CONSTRAINT partner_project_member_set_pkey PRIMARY KEY (partner_project, member_set);


--
-- Name: partner_project_partner_set partner_project_partner_set_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project_partner_set
    ADD CONSTRAINT partner_project_partner_set_pkey PRIMARY KEY (partner_project, partner_set);


--
-- Name: partner_project partner_project_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project
    ADD CONSTRAINT partner_project_pkey PRIMARY KEY (id);


--
-- Name: project_task project_task_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_task
    ADD CONSTRAINT project_task_pkey PRIMARY KEY (id);


--
-- Name: project_work project_work_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_work
    ADD CONSTRAINT project_work_pkey PRIMARY KEY (id);


--
-- Name: team_task team_task_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_task
    ADD CONSTRAINT team_task_pkey PRIMARY KEY (id);


--
-- Name: team_team_members team_team_members_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team_members
    ADD CONSTRAINT team_team_members_pkey PRIMARY KEY (team_team, members);


--
-- Name: team_team team_team_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team
    ADD CONSTRAINT team_team_pkey PRIMARY KEY (id);


--
-- Name: team_team_roles team_team_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team_roles
    ADD CONSTRAINT team_team_roles_pkey PRIMARY KEY (team_team, roles);


--
-- Name: team_topic team_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_topic
    ADD CONSTRAINT team_topic_pkey PRIMARY KEY (id);


--
-- Name: dms_file_tag uk_2dch28akv7e6e9nonm5m6d8ss; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file_tag
    ADD CONSTRAINT uk_2dch28akv7e6e9nonm5m6d8ss UNIQUE (name);


--
-- Name: meta_select uk_2tnu3dcvp2846iip82dsdrdo6; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_select
    ADD CONSTRAINT uk_2tnu3dcvp2846iip82dsdrdo6 UNIQUE (xml_id);


--
-- Name: auth_group uk_39bl1cer3jfbgs0mesx94ar92; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT uk_39bl1cer3jfbgs0mesx94ar92 UNIQUE (code);


--
-- Name: meta_json_model uk_59ggvc4nqi7xdcalbihluegwq; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model
    ADD CONSTRAINT uk_59ggvc4nqi7xdcalbihluegwq UNIQUE (name);


--
-- Name: partner_country uk_8bpsts614q8sfg4n0lfghfud5; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_country
    ADD CONSTRAINT uk_8bpsts614q8sfg4n0lfghfud5 UNIQUE (name);


--
-- Name: auth_user uk_8u7omaa7g7kqp6u5gbi3ixc3k; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT uk_8u7omaa7g7kqp6u5gbi3ixc3k UNIQUE (code);


--
-- Name: partner_email uk_be1extr0pjs9eqkn0swbqccp2; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_email
    ADD CONSTRAINT uk_be1extr0pjs9eqkn0swbqccp2 UNIQUE (email_id);


--
-- Name: partner_project uk_cx9yb8gvvoviyg8pbmy8otbb5; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project
    ADD CONSTRAINT uk_cx9yb8gvvoviyg8pbmy8otbb5 UNIQUE (name);


--
-- Name: meta_permission uk_dlgyya927fwofpsttig3u60u7; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_permission
    ADD CONSTRAINT uk_dlgyya927fwofpsttig3u60u7 UNIQUE (name);


--
-- Name: meta_attachment uk_egojr591g70du3ewgh6446830; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_attachment
    ADD CONSTRAINT uk_egojr591g70du3ewgh6446830 UNIQUE (object_name, object_id, meta_file);


--
-- Name: meta_permission_rule uk_f2dj2xm8wouy54ekshka9wf0w; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_permission_rule
    ADD CONSTRAINT uk_f2dj2xm8wouy54ekshka9wf0w UNIQUE (meta_permission, field);


--
-- Name: dms_file_tag uk_g8tnukmkpwov6qmouufn65rvq; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file_tag
    ADD CONSTRAINT uk_g8tnukmkpwov6qmouufn65rvq UNIQUE (code);


--
-- Name: auth_permission uk_g9wv3jbmx5bagwrfdwayjs8go; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT uk_g9wv3jbmx5bagwrfdwayjs8go UNIQUE (name);


--
-- Name: meta_menu uk_h5lct5kqlqm80a5ibobkp3u4c; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu
    ADD CONSTRAINT uk_h5lct5kqlqm80a5ibobkp3u4c UNIQUE (xml_id);


--
-- Name: meta_action_menu uk_hfrwh5mauhch2adf5t1voys0a; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action_menu
    ADD CONSTRAINT uk_hfrwh5mauhch2adf5t1voys0a UNIQUE (xml_id);


--
-- Name: meta_schedule uk_icya33ltm5ity6d02wjb8epq6; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_schedule
    ADD CONSTRAINT uk_icya33ltm5ity6d02wjb8epq6 UNIQUE (name);


--
-- Name: auth_group uk_isc86ncykxnlkku68eqv1fgyw; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT uk_isc86ncykxnlkku68eqv1fgyw UNIQUE (name);


--
-- Name: meta_module uk_jnpa3gsmdgw4vml5uah76tbiw; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_module
    ADD CONSTRAINT uk_jnpa3gsmdgw4vml5uah76tbiw UNIQUE (name);


--
-- Name: meta_sequence uk_jo2dklg4ifvebxsnkqekke57h; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_sequence
    ADD CONSTRAINT uk_jo2dklg4ifvebxsnkqekke57h UNIQUE (name);


--
-- Name: team_team uk_ko56a60en1krbjiwvsglnasg2; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team
    ADD CONSTRAINT uk_ko56a60en1krbjiwvsglnasg2 UNIQUE (name);


--
-- Name: auth_role uk_lc1sij60969nsgl5cy8bfgbsm; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role
    ADD CONSTRAINT uk_lc1sij60969nsgl5cy8bfgbsm UNIQUE (name);


--
-- Name: meta_filter uk_ms83n8hubmvq1mhv3a49ra1e3; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_filter
    ADD CONSTRAINT uk_ms83n8hubmvq1mhv3a49ra1e3 UNIQUE (name, filter_view);


--
-- Name: mail_message uk_ndlxunba9c3ankiq7x89j1818; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT uk_ndlxunba9c3ankiq7x89j1818 UNIQUE (message_id);


--
-- Name: meta_view uk_nf6rcs33tapxhnk2fmk0unftc; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view
    ADD CONSTRAINT uk_nf6rcs33tapxhnk2fmk0unftc UNIQUE (xml_id);


--
-- Name: meta_enum uk_o1p9lex6y9u4qi3506499of; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_enum
    ADD CONSTRAINT uk_o1p9lex6y9u4qi3506499of UNIQUE (name);


--
-- Name: partner_country uk_o5x3x2wrxaejh6x8jd23akwuo; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_country
    ADD CONSTRAINT uk_o5x3x2wrxaejh6x8jd23akwuo UNIQUE (code);


--
-- Name: meta_action uk_p96ag8lgpgqvhtb0s6kaqxr5e; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action
    ADD CONSTRAINT uk_p96ag8lgpgqvhtb0s6kaqxr5e UNIQUE (xml_id);


--
-- Name: meta_translation uk_pbctly1brqdvtyvo5tikjuibf; Type: CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_translation
    ADD CONSTRAINT uk_pbctly1brqdvtyvo5tikjuibf UNIQUE (message_key, language);


--
-- Name: auth_user_group_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX auth_user_group_id_idx ON public.auth_user USING btree (group_id);


--
-- Name: auth_user_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX auth_user_name_idx ON public.auth_user USING btree (name);


--
-- Name: demoimpl_person_email_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX demoimpl_person_email_idx ON public.demoimpl_person USING btree (email);


--
-- Name: dms_file_file_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX dms_file_file_name_idx ON public.dms_file USING btree (file_name);


--
-- Name: dms_file_meta_file_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX dms_file_meta_file_idx ON public.dms_file USING btree (meta_file);


--
-- Name: dms_file_parent_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX dms_file_parent_idx ON public.dms_file USING btree (parent);


--
-- Name: dms_permission_file_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX dms_permission_file_id_idx ON public.dms_permission USING btree (file_id);


--
-- Name: dms_permission_group_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX dms_permission_group_id_idx ON public.dms_permission USING btree (group_id);


--
-- Name: dms_permission_permission_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX dms_permission_permission_id_idx ON public.dms_permission USING btree (permission_id);


--
-- Name: dms_permission_user_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX dms_permission_user_id_idx ON public.dms_permission USING btree (user_id);


--
-- Name: mail_flags_message_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX mail_flags_message_idx ON public.mail_flags USING btree (message);


--
-- Name: mail_flags_user_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX mail_flags_user_id_idx ON public.mail_flags USING btree (user_id);


--
-- Name: mail_follower_email_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX mail_follower_email_idx ON public.mail_follower USING btree (email);


--
-- Name: mail_follower_user_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX mail_follower_user_id_idx ON public.mail_follower USING btree (user_id);


--
-- Name: mail_message_author_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX mail_message_author_idx ON public.mail_message USING btree (author);


--
-- Name: mail_message_email_from_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX mail_message_email_from_idx ON public.mail_message USING btree (email_from);


--
-- Name: mail_message_parent_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX mail_message_parent_idx ON public.mail_message USING btree (parent);


--
-- Name: mail_message_root_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX mail_message_root_idx ON public.mail_message USING btree (root);


--
-- Name: mail_message_subject_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX mail_message_subject_idx ON public.mail_message USING btree (subject);


--
-- Name: meta_action_menu_action_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_action_menu_action_idx ON public.meta_action_menu USING btree (action);


--
-- Name: meta_action_menu_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_action_menu_name_idx ON public.meta_action_menu USING btree (name);


--
-- Name: meta_action_menu_parent_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_action_menu_parent_idx ON public.meta_action_menu USING btree (parent);


--
-- Name: meta_action_menu_title_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_action_menu_title_idx ON public.meta_action_menu USING btree (title);


--
-- Name: meta_action_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_action_name_idx ON public.meta_action USING btree (name);


--
-- Name: meta_attachment_meta_file_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_attachment_meta_file_idx ON public.meta_attachment USING btree (meta_file);


--
-- Name: meta_field_meta_model_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_field_meta_model_idx ON public.meta_field USING btree (meta_model);


--
-- Name: meta_field_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_field_name_idx ON public.meta_field USING btree (name);


--
-- Name: meta_file_file_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_file_file_name_idx ON public.meta_file USING btree (file_name);


--
-- Name: meta_filter_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_filter_name_idx ON public.meta_filter USING btree (name);


--
-- Name: meta_filter_title_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_filter_title_idx ON public.meta_filter USING btree (title);


--
-- Name: meta_filter_user_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_filter_user_id_idx ON public.meta_filter USING btree (user_id);


--
-- Name: meta_json_field_json_model_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_field_json_model_idx ON public.meta_json_field USING btree (json_model);


--
-- Name: meta_json_field_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_field_name_idx ON public.meta_json_field USING btree (name);


--
-- Name: meta_json_field_target_json_model_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_field_target_json_model_idx ON public.meta_json_field USING btree (target_json_model);


--
-- Name: meta_json_model_action_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_model_action_idx ON public.meta_json_model USING btree (action);


--
-- Name: meta_json_model_form_view_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_model_form_view_idx ON public.meta_json_model USING btree (form_view);


--
-- Name: meta_json_model_grid_view_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_model_grid_view_idx ON public.meta_json_model USING btree (grid_view);


--
-- Name: meta_json_model_menu_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_model_menu_idx ON public.meta_json_model USING btree (menu);


--
-- Name: meta_json_model_menu_parent_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_model_menu_parent_idx ON public.meta_json_model USING btree (menu_parent);


--
-- Name: meta_json_model_title_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_model_title_idx ON public.meta_json_model USING btree (title);


--
-- Name: meta_json_record_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_json_record_name_idx ON public.meta_json_record USING btree (name);


--
-- Name: meta_menu_action_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_menu_action_idx ON public.meta_menu USING btree (action);


--
-- Name: meta_menu_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_menu_name_idx ON public.meta_menu USING btree (name);


--
-- Name: meta_menu_parent_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_menu_parent_idx ON public.meta_menu USING btree (parent);


--
-- Name: meta_menu_title_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_menu_title_idx ON public.meta_menu USING btree (title);


--
-- Name: meta_menu_user_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_menu_user_id_idx ON public.meta_menu USING btree (user_id);


--
-- Name: meta_model_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_model_name_idx ON public.meta_model USING btree (name);


--
-- Name: meta_permission_rule_meta_permission_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_permission_rule_meta_permission_idx ON public.meta_permission_rule USING btree (meta_permission);


--
-- Name: meta_schedule_param_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_schedule_param_name_idx ON public.meta_schedule_param USING btree (name);


--
-- Name: meta_schedule_param_schedule_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_schedule_param_schedule_idx ON public.meta_schedule_param USING btree (schedule);


--
-- Name: meta_select_item_select_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_select_item_select_id_idx ON public.meta_select_item USING btree (select_id);


--
-- Name: meta_select_item_title_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_select_item_title_idx ON public.meta_select_item USING btree (title);


--
-- Name: meta_select_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_select_name_idx ON public.meta_select USING btree (name);


--
-- Name: meta_view_custom_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_view_custom_name_idx ON public.meta_view_custom USING btree (name);


--
-- Name: meta_view_custom_title_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_view_custom_title_idx ON public.meta_view_custom USING btree (title);


--
-- Name: meta_view_custom_user_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_view_custom_user_id_idx ON public.meta_view_custom USING btree (user_id);


--
-- Name: meta_view_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_view_name_idx ON public.meta_view USING btree (name);


--
-- Name: meta_view_title_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX meta_view_title_idx ON public.meta_view USING btree (title);


--
-- Name: partner_address_country_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX partner_address_country_idx ON public.partner_address USING btree (country);


--
-- Name: partner_address_partner_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX partner_address_partner_idx ON public.partner_address USING btree (partner);


--
-- Name: partner_department_code_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX partner_department_code_idx ON public.partner_department USING btree (code);


--
-- Name: partner_department_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX partner_department_name_idx ON public.partner_department USING btree (name);


--
-- Name: partner_department_partner_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX partner_department_partner_idx ON public.partner_department USING btree (partner);


--
-- Name: partner_partner_department_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX partner_partner_department_idx ON public.partner_partner USING btree (department);


--
-- Name: partner_partner_email_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX partner_partner_email_idx ON public.partner_partner USING btree (email);


--
-- Name: partner_partner_full_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX partner_partner_full_name_idx ON public.partner_partner USING btree (full_name);


--
-- Name: partner_project_parent_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX partner_project_parent_idx ON public.partner_project USING btree (parent);


--
-- Name: project_task_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX project_task_name_idx ON public.project_task USING btree (name);


--
-- Name: project_task_project_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX project_task_project_idx ON public.project_task USING btree (project);


--
-- Name: project_task_project_task_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX project_task_project_task_idx ON public.project_task USING btree (project_task);


--
-- Name: project_task_user_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX project_task_user_id_idx ON public.project_task USING btree (user_id);


--
-- Name: project_work_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX project_work_name_idx ON public.project_work USING btree (name);


--
-- Name: project_work_task_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX project_work_task_idx ON public.project_work USING btree (task);


--
-- Name: project_work_user_id_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX project_work_user_id_idx ON public.project_work USING btree (user_id);


--
-- Name: team_task_assigned_to_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX team_task_assigned_to_idx ON public.team_task USING btree (assigned_to);


--
-- Name: team_task_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX team_task_name_idx ON public.team_task USING btree (name);


--
-- Name: team_task_team_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX team_task_team_idx ON public.team_task USING btree (team);


--
-- Name: team_topic_name_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX team_topic_name_idx ON public.team_topic USING btree (name);


--
-- Name: team_topic_team_idx; Type: INDEX; Schema: public; Owner: axelor
--

CREATE INDEX team_topic_team_idx ON public.team_topic USING btree (team);


--
-- Name: meta_file fk_10de0l7kp2donk4k96ybhdkxo; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_file
    ADD CONSTRAINT fk_10de0l7kp2donk4k96ybhdkxo FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: dms_permission fk_127pwlmjs9cvtagrav5imuiwg; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_permission
    ADD CONSTRAINT fk_127pwlmjs9cvtagrav5imuiwg FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: dms_file fk_163vpdfuqhyu55si7jv5ahw7t; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file
    ADD CONSTRAINT fk_163vpdfuqhyu55si7jv5ahw7t FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: project_work fk_16y9yjs47n7ljj62harvfaxka; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_work
    ADD CONSTRAINT fk_16y9yjs47n7ljj62harvfaxka FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_select_item fk_1civm9tyvri3614gheu35miys; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_select_item
    ADD CONSTRAINT fk_1civm9tyvri3614gheu35miys FOREIGN KEY (select_id) REFERENCES public.meta_select(id);


--
-- Name: auth_role_meta_permissions fk_1k4cf5ivb360bmnkfkj3l6yxf; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role_meta_permissions
    ADD CONSTRAINT fk_1k4cf5ivb360bmnkfkj3l6yxf FOREIGN KEY (meta_permissions) REFERENCES public.meta_permission(id);


--
-- Name: demoimpl_person_email fk_1vmey9bhmsvfwbmwkmih3djnj; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.demoimpl_person_email
    ADD CONSTRAINT fk_1vmey9bhmsvfwbmwkmih3djnj FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: team_team fk_2j3e2xtgohvudsbekmmfvpxck; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team
    ADD CONSTRAINT fk_2j3e2xtgohvudsbekmmfvpxck FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: mail_message fk_2morsbvk0kr4c6wkff6inmgfj; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT fk_2morsbvk0kr4c6wkff6inmgfj FOREIGN KEY (email_from) REFERENCES public.mail_address(id);


--
-- Name: partner_email fk_2ukkbfnqth06l75tyro9lsxod; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_email
    ADD CONSTRAINT fk_2ukkbfnqth06l75tyro9lsxod FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: partner_address fk_352rlativj4b7c42ewq1eswjk; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_address
    ADD CONSTRAINT fk_352rlativj4b7c42ewq1eswjk FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_address fk_37jdc1tqrcebe2xj4gttidt50; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_address
    ADD CONSTRAINT fk_37jdc1tqrcebe2xj4gttidt50 FOREIGN KEY (partner) REFERENCES public.partner_partner(id);


--
-- Name: project_task fk_3d965u7t9ixv7tw0ihk3ntf8b; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_task
    ADD CONSTRAINT fk_3d965u7t9ixv7tw0ihk3ntf8b FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_json_field fk_3dhu1jutlhjjkjwjkhdhss2ho; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_field
    ADD CONSTRAINT fk_3dhu1jutlhjjkjwjkhdhss2ho FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_schedule_param fk_3en4p8y6ekgvuj5f4qsbhlt5w; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_schedule_param
    ADD CONSTRAINT fk_3en4p8y6ekgvuj5f4qsbhlt5w FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_department fk_3xa0im6lmyoc8pf8k5giguxgr; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_department
    ADD CONSTRAINT fk_3xa0im6lmyoc8pf8k5giguxgr FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_company fk_46ynbdf9xb31i1knltj85kjud; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_company
    ADD CONSTRAINT fk_46ynbdf9xb31i1knltj85kjud FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: team_topic fk_4erjscaumniey2gxh9secevav; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_topic
    ADD CONSTRAINT fk_4erjscaumniey2gxh9secevav FOREIGN KEY (team) REFERENCES public.team_team(id);


--
-- Name: meta_menu fk_4gatyekht2sdcp83lf2s70s7a; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu
    ADD CONSTRAINT fk_4gatyekht2sdcp83lf2s70s7a FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: partner_project_partner_set fk_4gq427itpfnslcd7nq4x50vg8; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project_partner_set
    ADD CONSTRAINT fk_4gq427itpfnslcd7nq4x50vg8 FOREIGN KEY (partner_set) REFERENCES public.partner_partner(id);


--
-- Name: meta_permission_rule fk_4vv92axsshyys64fvni7kphjs; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_permission_rule
    ADD CONSTRAINT fk_4vv92axsshyys64fvni7kphjs FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: auth_role_permissions fk_524tm89e2wrcrnij5kquilj5e; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role_permissions
    ADD CONSTRAINT fk_524tm89e2wrcrnij5kquilj5e FOREIGN KEY (permissions) REFERENCES public.auth_permission(id);


--
-- Name: meta_menu_roles fk_55ad0697dibne6iebmb22q3db; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu_roles
    ADD CONSTRAINT fk_55ad0697dibne6iebmb22q3db FOREIGN KEY (roles) REFERENCES public.auth_role(id);


--
-- Name: auth_user_permissions fk_55sydc33j6iksfnyjvx9v2122; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user_permissions
    ADD CONSTRAINT fk_55sydc33j6iksfnyjvx9v2122 FOREIGN KEY (auth_user) REFERENCES public.auth_user(id);


--
-- Name: meta_view_groups fk_589982hkq70vr4lscsfjoaxcr; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view_groups
    ADD CONSTRAINT fk_589982hkq70vr4lscsfjoaxcr FOREIGN KEY (groups) REFERENCES public.auth_group(id);


--
-- Name: project_work fk_5ftbi9qc30ai6s4gcoqsnjj6i; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_work
    ADD CONSTRAINT fk_5ftbi9qc30ai6s4gcoqsnjj6i FOREIGN KEY (task) REFERENCES public.project_task(id);


--
-- Name: partner_partner_project fk_5kjqqvs5qchygxpngxdc4sdup; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_partner_project
    ADD CONSTRAINT fk_5kjqqvs5qchygxpngxdc4sdup FOREIGN KEY (partner_partner) REFERENCES public.partner_partner(id);


--
-- Name: meta_json_model fk_5r7v5gfsmvufwpd8no0aqxy8e; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model
    ADD CONSTRAINT fk_5r7v5gfsmvufwpd8no0aqxy8e FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_json_field_roles fk_5u7quwsbk76055whbj7u8ids8; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_field_roles
    ADD CONSTRAINT fk_5u7quwsbk76055whbj7u8ids8 FOREIGN KEY (roles) REFERENCES public.auth_role(id);


--
-- Name: dms_file_tags fk_5yyb3urpdasgs2flwi95y71u7; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file_tags
    ADD CONSTRAINT fk_5yyb3urpdasgs2flwi95y71u7 FOREIGN KEY (dms_file) REFERENCES public.dms_file(id);


--
-- Name: project_task fk_695ye854bdun73u2oblekgnby; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_task
    ADD CONSTRAINT fk_695ye854bdun73u2oblekgnby FOREIGN KEY (project_task) REFERENCES public.project_task(id);


--
-- Name: mail_message_recipients fk_6dk382dik29f7st4tn0dkbvd0; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message_recipients
    ADD CONSTRAINT fk_6dk382dik29f7st4tn0dkbvd0 FOREIGN KEY (recipients) REFERENCES public.mail_address(id);


--
-- Name: meta_field fk_6fh4995wgxf4210v8yml8hmfu; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_field
    ADD CONSTRAINT fk_6fh4995wgxf4210v8yml8hmfu FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: auth_group_meta_permissions fk_6fvud0yualxnppl8c8o5th6bf; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group_meta_permissions
    ADD CONSTRAINT fk_6fvud0yualxnppl8c8o5th6bf FOREIGN KEY (meta_permissions) REFERENCES public.meta_permission(id);


--
-- Name: partner_company_partner fk_6gn6t51loklt58bwnkneq2fxs; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_company_partner
    ADD CONSTRAINT fk_6gn6t51loklt58bwnkneq2fxs FOREIGN KEY (partner) REFERENCES public.partner_partner(id);


--
-- Name: mail_message fk_6ix3qamiv3asr7ot2uotejk8e; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT fk_6ix3qamiv3asr7ot2uotejk8e FOREIGN KEY (root) REFERENCES public.mail_message(id);


--
-- Name: partner_country fk_6p264ip8flamc62pf6y7xoqgv; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_country
    ADD CONSTRAINT fk_6p264ip8flamc62pf6y7xoqgv FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_project_member_set fk_6snr8e3vy66y56lnrswlderm1; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project_member_set
    ADD CONSTRAINT fk_6snr8e3vy66y56lnrswlderm1 FOREIGN KEY (member_set) REFERENCES public.auth_user(id);


--
-- Name: meta_menu_groups fk_6xbngt33kjc2xxhmqr9ppoc66; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu_groups
    ADD CONSTRAINT fk_6xbngt33kjc2xxhmqr9ppoc66 FOREIGN KEY (menus) REFERENCES public.meta_menu(id);


--
-- Name: meta_select fk_7ccthm16b2mc57a6jyq5u04u3; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_select
    ADD CONSTRAINT fk_7ccthm16b2mc57a6jyq5u04u3 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_module fk_7vi33e4a2ipjpl3gk8pajgsu4; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_module
    ADD CONSTRAINT fk_7vi33e4a2ipjpl3gk8pajgsu4 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: mail_message fk_80x8p50f1udy9r5kkljher01d; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT fk_80x8p50f1udy9r5kkljher01d FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: auth_user_roles fk_8i6hv5jhi6xx6lbi2yjhq6uyt; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user_roles
    ADD CONSTRAINT fk_8i6hv5jhi6xx6lbi2yjhq6uyt FOREIGN KEY (auth_user) REFERENCES public.auth_user(id);


--
-- Name: partner_address fk_8ibnojqc8etkvb71d2pgr62fk; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_address
    ADD CONSTRAINT fk_8ibnojqc8etkvb71d2pgr62fk FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_enum fk_8lqa3qftbsk4eg1bepriv3ugt; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_enum
    ADD CONSTRAINT fk_8lqa3qftbsk4eg1bepriv3ugt FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_json_field fk_8tu10ugtae7yn48lxx08py7je; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_field
    ADD CONSTRAINT fk_8tu10ugtae7yn48lxx08py7je FOREIGN KEY (json_model) REFERENCES public.meta_json_model(id);


--
-- Name: partner_project fk_8uskfvjwojdy28i209808f6ge; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project
    ADD CONSTRAINT fk_8uskfvjwojdy28i209808f6ge FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: team_topic fk_91udap3bm9ija5b843y3skine; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_topic
    ADD CONSTRAINT fk_91udap3bm9ija5b843y3skine FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: dms_permission fk_942gipav0xvlbod1xtqn0ig63; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_permission
    ADD CONSTRAINT fk_942gipav0xvlbod1xtqn0ig63 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: auth_group_meta_permissions fk_99t9uf2a2ngfqwr4w4x5stn5w; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group_meta_permissions
    ADD CONSTRAINT fk_99t9uf2a2ngfqwr4w4x5stn5w FOREIGN KEY (auth_group) REFERENCES public.auth_group(id);


--
-- Name: meta_json_field_roles fk_9qd64ao2d9k52tc5f4c8fkum0; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_field_roles
    ADD CONSTRAINT fk_9qd64ao2d9k52tc5f4c8fkum0 FOREIGN KEY (meta_json_field) REFERENCES public.meta_json_field(id);


--
-- Name: mail_message fk_9vcywthvk46spfrtwaayby5sd; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT fk_9vcywthvk46spfrtwaayby5sd FOREIGN KEY (parent) REFERENCES public.mail_message(id);


--
-- Name: partner_email fk_9xmj6l8gjcuiol6ok0iv4ck1v; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_email
    ADD CONSTRAINT fk_9xmj6l8gjcuiol6ok0iv4ck1v FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: dms_permission fk_a5kcaiqiqlkqkbnphm5soyq9w; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_permission
    ADD CONSTRAINT fk_a5kcaiqiqlkqkbnphm5soyq9w FOREIGN KEY (file_id) REFERENCES public.dms_file(id);


--
-- Name: mail_message fk_aabs0r6llmjvfkkeiqyfhspx2; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT fk_aabs0r6llmjvfkkeiqyfhspx2 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: dms_file_tag fk_ae54tdh2ib2lpfn2jdinaepe1; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file_tag
    ADD CONSTRAINT fk_ae54tdh2ib2lpfn2jdinaepe1 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_view fk_ajqx2t8vqaphchn6lxqvr3yi1; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view
    ADD CONSTRAINT fk_ajqx2t8vqaphchn6lxqvr3yi1 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: auth_user fk_amlpfk6mo2f0hbn3cgm1sxgvy; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT fk_amlpfk6mo2f0hbn3cgm1sxgvy FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: meta_sequence fk_arlfchxhyngys3ib6oo73cbj0; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_sequence
    ADD CONSTRAINT fk_arlfchxhyngys3ib6oo73cbj0 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: mail_address fk_b4gg1srm6k2kvvkv5k7omoskq; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_address
    ADD CONSTRAINT fk_b4gg1srm6k2kvvkv5k7omoskq FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_partner_project fk_bfm3hp5aadu7mnaottdnv4f5w; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_partner_project
    ADD CONSTRAINT fk_bfm3hp5aadu7mnaottdnv4f5w FOREIGN KEY (project) REFERENCES public.partner_project(id);


--
-- Name: meta_sequence fk_bgt7uqpi0okjs86o11fmnm1tp; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_sequence
    ADD CONSTRAINT fk_bgt7uqpi0okjs86o11fmnm1tp FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_filter fk_bj423q508os1rh32uksytb4b4; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_filter
    ADD CONSTRAINT fk_bj423q508os1rh32uksytb4b4 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_enum fk_blaiiys1wjyxrjvlnqkwbdq77; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_enum
    ADD CONSTRAINT fk_blaiiys1wjyxrjvlnqkwbdq77 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: auth_role_meta_permissions fk_bq8f6gm7rdfron9ucauu1vuyy; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role_meta_permissions
    ADD CONSTRAINT fk_bq8f6gm7rdfron9ucauu1vuyy FOREIGN KEY (auth_role) REFERENCES public.auth_role(id);


--
-- Name: meta_json_model_roles fk_bt693a9cf690hv0i8raq104lp; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model_roles
    ADD CONSTRAINT fk_bt693a9cf690hv0i8raq104lp FOREIGN KEY (meta_json_model) REFERENCES public.meta_json_model(id);


--
-- Name: meta_view_custom fk_c0eqeydfkorj6rbwlvcjaas5h; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view_custom
    ADD CONSTRAINT fk_c0eqeydfkorj6rbwlvcjaas5h FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_attachment fk_c3hilckglylwj3gw4f2a62wk2; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_attachment
    ADD CONSTRAINT fk_c3hilckglylwj3gw4f2a62wk2 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: mail_follower fk_c8s5nl7atkdmc03ndvjvo6b2d; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_follower
    ADD CONSTRAINT fk_c8s5nl7atkdmc03ndvjvo6b2d FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: mail_address fk_cd51u8x6pi5hc8xmdswdiaf5l; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_address
    ADD CONSTRAINT fk_cd51u8x6pi5hc8xmdswdiaf5l FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_view_custom fk_cd7rbh06u655vqmeaguaihof4; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view_custom
    ADD CONSTRAINT fk_cd7rbh06u655vqmeaguaihof4 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_menu fk_cn3k58mel1ahm8x8dgjk2vrk2; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu
    ADD CONSTRAINT fk_cn3k58mel1ahm8x8dgjk2vrk2 FOREIGN KEY (action) REFERENCES public.meta_action(id);


--
-- Name: dms_file_tags fk_cnr9juvqj0a6cavwjiwuhjggl; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file_tags
    ADD CONSTRAINT fk_cnr9juvqj0a6cavwjiwuhjggl FOREIGN KEY (tags) REFERENCES public.dms_file_tag(id);


--
-- Name: meta_schedule fk_cs6ecdfpckjeqbtlf8mbo54ay; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_schedule
    ADD CONSTRAINT fk_cs6ecdfpckjeqbtlf8mbo54ay FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_address fk_cupq8fysdgcc8a0xnugmhlvl0; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_address
    ADD CONSTRAINT fk_cupq8fysdgcc8a0xnugmhlvl0 FOREIGN KEY (country) REFERENCES public.partner_country(id);


--
-- Name: partner_department fk_cx2xu1yxnwag45ii30dix23j2; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_department
    ADD CONSTRAINT fk_cx2xu1yxnwag45ii30dix23j2 FOREIGN KEY (partner) REFERENCES public.partner_partner(id);


--
-- Name: meta_permission_rule fk_cy1ihj15bch94x9qmqhiuvu6x; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_permission_rule
    ADD CONSTRAINT fk_cy1ihj15bch94x9qmqhiuvu6x FOREIGN KEY (meta_permission) REFERENCES public.meta_permission(id);


--
-- Name: partner_company fk_cyemq2edi65m8npflpt4brpa1; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_company
    ADD CONSTRAINT fk_cyemq2edi65m8npflpt4brpa1 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: auth_role fk_d014t91bi3d1udigbmv8o8wp8; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role
    ADD CONSTRAINT fk_d014t91bi3d1udigbmv8o8wp8 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_module_depends fk_d2wp5mnja19j07cbclbeji7er; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_module_depends
    ADD CONSTRAINT fk_d2wp5mnja19j07cbclbeji7er FOREIGN KEY (depend_id) REFERENCES public.meta_module(id);


--
-- Name: meta_schedule_param fk_dcr9hunfdcg6r5qbrhqut7m9r; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_schedule_param
    ADD CONSTRAINT fk_dcr9hunfdcg6r5qbrhqut7m9r FOREIGN KEY (schedule) REFERENCES public.meta_schedule(id);


--
-- Name: auth_user_permissions fk_ddylio6c2hd5ewtapqhkt8x43; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user_permissions
    ADD CONSTRAINT fk_ddylio6c2hd5ewtapqhkt8x43 FOREIGN KEY (permissions) REFERENCES public.auth_permission(id);


--
-- Name: meta_json_model fk_dv6g8x14s9vem0v9tkthjxml9; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model
    ADD CONSTRAINT fk_dv6g8x14s9vem0v9tkthjxml9 FOREIGN KEY (grid_view) REFERENCES public.meta_view(id);


--
-- Name: project_task fk_dymt6c1shlclydio45sv75i9p; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_task
    ADD CONSTRAINT fk_dymt6c1shlclydio45sv75i9p FOREIGN KEY (project) REFERENCES public.partner_project(id);


--
-- Name: meta_filter fk_e1yx61gqkp7o9dct2uywkpaec; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_filter
    ADD CONSTRAINT fk_e1yx61gqkp7o9dct2uywkpaec FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: meta_action_menu fk_eakg6ue90h5tifq0roa7k8j7d; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action_menu
    ADD CONSTRAINT fk_eakg6ue90h5tifq0roa7k8j7d FOREIGN KEY (parent) REFERENCES public.meta_action_menu(id);


--
-- Name: team_team_roles fk_ejd8kyjweo0qohdqstojbhd48; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team_roles
    ADD CONSTRAINT fk_ejd8kyjweo0qohdqstojbhd48 FOREIGN KEY (roles) REFERENCES public.auth_role(id);


--
-- Name: auth_permission fk_f3vb02wwpii82pru62q7iyjxy; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT fk_f3vb02wwpii82pru62q7iyjxy FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_project_partner_set fk_f7idxifsagl1rqy8151g9bemi; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project_partner_set
    ADD CONSTRAINT fk_f7idxifsagl1rqy8151g9bemi FOREIGN KEY (partner_project) REFERENCES public.partner_project(id);


--
-- Name: demoimpl_person fk_f9s3ixsbfv6bugmcimb5ooac; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.demoimpl_person
    ADD CONSTRAINT fk_f9s3ixsbfv6bugmcimb5ooac FOREIGN KEY (email) REFERENCES public.demoimpl_person_email(id);


--
-- Name: auth_group_permissions fk_f9taqgiiv74i7cqe0e54l99pe; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT fk_f9taqgiiv74i7cqe0e54l99pe FOREIGN KEY (permissions) REFERENCES public.auth_permission(id);


--
-- Name: meta_menu fk_faev4fiphmyxhvry4gw3uw1k8; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu
    ADD CONSTRAINT fk_faev4fiphmyxhvry4gw3uw1k8 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_select_item fk_fani55s0jbh4c89ppovtlovwv; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_select_item
    ADD CONSTRAINT fk_fani55s0jbh4c89ppovtlovwv FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: partner_country fk_fq70vkoebh7kttud22xnxapks; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_country
    ADD CONSTRAINT fk_fq70vkoebh7kttud22xnxapks FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: auth_group_permissions fk_g42npgku1mtrxniuwwghl7ehs; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT fk_g42npgku1mtrxniuwwghl7ehs FOREIGN KEY (auth_group) REFERENCES public.auth_group(id);


--
-- Name: auth_user_meta_permissions fk_g43w711joeyaxfv8emjqlafgy; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user_meta_permissions
    ADD CONSTRAINT fk_g43w711joeyaxfv8emjqlafgy FOREIGN KEY (auth_user) REFERENCES public.auth_user(id);


--
-- Name: auth_user_roles fk_g4do2mwwomxkjscq7nlowm3il; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user_roles
    ADD CONSTRAINT fk_g4do2mwwomxkjscq7nlowm3il FOREIGN KEY (roles) REFERENCES public.auth_role(id);


--
-- Name: project_task fk_g6a10avqvtcdxsg1yodw2aaja; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_task
    ADD CONSTRAINT fk_g6a10avqvtcdxsg1yodw2aaja FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: project_task fk_g6cn3jd6f8c8b238ymx9oiehe; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_task
    ADD CONSTRAINT fk_g6cn3jd6f8c8b238ymx9oiehe FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: team_task fk_g6cv6vflla5vtrq2nylf79q8l; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_task
    ADD CONSTRAINT fk_g6cv6vflla5vtrq2nylf79q8l FOREIGN KEY (assigned_to) REFERENCES public.auth_user(id);


--
-- Name: team_team_members fk_gksj7ngocpnflj4xmxe38wc70; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team_members
    ADD CONSTRAINT fk_gksj7ngocpnflj4xmxe38wc70 FOREIGN KEY (members) REFERENCES public.auth_user(id);


--
-- Name: meta_json_record fk_go5foklrxrie7vrkg73ps1g62; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_record
    ADD CONSTRAINT fk_go5foklrxrie7vrkg73ps1g62 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_json_model fk_h7bxm2fj6aivw6w32ga23dalf; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model
    ADD CONSTRAINT fk_h7bxm2fj6aivw6w32ga23dalf FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_attachment fk_h9rykatbitbcaxdcq0t3c9tl0; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_attachment
    ADD CONSTRAINT fk_h9rykatbitbcaxdcq0t3c9tl0 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_json_field fk_h9s827ufo5tkl3k79ucnd3221; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_field
    ADD CONSTRAINT fk_h9s827ufo5tkl3k79ucnd3221 FOREIGN KEY (target_json_model) REFERENCES public.meta_json_model(id);


--
-- Name: mail_message fk_hceyv29o3ldalyhbwyke3xjac; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT fk_hceyv29o3ldalyhbwyke3xjac FOREIGN KEY (author) REFERENCES public.auth_user(id);


--
-- Name: mail_flags fk_hoo3b947nr2tlcfwynx0l0kxc; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_flags
    ADD CONSTRAINT fk_hoo3b947nr2tlcfwynx0l0kxc FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: demoimpl_person fk_hrgeo7qeivcd8t12g19v1i67p; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.demoimpl_person
    ADD CONSTRAINT fk_hrgeo7qeivcd8t12g19v1i67p FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: team_team_roles fk_hwp5ppb22g8vio0t68c41bvkg; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team_roles
    ADD CONSTRAINT fk_hwp5ppb22g8vio0t68c41bvkg FOREIGN KEY (team_team) REFERENCES public.team_team(id);


--
-- Name: project_work fk_ijbrcjn004xqftbdtpfe9u5my; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_work
    ADD CONSTRAINT fk_ijbrcjn004xqftbdtpfe9u5my FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: dms_file fk_isqqivc6brgle70ejev0ouxyp; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file
    ADD CONSTRAINT fk_isqqivc6brgle70ejev0ouxyp FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_partner fk_j8suhpuo7q22tm9iev39tkwjn; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_partner
    ADD CONSTRAINT fk_j8suhpuo7q22tm9iev39tkwjn FOREIGN KEY (email) REFERENCES public.partner_email(id);


--
-- Name: auth_user fk_j8uwc0wf76hh3r75calukqpfu; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT fk_j8uwc0wf76hh3r75calukqpfu FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_partner fk_jbr3cfs1va3xx09k7ptmq9vu4; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_partner
    ADD CONSTRAINT fk_jbr3cfs1va3xx09k7ptmq9vu4 FOREIGN KEY (department) REFERENCES public.partner_department(id);


--
-- Name: partner_partner fk_jk1tujrpuiqcmyp0rijdsc4vs; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_partner
    ADD CONSTRAINT fk_jk1tujrpuiqcmyp0rijdsc4vs FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_menu fk_jk6vvh0bx8cx8o1tjacx6dtcn; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu
    ADD CONSTRAINT fk_jk6vvh0bx8cx8o1tjacx6dtcn FOREIGN KEY (parent) REFERENCES public.meta_menu(id);


--
-- Name: partner_project_member_set fk_jouokmlai6erbh0rgpsayihgu; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project_member_set
    ADD CONSTRAINT fk_jouokmlai6erbh0rgpsayihgu FOREIGN KEY (partner_project) REFERENCES public.partner_project(id);


--
-- Name: partner_project fk_jp8h1kk6sqjxhdjeyahaca2cn; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project
    ADD CONSTRAINT fk_jp8h1kk6sqjxhdjeyahaca2cn FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: partner_partner fk_jrab43bisij1irxk8kfs6b4su; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_partner
    ADD CONSTRAINT fk_jrab43bisij1irxk8kfs6b4su FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_view_groups fk_k2bdeu71oyhdiac7y9ijut967; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view_groups
    ADD CONSTRAINT fk_k2bdeu71oyhdiac7y9ijut967 FOREIGN KEY (views) REFERENCES public.meta_view(id);


--
-- Name: meta_json_record fk_k3ud457x8rc2xo2lhl0r563cx; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_record
    ADD CONSTRAINT fk_k3ud457x8rc2xo2lhl0r563cx FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: team_team_members fk_k5i1gy5i6qjssxb6mym2oxq1w; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team_members
    ADD CONSTRAINT fk_k5i1gy5i6qjssxb6mym2oxq1w FOREIGN KEY (team_team) REFERENCES public.team_team(id);


--
-- Name: auth_user fk_k6awdetk9rmlfb3nh2mkl2hio; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT fk_k6awdetk9rmlfb3nh2mkl2hio FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: team_task fk_kj0791oi7y9bcvdh62n9yiydq; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_task
    ADD CONSTRAINT fk_kj0791oi7y9bcvdh62n9yiydq FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_select_item fk_kndsoedxpubpquhdq9qdyempk; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_select_item
    ADD CONSTRAINT fk_kndsoedxpubpquhdq9qdyempk FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_filter fk_l8qox10rk992lemmrsxbt3m8s; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_filter
    ADD CONSTRAINT fk_l8qox10rk992lemmrsxbt3m8s FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_json_model fk_lh7yalr17a0cpmlo72wh6038t; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model
    ADD CONSTRAINT fk_lh7yalr17a0cpmlo72wh6038t FOREIGN KEY (form_view) REFERENCES public.meta_view(id);


--
-- Name: meta_permission_rule fk_llr6745ut4d47wk0f3w8ppdtt; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_permission_rule
    ADD CONSTRAINT fk_llr6745ut4d47wk0f3w8ppdtt FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: team_team fk_loi0nbq58gcek6j6dlahdy7r5; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_team
    ADD CONSTRAINT fk_loi0nbq58gcek6j6dlahdy7r5 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: demoimpl_person_email fk_m2rm8atdlpr6dt3r69658y97g; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.demoimpl_person_email
    ADD CONSTRAINT fk_m2rm8atdlpr6dt3r69658y97g FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: mail_follower fk_m4tousyh5ij7oqpjp3okx5810; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_follower
    ADD CONSTRAINT fk_m4tousyh5ij7oqpjp3okx5810 FOREIGN KEY (email) REFERENCES public.mail_address(id);


--
-- Name: meta_field fk_m6n1xjatu5vvtwi9s1f1pxf4m; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_field
    ADD CONSTRAINT fk_m6n1xjatu5vvtwi9s1f1pxf4m FOREIGN KEY (meta_model) REFERENCES public.meta_model(id);


--
-- Name: meta_file fk_m6p0ufmd8fcgb0p32rd12uqlc; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_file
    ADD CONSTRAINT fk_m6p0ufmd8fcgb0p32rd12uqlc FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: dms_file fk_miang00shyvt5u1km5fc87xs8; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file
    ADD CONSTRAINT fk_miang00shyvt5u1km5fc87xs8 FOREIGN KEY (parent) REFERENCES public.dms_file(id);


--
-- Name: project_work fk_mkbf1v5o4gi4vn2mog39k53ci; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.project_work
    ADD CONSTRAINT fk_mkbf1v5o4gi4vn2mog39k53ci FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: partner_department fk_mo4yel7gvwog4ayclgevhx7d4; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_department
    ADD CONSTRAINT fk_mo4yel7gvwog4ayclgevhx7d4 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_action_menu fk_mv1pxx9n57iwv0c9af1eo110t; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action_menu
    ADD CONSTRAINT fk_mv1pxx9n57iwv0c9af1eo110t FOREIGN KEY (action) REFERENCES public.meta_action(id);


--
-- Name: dms_permission fk_mw9fg3h347sq8d3sgt6gn35ud; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_permission
    ADD CONSTRAINT fk_mw9fg3h347sq8d3sgt6gn35ud FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: meta_json_model_roles fk_na3oksopy1iru5hluul3kmkef; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model_roles
    ADD CONSTRAINT fk_na3oksopy1iru5hluul3kmkef FOREIGN KEY (roles) REFERENCES public.auth_role(id);


--
-- Name: meta_action fk_ng7j8hobwajijo733v5cw5omq; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action
    ADD CONSTRAINT fk_ng7j8hobwajijo733v5cw5omq FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: mail_follower fk_nj42whqsygbhkh62sru1g4bw8; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_follower
    ADD CONSTRAINT fk_nj42whqsygbhkh62sru1g4bw8 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_action_menu fk_nkdlwsxme9m6vx81qgiotthf1; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action_menu
    ADD CONSTRAINT fk_nkdlwsxme9m6vx81qgiotthf1 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_view fk_ntven8ewkrlyffuh2ovhgkqp2; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view
    ADD CONSTRAINT fk_ntven8ewkrlyffuh2ovhgkqp2 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_module_depends fk_o3jnxisi4yccn4s7diwi8h9tp; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_module_depends
    ADD CONSTRAINT fk_o3jnxisi4yccn4s7diwi8h9tp FOREIGN KEY (module_id) REFERENCES public.meta_module(id);


--
-- Name: meta_permission fk_o7mkddkrmwojdhy353gukxt2g; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_permission
    ADD CONSTRAINT fk_o7mkddkrmwojdhy353gukxt2g FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_action fk_obldfn9w62soqi71ud4t67pe6; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action
    ADD CONSTRAINT fk_obldfn9w62soqi71ud4t67pe6 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: demoimpl_person fk_omn3uebuuvbeq6ojj7rim4hq0; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.demoimpl_person
    ADD CONSTRAINT fk_omn3uebuuvbeq6ojj7rim4hq0 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_json_model fk_osg3guwx9yrfbjck6nfl94aex; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model
    ADD CONSTRAINT fk_osg3guwx9yrfbjck6nfl94aex FOREIGN KEY (menu) REFERENCES public.meta_menu(id);


--
-- Name: meta_permission fk_oso9ylmics0plrapm583tr14g; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_permission
    ADD CONSTRAINT fk_oso9ylmics0plrapm583tr14g FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: mail_flags fk_ov44ek1v3bp0o0qimfggscrwi; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_flags
    ADD CONSTRAINT fk_ov44ek1v3bp0o0qimfggscrwi FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_action_menu fk_ox8d3kumptma6eb9ill6habrg; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_action_menu
    ADD CONSTRAINT fk_ox8d3kumptma6eb9ill6habrg FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: mail_follower fk_p2y4wnca21t50oqrh6o0y5mh7; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_follower
    ADD CONSTRAINT fk_p2y4wnca21t50oqrh6o0y5mh7 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_json_model fk_p57u37174k4makw12ejbcgs3g; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model
    ADD CONSTRAINT fk_p57u37174k4makw12ejbcgs3g FOREIGN KEY (action) REFERENCES public.meta_action(id);


--
-- Name: meta_schedule_param fk_pjdrystqffpyj815w8kapvdr3; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_schedule_param
    ADD CONSTRAINT fk_pjdrystqffpyj815w8kapvdr3 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_attachment fk_plpxltvj6gljtmltmi9nlcp4h; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_attachment
    ADD CONSTRAINT fk_plpxltvj6gljtmltmi9nlcp4h FOREIGN KEY (meta_file) REFERENCES public.meta_file(id);


--
-- Name: meta_menu_roles fk_q58k29a9avu7tkjiicjv8yc7s; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu_roles
    ADD CONSTRAINT fk_q58k29a9avu7tkjiicjv8yc7s FOREIGN KEY (menus) REFERENCES public.meta_menu(id);


--
-- Name: dms_permission fk_qcbrnbww79pq81n5hejaw6i7x; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_permission
    ADD CONSTRAINT fk_qcbrnbww79pq81n5hejaw6i7x FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_schedule fk_qkunakdance8850ypt4urmfiv; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_schedule
    ADD CONSTRAINT fk_qkunakdance8850ypt4urmfiv FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: partner_project fk_qlq6v21q7n107fqiyoxvl7c6u; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_project
    ADD CONSTRAINT fk_qlq6v21q7n107fqiyoxvl7c6u FOREIGN KEY (parent) REFERENCES public.partner_project(id);


--
-- Name: auth_role fk_qmsxgcn50i22ixcpc5r8k5ttm; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role
    ADD CONSTRAINT fk_qmsxgcn50i22ixcpc5r8k5ttm FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_module fk_qp0y6nijmm3pjh517uyrftmpt; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_module
    ADD CONSTRAINT fk_qp0y6nijmm3pjh517uyrftmpt FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: auth_user_meta_permissions fk_qtu7q51l710xrr9mk5js65o5b; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_user_meta_permissions
    ADD CONSTRAINT fk_qtu7q51l710xrr9mk5js65o5b FOREIGN KEY (meta_permissions) REFERENCES public.meta_permission(id);


--
-- Name: meta_json_field fk_r3oj3e6rj6n5xakyt84nlyxw7; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_field
    ADD CONSTRAINT fk_r3oj3e6rj6n5xakyt84nlyxw7 FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_field fk_r6whwsaa8isalrqauxccig6p6; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_field
    ADD CONSTRAINT fk_r6whwsaa8isalrqauxccig6p6 FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: auth_group fk_r9is5ge01fcurjvpfagsuuoad; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT fk_r9is5ge01fcurjvpfagsuuoad FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: mail_message_recipients fk_r9t2c5rhgp51b3cl7ik7jsihj; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_message_recipients
    ADD CONSTRAINT fk_r9t2c5rhgp51b3cl7ik7jsihj FOREIGN KEY (mail_message) REFERENCES public.mail_message(id);


--
-- Name: meta_json_model fk_rcp56wf27jttvvhco0dtty7sl; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_json_model
    ADD CONSTRAINT fk_rcp56wf27jttvvhco0dtty7sl FOREIGN KEY (menu_parent) REFERENCES public.meta_menu(id);


--
-- Name: meta_menu fk_rlgt9m6dv5bcsomo7ulmj8qge; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu
    ADD CONSTRAINT fk_rlgt9m6dv5bcsomo7ulmj8qge FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: team_task fk_rlnp19qymiqtgcc0ql5jnpbww; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_task
    ADD CONSTRAINT fk_rlnp19qymiqtgcc0ql5jnpbww FOREIGN KEY (team) REFERENCES public.team_team(id);


--
-- Name: meta_model fk_rn2x0uneia86v2u02es4ftp8f; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_model
    ADD CONSTRAINT fk_rn2x0uneia86v2u02es4ftp8f FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: partner_company_partner fk_rsmj0aw1ab1kvyesoup9lmt3t; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.partner_company_partner
    ADD CONSTRAINT fk_rsmj0aw1ab1kvyesoup9lmt3t FOREIGN KEY (company) REFERENCES public.partner_company(id);


--
-- Name: dms_file fk_ry2ht626gg2ehqu1n7vxm5ng4; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file
    ADD CONSTRAINT fk_ry2ht626gg2ehqu1n7vxm5ng4 FOREIGN KEY (meta_file) REFERENCES public.meta_file(id);


--
-- Name: auth_group_roles fk_s1ngmobew8jnagxqnnuol7e2x; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group_roles
    ADD CONSTRAINT fk_s1ngmobew8jnagxqnnuol7e2x FOREIGN KEY (auth_group) REFERENCES public.auth_group(id);


--
-- Name: mail_flags fk_s20v2gawgan2gv95vanx58u2w; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_flags
    ADD CONSTRAINT fk_s20v2gawgan2gv95vanx58u2w FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: auth_group fk_s8x260hcm0siwntuj698n2hic; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT fk_s8x260hcm0siwntuj698n2hic FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_menu_groups fk_sblr65tli04llpe67ufxdqmrm; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_menu_groups
    ADD CONSTRAINT fk_sblr65tli04llpe67ufxdqmrm FOREIGN KEY (groups) REFERENCES public.auth_group(id);


--
-- Name: meta_select fk_sf6hc03as6q4qyvantteu9usj; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_select
    ADD CONSTRAINT fk_sf6hc03as6q4qyvantteu9usj FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: team_topic fk_sm0n6470i1k4symkpwxl00gsh; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_topic
    ADD CONSTRAINT fk_sm0n6470i1k4symkpwxl00gsh FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: meta_view_custom fk_stj3hkuoj9sywh2e27vk4aix5; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_view_custom
    ADD CONSTRAINT fk_stj3hkuoj9sywh2e27vk4aix5 FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: auth_group_roles fk_sv99d6xqyriwro7t5x07cj99r; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_group_roles
    ADD CONSTRAINT fk_sv99d6xqyriwro7t5x07cj99r FOREIGN KEY (roles) REFERENCES public.auth_role(id);


--
-- Name: dms_permission fk_sxu4qhl4br0pld7lgtrq0bfbl; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_permission
    ADD CONSTRAINT fk_sxu4qhl4br0pld7lgtrq0bfbl FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: mail_flags fk_tcjd4ykmq8boj6kf4xgt8u1ay; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.mail_flags
    ADD CONSTRAINT fk_tcjd4ykmq8boj6kf4xgt8u1ay FOREIGN KEY (message) REFERENCES public.mail_message(id);


--
-- Name: dms_file_tag fk_te0bf1qi155u4xqe897mqqddi; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.dms_file_tag
    ADD CONSTRAINT fk_te0bf1qi155u4xqe897mqqddi FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: auth_role_permissions fk_thvhoynylv1dx2vf8c86swyme; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_role_permissions
    ADD CONSTRAINT fk_thvhoynylv1dx2vf8c86swyme FOREIGN KEY (auth_role) REFERENCES public.auth_role(id);


--
-- Name: team_task fk_tib02qleudwtw6hbssabrqjiv; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.team_task
    ADD CONSTRAINT fk_tib02qleudwtw6hbssabrqjiv FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- Name: auth_permission fk_tray2m1ftua9e0dake87s6q9u; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT fk_tray2m1ftua9e0dake87s6q9u FOREIGN KEY (updated_by) REFERENCES public.auth_user(id);


--
-- Name: meta_model fk_ujxa3p8kjta1k4xuv13sbpyn; Type: FK CONSTRAINT; Schema: public; Owner: axelor
--

ALTER TABLE ONLY public.meta_model
    ADD CONSTRAINT fk_ujxa3p8kjta1k4xuv13sbpyn FOREIGN KEY (created_by) REFERENCES public.auth_user(id);


--
-- PostgreSQL database dump complete
--

