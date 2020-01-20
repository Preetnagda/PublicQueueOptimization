PGDMP     5    (                 x            deepBlueHospital "   10.11 (Ubuntu 10.11-1.pgdg18.04+1)     12.1 (Ubuntu 12.1-1.pgdg18.04+1) �    C           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            D           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            E           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            F           1262    17128    deepBlueHospital    DATABASE     x   CREATE DATABASE "deepBlueHospital" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';
 "   DROP DATABASE "deepBlueHospital";
                postgres    false            �            1259    17160 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            postgres    false            �            1259    17158    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    203            G           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    202            �            1259    17170    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            postgres    false            �            1259    17168    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    205            H           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    204            �            1259    17152    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            postgres    false            �            1259    17150    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    201            I           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    200            �            1259    17178 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public            postgres    false            �            1259    17188    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            postgres    false            �            1259    17186    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209            J           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    208            �            1259    17176    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    207            K           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    206            �            1259    17196    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            postgres    false            �            1259    17194 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    211            L           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    210            �            1259    17374    billing_billingqueue    TABLE     �   CREATE TABLE public.billing_billingqueue (
    id integer NOT NULL,
    date_time timestamp with time zone NOT NULL,
    predicted_time numeric(10,1) NOT NULL,
    actual_time numeric(10,1),
    "billNo_id" integer NOT NULL
);
 (   DROP TABLE public.billing_billingqueue;
       public            postgres    false            �            1259    17372    billing_billingqueue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.billing_billingqueue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.billing_billingqueue_id_seq;
       public          postgres    false    228            M           0    0    billing_billingqueue_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.billing_billingqueue_id_seq OWNED BY public.billing_billingqueue.id;
          public          postgres    false    227            �            1259    17364    billing_patientbill    TABLE     �   CREATE TABLE public.billing_patientbill (
    id integer NOT NULL,
    "billAmount" numeric(10,2) NOT NULL,
    patient_id integer NOT NULL
);
 '   DROP TABLE public.billing_patientbill;
       public            postgres    false            �            1259    17362    billing_patientbill_id_seq    SEQUENCE     �   CREATE SEQUENCE public.billing_patientbill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.billing_patientbill_id_seq;
       public          postgres    false    226            N           0    0    billing_patientbill_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.billing_patientbill_id_seq OWNED BY public.billing_patientbill.id;
          public          postgres    false    225            �            1259    17256    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public            postgres    false            �            1259    17254    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    213            O           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    212            �            1259    17142    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            postgres    false            �            1259    17140    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    199            P           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    198            �            1259    17131    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            postgres    false            �            1259    17129    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    197            Q           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    196            �            1259    17351    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            postgres    false            �            1259    17289    offline_token_entrytoken    TABLE     s   CREATE TABLE public.offline_token_entrytoken (
    id integer NOT NULL,
    phno character varying(10) NOT NULL
);
 ,   DROP TABLE public.offline_token_entrytoken;
       public            postgres    false            �            1259    17287    offline_token_entrytoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.offline_token_entrytoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.offline_token_entrytoken_id_seq;
       public          postgres    false    215            R           0    0    offline_token_entrytoken_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.offline_token_entrytoken_id_seq OWNED BY public.offline_token_entrytoken.id;
          public          postgres    false    214            �            1259    17333 "   queueAlgorithms_appointmentrecords    TABLE     �  CREATE TABLE public."queueAlgorithms_appointmentrecords" (
    id integer NOT NULL,
    predicted_time numeric(10,1) NOT NULL,
    actual_time numeric(10,1) NOT NULL,
    time_in timestamp with time zone NOT NULL,
    consultation_in timestamp with time zone NOT NULL,
    consultation_out timestamp with time zone NOT NULL,
    consultation_time numeric(10,1),
    doctor_required_id integer NOT NULL,
    patient_id integer NOT NULL
);
 8   DROP TABLE public."queueAlgorithms_appointmentrecords";
       public            postgres    false            �            1259    17331 )   queueAlgorithms_appointmentrecords_id_seq    SEQUENCE     �   CREATE SEQUENCE public."queueAlgorithms_appointmentrecords_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."queueAlgorithms_appointmentrecords_id_seq";
       public          postgres    false    223            S           0    0 )   queueAlgorithms_appointmentrecords_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."queueAlgorithms_appointmentrecords_id_seq" OWNED BY public."queueAlgorithms_appointmentrecords".id;
          public          postgres    false    222            �            1259    17313    registration_appointmentqueue    TABLE       CREATE TABLE public.registration_appointmentqueue (
    id integer NOT NULL,
    date_time timestamp with time zone NOT NULL,
    time_in timestamp with time zone NOT NULL,
    predicted_time numeric(10,1) NOT NULL,
    actual_time numeric(10,1),
    consultation_time_in timestamp with time zone NOT NULL,
    doctor_required_id integer NOT NULL,
    patient_id integer NOT NULL
);
 1   DROP TABLE public.registration_appointmentqueue;
       public            postgres    false            �            1259    17311 $   registration_appointmentqueue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_appointmentqueue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.registration_appointmentqueue_id_seq;
       public          postgres    false    221            T           0    0 $   registration_appointmentqueue_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.registration_appointmentqueue_id_seq OWNED BY public.registration_appointmentqueue.id;
          public          postgres    false    220            �            1259    17297    registration_doctor    TABLE     D  CREATE TABLE public.registration_doctor (
    id integer NOT NULL,
    timepp numeric(10,1) NOT NULL,
    name character varying(100) NOT NULL,
    phno character varying(10) NOT NULL,
    email_id character varying(254) NOT NULL,
    speciality character varying(20) NOT NULL,
    "feePerPatient" numeric(10,2) NOT NULL
);
 '   DROP TABLE public.registration_doctor;
       public            postgres    false            �            1259    17295    registration_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.registration_doctor_id_seq;
       public          postgres    false    217            U           0    0    registration_doctor_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.registration_doctor_id_seq OWNED BY public.registration_doctor.id;
          public          postgres    false    216            �            1259    17305    registration_patient    TABLE     �   CREATE TABLE public.registration_patient (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    phno character varying(10) NOT NULL
);
 (   DROP TABLE public.registration_patient;
       public            postgres    false            �            1259    17303    registration_patient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.registration_patient_id_seq;
       public          postgres    false    219            V           0    0    registration_patient_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.registration_patient_id_seq OWNED BY public.registration_patient.id;
          public          postgres    false    218            E           2604    17163    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            F           2604    17173    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            D           2604    17155    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            G           2604    17181    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            H           2604    17191    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            I           2604    17199    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            R           2604    17377    billing_billingqueue id    DEFAULT     �   ALTER TABLE ONLY public.billing_billingqueue ALTER COLUMN id SET DEFAULT nextval('public.billing_billingqueue_id_seq'::regclass);
 F   ALTER TABLE public.billing_billingqueue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            Q           2604    17367    billing_patientbill id    DEFAULT     �   ALTER TABLE ONLY public.billing_patientbill ALTER COLUMN id SET DEFAULT nextval('public.billing_patientbill_id_seq'::regclass);
 E   ALTER TABLE public.billing_patientbill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            J           2604    17259    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            C           2604    17145    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    198    199    199            B           2604    17134    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    196    197    197            L           2604    17292    offline_token_entrytoken id    DEFAULT     �   ALTER TABLE ONLY public.offline_token_entrytoken ALTER COLUMN id SET DEFAULT nextval('public.offline_token_entrytoken_id_seq'::regclass);
 J   ALTER TABLE public.offline_token_entrytoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            P           2604    17336 %   queueAlgorithms_appointmentrecords id    DEFAULT     �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords" ALTER COLUMN id SET DEFAULT nextval('public."queueAlgorithms_appointmentrecords_id_seq"'::regclass);
 V   ALTER TABLE public."queueAlgorithms_appointmentrecords" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            O           2604    17316     registration_appointmentqueue id    DEFAULT     �   ALTER TABLE ONLY public.registration_appointmentqueue ALTER COLUMN id SET DEFAULT nextval('public.registration_appointmentqueue_id_seq'::regclass);
 O   ALTER TABLE public.registration_appointmentqueue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            M           2604    17300    registration_doctor id    DEFAULT     �   ALTER TABLE ONLY public.registration_doctor ALTER COLUMN id SET DEFAULT nextval('public.registration_doctor_id_seq'::regclass);
 E   ALTER TABLE public.registration_doctor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            N           2604    17308    registration_patient id    DEFAULT     �   ALTER TABLE ONLY public.registration_patient ALTER COLUMN id SET DEFAULT nextval('public.registration_patient_id_seq'::regclass);
 F   ALTER TABLE public.registration_patient ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            '          0    17160 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    203   ��       )          0    17170    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    205   ��       %          0    17152    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    201   ��       +          0    17178 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    207   �       -          0    17188    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   ��       /          0    17196    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    211   ��       @          0    17374    billing_billingqueue 
   TABLE DATA           g   COPY public.billing_billingqueue (id, date_time, predicted_time, actual_time, "billNo_id") FROM stdin;
    public          postgres    false    228   �       >          0    17364    billing_patientbill 
   TABLE DATA           K   COPY public.billing_patientbill (id, "billAmount", patient_id) FROM stdin;
    public          postgres    false    226   #�       1          0    17256    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   @�       #          0    17142    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    199   ��       !          0    17131    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    197   ��       <          0    17351    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    224   ��       3          0    17289    offline_token_entrytoken 
   TABLE DATA           <   COPY public.offline_token_entrytoken (id, phno) FROM stdin;
    public          postgres    false    215   @�       ;          0    17333 "   queueAlgorithms_appointmentrecords 
   TABLE DATA           �   COPY public."queueAlgorithms_appointmentrecords" (id, predicted_time, actual_time, time_in, consultation_in, consultation_out, consultation_time, doctor_required_id, patient_id) FROM stdin;
    public          postgres    false    223   ]�       9          0    17313    registration_appointmentqueue 
   TABLE DATA           �   COPY public.registration_appointmentqueue (id, date_time, time_in, predicted_time, actual_time, consultation_time_in, doctor_required_id, patient_id) FROM stdin;
    public          postgres    false    221   �,      5          0    17297    registration_doctor 
   TABLE DATA           l   COPY public.registration_doctor (id, timepp, name, phno, email_id, speciality, "feePerPatient") FROM stdin;
    public          postgres    false    217   �,      7          0    17305    registration_patient 
   TABLE DATA           >   COPY public.registration_patient (id, name, phno) FROM stdin;
    public          postgres    false    219   �-      W           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    202            X           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    204            Y           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public          postgres    false    200            Z           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            [           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    206            \           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    210            ]           0    0    billing_billingqueue_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.billing_billingqueue_id_seq', 1, false);
          public          postgres    false    227            ^           0    0    billing_patientbill_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.billing_patientbill_id_seq', 1, false);
          public          postgres    false    225            _           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);
          public          postgres    false    212            `           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public          postgres    false    198            a           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);
          public          postgres    false    196            b           0    0    offline_token_entrytoken_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.offline_token_entrytoken_id_seq', 1, false);
          public          postgres    false    214            c           0    0 )   queueAlgorithms_appointmentrecords_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."queueAlgorithms_appointmentrecords_id_seq"', 5849, true);
          public          postgres    false    222            d           0    0 $   registration_appointmentqueue_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.registration_appointmentqueue_id_seq', 24, true);
          public          postgres    false    220            e           0    0    registration_doctor_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.registration_doctor_id_seq', 4, true);
          public          postgres    false    216            f           0    0    registration_patient_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.registration_patient_id_seq', 74, true);
          public          postgres    false    218            `           2606    17285    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    203            e           2606    17212 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    205    205            h           2606    17175 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    205            b           2606    17165    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    203            [           2606    17203 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    201    201            ]           2606    17157 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    201            p           2606    17193 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209            s           2606    17227 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209            j           2606    17183    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    207            v           2606    17201 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    211            y           2606    17241 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    211    211            m           2606    17279     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    207            �           2606    17381 7   billing_billingqueue billing_billingqueue_billNo_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.billing_billingqueue
    ADD CONSTRAINT "billing_billingqueue_billNo_id_key" UNIQUE ("billNo_id");
 c   ALTER TABLE ONLY public.billing_billingqueue DROP CONSTRAINT "billing_billingqueue_billNo_id_key";
       public            postgres    false    228            �           2606    17379 .   billing_billingqueue billing_billingqueue_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.billing_billingqueue
    ADD CONSTRAINT billing_billingqueue_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.billing_billingqueue DROP CONSTRAINT billing_billingqueue_pkey;
       public            postgres    false    228            �           2606    17371 6   billing_patientbill billing_patientbill_patient_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.billing_patientbill
    ADD CONSTRAINT billing_patientbill_patient_id_key UNIQUE (patient_id);
 `   ALTER TABLE ONLY public.billing_patientbill DROP CONSTRAINT billing_patientbill_patient_id_key;
       public            postgres    false    226            �           2606    17369 ,   billing_patientbill billing_patientbill_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.billing_patientbill
    ADD CONSTRAINT billing_patientbill_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.billing_patientbill DROP CONSTRAINT billing_patientbill_pkey;
       public            postgres    false    226            |           2606    17265 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    213            V           2606    17149 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    199    199            X           2606    17147 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    199            T           2606    17139 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    197            �           2606    17358 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    224                       2606    17294 6   offline_token_entrytoken offline_token_entrytoken_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.offline_token_entrytoken
    ADD CONSTRAINT offline_token_entrytoken_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.offline_token_entrytoken DROP CONSTRAINT offline_token_entrytoken_pkey;
       public            postgres    false    215            �           2606    17338 J   queueAlgorithms_appointmentrecords queueAlgorithms_appointmentrecords_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords"
    ADD CONSTRAINT "queueAlgorithms_appointmentrecords_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords" DROP CONSTRAINT "queueAlgorithms_appointmentrecords_pkey";
       public            postgres    false    223            �           2606    17318 @   registration_appointmentqueue registration_appointmentqueue_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.registration_appointmentqueue
    ADD CONSTRAINT registration_appointmentqueue_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.registration_appointmentqueue DROP CONSTRAINT registration_appointmentqueue_pkey;
       public            postgres    false    221            �           2606    17302 ,   registration_doctor registration_doctor_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.registration_doctor
    ADD CONSTRAINT registration_doctor_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.registration_doctor DROP CONSTRAINT registration_doctor_pkey;
       public            postgres    false    217            �           2606    17310 .   registration_patient registration_patient_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.registration_patient
    ADD CONSTRAINT registration_patient_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.registration_patient DROP CONSTRAINT registration_patient_pkey;
       public            postgres    false    219            ^           1259    17286    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    203            c           1259    17223 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    205            f           1259    17224 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    205            Y           1259    17209 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    201            n           1259    17239 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            q           1259    17238 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209            t           1259    17253 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    211            w           1259    17252 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    211            k           1259    17280     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    207            z           1259    17276 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    213            }           1259    17277 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    213            �           1259    17360 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    224            �           1259    17359 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    224            �           1259    17349 >   queueAlgorithms_appointmentrecords_doctor_required_id_75c4ab19    INDEX     �   CREATE INDEX "queueAlgorithms_appointmentrecords_doctor_required_id_75c4ab19" ON public."queueAlgorithms_appointmentrecords" USING btree (doctor_required_id);
 T   DROP INDEX public."queueAlgorithms_appointmentrecords_doctor_required_id_75c4ab19";
       public            postgres    false    223            �           1259    17350 6   queueAlgorithms_appointmentrecords_patient_id_dc49dcf6    INDEX     �   CREATE INDEX "queueAlgorithms_appointmentrecords_patient_id_dc49dcf6" ON public."queueAlgorithms_appointmentrecords" USING btree (patient_id);
 L   DROP INDEX public."queueAlgorithms_appointmentrecords_patient_id_dc49dcf6";
       public            postgres    false    223            �           1259    17329 9   registration_appointmentqueue_doctor_required_id_d9df59c9    INDEX     �   CREATE INDEX registration_appointmentqueue_doctor_required_id_d9df59c9 ON public.registration_appointmentqueue USING btree (doctor_required_id);
 M   DROP INDEX public.registration_appointmentqueue_doctor_required_id_d9df59c9;
       public            postgres    false    221            �           1259    17330 1   registration_appointmentqueue_patient_id_9e5f0080    INDEX     �   CREATE INDEX registration_appointmentqueue_patient_id_9e5f0080 ON public.registration_appointmentqueue USING btree (patient_id);
 E   DROP INDEX public.registration_appointmentqueue_patient_id_9e5f0080;
       public            postgres    false    221            �           2606    17218 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2909    205    201            �           2606    17213 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2914    205    203            �           2606    17204 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    199    2904    201            �           2606    17233 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    203    2914    209            �           2606    17228 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2922    209    207            �           2606    17247 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2909    211    201            �           2606    17242 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    207    211    2922            �           2606    17387 I   billing_billingqueue billing_billingqueue_billNo_id_34159e3c_fk_billing_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.billing_billingqueue
    ADD CONSTRAINT "billing_billingqueue_billNo_id_34159e3c_fk_billing_p" FOREIGN KEY ("billNo_id") REFERENCES public.billing_patientbill(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.billing_billingqueue DROP CONSTRAINT "billing_billingqueue_billNo_id_34159e3c_fk_billing_p";
       public          postgres    false    226    228    2963            �           2606    17382 H   billing_patientbill billing_patientbill_patient_id_6ce948ea_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public.billing_patientbill
    ADD CONSTRAINT billing_patientbill_patient_id_6ce948ea_fk_registrat FOREIGN KEY (patient_id) REFERENCES public.registration_patient(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.billing_patientbill DROP CONSTRAINT billing_patientbill_patient_id_6ce948ea_fk_registrat;
       public          postgres    false    219    2947    226            �           2606    17266 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2904    213    199            �           2606    17271 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2922    207    213            �           2606    17339 `   queueAlgorithms_appointmentrecords queueAlgorithms_appo_doctor_required_id_75c4ab19_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords"
    ADD CONSTRAINT "queueAlgorithms_appo_doctor_required_id_75c4ab19_fk_registrat" FOREIGN KEY (doctor_required_id) REFERENCES public.registration_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords" DROP CONSTRAINT "queueAlgorithms_appo_doctor_required_id_75c4ab19_fk_registrat";
       public          postgres    false    2945    217    223            �           2606    17344 X   queueAlgorithms_appointmentrecords queueAlgorithms_appo_patient_id_dc49dcf6_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords"
    ADD CONSTRAINT "queueAlgorithms_appo_patient_id_dc49dcf6_fk_registrat" FOREIGN KEY (patient_id) REFERENCES public.registration_patient(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."queueAlgorithms_appointmentrecords" DROP CONSTRAINT "queueAlgorithms_appo_patient_id_dc49dcf6_fk_registrat";
       public          postgres    false    219    2947    223            �           2606    17319 [   registration_appointmentqueue registration_appoint_doctor_required_id_d9df59c9_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_appointmentqueue
    ADD CONSTRAINT registration_appoint_doctor_required_id_d9df59c9_fk_registrat FOREIGN KEY (doctor_required_id) REFERENCES public.registration_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.registration_appointmentqueue DROP CONSTRAINT registration_appoint_doctor_required_id_d9df59c9_fk_registrat;
       public          postgres    false    221    217    2945            �           2606    17324 S   registration_appointmentqueue registration_appoint_patient_id_9e5f0080_fk_registrat    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_appointmentqueue
    ADD CONSTRAINT registration_appoint_patient_id_9e5f0080_fk_registrat FOREIGN KEY (patient_id) REFERENCES public.registration_patient(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.registration_appointmentqueue DROP CONSTRAINT registration_appoint_patient_id_9e5f0080_fk_registrat;
       public          postgres    false    2947    219    221            '      x������ � �      )      x������ � �      %      x�u��n� ���)��ȡ��Ƥ)kP�Y�n��/1ې��Y|��Q/�P�]W�ܵ��2=�Q��m]�R��\>��j�KV v�f	��5�?���V ��f����y�ݠJP��>p9�c��O�(��)
w�����GU� |��˅}�B�p���"%� ,p����N����65?w�x4�t�p�l܆���1�|qò�Z�<F�0��V���E��^	�~�/�I3�AW�&Z�ֿ��q�K1�Ġg�Ĵ�zc�NXE�&�s��M�B~�K1�@� �َ��uD@% 4�c���W�N>p~�+1�Ą�LL5a!fc�M�OX@h��qt��|m��}�w�����P֕��6��;E�:�y'�^\*��o^��O;��wc����+����p\�'��
�Y|�9jv�c�7u�2&}��u�ߣ���]b{��˰��qb{��<�9}��ڤ�(���M��'c+�����Hˌ���NNb�L�o8e��8ύ�)�ۺ�8���Iaяb#���(/[Dʳԗ-,�Y\@�OZ�?��4      +   �   x�]��
�@ ϻO��[(߷��BP!�]�@
	¿T��\{�o�e� i�:{�{_��0�`B���wg5"<(Ip��~ū.�i4�HFU���e�y�/?����=�rM��"S, �tt��l��K0D���sA��M���SK��T���4��9��No���)0�      -      x������ � �      /      x������ � �      @      x������ � �      >      x������ � �      1   �   x�uα� F���8�i$��y��C+.]H7㻷&L�3|9�4��=� q�a���0D�"������2��B��o�+�%u�l��T^��3�&+�k�[��X8ΘA
&5&-̝1�3c�\����Z�7J�      #   �   x�UN��0;'����� ���R�5%I�{���b;�M7�={�&#V�d�C"�j����x�p3��$�����������&�. � 䃚4V(t���TF���ܤ�!�PV�L�Э�o�>D�?(����9��N�g	v��/Բt���k�K�_J�]��?s.<��9[kG      !   ;  x���͒�0���)��25����=R�Rl�U�W����#�]1	�p������8�np�0\/�/  ����mS0�j�l�����W%a���8�Xa��}K�KRLV�,�Z�m��@�I�*~W1ӄ:9�W]>�I.����*��`B�q�����:snlm���S�8�Č�O�����LoLg[�N�ZҒ��q2c��Esq��}?���_�q]��Z�C�q��L��6���Z�M��p��Ꮬ�q�.�zRTq�
BƈGLc�a�O'��"p.�^&��A2e�1��þM�L��s4fC���Чm��!��F�C4��{[��9�2>�LԫIm��,�B�Q�SZ��4E|����0����k�J�=4�Ih�K
˙K_ׇ��'U	!(�P�|n|��~��]�%���"�Et��h�;��&����ct����!����z	�8�E��n(Y)�<+��8���&)2���	< ���/c�Oߤ ��9���$�(_CFk��/9TR���G���r�aD��p����@x`*%"U^RL���WY*]ޥ�L>��:GJ�˯�G���~����      <   N  x����n�0 E��Wt?j�������6JD �fC��mIK��C�NG����t�ν��XUFF.ݘ5�N��fY'�j���g~�����V�c�*$E;L�h�{z6�{�ʊ!o�m�M�����o�8�q���N���=y�G�S���#+�Җ<bo""�S��8Ui�R��T�8�����|璁�ڗ�Ͷ�-O�N�<m��ܳGT	�?:�pws�w��	�����	U��#V7�h�*��P[���a� � �|��,WZ�������]gͩo�|��VvE�q(; +��d���w6�P�L�F�x=Sr�X�QH:�'����*���%�<���b0��� ;�� ��k��-Y��o,dޡ	�� ^@{��U|�m�fCۜ���׮i�͹��E�}����ݘJ%s��Pr�1u�fA('9X8�����7��a>�p�A����+c"�Ȱ��|a�mٽ¬oa�M��[uc�ո�X�uFQ�i0�	�M�jYp ~��~�n�U9`.��‫����l�������xaC/���K���-J4��*��iCt�YK��6����^�0	����\���_�Jo      3      x������ � �      ;      x�|�Y�-���}k�,��o��V�CDHB�Ҟ��=�-B�q ֑�����K!������_��R�W�_�u�����/;�������w�<d��BL����������(���o=�JF�/
��r�|X.��|'����#��^�	�8�'T�m�+'��/��V��?8���͙¼s�I��/��g}9�\8���_�r�����%�_Sn�j�+������j�2��x
�����_�����_�%�T~,3��B	�m��B�_�B����Z��9�3�<dʃ���H����ڝq�e��3�lۿ�d�GM}������|�g[��,y��J�*g����/�rpsK�+]��z���Wt���%���Ӹ�e���L9�	f<g.�o�)0�2ۂm�lP����1�(�/��� ���_)��rnL�a���<  ��}����b�1��rh3��>5p��5�@p�e1�\��}�e=�J�i��<���BN5�M���Y�|�Eh��Nm�1ba,"������I�W�۹.|e�r]e�����q��!�Zp3&��U��2p>N�C b5�����MOW��.�W~,lq�gN����m"�F�n��@�u���s>]�8q�+謏?�����VR�3p�{�y�G�Z�<Ւb�/g��58��t=+%g#���})kĤg����m��+2�e�_�7*��T2�ΕWUe/�9Lzx)"��YNOk1�w�����_��Z9ܨ���V��_��+��g��e���˙R��s�,���q��Z
��2p�d�UT�ۧ	A����A�D�9A�r���E���᎐�A�0S�!�S4���9upΘo������_ʳ�;k�#!�$y;�B�p�یc~�{�ukS���B����O�D�?&=!�eJ2�s���(p�r�w��4�v�[�ty,�k��&<dC���b�Ȗm.9���;��n��yN���h}]D�u��)�t����0��1�ΏnʶRrW�}J"�܈.���hC!8s.�.�5�Z�[�=/�1n�'R�uw����"+��~��	��L��]��Ɠ�#�ۣ��d�S�3.	3�mQd~���9>�	�K����,�8�.�;S�]>�
���~��	�rF��g�u�\�᎗>��+%�8^y�v�N��.[?���	6E�	{̵>9�+$k=�:��"%D����irF��&2��w����>�ͭ��B"{zn-�攠���z�W� ���<�q�MzAj���2�򕒵��vne܂M�-�(�:� C���i��q�+NV�g�����0�v3��R�b�VtwՕ``�Kn��FL��`72��MVƍRS���&��Bb���.��a,/��V�S	`�E\C/q��P�m���Y^ y��XG'���!�=�D����2�����"��}�E�B�ë��齃be��3�ᚐ!S���z]�7���1�pg-�Z�h�y*��)�2������ Z�}5��oBb߷C��R������"�`��ƣ*�uj��(�����r�;�h�Y��.G{n|)D���9�mxĂ�&�w{����2aQ �e����f0��U	�f�<��#��Xԁ�'�=O/�I ��c���ej@8٩`�i1��!��|�W�6r�J*[�71"���4�e]��-����\p��Ȁ�m�t�L<�Il�.����`x� q���p�ԋ(�ve2�Y����H�~�1�O#�[����zH=d6ƌ���%$�H�(�Mtf��r)Ky�F�S�Jn�5���(�)��a��6<-��cIR�cedY��r� KS-��8Gθ����W�u���Gd(`B�j�����ˏƝ<gNI4��~LiR#�a��Z��5�*�ߦ}Q�B���dR��.�;k��'���	j���}^]�`$9=ʮ���r%~�L#/�qq�%�0D��O�K���&��`\�*B@뾋��WY�4/��w��IE)/�hN������gDObI�SVF)���U��Y�c�#�\y��!8e��,�6xsX	�"���N��B4�~hA<^�n��y�|cd��P:[��X��h��B'�,�(u�^��3=�e�"�X�e}\l`�05���G��.������S=̮Hn`��p(���P�\뒊�H����*o���,�֕[&�Ý�S�y�"x8�[!�J�N·3����ݕ]�<��N��l���{����>+�	��\+�en�W�z�a�D[�:�t\}ve)���,WUl�T�k���}m�r�+���z7I�Ìr>�i8�1�W�s�-5b�����h~%CZ�CyF���[�+	
<	b��6�E�Eh�rV���}(��,�S~"q�c����,���t�7���I��V��NHI�O0���ȅ�)�ڳߏ���IV4�3�G�t�!�*&>N��z�u������r=��aA�V.��5��_hr�z��*>볚��"�}�$�����~Q*9Sl����h�&s��e(����_�?�ڔ`.���]�.v��"�����>S���y���J�X�;�ʖ���G���m�V�L-}��θT��8l9�A?�H׵��������@�!��R��EQ�XߍWe]�b�)y���`�Z^|*k�v��Ħ�ܪ��d�䧎L�f�.��>&FL��BΌ�����:kH�J!�ո98ؽe��5��R�1�wT	����-)��v;<:'�Vb�ߗ[sr��J�4�,�i���x�kU��\%�2fLn�����ʹ2J��g`�����6m��T�&�c`UfB�{��v��	`{h�e�q挻��d�/3BHN.�	������{Ϡ��E�,�v�"���m�l�<����e�3 {�[��|E�9��Կ��x�*�O�����s�=�E�z�FH�r���ܨ�-�2�Od���Oj�嚴Y��P$��HV��^��lS�[�/j���/�2����%%0/Y�	����M�����|-�.��(tR���6��[�Д�r ��aE<5���F���l��hn9T��Bw��,����B^b��e8�)v�k��-�`s+�#��?,j��-r�qVMl�I�Y���	��M��V�tљ���(y,�����*���t�V�f���3F�Ȼ],�N֓�YP�ƚO��C �u*��ɒ�����q(���"�[�5�Yˤ
�v�[J@�i�˓��k�wf��'h(
���?�p���WH��)E����J��7k���rP�g�ѫ;�y� �5]��������	'�5�ȳ�m��J��>!8��&�C-�C��ߚ���.���g��S����:.�n���!�T!�1-�a|ϞL�R��c4���t`5�g�^֐ �
yE o���U/*�o�Z�\.�2n��ا�ʘV����v�
�\�۟*���'4�N93:�B����H��<�}�@C:�{�=�n�����8� �˿f$HA^�OIӃ����x��>Uϔ�F5�������:�wI� ��к�2ܟ��Sb�ۤ#ʿTR�
�N7���.Ӿ��б�S�p����I��j��;.��g�e�w����sJߔ��x�T�kY����'.D}�{�H�Dz��gǗ����C�A�}}*�m7H�;cBl�<��rV�>�R��X_aD{.7��������w�p[˓.O���`���e�}��k3#�[mX%�c�(h%�x�����+�+��ږI�'d3�F�w$��LpQ����������Hu/��`� �����Q�Fy��qYL�К�O�;1���W��Sƕ^��V��gjT��q�魤�Z`4)���`@3��\~�+:GS����/�S\��qQFt��R���#�H8�D������6T�;ۃAA�-�&/&tdj`)���LB�N�]$��0Z9.���%���B:p�FO�l܏`�C�!�g�~�1u�/���\�j�f����
��ђ z���đvY"�g ��a�v�@�]o+�?�<��#�|XJ=͝o�؞Q�ۆ с�b���1pńR?�����	Sw}�J'���r���O� o�����p���!�H���9&_D���M*    }��:����!"�n���-�y�m'�b��Q�v���b^�Mr*�	s)�>��ґ��|�N�xoR#~q_j�0�fի�!���B��$��4�A����&s6"��ϟ��FN��(���)�[i�pq�(c�A��^)P�Ha��J��#�7;y�yv{$�V��Kr��K�:���S	?��.��h�kj|���I�V<r(����|D��o��"]�k*f�4 ��M?�x�qMUT��]$�L]	��#����#�C��!�}����q�L��q?��zw��%�
���:�� ��\5,7�W	t�'l���I�i��Sl۹���CR^:�f�ڌ�RΝH�֒��<��@�"��R_����.�qȯ	��������g`ĉD��Z%�~@^|W��W�P-K��;�"R��-����k~$��T�J�۝�2�W:�Iu�n4 ��O��ç��3�:rD?���h��}��U��VyΧG�*�$XU6�*������O9q�]A>�a,���R�ꆭ2�S#�r�vt8gl�S�Mh������]����5����D�\�za S���������F���F&�!�EN��Wd~�~��{�J��dޜ~�'�����$�EC��ܿM�w����J���;=�D���ނ�͐ �<p�ux_�L���4�6kltL\����b�P����LYD\������@�,&�cV��猁G�[99�4%'�У����vL��8ϸ\fcJ�ɽ��6ƴ竬��cư��S�[��H�U� �r�m\��!�����q\���ؘ0�$��ucHi�M��gF��l��m`�s3�Q��(�hƌ_ֽ�S<��B�a�#6��Cr�7bb�� ���HN"\�>g��N�g�r�����=y��M6�΄�0�`����S%���c�S*rz���vt�]#���Բ\��b�h��$�c]45%��x��b�x��r��"xӎ5DpJ� S:��©7�mʑ9��4�2���Y�}�c�����`�i�t9N�)�t������s��X{�j��s~ Y�j�\��6��<?�1ΖR��zi��� ����b���q13�u��8���^����t��bt�C�L`]	��n�H�v>�wE��W��.,u�[�hfkOMc��x(��	TH����|\�3��%Ȩ�u3~"d��Mth�׫w��`���!n��/ID���2��a��=���b�Z�ύژ�9ʯ�FlR���g+��(o���M��ߩN'���d!�����	D�'��>6	������SV?v�W����9$�K6V�����DӘɆ ���M(#%8�n8YVgp�W#8#�b!}3���$L��bk��K]��w!���E�@����i��^�Y���)�.dx3��n)q�}8������ms��/gK#��j3�� |u7�Ȝ�����jZ����q��+�̱���,�h���te% �r�ܗ� ���	�;���+��͓3��1���ƹ�Q"��	T��܈�6��^���D�|��y/mXfv$c�C@��0��o!��|Nx�� 70�9��`bkH�ǒ�MY�
��_� ����n�^']ȩ�����Ø�[eE���#�`Eݖ�4�X
�p�3/bk��'�Pd�|����J��U��T?���"�Du�m���Grs�)D6p�����5�����g(�%Q�
Tc��P<�w�et)AeZ^u.���^�kO�s����H��b�rD"���@��������ZE {����j�10�OĞ�׃��#����/#��ЫͭvU�*�G�d9�m�a�*p�!X[��s��vu�2#P�F��l�c{�T��<�E���*�Z	�l�ep����6.��@~���䍊��h2�m�u"��8U���CD�Hm������ B#�|y����o���z�7l\"�b�^��w���r�5ѫ�o�G�Y�bhf��(S^J��k�W�y9�'��n�Q��t��"�O�V�B ��T��6����quG� �٫�?�֚�X�r�T��/��C�s�V(vA����h5[.�����Gd�?�:�>�r��F~�y}��A�{5���l{���\��]KQ�D�=�2���6�&����I�;��P�J=�Ћ�����7΅��"{��� 4kS5w3)t�H����X�Je�b��֚�uI����Ώ�\;�ݭ�V7�fܗ�j�h�ץ.|�l�)�T�����dh��E:L�o�V���8X+�8^�͓�uΙ���O�j��D�b�����6� q�"(y�[�鶋�lK�`���� �<��2���h�T����D���:rgO'Et�N�\�E Ҙ��ޏ�¢eX}���5�trƼ�ԑy���Nt��D�OG*���A��}l����&�lќ�+�a��>$�C�Nz�W���ST�E���Rׁ��g��U�I[qy46g"XJ�_N�!z�[}�"�!��+����~�#B��k�	�b��j���0�]o�Ŋ4�\�����*:��%�A+@P�$��W~~�L=4�n�O>͹�ȧR��eR��N�/�{e]��KN*���h4-D���b!k����p#�XcE� �N*��iP27�y����7藲F�B�ۇ�'�#�t�,x��
	�f�⮉Ѿ�Ac��#C��Ӄ�m䌻S�X�Nڑ@��E����r��葒{s�(_�-b;���tT^ﮞ ��wc���c��V�c�߃1��b��L:���=Ǆs�fL�y1����[����\���F���_��=�q(����a�q���'�[k�!h��zt��JɗK2�	})�Qv�j䔫]��d�D4�8\p�F0�Q��kb$( �1�:һME����%�rfMe������*�y�Z	&����`VUW���z3R8zT��KW�<���v�b����>��>����x!����Q��Ϟ�Δ1C��T_��Tm������F�CD�qG��+�o�m��@�Z��e�'�x2�c���ty�t��U(��fM�.�jm��./�hi�[���>�π\����3Jp�]we]����Sָ�#Q�o�F?�	٘J��P���0P��=ʗU�[k2�U��#�b׃1�#�>��/�r~D�y���' �0���	;�J��2�,�R�^�Wƃ��~��P�"O��p0�P���c�����,�~���1��z�n
�I�gR�]�]ݟe���t�4�N����F	�h#�u��`���V���Z:�E�ǯ����!��#�$(��O�<xߊ1�&��&7���@x�Wn��,
=?I���c�z��R�0[J?�-��!2� �Ɨ�\�B��f�te̊=��5+7@����w�	���Ɨ�kZ��`=.�,6.R�Ppyxύ��5������i&Sn�W�ȑOPmL	&�!D4.�	�}�@(I,�/��'�E���}��9�����#�^x���
�������<6�mFA���l�.2�/AU�6?���6�s�t��F)��hI/I�X(b�����W�*'}|b-f��&�{�R���3���_ve�J��|����]]k�&��@	
�޷1�U��pN	T���	�5/ʗ�m̄/K��M֣ص޼$��a��b�9a{۪a?�"/��� :nb�d�.����9�%����F/2�d�Y��m�O���~(�^�(��Ԣ�&:4�n�`�v��L�I@P]�v����l �k[pA�d�r�W��0N��R�|w����Bv0��/8�j:�Yu���2J�fԼ��ݩ��#��/	&G"�#��R�I�O�-��Ff��o��Ț�
������B1�sa���bX��2Wf�"���lW-g�ڎ71�$F�j�/VH�g[����3.jB�|�z�mX�	l�������/�ܒ�x��E�Ձ��=�~�S\�
�iz+O	d�=�nm��;wy({��ϯqQ��_ZE	R�)+*)�Q�IՃ��eF"    ��7�4�d��W(	�k=���H���I�6��A�q��[�$����=B��p����߈Q��8��b���OY�(:�%b��#5�<�w�f�}�I�[pL93���xD�r�$��P_�0�o���7�sQ��3���K|)�]�c��r8�qK<1`���]��;5�c�w���kJ��C:�___�S�c������1�A�_{�7�0�(�2�le6D��ڇ4S�F�"Ik���탩]<~�YI�������פ��r���	��[�m�##mW^�Z\������elwߕ����t�NhB���+w�+c�x�osf�"Qt~~��e,�C�9�F�\��4�1�0;�ٽ��1�ɧGcF��H��I�Wd��A�������s"4V��/fi�%Ɋ����s�R�wtϘ����/�VZ;+�U[��<�VHp�d
��ۉ�����a1�2c�(�Ю��ͰD�d����|�%�4��z��EH .!`W���ȌD����L�)��]���L��l�&�fP	�������'g�%<���Tάn���"��F~rwbܱ�P�R�e��1�������ɵ1����2�YD�Ʋ�3W�3l���q��S:"�&NZ�(�PQ����&��'�ɺ�'�ɗ��5��]�G��>q�����-E}�WY����)�ɉg�����t��?F���܎�bF����`�q�sS�?:0B��n��U�����k��@��H%&>�7MCn� E׸����m����Y:����c�D)�] �W8������|т4��է�5g���g;&:C��fX���ܼ1�M�~eľ�(��Z?Ҟ:83E�O���PP!�d�;�p�C^z>=�A�}ݱX:l����zǈ��%���	`ΣjA}�6�L�g97��Mw�2s���%�� P��ǔ�P��Z������<�Y�@v�s`�jh�8�3F�ʖ�Y���cgi�d-�R�M�T�%����e��K�7ƌ�u����PS����#3�;PM�6�H�2�ϛ���Ei���9ç<Jx�Z��f��W���C����5��i-���V"���ٲHQ�t_˪_E�p�K��0o��t[�7=�4ݯ�H/9���{f#{DB�
#J��D�W~+ͫE�d����oa��./��`��D����2�Z�Lq��F��J��P��l�d�<G��[,#`+��� `1=�T�a���=�؟�[g}��-�Wx�����)�}��J��8V$@囇�j�f>5�V�J����)Ʊh��Fyj��Y�";�;Zt����f��"��AI�i�F=Z�z{�:�2�
�O����h�|A�*_"�9B�\i=���L��J�?���4E'�&���Ց�ђ�n�.^��q��8�h	 pG/՜��uh����+i�հuk�UX�ur�%ցi�DQ}�r$��8��<���5���"$:.�uUT����M\E�_�)ʘ�����`:��5�ra�V�ݍ�ˠd��7WQ�}��PSl�b���Y䃈��	�����}Ή�E�u�~�ɹZѭ|�]� �� �E^�`�a���'�zs���r��w�����ݚ:!>"��� 3�:���B��qJ̞K�,?����x��B�?�uf/߀�����Ԭú��q!�
�r�g.�G_�p:LQD�s�F���GF�L-��NZ��k�|W��'��w@!�N�z��V�V@�|SGf�#y��.� ���pc��-������,~�.��Ù�v�*g���3�6�t���=��823ސg�T\%�D��w�q о���r~�Y+�OG�a�׶��Y{���-#`��p��>�!��:h���41�*欭�l�
�%��m�S �*��lt%`�Ɀ\E�Çݪ��X���)���1��)��Ь�k��y��<�M�9kڥ��%�c�NzY����g�%>�ޟ��=�U�fUd�����|�C#��&�������BhKC�SjC��qʘ�	�NN�+�`,�����Q�n�X+�=�6�V�����1.�c�	Y��޽����,W�)�<zx������DC����d~`�������Ug�A��/�V�?�,�5}*1b7+e�y�Ť���a�����̌����GZ\FZ���BoS�����ȕ@�xo�ھ���	��r?�13
B��^'�Ǽ[�m(�����w/|����e�@��0��<����c։۷,�F��#R���5h�Rj��VO���4�T~�-@��Z��TDH�W�7U�צ^�:���t�AJ�ZI/#ѵ:��Df�m�-9@�F�oӸtr�Z�,7W�Xw��B�ZY3�������F�>4��Ѫl�%�4y�����/s�݌��hh����G�k}n
S70��Ã�l�%��t�"%HlF���oީ�F9��ϒ�u�q�	h1eWiO	�~���G�!�H#����9#�Z��ʈq��N[��5��3=β�['�1�S��1�V0g��q��Q_E��"F	Xo����v�����*��-B�� ��f5�{se�@�����a9#�tum0����~�+�p\%�L�b.�;^��̂�g0C������S��-���.z%��>	*��Vr�o>������Y�2�5�0�L��лt_ƅ�;k��E0�����д��W6.k�et�u2D	��"��'y��1��+]�.&o��I�U��f�z�(�E��R3<|�Sb�ύ(c������ˉ��������ח�*�a��^��δָ�"����ſ�%�C	X��aD���ၚQ�q�pd�D���~g#
*J�z.	T�"��pl0N<��s��L���!�Ɨ�)��'�4�n;~3r����k��;!4���脠��woS(���P!�]�W�T����.UF1�Km[%@A;ԶEQ�;�`i��R%;�����8��R�h��ۥ:�dC�.	
�L��J����}�z���$O��:���G
�9�*C"�`d�Ƹ@���g���ec֐�Uu���Z�]}0�kGJH�1�Wf�:o�޵�� ���*A�	��Y0� �P�����1�pV�y���� HVC$#��v��V�mNbz~�۫,ߣ�-���	Iſ�G[�m�&�o۬��I����g��$�����UB�����PhA���N4�P�cA4N�tg������dd��K#8#�c�5\�q�
�:�5BhϠ��+E��i7��ۨ4+~q�+#�j�r�?�]5}&o�Uޑ�#SZqI�J��YJ���l�������Q���z���e9��P�6.3�E{��&�B�;.V_q�/�k�qy�41݌�L�[k^'� 2�޵~J��5��׬㫅������
H-W�&�C�Ƥ���B[����g6073:��6-�e�x���ˇ���|��sd�KS��|�=$4%_��4�(,eL��9�y���;�y����d�S��L�w )�řJ[*�f��3�7_i�S�d�?�HG�*+��g�8g��d�ݗ��+�Q�v��|e�����A��\��'���Aڌ����ﲎ�^�;^"J�\PQIˑ��d���!�ӁN�����]JT*��~)uN �§����B�o`������0��{�)��>��?QJ059ո�2���޸A?�0QL��4�t!��3;#�w}��q�M��8�'��q�h�f�,b[l*$��)k��$2lns��<�O��bǡ!�м�G�vۋC�mTn�l�
�XA����ݾ��U[j"8h���=�+�.u�0�b����f#��0�S+����fJ ;���ݷ���Lփ�[J�u�{<t\���Z\�tM3#�K��"i��n��
m�\ބ�K}����:]��xD��������ǡ���ed��&�u�ݔH��c���ӕ��w�������Iq#g��c��X����>U-�Y܍����~�����I,��Fi�=���jE{Sw&A�y/O�*9�h��ެ����H�s�3%`,Q�C[B4+��J��.    �jk�^�1Eo����U�g�1#���Ll��x_T���4����*��=�o����}�����@�o^��]jke�l9�h�=��I�L�7J�8)�ߵPJ�]��f�`\<��|�dJ9����� �]?���Xj���-����V�<ڀx�NF�п�.+�q�r��5��8fk[���B��y����2����8��ڢ������5��汆��;�MD-y
�z��~��R�3?�L.V@qs���C�-_�O	jԈ�\�۪h�;f)��6yf+���GyW���x�PYw���S�|�z��2�
~375j6�}�����}���~y��qFB:~��`���T�߄v�}��A��@��"���N��zqG��&��C���Y���;�J 2�{~pf�9��|�������Y��6��"Jt`�'z^k;Ab��ni���Ɯ�l�͚z�������:0�0�N=Rj���m��?�kD��Bg���9����2���$ȁ�_���4#`z>�58[�]r�'����zv6p��]C�^/ Aa ����VG�dZr�3,b6���l�#B,{���e@�7���L�aE�;b�A�%o��2�:`h���d�GZ���Xl��u�s��Ta� �q?k���X>������&�m����i4A�qt���&G�cm�Xg��Op�O����#��v浹��,�Ct;ߩP	4���le�����\�J2�͙�X5�����6�+P�ļM�־KU,l1��9o`'_�Ye���$��Ws���I�, �>L'�ZZnV��m��L�r���]%��7/��q�����w�F�(�4�wh�F���e������YT	r ?ͯ��z�T�ƶj64�S.��M����u�[Y�Pp��&笸�5y�ݩP���{}�o׊-#�x	
����a��-3�[QXcU�1�Pow�3a���j�ȆΘ�_���-Z����Y���&LG�L����_R@��y�4f Aa��Ps_���Y�<���H����&�Kw����C]�2�(��C����Ƭ]C(��`ع,lf���ց)HD��?f\�\���"��5��܌3cK��u�o�-$
��aJ���攗��Q��4D|q�Q �iDt��,���jq��	�BY�d1隽�e#gAB��ۜ�=I.�w���E��e�[�<�-2��t��=ЀĿ�� �2��+��i>����/U3�5�������?ό���z���وB�uGsҌm�IY/'���E���]f�@��b��bI����lSnsy��O���k���0�R�7ʹ��5���;��>�����S��f�60]��X{�	2�5d9�Go	`�gkv��[��<�/P>XC�rn�)I�(��KL������\��b%�	��7�,�!�"(gB�k�cI9}���.�Z��勤�V.~�M}νKT��^�s`��MWc7M�e�'O {�aI��.�|�W%(\04K��r78��ѿ�l��B�wy�B��}�/%P����Ilq��)":,�V6���I7r�.F�ж��~E ��/nrO������caʷ�HB��K�%��ƒ=E_>WϏ���i8A�O�rF�Lފ��3���v�_�e˒�U��Zt�G=����ڪ�*��ť�5�&z���؞�o�*���QV��v���z�&^�#
�W@:�RY�>Z6�߇�&��Y�J�6������U��M���"��W��n�o?�~�[G�.������:�o�I7v��>�=��iE�9g�I��1��1a#����ݣ�H�*�'��v���m�����8R����s�
&�7#��44�����#�����NX⟡���u\NH��'Lg��B�ǎ���#j�=xƓiS�]���x���<~?���tO�����2t�a%���~��ȒS��TF��1!��<_JP�L������
Ms�\Q9֒x�7M�q��9�C��ƅ� Ұ#)�����^_�_{���1�����-	���f ϼh�syTkL�"�ޥB���Ji33�������A�,�p�q��"�=�E=�e�T��12���?�,B[��nS�e1��ܫ�=bF]�Um�(��e+A
�B����kM-����&���R��1�D1z�c�e���Ͱ��Q�)mρ���#ql�ʪ{�8�@�ܭ��{_�S�n� ��~�������;0��g�NS2�
�bm��ݨaP
�9�	��sK���ٸ��� Þ/���;����x̫;]��G�_ҵ����)�`�^,�EJ܄����Z�z�DC�>���/wN���������~��axx���v�.F4���Zjet��} P�Zy>Fܴ�܆V���z��t����)k[ރ��4��N���3g�$���>������@$cu
�4���h�G�����宝���C��E; F�����A-����0$�*E���a�i %�yތ`�B�>��$)j_\j��O*&+0�e�^,����	!y%�sr�t�Y��"E��}��b*^;�K;ʰQ�ݩ�60[	�9�Lj% ~��9bD3�8�x�|L�D���bJ�%E���Cf
�B)̱����0�Nt�X�aF�I�!!�/�xrf�\)f����GFg��(A���A䭗�$�l*����,~?Dv�b>�5.f�Y�C���R�����6+[���5v֙�\�@�V�¾���E���:�f4��]�B	�U*Os�e�T�g�� �|����~�؂(�^�	��%6i���DY��Ξ�/_�~���e������t���{��_坱fMϗqy����I�eu�H�|�0������&Ft�����xU���}��w!KD�w:T��U�R�$��N	�����G����mƑ����k��6x�(!Db$�Չn|)#9��7Ӫ�W�7��m��w;s��7m����0�r��G���2�6��vJ��h��Xʧ��(��zo=�10��^��/�E�\���dFQy��0�pBY�������d���10��ZqY�J ��G]����b�l���m\���#\	��F���)c�g#��]�)��Z�>:���z�`��{�!�)���(�F�ƴ��bG	e�Ů�Xg-�/ֿװu`�Ǔ'��z�F@W���("YaIB���=/rV�F��t$�L/�%d�4~;*͔O�ӦG To��f��*FEp^whz��9l H�h\[�+g��*'��uw���R.�m���Mo��~1��!)Wj?_����eW%�N��}IL�G@���P�� ���M80N�m2x�LwO����6����_�[2��˾���s�����ѽ����ݠ�a�>d���q\�� -o��������*_�<ر�|��ށ5�γQ�C���z
/��*(rζ�_��;%�*Q��X̗3���wNw�˙��ڰ��<��z�;`/�X�0�}Fɺ��*ǝqg�D�i�[�Q��Z��wd�3���wdB>Ũ8{�=���H[���[�<U���g�EqN-��{w�0�r�'Hdk	,�3Mő~)�����D>�2%4[��	t%����W�8��b�sP�񃞽�j���_�X��!�ݦ����|-����lޯ᦬�T'�qr��G+�۔5w�G��ng`e0N|.��b٢��~��,�Y\ŗ����U-GdjP����:q�
�{�	e�ɉ�ɹ�����hp�I/P���}^pA/g�,��o�r�{!Jz/n3�3�a���˜;�ߩd��.Ң���֑��up��'D���l���u�XZJ�#3l ��N��V�g���wT��8�y��2S���<�)�R��A+�R�XpTN�əx�0��U>�h�Ӈ��8�ȟ�.f�	OH��0�_�@g�� S������4+_���zi���g)eB5�3��!Ц���?)��]Lit����$�Y�s֢S���x*�"xy��:��ud`��9g��B������u���p_�LYԆ�i.�i��P��ms��ų�;#f=g4��0�M��6F>J�r���r�ԓ=�U<VE���-T挾���RǫX�vN�y    ��]2��x������E��,�񼎥�=�	WVF�t;�Y�mD�>c�����=6�W]?7����zS�5���;g4Ph#���^G��i=�<��9��j?c(���pY(�W^�UK%"�,����c=�����菏0DX�^���⭇������^�y�hy���v��J�|�4�g����rV�^�_+?�j+�~,��w���-/��9%�9,��%g�Iks+���n��:(ճ��2'd�R���
߹(6�C��qN*��6���ݶ���C�qM4S�`R��.���\�<\�b�\*(
��LM�J���D�vFz�]�
X-
TI�ҁs�d��S	t` ����s�t��Op*�$
����ց	�K�v�\��V\:����9�e���Q�jSCv�]��\$��S���&�R)K˹_-Ȫi�¹�۴ �Q�R�9��ëkmؚ�b�];(Q0ێ�㔭u�W��eL�:J�S��z"��>e�DE�ҹ�?~���� #�ZE�jI��͕�j8Gĸ��Y{�WTd:j�67�m��S��	a�ϼ���6���פ5��%\��@:w[T�f�^���|�oD���lo+���B?�_r�g��_���_J�'v)�'�v]��Q��z���+6Fڳ�KoY���9���'��e���<ڼ�s!Z����M/� iEw=�v�2�5F�W�Y)�;����([�$��� �jmy��^T֟B7�3����=�c-��qJ��s��%�ZV�UkV�=�7��Y�ޏ�X�@��N�rW�V[���`9��T��\S�Ό>�~�R5u��<�84��G�>�0��ۊ/|����mc��D���3�%`sӂR����l>b��j���R�+�LH��q�ٷh�׶OQ�6|aX��r�ЋV~X�Y��t��HXɶ<�1؉��*&-k� ����c�h�ڃ�ϑ�m	�!K�����I5�q�̹�={�/�X�k�|k�X}���6U���X��w��X��J�����q�!ʒ��C/o6��Cʉ��Y��!ȅ]�R�x�IP�TM3�K�S]u����gFbT]�ײB>���0�����݌$�~�~\fN�l��3F}���<��h��!K]�m�K��q�ǝҥ�~�u^�,b7D[���
���t�Ǣ�2/A�e��.����	!�;J�A0�Վ>��C����j��^,e�)���HSDh6/dH`%�h���3��z�t`��띳V�ʐ1��	���8D����>X�����pFU�,2�-���	���1H���(ۜ��I1�i}uJD�d�޸s&<�:܍R���;b�j�'R3��h�Sb���Y}��*X=��� �6G[r��A2���el�}R��y��^���_�*���(�5N��c�ƦF��H���ac�璽*���blM�1� ��,�#-uI�#CFSY׻�����.��ֆ�C��Zgvns|MZ��!]�C�`�dw�U+RiΌ�w`�Dm5�|_� ���b���7��9i���*%�UL����b�j��������Xr'[�4�Y����j��4�ZM/A��� �`����_��s�,����tdj~k��50�(6W�ƴwyF�⶚q�V�m�[�KF�od��R��� 3~�4�)'��h׸ᙚ�,b��U�����}�V_/�����;~�S�}�ȧV�}�h`��v�ɗ�]> Y�<�Z�y��ȉ�dcL^�בO�O�z_*��;$
�y>��|\�ae[������*JtG��;_��Cl�D��l| Ǳ����R�}��%��KW���N�c��L�yvj&�1�f�-��������|Qڠ�}�s��V̡X�p\(�]j^C�s� ���Y��!@�����߫�ClN+��;�t`�БG(��U�z���S& 0�rXʅ[7�e�%ur����Ǳ�+U��=�d\ ��cQ��Ɲ0�^O������Y]��!ʐ�Y��%��-�cX�9�����H)9��R$(�Ps����^�z����1Nd�M��Ӂ5�1��r��A�\�B0	H@rm�gJ�kK�ޜPϔ���zCf-C�����eG���y�ۍ��o7�9#u��t��sd&&����+Ae�F._�+b���=����8���:.���#�/�%`��,��9��]}�t�:�� ��c`U��d}'HA���î�$���f�h`w��Mq8*��f?*��`�]�i ���N'g\XV}�*����{	)C������4?Qb��A;�״�zETd�)Ac��q��+�D�E��ɷ�Z,u�z���J鸕}j?�߁�I��� ��*�d��]�.5C��Ӂ3�;�^�}�	j��$�P��衻���xE�ڣbgV��[�:0�P�3� �d*
�,�4�^��|�
��޽gٔ�/���������_Jr
��G|w��|v-g�^��4e���P��N0Ҙ"F����]n|��M.�0,����l+b�y�PG&�Թg�M�E���q=���v[K��� r�n�Xbf#��]�]!j����ό��	�C�0�Wz�7����Cj����c=U��I�)�8�M�D)4ys=P	��pD~/E2�"��h��s.�<�Kf���k�=�Q���W8���H���u?^�R�o�����h��9�%IA�KQP˺䌓�h��vC�����_@i�����r1��!�`Ť<���E��9�n<AfA1���Ñ@qx�8&���hCB�\�"�K3���5}d������鹍��s���*W}��t�,z��r��чoD	ɔ���0���xγ��b���&���7�Ҫ$1t�~&w��b�*�G"�ZM�=�|0�^q��{߁�!׳�0�/�i�)3�����v��/a���_|YR����m/"�!f4�أ�p�����i�M:r�RD��NO�5G
��T���+n�c������DY�d���D�vt�
}p;�x{��:k�٥�ĲG��6�W���r|Zpe�^�I�I+q���AΉ��"Q�$bl�.L4Gsi�k�˘%�kI��������w���#�<�Zf5��\�C���(�cS�ڕShƱ�<� ��3֖^���_ 	�}�-��2-�\�#ar���lɩ�?��X���GI����DOcA��G|妯�f�N�#�$�ғ ����#�H �^�n>�;�y�c�E�R!�}�#x���w_�!.�����A���bs�Jj��Y��7iJ\��At	F���вrvP��4����G�������0�R���@�?6��>�]����B�$�<�#��iL��K���b!���q�},�����%����f���)�J����6�T���V��9`Qԗ��!JЈ��w��d^���:�L}� +���3FC�4/p�wqU�Y��eܨ|a��D�����z=!��]eJeh�d(S��C_�E~YY�\5�����Y����$Ȭ� �+z\	&�#����`=�u����HW�+ƚ�W�ud&ۉu��R@`�"
���I�𼐥k(�a�K�C��>{8���2��U��\ (˰�Z��UIĘ��1P��,�Zx�2F����S[ ���@����G�c����^�y[������"é+JP	L�|����-��j6�2��!f���k����������([���z��F"+WǗM�=�S�gEח3��^�Y���\��-�#(�^X}r��mCGZ�r'\L�z�؞���x�z�5��OF�OQ�v��޹�Eh�3[/Ֆ�{��3�� 
��ac�OF-z�W�W�vD2�Qy�	�n�2�;dJ0�"�,F9����I�����f�#W�}���"� �����#�W�6��M�� �E���ԁѿ�V���+A����	_Ԇ��b��q+T�RF�N3��)3�o�2�rAa��Ѷ�PG�U7�O@��SJg|�1�rj�Y~�5�<Dr�GE�w\�.$!��Ī9ò�?���ĭ�yLG��e�����"P�>0������ ֠�H    �$/+6�a���޵�O/^�*cM�i�����ƺ*�7��p�Z��Eq�la����>na]ؘл�Θ=��c����9[��榬��h���g�DaBT�$H����U���]lE�$�E3��Ӂ+�`�y��@�4���9�3�&�lb�q��4-���.������&���7Y��J��誓�&��4jac����\���;���RktF�е?|<z���z�V��qNڞpd�R4δ��6�o�r.�d�Y�nf�Bqm(�_kB�݊�������� r�W����Y��5�h�	�O���$�3%����4�9�<;xqG��N�ϒ<7��t�6Y=��-�9m��vA�#]������%�E���6g6O�bй0�1f�:].}����Dߏ�bgB�K�>a���!�~�� Қm1��.��ڰ���z���1p��Q�Y �%�,  ���$�b*Ytg[�ڢN)A�8��[�Z�N�Y��̂J�����Ue����=z��q�L|��F���������?b��UD}�.�o���|���{��=��2Ԃ�N���������lU���J �c�0.Ƹ"W�- ����x��WM1��N����T^_Q�F�D���̚���w��1��=O��{ǅWq����C �Yd�+%Y?�`<��6��:g�/�;�:2���^���@����Z�WJ��z�W��86���;' K��h��x�*�|��8��HVh�q&����g\ kgJD�x���zֲ�!��
�m���\�K��:2pmSn܏E)�t���F/�(�;��]r���Y^}o�*A���Z_ȷ�4j�yYm�y�{{��/9or��*A���_�[5��8I'_*�r:.o��%Z��6�>�T�sc���G# ��˽��P47o/��TNv9�b$ ��9�$C:���;�[Jrǫ27��\��˽Ȳ�W9��z(���W��
Hs��i)qN�� M�� �3���=�8kF�P|w��,�3<-	�9.kPt����Qb�ݞ|�&m$�5��#�fT�├� �U�۩ME�,��P��
���vZYP�43�ӱ�Eb��\<��o�4�*G��2��#����e�7�D�A�?�ӕ��h�1~��D����'Q+�z���'��E��0��j���  ���0�ߌ�ϵ{�;�,SD`f/v����q�PMF�ί�$T*O1��[�YS��K��`��|A���"�zV�|~���߸�6NQ���KLx��U�:�'|�M"&V�\%{��Lȿ��}���S���.P9c�>"wbz%�Zq x���V�����/׷_/�5�[uw��ݢb^6��SaPy8:��v�����-Zl*Vn�CWHj�>j���?�����F5w��P�38��o�3�r�q�}k�w�t��2�I��vd��8qw׊�6,�4��89��Vjy�]q%�Z-񘳏��U��\�������U7�M,���p�0G�{��r
�e+:a3b�W�}��7��Y�r%H�.$�L��{\۝�:��Coe^�uf*�<���z�wԥ�֟�)4֭�Cʷ�|�'�~h�2�}3^��P4зx/uQx������;,����ߵ���>���6ƕZ:�\e��me.�UBq�֚��I��E�Mr|P�Ȥ�$���3��䮨6�8�𵞌3uj1"��,'�2|{E&,t��]�j�8.��(�c$�� ��u�R�h*��JL���R��;{�@YwV�ny8̆�LOZ����A�6R�v���)&+�֍�IY�a���V�n}���Oc���3�M�}�;��|Qm_��Tj>����js�E���3f�VG�U����{�
��O�[gͥ��Rp��Cw�Qb8��qN�Lk��U��]��;��d��gw��3{�|7�ڜ�u�wq�Iwu_O7g��U=���8l��?_��{�=NA���E������9OL)��k��P�y�˝�x(��J�|nc@՚�~�����h��&��-�㓒�����̖� Ow�8*�I�h�^!P�L�
b��NX���5����G_I�Q$��+���&���p��*%};�gL�)���9}�"�+�r& �&gd'�+��g*���2�\���/����˼���٬��؅bI�)=�ڛ.�mN5���
�~C�N�m$@>0rc�WYS�����R}����L$zF�wg�sf��X�.Ε�_hÊ�ٶ��k}p�A�(w %�|g:�Z=���x-<+������Ż�N9�||�2�(:�I0��W�Sj������nL�_��tj�E�DG����cEH��VJ�_�ը�o�T��x�4ۼ���#�Zp@f��$U��_Ҥ�M��9<��}D����Y#׭�lv%�IP)/(���W�Q]$�sf�����k����)/^yP�쮀죴@ς9�D�Z����T+Z��p�m�z�߭�HFQe��2���C��n,��o�T�_�|v�TţB)�Dك�N�X��-�#k�k��a�d鲜n��{��陖���@V�Vzׄ�/[z��:�39lA �ȫ�!�+����:ߦ7j;��w�P�1|��Qd��,���=�+�MH�қɸ��E7��u��+��N���?��a�LyOJ�1g40�P�f-+�N�S��~��&T㽇S�ܴ�}*�=VU��[�S�e��ݿ�J0i�zq�+c&D�r^`�q�G�%7gvL�.�=N��p��o֓ Å�7���׾�)Qe�V �83W�y����V{��+����I"�v�?�WI�H��ŻKP9��K�r�웕�=�]�p�ޗ��T�p��7e��Y���o��Y3��gq9�JPhb�Y��ʜ��Z��]B�t�pg{>��&���	�i�� ��r�X�,=�F�?KZf��2~1F,���G��8�����D�Z=z3�t\�F	gx|�E����wΐ �B��v��Zvus��ک���N:�B� �����Þc_к�Q	��T�M�T�_��GRu`�%e��A�����}m���2KU�ȳ��;�&_���)A�
�M{ٴ_kx\��bWz�QKݛ�ό�`+�y�U97M;�}lSV�e�]m`>bn_�Y81U���c��:*���b&�q�k�ǔu��h>g����9����-����"ҫZ����fR:~{��7z��2�9g^(�峩 ʩ��r/r�bty�q.�����B�>�+4��jC��q
���n.a�wW	2���Ѳ��*Aax:������Qtk��^ec\��{=�h��Y�(��CƘEW�B�
����I�랯�?���'ù�60��Ժ;J���d�����)����/*�k�rB���wdX���H��MA���}������mN�
��n�X�\�ǩ�`��`��m����Ż��6άq�Dms��wJ�򗃫Oi��@}�Q�>g0�ZEfͱ�q���m\���_	����P?���Mo
�j�1�D�TN�6ƅ��H���1�z��s�:s�z��K5�u�]T�3bE�o<$M	K¢�|��"�`�b5��F&��!܏��ڀI�؎��'����V(���-'k���d'_֕-����̖M�,M�_�ݚ�(��L�9�.Nn�U_��Xg�F�z߭zp�?���	����r8�o`��\:gV+A�Zb�I�N�ֿc���s�9�p?��$1O�����g��z��~n�6��k�զĎ8he袜F��{�G(c���K�%	�n�/GLˍL$��oͪx^�F0	ϟ�k�c��a�w�,�ta��D����;x�I�xtJ>&0qH�Z��jو� �{&���(�W��R~P��N]���Lo6��o0R�!Ե7ߖ�l3��rP�U��i�r�]�%����a�㻽Y<��7*8ϑ���{X���X$�>@ێ�Uv�!�\�j��97��d�nG��b�d���1~�c?�<_Ow<��I�zg-�$���ŗy���rF��xX�ۖ0�ǌ<�k�
�9W��X4��'��Zw
��E�����mmS��̻�7�6	2˸�I�ϗ�����>    $��Jvm�z
�� ��A���A;�_�F@���� ���`M	��rf3��8+A!�Q�Y_�Y	 �[-�/@f��1����sҙevk/���^ΰ>��r�qf�f�
��G�����H�ȑUV҂�=F&���\��B"��	�^���6.���w��1.���Wy������~��� ��3���ł	+������h���^�灚7??C����`y<$��I�l�3�i�Z�%����\-#`�Z��Z
H?%2Ӱb:�ϙ�JP�̡Wށ+�x����'Dц>	V}{����}��jW7|�5Ё#����sԍ_)��6����s�N���^�~&7=�����d҂���S�������Y�2���|࡫3�(�$^����G�\��vP���Le��x�I��&���Hd����1~���5PK��1%yy,v.Z|�R�J	�0�1Y{��G~ͤgz���̂�����e��!�ö=�Uљ�ņ�Y5�5Ld�;��8�Ke]}]�#`���:F��/�,�'_��a��6[���Sb|E"�z��hW��tY?�"��;�@tlx ���6�	}h���(�
Mw6�Rynp������':�Jev�R#��4d��\�����U������ed�#2�׼]b��UN��hO'�d��閹��j�5��oS��s5�tI���R��</������ �PPg�(몊��Ƹj#������P�g��Ծ�Br������x̜�_	RR�ݜ���ޫ�8G���B�6p`t9Y?�4JԱ���\kN	����D_��d_��̵�ZO�yD'�#{Ò�]-�4�E���!�Yیt�%?g����3C�"�}����f���X$b9h��F)g�J%֛��(�Ƞ]��8��_���up�
��KD�%�F�`��j���(�����:�z�ڤ!�_Uӛn��I��kxK�ȭ���Č����u��}�V��*M1���x8#n�/NV�+H�
i	n��9���3����!
����6�>����#��bO5�5��D,��Uhk�tKXk�p� ��?�Ks���9Zh��ff=ʜ���E�:���'
"ᗒ���O1�ߩf�@$��zq=��z�ȩmtf���_"\gX19jӎ���1֞�r2ƬW��ǒ$mY+;U�v���g�	Ĺ�Y�X"P�����_�d�E�b�-Мl�M���<�MVآ(Ϳ~:2\���Ǥ��t8�?���c�49O���@��U�Ll��Q>��ۻt�)�w&k��^׀W���������p^���9K��� k�g}_����ƹ�ϒ�/�l*�%����3�Oβ4��E�k��j�|�⼨ˌ*���23��q� 
�h�⛞���My�~��)gE��Z���pFK�?K�X1�1�����l�Ȍ��>��:2��6zvE�@ӫ��ɇ6�}NQ�Xu'�6���/��w5�y�ƙ:��_H��rҖ0{��ᜉk���3�@�J��7�3m�ԗ6w�BB�S�^v��7P��9,0��@-������6s�咴���'�뾟]�c�qvo�N��!����V��VN�Υ
�����K�?�v&�s� ܄g��D��#R�X�@.�{�$ꔢ`U�h�@A�b�`��Sr!T-��*6%�@K6'=�ͩ����q�nJQ;K���k�M��4�c��b�Ț� W�/'	
�C��B��w�N"�R]��#�����y&�jb�{������Kj��fN����V����źEtd�¥�ӻ�(�.v��愠�{mD����kUXiTe�wX�v�jˉ:�c��cJ�/���~����+��{�/w:��Gq=S�ȒsǻrJ��R�o*o��#u�{�4KɊ�p��]#oS����޻�Ǡ%1�2�f����Pu3��N����g|i9�hޛ�|��+$��L��]�ՠ��]W�mˊ�r'�βoj�+" 3U�U�pek���f�k�-<���#���l��!� ��P�Q��L���l��=R�#�T�<�?Ff!f����Q���n��8��n�&[�@UW����"�wRh*~�w�j�|�^w�!��r�Y��r��j�2=!Ч���t��W-蝦����9�����sX�w�|���J;��7 S����a~P���.y��s~߹����;S�f�T��>�X�np�KdH}���ٷ��c��mM@;����=�bvzEZ}��,��+OQ�����`^����g�� �"��=�N���e@&��?ϔH�<��~ h��ܷ�ڮ��i�_ȇ�R�Y���Gc:���`�3"a����k� sW���s���<��+O�i&A����������9�T�P����Լ�'V4"�[��֪"K3���fs�ӣ���u2���B�>3��@�v�,�}�
�w`���w �9Wl�F��Yx�
�p|�ʄ��d1Z=tRG֦�3�n*��A���r�U��T����)̹��;?ŉ\�P=�+�r��xϷE���F�4k��ÆUsg��.	H�\Ivj[�aO�"ר�~X�N��y�}pY��6F���M�����qĤ�I��k��;0�͋\��)���sP�7;)��v�v_ 5��n���s�#սuG����QT`( u�%f�v������X�拵mXE��vA�������G,a��r}�X�\��.!�B�c�+�e�ߪy����7��-��5N�#G����� ��=ƜB�W�
Ll�92T�3�U�!n���jʸ�x��[� �"U�F�����~��s5־�`��
|=_\X
0o��n��^W����K�K��خS���5��-h�+\@�_.S��b D���k:�=��,�|�?fDd����[�\7���,�]k|��C��ݔ#��đ�w")��V�ꏻ
(��k��{���_�b�+oy\`ό`��u�]9ULb^�8��"�ܲ$�8R�!t�O����h�䏻
�֮�,^��.�V޷�����d'�?sa��ڪ/�|5�AF�F���
����|#9�pz}�B�%�R��-*Ь7sle�_����@|U�tr��O���Ȩ�75�a��G�aT�0HZg�{�T~?#Q�����(PP{p�a�Z��&��+x���6x��;ͥ�+�㬊5fޛ��3��JO����Sќ����],��76%�9���-!��xG�hs������rL�k�o���5���bw�,�<E�!�O�x\�nŐ���bHY�+�Mk��`�C�J�
�H�mo3ۓ�F��㳖xz��\L�C��$��|�.�ӌ+�g����Ȭ�̨L)��
��)�*�v�t�Xb��V��W~@��w��0(�I�
�������� �ĵV��݋|�
Q�k�\�%J_���sh(\l����4�����~�[+���v)0� ��Q`�j���ڙ<��?����{W���aV��Fw�K�!���(`Ԃei��s�݊!�*r��;�!>��hF̻���>�j&�{9�c���S���ik-�m�F}&qC��[D��������u���S�QXX���zZ[��,l�LR����� s�j��V��S5�R/��:r$�c�}�ؤL U�b�ď�@��c�z�m0V�ɉ-u��=�_͈��ؽ]�d%�1��]��P�r��U�9s5+jj��te��n�z�4�@"��ŭQ�?��Q^�u�#3M&�\�#�$���)��6)��rT�Bs5�R��EYe��)3#��_����b��ԗʃj�SbG?��z�;*�^n*@
�.-om�Y�)q2w{���Us?��§ z=�Lm鈲 p��]i��c��A�o���&��m�U����UqfID\�r�g�)~�:���Mp�>$�'r�����N��.��^��kd5�7��;B,���WҪ�������o��Ul������ި6�y{��3H�M�ai�Μ|� ÂX�uq]�.DYA����+�kT���T�>��I�!�:ItEo}��x���d!�}]��_��F-�m{M��5�cl����
_�aY��6�ò�K�b�� �6D��pק�R?#���r=.�h�ܻ��q���    ����W���t+���1��}q
����R|�[�����<�B0h�74��O��8�K�@��SQ-}�_��WY����K��C9�{S�+�c)=_-;�W�GҌ��<�bm�K���7�fŶ��Ɂ�k������$��J�;�Z��g�s50JO߁v*��#@��ZN[K [�J�>�*f�"�"p����+��Z}k��uF��<�ڠ7]�9�Y��q_���%X(hc�XF�����)E���6��+g��/�%��G	t\2u����u`t�A&&������� @$�y�"r�`���!bƱzK�
����UO�+���JK�6i���5�~b6na�C�3��@T�\3US�g��_!��<5�~,da\�����8��>ho�9��8����tܩ+��X�X��O��;Cݾ0l���ړ�:����t��Б�у<�7�)�Y�Qf��ur[k-�^��hN����pT3���*&�r��w�ba��a}�A�tFR�P�<dky�HSLԈآ��	��:�9�	�}PD�uVq�~̸9F;�0sKLO�8��y�Y}��;�,%98�E;��{��p���g粱s��������U wl�ֿ��!����[>��rV�^H��݌M����k��e��ve��(�)T\�lk�{���S��ܵ��k��.D`�
l5�!`���0��Sq�@������-�/����ր�Ϭ)}`K4��m�F&E�lL���FVð��؏U ��R�ۜ�y���z��+o�C���L?��߁MM`�VYߨ�]�Ԟqyy+޵JH��j�>�v��m�CU H�
#�,���������*1լ�,p��S�Bjb1�WtJh)���W��Q�$u�_lz���y���LGInN�q�I"ֺ4AjϩJɰ��͙{诏%ӱd��.�$�S�� L-�}�.I.��hl������L1�;Yr�e��������+��_J��"��L:v��G �����x. 	
��~���(���4���i�;�(�yGf��z��#�c���K:���h�67�L�.�ӏ)��8+�_����x�.6�Af$-'j���j�(wn�1#z�2��DS���,_c-�W��Wb�whVL����G.JON6�G��(����S�k�&Mί�u�R(b�1�W�z)��L�?m"
E�5j�͝�-��"/|v�|�k[s+�ǜթ�~�yx�����UΡ�z�V{�}j���5N���w͚��Q�(�D�Ő���M���F��rۻگE�m�P��'gng�����I�c'����T@-�}�d#'|N��w����N�!w��D�%���3BV�Μeկ�Ě�K�wń:�ZW���_�)'*�֑� [A�r�e�U����3
9�#V��
e�<����l����U3�q���t֫u)o~H��V�n`�T��|N��z�?��Q�צl�\%k3��B��S�ܕ�`�ԝ9�{���e[*.�c�d-��I�ؒ���h�G�h�ZN~��wu�����u>H�R4�ؼZ�ʭ�XG�f�9��@f���9��l�z�ݯ2�`����c�Y.&��~�YX�zo0!�M/~�iy�im)��a��_\��,/n����=�����3�?�w ?�F��}_
D_�i��Q q߉�����T�6�������~r��#+yb���(a:3�O��-�j�xӌ�M�ܻ�|�v�9���U1d��W�4��E�WBs�*�L�����ܶ�@IZ[�V�|5wu��Ӭ�S9ϳ�ƫ��n��K�]3���S�I�;gn�eS�-vf�T��L�5�qD���okլp��>��|�¥L�ae��t�F�'U�#P��Is�<��d��Z��4��B*�-U�(���k���� �\�>�e�l~+�Fu2��ȅ��Y.���RD8�e�ݪ�_ ���8�>qU�ʂD_>)��~KG+�=�^�B��z�v�����ǹ,��e����u`����t��6蓚Kiۄi�բ����]��1����t`�Utݻ�	)԰��7��r����	�Ð����VN�m%�-��-
����׬X�ڼ@j���OT[)8_��t{�ڄ@�\���Hl���Lc�������X�Z�%�X��D���2�8֖�@gZh��>��]���v�j�$���U���g3�!�G@�R��z!{4�zj]`tSN�k��~� @8�I���S.ǅ�>�jSӯ��۲R3��G�v|��z�_B[᝞ǩ�q�o��;���D���My�Bq�4���M���セz�̦��P��P��ψ֫Vq{s���_��9�6C�NS{B^-�W����t��c����=���bB��=b5[�4Eu���8(t�@܅��mZ�s���H=�@hsa{\�V�@�|>��@T�Y0�Nc���~��J�/2�|�)�NwmiS�[�1.	��:�d�ȨSD)�#��cㄻ��ղց��gv��[y� �zW���c�{����>����r	g��W�f�dk�`�*����9L�a�.�ȿ��ɵ����v%��trP�:
䬍R�2���=pC��sBH}��V��e��!6��� �)���o}�<��9c<i��u�vj�w�	����
T�~m��������'�)���c9K<������~��Y!�#����)��W�����;������jZ�8� 9}������;�^h{���y
I��aY�5� ����|���}T8�j7�re6�!pT�q)P�T q�K�U?����oqo��l�K�u��u5�4_ޯ� �Qٞsi�YmUi�񠿿��	Ħ7nU�T�IG����z���1��J�X�/�k`"uP���E���Y�����ɺ��V��^�f`g���������X��m�ĳ��׹8mϸh')z}̚I�-�9�Q,����V����bP ����0�Z�G�0��(�U��R��\լM�e���Ԝ�z4��?���j80f0��G��Fn�y��~l2{"2P�'�P��@����2��v_�l8)"����@'y���bPŝL� =�?xʨڬc�-v��~	�����|��(��R6���qf臋��2n�����6{>�%^ŉ�:�o����r\!�q�FW0:ͅ|�Yܲ_s�"|�/`��P>��2��8-�.����#z�BUO䋽��Y�$�����~�\�T�]Y|��Q!�b���d�W0����N�`Y�z*�X�؏q�R����*@���b�]1����c_gVɍ[��XY�b:�^�@bN�v�EjNVКO�$�h�x��0sM��^ԣ�Қ��.���lx���E�"���Y* �1��?��I�BN�_^��W1V��8�]��Y�$w�L�|��0e�Y���0����}FZ@Yb;qf� �k���ڿ���l���|t7h9a����o���A�ƿ*f����-�YFA�[F��ò.*�q�0=����V�|�Z	!.��� ��F�U�x��t 3=ǥ��D�	� rX���/$%k
q����<�20A9e����)&1S.�c(�,�d~-��+z���V��sh-�B_<wRuh�&���e!E�>�e�ք3SI|�oӮQ��9��=,�ŀ�'J5W� ��,8��I����)��7��x�@U�9Dj�Ó(@�x ��t�d��vŔP�����z������34���Y��=3Ŏ����\q����Ss�a�#p���$f����;Y����j>�e�D������>��%܇ծ����'Z��,b�|����������3��[�{�:.�V�[?֚aH�n�E�7�:z���#g�.�B�mn
d��ce�����&�Fd�����+���4|53���>���'�4��A�j�ʳk�]NY�M�W���qs:,b1�4Q��k�6��  y�jԺ���R�� ���]mR:�~�D=zű�%�TLO��������x�)�u���ґY�[��>E�]�RJe��+L���\o�K��D;f��U/�b�=ޖ�ttp�Q�cC�PU2߷    ̧�*5���󾩫���F��5'�\Vȹ~܃xw�y�/>�����6�%_@�7D���V�,�]lߗ����$4M#xF����G�P% 5�,�_�i`9��sbX7L��Ȇ꼁u(������ۤ�X�h����w�-թ�Ѡh��㗑�O\�xSx��a��j��G���4�y�L��S�O��G ���);�o�W�jϳ�âx�8O��w`�Eg�ְ���1q�����0c�I��ӫ�,+.�'���E�~2`�z�i���\�M��z=�esٸ������}p�G/�@e�@�z��n@\��k)z5�/���Qߧ��V0�~��:�zo|��T���k��uJ�[O2�w`v�sZ���1���ԣ.Q�hEp5}=���|3�#o���/�Y�ʏ�e).H�w��K�#e��e�X]p���!��98���݅���&Hb�s�j/YH����+�ݻ��f����F��
��a� 硙�d�5t(z��(���^1�̮D��Q��*~z������	�!���@�8����ߵ�l��#6�L+O�R�Ǹ���N��'���������&�����|E�M�M��Yk��ɍ"�毿3?��޺���0.�Z"6�I��Ѓ���"-2�6��|~��d����q(��Z�6�m5s����Wα�ڻ��#�8R���Y��m���:trw!]XW�:��G�2�?�q<��#�W��{D��D����?ˏ����;W3���p<^��˕vWu��Z�3�80E�[��� ���r��߾ An�湿
�OH즹���!�����l�(�U�|��W�;cAk2�])�)��6.�ņ����F�����\�<�q�L�o������@$]s(���?���5>v�����<���8Od����䲸�B�^x���"2�!{ �q��2�ע��\F��;��}\�V�੹�'R�11�%�#�XK�t�n}h�UN.d#�/��>��"�/(KB[�]Ւ�P)�Y�bF�Ř��^�Vyޓs�ߋ6?���$S��??��{��N?vu��������|�(�ߣ\�3Wk@��D����j��c�C@*��o�(qA��w�����5���zF��;�xDs�hhV��Ҧ�/Eib�ǵ���yt2s\�, �jD��w�PN-�5��k��AS�1]��ƍ쯔�י ��x��3�U��^�i�Lԗ��m�a�5P.i��<P�(swYӭ���2��x��|:.�����`S?�q��0A�O��ö�9�������q�����w��c Uk��
c�^���ϯ5����v��0�H��Cb��;!�)����M���j�Ȉ���.#��F�H�U3�[�{i��4��H!��^H��c:; -�,��I���m0`�j-�ln5��b�`F�$�zg�6�y:��	pg/��F�̵V������^v�(�O`�a/�7��6c�`�䄛�יb�M�G��S���.���8��ߨ�N�����^�(r_�C%�ՑT�M=@qz�{h�qz靅�e�ψU)��X��w�\o;o0`"�N�V/S.]I3��QB`�℣%�ල&K��Uj�Eg��n� v���,%����{g@�/3���0��&����3��H�ݼ�%9� �G˻�*�XYy��w��Tm
�ncWM�ߊ)�	�߾����`��{X�>�Ym�m�7ϑYur�p�3)�d��|��N<��L=d�M�����Z�-Q1��������<#��v ��wa���k��W���Gf�}5���F�~���C����ڻ��Q6Q��K'U ��W�k�~�
�<$;3"݊������SL���G�<�U_�c�3����J���D~3&��˴8�<�.�i#�T>�?s�sJ�>���F�i�.�գ�b����V��%�	�W%mLD��{�M�*�}\و�q��ϥT��2��  hF`M���8�$�[���[h�v5���ca\�*@0�K�ǑV_O�w��Ϲ���(��K 3�]`j|�~�<U5����W��6�ĨB,N�
���O�
@1��X�c�����I��s\R������q�f��yr =d���w�՜-%D��X�,��&F����̘��,2����}�Z�~�H�p��	Jw��*p�y�c}��1�be8h�	2������ػ�oݢ����|���;r d?{+<�k��6����v�|�ߨgR�_�G/udvPC0��2(��5<��Ξ�߲ל�C}��S͍=�g��ޅŬe����<���b�+f��-�q���R���c��x�e��pTLC�s\B��z�?sf�IGoݫ��,�({�?ߨ�x�V��;�(N�����q��,��P�J�R^���G��E02M�����e+w����P�\�w��D�?�=�N{`���}���;FVk��'�T�q��� +�"�֥ᦥ����%�����pq�7����W+fO���
]�w6�}�y~�wJU��,�ՌXZ��_�{��5>��65w~�s�,�dM��l�+긼Ա���!�mzYJ�:,1��eM�$�C�	�PL�Pk�{��jVb���J}�k�4�n�N�y��ߪ#k5���>WAH`��4�
���X�q���PN�W1j8���}��6��x�7�T�Q���}�\d�r���X�j��b���c��u�5p�fb�m����&W�u\�"��
�~���#�-B8�T�ϥE�;0��9���)�*���H
TZ+AN�١7�,fdop�Fv�����\��:=�043��u�I0�j]��J��U!w�������ڧ&C�<l���g4@��:\�g�T3���0w�f4�
L�%y���iR>.���r�֜��w
5���jFF���:g��g����B����v[�޵$��F��u\>B/�]��|��Ԟ���pS�Q{&L�e�=���#�:.;��(��}����E��zU�j�~'��L����_YK�.b�*�2C�\8�S]��j�f<�Ϝ��A���}'Ÿ.8*}�_U$.v|M�G���� ���zƮH6�!)�܃Wm��/}��U(�7o]&�<�������N���v��b~�PTg������T/�Qd&o�5[� se�Kz�e>�b��B���zU��F1KB|�lE� �Y��L�D:Y�ť�x,Je�%��'�JK<tQ��i0��K�&�j������-����6�+�f�6���}5kтqo� ��{K�-q�iw���2%>�!y��;0PN�{�#"=�&��-���M�Cs��X3�;F�U�*����
Xo���
�l����4�3����M��]ؔ*�2)]�T ��L����@	s��+ܜ��'cN#\����ʣ�z�H���{�ci���$-&�.)ǱbA%�"R~�Q�����lɞ����&�.)� z�Eqv���7P"Ma;���e]�&����\mCP��T�
��ҥ���7p���2�63�Fc�LhV����(vNY��Z�BT���[���nk���K_��ܞ��õ,ٿӾ�q^>�
c���u{����K�VO��
�ݪ���m�`��gr%#62�F�,��m
T�ܣU�>g��Z�b7��I��6��f��$��f}�M����'�.f��綋D�����#�7�����K�j5�[Ƕ�`y���_��߁񑐢�+�$r�����U�J��8Hv#�}�+ m�'\*p[�wJ���g��G ���帾��)�AV��Ł �gg�w\��#��`Ie$�?.��}��邗O��%?w�������|�)Vh4܋x���]�g��9zv^�<�~\��S`6�"�i��b+��+P�,co(��Q5��;6����%o�vvj4F6�J���p���=όI?T�O�<3F�����<��iP����H�V|<���_�b�Q���W^99<{���)%��+#[��Z�%oB!_�j���Q��§	��������y(,Β_�aS"6z^\�� Ĵ�u�F��4͖係+T�v�5ڨ�eC`�q���WH���&�4���(߁xg`s�V    ��.YH��������� 7��;20I��ދ@%G4���so���ečC3��-��r�dK��f���l��j�<���1�Wr$���Eξ����X�
b#��qQ�"_�{�:e���� ~g<��:<��gJ����_O�ȕ6�;s�{b�z�%.-�U≙�tx�b6�i���[�+/���o*��#�:<����u��<��4ĳ�+�~�}}�P�
��F��T����_Y���͘]^q�.�w\�tG� )��q�=/��ji���[�\/K�����ב�`���<���8)�k�)��#9͙u�q���ޑ�3|\@#��!#V�W�Q�V4�=�^�R��ǫ�W�J��cI fa>��9�[�����t�bDg��u`�ۡ9�%-�3�ύ+�},�B�d���v�#$�C~ۏ�S��ͥGeP�I|���]#�`�(d��Ֆ�ŞmL]ԁI�څ��1|@�P~��IȵR-�U>�Ȍ��;u����]9bvk*�YHD�[�N�L[i�Ņc����"{~�;ۇ����i�`a�����\of�=��^�7����=ɣ�5��5���z#u��`�����r1�{���� �R��Lչ�������e-�%'���\�g��G�?�m��/� ��!>�1+é��?��m�f�>@�̢^�P�oK�I����?�����Q��-ݬ�aƃ�.���jfC�x��|��SFX��-Ӫ��ۓr:0;�֫�u��bԚ�OHS@���-�+<��f�U64ã7��dI��W�����S��4}�&���B��`�+�>*���O8Om�.�����d�}[��LW_@�<�z���Z�w�`�Ɍ=[��$�\ҥ{:�!���J<�N���z�}����=��)���c��v�N�}���]�����@����w�T M����󾿊��o_�J|�-������A�Go�gUk�[
����&C����O��V'����[,~̑�X��@��5w>�ML����V'�^Q��|:�`����*����!��=�Zm�Aǭ�Rǥ�:k����*-"�O�ȩf��9�J�֒a�㱷��Qn����2xM��[+��y�b���eƜ�ֺ�΋K+.��v#vPƊKl�x��0�#�"�!��[y�m�����1y�M�;�t$��k�g�meُ��4���u��/nz�qL3�T���h�V �e�w�Ɠdn�oFu��
G��y*̗����� A�r��RL��i�y�ϕ.l�1��s!A�
���bV(�2~ϾVӞNE3J���ԑ�<�M9�'����G�1�	�BD�������	�js
��>p������0�`h��r\i}U�WK�>��� a�}ʌ��M9s���$��ݏ�Q�q�G�<��k ԇ�D�
�~�Pߏ2�&��KN1����ū˚ʌ"b��wA"p��b������e���T
���Cu&�C�R���
h/Є.ɰa艮v׆�7�4�J�O���.��`�~k	C�c�dO��WVҬq ��`�uƵ���� ����
;���7�qlڸ�hs�8�LP���ǌي(����ª8�i1� |&��7މw���5;l��KV�2��)W��8�x�}A�<�bIr��uZ���P2lp��w)B_���9�4fݱ�L�t�:�צ)&M��ߙ�6.;M�>����+�H,�֧D�=_��/:eD�q�
CP���!��H1
�\� Gc[��Pל�E�}'��|����⸔�� ��y�w�6�0&�-�i3p*����qѧ�!տ[����]}RR���_(������	���F���QS� ��+�z�Q���ͷ�f��}B���f�խ��.�~$i_�sTk������D���mkV��F��֓,�򸢰c��R7��	Ǿ���+�zuM��{�wnS�B���p
~�џ�˕��ȼ(��T �w�g�T �����+�A�1�^�zS\�6���w�b6�-����&0a�9_���C��&Z���hb;p�M�}3��^�>ivVZ��Ǻ�F���l`^ ]��s���� �����}�u����s��7�x�
 :��sL1Дp=k�)f�3��M���k&���CkK���j��\�Ӽ��`�%��e��g~��5�-Gu�G�#�hﯖ�\����3�3&׻�ӚN��}T� �l��E�>f�e��a`_�;;�4t��"�.*2�������d�DQn՞�X�b�۾��ֈ�bRN�������T��DLX��f_i�g�D�
�H�#+�$L��iU���X�/�-
�e�ؿf��!���{_�TاA������ڡ^K�!`�,�������
�\�Yl���k�k߁#��{{���(:���O�+�s�����T.�7�1��<��;�9F����h�`���ʆ�Cݩ�Y�����������4��`K.�m��-��25���)֝[Q
Te����?W��3����v�����I�a�b������S&_r�M(헱fO��}a�.ruw]����1%����?�P@�K���&�cw�ߏ}��?����b�t|�lq՜,ޖ'� ���Yk�M3}�YJuwX;�઻/
�#��v�*r���,5�9q{�@֛b:2��eV�S�����(}y�һ��&JV���3fQ�p�����	;̝+
 @��^_�����G*n-��1zf��И~|�0����ɵ3%��\����O$&	���\G�l��M��9������1�����°S�Ə�I(�{�����6`m!���NsL3�8������4PJ��5Qo���<C���$o*Wy���6-���ۭN�J����ؼ\��b�ݵ���z-ش�{�:2�	���ah ����rMu#{������Ř��ת���=O��e��}�w2v�t+�����*.��|���J4�-H�f�h��⦗j�E��b@���њǘ����bb�t�P�����pġ����Wß�ɨc��u{�����s6��4ð��[�O\��ӻ���� DN�U3�LU�%WaZ{^p񚀕Qcc��h��a~�ku��)��;{�k��hd����Y�d�{5�)F76�2���9�{hw�5�&�C��G��_���W<������12��R4PA��r��ѓ2P�q?�LSB�r�Ħi�J2x�N�����/&�~_�����~'��#�Ír��
h���mwۑ���<�5Ӝ�i.E,����*Pغx���i�@%I@��#Dn/�`OMﯭ�F�w���KV�:�"���[�ѕ6�6�cx��2!FI�`�Ι�� �ڑLH�U��/��m���%�[���x`~�x*��X?��Za�ۚ�BX�YS�4��Dk3@���;��t�{���͎��n��J�&���Y}���h������F����k���U �t���rp) -��lf�L.��K��̒�s��5�}1�s�W�J���'��D>�X|ct���-�l����� ���:�j����ۦ�3,ބ\_�)7
d��K:G��4f�sԜ(��YY�6KH��B@�����6.7�3c�;�Ƕ� ~�Uqw[�O��b-�Sb�3b��;��@!���T� ���H�䦜x b_��;Yvg��2�8�" �������9sׯ<��<�X��%��3T���*��<�}��g���k��]+��鹐ld��gw�ۿ������Ϭ���O�=�Ō�ޒ��}�����J�Q����K���Ю�(��g�u���7X�M�S���AuyT�P�i]�Z��b����6p�vm:�	��y�_2�^)<��g�bkA' �fT�V�((�D�y˶ظDJ~�2��3:�e|�qyc#���������o��rB#�#{:�@�5�bZ�E,4��U1<`q�c~#����\�ځ����fM��I�ai�r/?>1�Mxz��y�ަ���'��Kz8Ԫ{��۸xHZ��
Q���x�X�S�5b���RB���60�����˖T �5�狙������2��q�W���    A\�#썈��T�J���y� :��m+�7�`EV����Aǖ`���UqM�N����}�oTAzvi|m��Thշ|W�R�M��v|�]��E�)��ѯD�8�ё�`J�[W`�HNd� �,�η��G��Y�rW:��xp���9���g��Dob��'�i�Vm�R�����2�Mr��F���cƃ��(k+�����h�؆�с�9Q��K\W��˚7���b@��\�ǒU���k��4���"���$���
����dhopΏl�sgkD����m�X��h�Cb�g�%�]w�yE��E�=� � W�L�[[��Z�m5��x�y�K��C���������cʠo���Vw>��봤�f�1a��)Q �:@��v P7�R�cO�a5�{7�*���C�=��]E��PLVP�/y�7DД@z�&o�j&���+�A+�o) ݲܜ��a������;r%qX�0
T:hA�1�"��%I˹��õ�r�4��@�	��wNF�?�Y�w'����Q��'�X�o{/tR��ewxbcSMJ�	�����湴�5|�ҝl7�@���;Ϙ 31�ԏ_F8`D#ĝ��n1�s��y�E5��л�,Ϟ��f�bE������}��Ff���3�'ZL_��L`�����yJٝ�F�G7�3�}q
$=Vr����
�l@���_WX�
�WN,Q���8:n���}w����r����n� bxr�H�O��OBR ��L��U��ߋ���!�~#�đ��fn��L�m���q��	Q(�E> K��#�(��ɾ=qΞxoO����|#�J�)�p��샑��*�/Jho�Sk�T~��]ڸ|�ʝ̸[Db��˪��D��;��`���9�̲��主������^�[]5��/�c_���d���ڸv�)�6����U@��szj0�nh_�I��,���|ȕ�1�L��	��sgC [|^���� �5PE$�2n�H�b���U�51�P���6��ހH�s|L3=�)���`��Q�;' ����ǜ��#&Od���O���1i"V�5!Z�(���;?4ka^M��4�ʗ��,���<Gx��X r((��5p��V}P�l��%f�9�sQ���.&n7�)�7�i�Vg5U瀘f�����}>��af�p�Q�qȬ�;�7���h��TI���}���Fv��6,Ô���	������՛'�y>6Տ�_~��N���<W<v��|DbV�X��+�'QX��mP�9����JH�Fp��L�5��ߧ\�.������h
<\sS6.�U�st�^�`�-��b���ts.]���%}t�ƝG���+�\ذJ�%+�`�&�ng�~	$�\�8�5�X#�9ڸ���]��V��0r�$/L];�}���R4�kV�i��ka��X�q����c���q�gPt���b��H�RBk��[�"U&0XG����O��<�:W+��4g�3�g�V�?1e]H�����c_�(ϤVߊ�������tG��Y>^K�M�U a[�c+�%`Ҵ��vm>S��ܿ"9"xl|��4�9�1D�\�Em�sk^��,�aV��<�r��î�I�]C��Y�S35E�e{_�l�}���]@;��O+�X7&Z��{w6�Z�7v4�[���P�x���2�:����T{���a�K�D.�d�V��u�{����� �v�ʜ�x#Q����$�K�,�U]��dF#,6�u��s>Y����3�=�yq��G5�-|��+�2J��n 6���%���Q��Bk62�l��|-�
D-�}g8��&�l\�/蔴h&��bXH}�
LpP�� I(�k�j�����_{�����.��9��G����Er� nyW~�h�P����_Օ���@�#����|V�<I���?Ґ�V\�P޽=ϑ��g�g�w�BlF�e�g�B�&���+�9�Pí68ՑF�QN|�=�����5������u�lP�ْ�]�%�z&���q�4��7Xb�[����}��ϬM��S�'�ڞ廐l�"OG��+��M@�,��B�r�h@�x�3BTp�g�y�e!K�o/�,"�=��e�v�H��/�6�Gk����)�/��������sۿ���#G���C�FB�y�/�� 3T��ʾ>s��o��=b���U�����=K:a�︬�L�0��(�B �urRhN
� :�Z�m�Ԝ�n�X�''�
4�ӵ�0>����|s������?F&�)����C�u/���� ���H,|��W<��Bv�mo�H�w���Vܙ����;�@��u�%��v�I�⇅t6p~43��Nf@q�Ŧd_�ë�Un�P����Q��f�Ӗs�n��-��&�9�&1h��m�#%��U�@W8ͨce~����E��f���@v�~��m'�'W�Bo.O��>�n��S� �q�Q��@�X;'m���J���2O^��M��P��ގ׹��[F{�XL"skp�� ;?d�?h�S�'/���S�����}��j�4k�����6��~���ɢ`�iF.��U���z�6li'l�՜������x�RVl��*ل�@7q|��h�D8�@g��xM����ҁ}����U����TN|���>SG:�&@�:G1v8i服I����308�d��۔��g�vwըf��-b-��;��to���3���]Q*��PnP ��l�$�q�h�7����b��7�;['�_(����dw����^��H�)pI�b��=!B�V^�--�Z��;��91ZP�ɻl���Y&�f?�� (н�LF���p�������u�|IT�������#]���#� FÊ}�,]h(%��K@{Y����pk~�F6_t�
��Sv�\(�L:rRlR�s3*l�"�_���_��X��_VH.A]��Lř��~� �|�Fx;Z��Y:ѫ�O��"y�vq��7�����ϴ�;.�Į?��ʢ�> ��_	�o�����r狷>o�t��H1��7[�NLh�W}����6Wg]p ^X^��Ǭ3�����o1p!Ý���B�F6�t�K;T�����lJ��������&i���g�90k��r�jJމ~�i����X��l��Wf�	cOy�$��lyq�4?��c;�Է�'�(¯ǉV�j��AK��1��̬C��W�Y_��(QS���60�=��c`�V�W�_�Vb̥\�a������$����<��1��j;;ۿg�X.��0F�ߏ�m��m�aq��p����-�ߏ���j�u��w	��:��:ڜ!�e\�`b��������Ǎ*U}�~?�܁��i?f���'��#P�w��)��F9K������}����ㆨ���[�|���>~��C�3��5ɓ�9#�~�q��?PYi��{HD`Z�^tNZ"�OA�(����ʶ�p��w������U�RзV� �u��G��j��Dyz��s��-_��0�D��<��A����`f��F��@������w��Ft5o�P g}"��Z��wv��"I��5���������%�|�m 9�cS�J���3jҭ��� �F��93<��5>~����
=����?��j=��G�ȕ��?z#��=-�4�
� aΐ�c��A�e?�J���/(U� y���1eU̾')�/�`d8U����ށ+߂���_���0��XG]
���f��}�L�(n�}�iUj�;E�J~��=�ʇ��w�Po4�[��%
(R)g?�W��u��=Uyg���X?��[����o�b&c�,�[j
�B(�o�r>z��z��[Gb�ۛ:.�ΓP��5{�����������T��M\��JW6�C�y��Uq��C���6��D���RW�z�˾�,u|��L'��+�Z�P�\��A�h�P�w��C�vQv���`7W�m�D�<�v��Y�U3x��/���c h��I���IE�d��
Jt������k�.ܳV�r�yvj}�<��x	��c�%�Y�~m2#�*���ﯨ��`�e�]1�ya��V�    b^b8΅˦>ϣ�ﻛ�BS��?�:�����+�\7�O꾱�K0Z72�� W��Ԣ�W�� �:�X|6���ˡ�.Y@�S�P�M<.���򶝳6^��FJ	�ۺ"@b=R���vT����MI2����i6*���9��pH�G�����K�D��'Ze	���u`��h� :g���>/�Y53����
R� A��<����e��0�'�2�FB�ۜY��ĩ���N·gΉ!��yT�l6WB��`�f����j.L�d٥��b�	O��q�-Ш#���%�;2?(��v
������;������gN��/�D{YM|�/6�j֫��U���>�%1�y�{��82;+#e�mJ
D����8�ۄH��'/
C�C��au}�Tocn1���ƫ72��œS�����ڎ<cH�w�x��Y<�x-l�GTx�۟<��i��]�2��������ƅV/�Y�eˋ
p���ȄOL&�e�R}j_��V�A��%ާ�SK(�����
���#3��u8�YIBk~���,�H3�M/_�Ψ��¸1������j&ë��9�����R���+Jd�gZh����c$}��ӌ�Qwԇ����Lh:��wy( V)¯�Υ9���U�����i �ZGt�Y"�]ы
$+��yz�_��0��_:.KZ�t�N�I�7�7�)���({_JZ��2�j�*�*���~x��-�Į�}�d�'{�c��_脢�Ǿ���;T��zA� �nt�����֌㵅��U?��po6���l���gC�W@d!�#���'�/H���4�_�Go"]�ŉ�a���,�_�"zZH7�����
�ݫx�M��<W��]�]גG ko$��6M��i���dU\i݇vv�y5�� �v�HUsaeyHa����
��M����7I��k�#y3\X��V��/S�3�)����T�K�-@"��Y��j&H����P��@ͬ@���:0�����e\�}ĆJwŕ�G���R��RӚ N������y1�u�ĻI6���E 3J�Z�"���WL��4��6ra�8�92y<��b��L�)��7��[����se�H��<߾�2�a��SA�h|��C���K�-��vv��$��7x�!��2f�'��[��"�C��[�Jǳ����,��y׺KF�L�?�T�[4hp`M�/[��Q�q+T`(��&`-���������V�D#b�N��/��91q*.\}�s}�vgP�B�񎫉��/8�g\t���?�*05J*7ю��P����ӯ���R2�d��0~��V>�-8�j��������ҟK� y��&��E��� �d����yE��#��3S��y���]�-t��Y�W-��A
�j�@�=:�����X��Mf�T`��F�Đ�eS���1Tn�;2ޠ~1�(P����U�$����<������Þ�dveNo�踉�r�}X�Q�b��˂���<XX���ز��_�mdd��l٣��8��g����y�Oŕ�rO��~(Ƭ�\�] ����槹Zh���X�gJ/�خ�f���L>꫚��)����ig?c|z�G���$o׍�)�F'���/칂r$�ߝ�x3���=u��ў��#�H�)��v�W��୍��4ؗ�\�-$�z�%��o�e���N%��  ~K�ux��F�
��)�y�b>P��t��f���Η&��uA_M�f���hNs"w�ܽ���쥆�Vp��oZ�XiŌ�y��Z��3���4��)#�t�@
��p����7�9��>.��l]�y��~�%�I����;�p���]����9�L�D��s׫��P`�U���)d�
���3gσ���B���G���LiWy�}�UX�(��k�=^c���>�a�jA��j��! >�\�!��|�dia��#'�\�n�Q?:`�'��Ӂ�*��ֿOr��{��c���ER�1�J��L7 ��6�\�
���2d�$�Zg��7soR3��;��G���,v��Iͧ�r�]3�(ft+ҁ�+�_�d:��%B��(�I�j��E�	��GT-�v��KbO�x��0�}U�m{�g��������R�����m���R����`�-k�Џl�j{l@G&a�\�g��G�(O�@?hk�TZ������o�X���t�?P*�iX���̧��d;�-si���~��餙z�e���g�����-]����٨��jw�
��^Hb���箹�d���b^Rߙ����������}[�����CT`��{�>ٻ_���\ܔ�!�����E��*�����@Q[�/���u1s�5�Ճ=K	.����$X��~�0P��v��"Ϭ����;0)�{��>!&�@0��. q����g�����D������n�c7{���g)@&wԯ��в?�T6�+��Վ�n���&�,S�Mo�� ��sݍM�����c�����ԼA�%\�6��L�^F�k\�F}�|S��G�ҳR�?����J�!N����`� ��1��{��ߩ;���h���}JZ�SR��%(���x1u�D��}1����Wf�4-�0\��r&_
��e���-ap�����f�*�vY%����q��@m�/&R���#ʇ��Y����rS��Z�oF�P���(PI�L�-�O�aN�s�*S]�ǽ�@L��~�p��T�t鋩��^��h7��53EO�Ĺ}T���Sn��+C�Et$w��H�1:P��S]ID<r�q-�!nq;|BJ�Vv�����,�)
�f�w���f�Ki�I��*f�����_=T=�t�o��[Ԗ@����|�jt=��7��܌w6O��9n0�w1ѭ�R�m��w���w$��k�R���D΋�_�M9��Z���S̀o�);/�4�)Myp�[Q\�u�/�ފw��v��0q��p�,���h��KR<q�A�料m�eKF�5�Z��B�����[�飯'��f}}�s���� @��Dn�6Ϧ��@�Gɞ~��p��/�P��M���v�)��f�v��Z�{XˬŶ�j��j��˯��C�v=���*0�&�3�붽�R�}�_6'���T��{5���UWac����|��a��f���b�迴��)�b&ٝ��M^ż�f�+���J.��z���l
�e㺪
�����b�voiy�-�Ƚ=�KdY��lTD����
h�(����^h�U����M�_u�i����e_��g�������]�$0ph�"����ZТ�����a&�emɁ�U@n06��'G�#�3Y��l]��i�p�EE1��C?��
b~?4+W' _�(P�Q?t�KR�	ʴ���V��w�P�6Q�y��lo�����*O���X��;�eJ+H�&�-P�h��LxS+�y[*��F�Hߵm���=܄�	������~B�쥳���7���cA�ؓś�u/�g���7��Bl�r%�wWeaو�,(�f����-�٧���JN�OX�b��":d�)n4��8&{Y��։�jnܬ4�3�" �vC��}w)��y���m
ok��JW[���'
Tc�.���"0��!:����Y3p�C&w���t�D ����ƍ�!���#Q�=[A3��L�$ws鶯�ls�}�ѳꮙ|Gr�E�S��E[���\�	�y�����q����3r�!�Gw�$�X��V>$�R�i�������Cg����gLC����f�@2�����N�,��=�ܴ��K����wU�{$��
 �>��%�a��J�}�Ќ�X#k��x�#�G�ٟfU�dK�E���'Nеw��1ՓW�,e#��z��r�毐�Jhhu�}��p1sd���������tqt(����|@$��fk(�B�m�ʶ�u�:f5IB��]���T�Ub`}0���m���8������s�=|� Ōa��4z(�g7LΖ��������}d-Ȕ�2*"��U!ʆR\��:�9������
��^4�`��r��)@H6a�3�G��ڼW��`a���*F똿R. ���ĭ�_��%,3�0g��U��gq"}PF�5��t�&^f\��    *k/�����;�w�I��2ܿb�3ƥ���R��v ��8YO͍lq�tW�osb��؏>�f�5튀�#` t�V��,��t�m]����X�� �	�JYk����t6H��F���ɻ��
����KV<U���n�F����i(ǈz����%�c^^
�L�X�k-q�r�I�}=B`��zJ���4g�q���n�Y[���g��0�c�x�q�LƮ6��g�Q�h�ǋC��eH���||	�i�+")[,X�c�M �(Φ���T~%���+쵇�Zb�����G�<�n� �
��ģT1=����Wp���q��ۿˊӔwݭe��D�x����CK.�X��=�p��g�qM�|K)�~�u�jti"S��]ܽq�t>g�Gjw�����7��P`�ET'���D�*2���'g2͏�}UL?R.N�~2�K��� �b6�ID�oS��f����g�}ZB�j�IF���� �.�@�m��oܯۚE��Hݧjޅ&<w��R�����1P�xȄ�����\����%=2./o�Q ]�q�Ķ����<)���)��|.��N(���R(�*����k�5���l�*H��S*l! Ft��_
h⬁��h�ء:Z��)�Z7$/��8iq�LûS�w�����[�$z-���Z{hV��,tBZ���m�Yz(���A+;�y�Ys%[T���Q��U�<��	tu�f9(u�@�b#[ͫ�[��Z���Q~f���!<В���e��� C*�>��c`և���{t\�6+y�#��/MO��l�R�����✪���=�h�	��Ի��Y���.��L��(o`(7j�,���E�Ė���*��f�c���XE�0��SL�����1��j���*�Y�����I��i�Z��ࢋ�oWE{NOL�Vˇⱽ�3����ngY&�eG��vbX�.�_?���,�������"�~��{U��}f�K������τQ��[Z�vUM{Q�,�Z	�z��:%�|���U�*�_X�\Z]�5�X����(��+1��9�Vß��J���,�����B��WH�x����]��(�}@R�W#��Î���Sny�5����ވե$���;��3���5����͸�[j|"Y�>�O�>��Q�e�w�@OE�ݽP*h�i�<i[2�՞��Fi!�Ƴ�٢i��?�]���hִ�ʾ`�I�"�c��1G�~��X�X+�z��mL�x�`����X��<�������!.ֵ
X���o���])ضΧ⊭!�i�57�>�Q�]�^c�㸭L�/A�wo4h^_vFD�Q����� �	t;;�hnP�x�Ͻ�uBC��ժK`����T��1}�Ҳ�)z�[mu+�h�'�	��L��A��]�q�H>������i�ܨ���w�<Q ���}a�
��-�����
����ۻ��j{p����{'ŋ�E��<I�n� �Z���M3< ��ՌL	�~��W͕?��>��y�������*���{g4��},�;ˬ�X�s�G����Rō�h����7�N� ��/0���O3	3C�HSK��гR�WQi�c`����_N�;��rq}Kz�� �zW�+�g��`g,~[���ʯ��Y���	G��R]L���y�Xc'>�������U�_d�$�����>^F�ܟ���*M.[��ց��F^0�G��|J�o(�{�񑱻rV�5������c�$��I�\���$;�������`we���k<��D2���P�@���%��Z���a}�X�Z;Jɗ�32[��c>��FK1Ԥ@��"{�/v��f���L�U�b�wo
��V�_=��	�+�N>���/���������U�M[X�U�a�Myr��2��e�Cc�&�Y)�����R��L�e sr��� �NY�D6�;!���T�q���{Ў�=��6����U\,�ݜbeLK7��R�c4�Xy�z)K�4�g�bk�������K6���ԑQǂ����1*@�� A�wiFE.���<�U�)���wN����Y�M3C�׏B���U/���:0ZL��3q"��"���T��hr~hF]m�'�ܟ�Ϡގ�Ӝ9�*�<L~�� ��p��\P~N��_˕��Ɓ��#E�L�j��O�>������4��|�sάj]C��w�^�ҝ���iN�ҞڥS��8��1�;tS~�����zs���MA�;�,��n�-����	.��6.�Y�e�&*�b�_���$Hcs(TqROE�����\_V���G2������_O�T?�]�ۈv�w� �`�)o��ߕ5��������Q�X6�ճ� U��x��*&�Om�z��d4��U��D��pK]"!ULk��Q�D*�kv��b?�VV�ǃ��-�~`����X����Q�ہc��^�<%G�S.
}��G�o$��R���5r�bkz�K5W�h1�B#7��e���=9�`(�]Z� �fr�4�I�Y��H�4���ymoik:�&�����M�L��q��c��ɢ��o��~][�;�+���׌��>i��#=��Y�Z��}�1gN۶��"��z;����V d�yIЩj��k�߬���\켛�Ϥ�.*�:�ޖx�+��Z�}��h�z�'�5O��}��;�	l�ך@/P��g�WeE�(�%�9�W���0�%�Y,|t�@e}2z��nO侥��j�C+�~����f2C��C�"���.�ͱ�4z[���ޡ)�AGy����s�
��YT Gx�c���ي�׌������!���� ) Z�.1d@��u,���%�j��d�j6�?,;��Y�)���T ����5
�sӰvp�]Y��ܑ�Ua��������6�����y>�k�!�<V�KT������3�؜
$&��)��{��D�u������n;��}��b���6\e;�-"vO�}�({lTz�S.�7�[���QL1�`�MH�v<���a�,!�P�[��^�w�T ��:D���LV���ӻ���w�Z�; ��E��!��펵B������x��e�Jޑ����UW�����=��P�6C[��47V�#�u?R�k��3���3���xC��(V�/Vo�7�,�s�F`�:���`��i�un;��x���?�+[.Em�q�����%qE|�e��)�rs_�߱���]v���@�T@"RLm�2��ݺ��]��F|Hg�@��6��"b��!��@��u<��hh����CvΫ�[ԕC��}�a2���5w���k��]HFG�ͼ/$��0Ϩk2��с�	���zL�+E�9��h3��bu�����1��n�}�-����H����	�wt���A��fH�,�˄��5N`��ˏ�����/2*��OnŖz���7A3̧؜H��6�W���d�  �A�T�dY@���Q�u=�b�b�ws�W�Zg2ͤI5Oo���EUJ_ݷ!t��*���9�IͿ�ja�;�����@e¶�Rf�4_7��}��)FM�<�(�8x�Bs����)-��љ�Zq"���.9Nݡ}�qڝ%�x�
�&;����h[sX�5e���r�7%U�29Ԋg~�@e�����Ҵ-��u��^u%?G��9+62�T���#U�����9ۗ j�W�����ls��
NS�V�}d�13�t�RK��|\�Ӛ�n���Pr�A|��vT>6o�� ���H���XK�Es�z���֟��(/?�Ś���L��m����Y#�/a�;W��<�+���}��	(�U�rý�i��r$V�Q�������iUE͞��fD�l���ǔ;mey	�hz�\Y�4�k�l���ϷqY�0�|���ό�&y�J�6�*nZ$�b'�ݑ�	��;�+�]�(�����`V��n���d���,���U��[�*Д�����e?�&�q����f#go\Q |)pi�����+������.�`N�׀߷N�紁3�Wz�?6�8dMF� x�Z��H����M1I��\^�f��Zp�    /��.Z���4�~|���q��D�Gy�n߰�~�{��pl�<��Qm{+���ߍsଽ���u\�C�P�ŉ�c-��R��/�h��f�z�A��P�_�K�8��WX� ��n�D�E���h���4x/Yg�-V��Lp��M]��u�.�͕G�|_5��5_5j�!kr���b�e NEX�Ç�����xm�]�S渍\8�ҹT���s�=bM�ᗕ^�����hP܉����߱�n͹9bȼP3hݦ�@1���J]�y���֯��#)�4��Saw=L��0*�N����F�����u�5�īVy!�9�q� jn�}��*�eiY��u�1hE�f��CF�T ��@e!��́�M���Z^�擹�1�'��5�Ar_G�O���R���\�
:)+�l��A�>�}�I�}�-vQ��}�28��@�=1e�Y���`B�AV7�;%q����0��@�~ ;5-.d�����(�l�3%��ń�!y`h���o8���m� �݅�"V%�ܸ����<a�ǧ)��w�}�xӬ�à7I��H�����]LDR��p;�\L�V�5;���%�cc�2wX�iN��3�J��NJ���L���5Y���+ӟ�;�3��/^�] �l�!��ܖ:S�TCu�+'�.�.�n�SA��ջ� M�:gXvv������4Ń�)����*��l^�Ǻ��]p�+#@q���W�XK.�Gytd�|���G�)��s(�>���I�v�Z:��(���[A��!9��g���c|�hF�����+~Bp7����<霍t?��������[kԍɪ�bG�D�I���b�����%|�D���Fכi֘��vw�We��"�:��;efC��U~���F}�8��j7͍�c��r�-�V�ߎ2}!��Xɍ�)���J���h[=�� 7��.�`R��wb4��
7����;Q�p\k�S�OZ!q��@��z��K���������(����n�b���-: ��K/Iv�p Ъ�X��1g|sPǢ{�$HIh?�/��_���&��麒l�R9�]��;�M�a��^�&?�9\5&��_5�����}�r��,�ņyڡh	D 	�4�/�z��ݗ�R��r�KD��߃:���5Ð���TLj�t&��*Ǩ�v��:��	V��(��k�$cz�g��:jw�#%���H�{?&24L��@f�k��{�`��|��#t�r�Eh���\��]��K"����7^�\�>��XTxĞ���
�}x��)�@�Jj��B<�q����v���̐͉�@��zi��N�עt���]���m-y�f�Z���쪍"˰$�˩�:�q��M�Z�����E��ō�&��1�|���r��ֲ��Q�	�v<�'#�M|]��������9�ioJ�T3i]\G'���b�vH2S&���-���)�� X�(U�K�u7Q�eE�� ΐ�X��1'�AG��ǈ I9�}�U��^��3-����i-���Q �R!�l����Hj�;�-��)M�W��ݏˏ�AIL�M�bIƃ��>�<�<��V�0�,���˼1*|�;BIfմ%�e_�S�=m�:��eͿ��cX�?��Tf�P]�2�8ȩ
摕������_3�Ly'��=��g!��Kx�?��y�ܧ�&#G��cX���I�e�#�K6�~c��d��%��o�Yr�R���2�-Ȑ{�?!rw���aD��b�6;ݬĈ�g���
E�)�Z�u�*c0W��M�b����&{/ɸ||��myE ���x���q�����^�;��0��Ǯ�b��]Oꯊ��Ek���L�?���{��d`�<�����g� ��c�v��Z.�8.v�����τ�?=���R�J��P �'�T�q��?Y��;:�e��6��X؇���n�I.U`��b�/f}.3TnՈ� tiϪj6�r �3'�8�����.�E16	��g Yf��T�}dJ�\��_&���keH�
��Eډ
���h9{;����G�!�	H�t�
`Rl�ܕ|�H��n֋8��3�C3�3��G��l5���i%���a
�L��N˸�bn�y�7�,�W�׺�&YB��}�>��"�ɽD=Tj&������I�P�4��� �?i���!�3;$����L�f�)��n�M�~@g��uR��NmE|���V3��@	���ָ�Z�T4�>� ����J��|a�Ds"��t˚����q��᭙L`��+0���d�{���Pm6�I��ƚ�E�{+�rf��f��5T�bG�9���_B��"�:���Q"�~����8�E�z���Hт)��q�j�i̈́��=NTڰ�ˏ+@ń�dH��OT9�'z��q:~�4�ӴU��zq_�T��B8Kf'X.�50�'����-2���0���4*��wf`�{Dǘ'Z-���'�݊P�~)�DW���(U_SF���R����d���,� �	�k�f'E��U�9O	��?p��0��%�.�n6�"z���x��7�4_����͙�>@l=������R�-��͚{L���I����jTL`h�PN�^vyo�e���A��ұ���J�w�a�"��U�aY��Ш�-@v��0���o�>��};�judV����ڔ��L g���")z>J=ô���>���9�8l�\���f�"�->*MD�ѿ(Î��q{UixxDWE1��q���˸�&%��)��-W�'�-�].�#�/�f��6@.�0��ެ�G�m� /����usb���@z�=����C�-fzj�i���~1�IĽ?�T;~���.Ы��-���o�c�j����z���Ic���W���Pl`yD���r3��&���ֈ]u�B��E���ߊ%|6���n���ӓ�qIR��h#�2n�^�Q�������B��Yr�T��R4�#��90��3K-��g P��Db�����V�����y�:�� �����$`߈?W]v�J�|�r��I���7�'%���gX�6/)��G�y��R�;�r����nP���*���R�V��W��So��G\��B����@����\�/b���R�a�U�sP@����ĉ�
�b�V��e�Ts���e'��]�� ��jͷ/�#�Lu����\(�C3�_�Q����C1�i��Y1�C�����SԸ{��S U��N�'E5�P���j�D����w���K@|��F�) X��rX�KV�bODQQ���x��^����K�&�E-���r��yB���$��||�-Ձ���8����}���#Dj�9��G3-���P�4�ǻj;9�b�sV7��<;��U,룦a8�ឿ6ub� 	6�H9R�36����*��������{�����rw Ƭ�M����x�N��D�]�I��Nھ����ƵddG\(���P-=�Q��]�I���ܫrX&�08��22
zy��"�l����cw�;D%�z?�5����VΤ�o�5D(i��J�;��޾][,iG452�9��q��5�E-���p�X0'��0��Jԗ��ԏ��Qc9?a���4�5�5�氖�_HYQ��_�l���=KC7�_��Nw�9�w�VZ?��|��[3_���Vѹˌ
n��G�8�E���q�Y�w�Zsw?�H��9� �}_���m�<8gU@��Z�ک���fhVz�#�UWɥ�h�� ߍ�gՀ@֮��?��XT7۴T5wa@���|�R����SR�8���S>��4�X�>��3��2�qs�[�A�\��vS���O�5�2��^��������4E@<���ql<�q`� ڃ��+��:Z��#�:Ń��=����x���+;���\w�js��+;, ��Pńs���8Tq&�Hr>��w�,6}���+��m�cS�e��a�Y�h.٩��W*�nf�~�㻉@��ڸ5�Q���ON���Y���'d��rU3�o��j��T���T����V9��n���ה@�֒E    ��@�n�a�k$	Qḵ�C3^F!�?C^kF�+� /�[�cwEC��d( �9|�W\GJʲ�Y�(Mm�G6uJ:.����K��I����w����]�(�9˨`A�R�u/�i������ڙL������yy���C�iҁ���	��@e����!���v�j5��� ��bB�:��{�d˩E ��D m�����{`F< ތEY�<��^7MѲt�ܪ�'� �(��?5�o?��'O���s�R҆>��p�f~�h�c%�2x��>y|FW�H87��l��F�BA�Ε(�l��^�@�r,��{SŴ�Аi{�f/��6��׋Qpq�.�h9������%����7V����:�J�[1��|����Z�U�&���I&z����x�t�ni&�n�}*Fp��[ ��1�Sw���5(r��\J4���Z��oK&U�����A��$Di'p�.�fR+V�����<��ĹU�=��Q?f���;����7B,��7r
d��Z���D�e|�����H��A���Y^���M���P��7� Y�\��:��2Ĩ~\���¾��MA�������ø��Ӕ/�9�ͨ�խY�P��t�֔"O2`�o��66�̵zf��B�����^�R"�X���R�;���~*�i|���U�tE���-�,筘��8+,ō ��q�k�_Y[um�����0go&�)��-ҙ9�؀�cWR?�H��(YǍ�vi.�	B�)�5�~C7��|f��N��˱�@C0lJ�O%�܁E������Q� B�	J�m���g9�<_ۄ���-.���uӍlk��(6(�91c�o���F��6�9���ŲB�ȡ�{��.�pG'�:�s
+�wg����ko�  �x`"�X$���Q�k��_,�_9P/	�j��(�v�mM�L{je���+�����?tڬ���E��r�G��֦ �����j>Iҝ�Et-�o���,ř��a�Ƿ C�h�T6f8T�ȅ�uVZ#��X�`6����|4��������N��9��1N�m1��>�\�K3�p�!�%������-��fT #��ʏ)�-�L�{���K���r��ݕ����j�2��0��ΙC:�����W�=Kt�k]z�Eqé��Kw�TJmzǄq��v�ə�����V��wo�������DM���F�];;�Y�ZGf����{`�Z�M���~�R���Y_�4^�Id�� k��QP]� �6D)b�^Ȯ���?is/�tWo~�?�2	��vy������|)���@mk9�6FO��8�N�!��n�`�.�tnh�&%K!�ys�[�����=.�R�ۋ�^�Ÿ����QƝ��a�Ys�Dd�]{�nrI�'�*�-l��|��%���"7qq��tfP����˥9iG����a-開)�o� C�8X�Twv�AAn�;���ۂ�֜*
���G���V+�?2����c�1�c��]�F�K�:����o]��W*CQ*���yX�c��Q��ً5�ҏ��=��}A���a��o�楚��Z����٧�7�Pa
Hk��7X����S���m�8+A��8\�$��]��F'phQ&��O:�9��<lO茹��J�M&�I�?|ܾ�9���,����	iŚ�2,+T���M�,-?��T�+J<Q���R;��n�ɹ����p�:/�DT�%	��3�]D)�d��0v}r�CN����L�����TW�ʔŐ�|l`�}F`gK��'A7aO��cM�9�k�kE;�ty3��k�L��������[33hh��y��$���(�>�L��@�c�K����n<�����I&�t�w�NV43T�����R��]zm���A@��i��_�j���_�2��o�zWIos���1�ǩ�9#A�+'�;�F�����Ł֐y|e�$�	����@GY����aRbS�&Y6ߘf>�ջ��Eqd�q'Z�@{T=�9F�r���#��a��B��֩�-/A~�H�.�|v0"T���gX33t咁��h��ٽg�HJ?�[�f�IP���6W��Lt��n��) m����!��@h��P�b+a��Dq\\�� ���x�`�f���B*�T���L�r����0���9p?wZA���;K1˼<��Wa��&��� 2n��r�ָ��.d���,5��Rݯ��y�,�t��F�ڴ�G�R��nv�)��<"���D^
�-H��ᯋb6@���{��!�^�f��v~K��ٸ>|���J%[��D-�C��n�K/B�Ȱw&s�}:Ts-ٷ��ؤ) E��4��"��m�y���y��>v��+�k�f���͋�4�[[����L�[+2�~f�r�9��ڈ�h�l$�Z���hF�r��)na�����5�g�ھ��SjD/!��H�&�a#]�)Z�4�ۏs�f�?�cK�=���5�)�P
��>����	���;8i��c?8��+󧅸3� �`��z^��;�VS>�{Ƒ�O���ќU�ˆ+��6
+z�+�;a��v/Ns��W��h�ޱ}~�����ld�A�S��>m���k�(���# !�Bd<s�&E���	���$�}=��9!���ޞԩ�ȩ� ;@,(0X��R�$*S�Kd�*���103*��k�r/������6_s�^��/��`_3�	b0o.h�e��Nyڹ]���D�(&w��{F�	�]��F�;��br�G���+�n��u��8�b�M/��]j� ���"W[�K�F�&��p] �������BR!�7��?N!� ���D��m�k\���P���ى#�NCS �3p.�ֻ~��U͌Y�\0�|K13��FL�uYM��-o���R�'���Ia��O�=p*RdZ��,=~�+e����.��� ��dJ�;1��k.�n~���F;dkR��.^�H۰HzC��N�f�^�	ñ,�o��Ot�#��s�نVn{Oĺ���#Q��-��QV���J��{��]�¡��{d�Qk)?�)�/�+��W^���z�Y#���֯!�1l���QI��҄s��KE�$.�M>n��<Q�|��G�C ����_�X����b��vv����a��hN���O[O�H0�U��Z�{W���@�l�
_�z3"Х�'���%�ʰ(�⨮c�nbF̔�\�q�k�Bm�A֩�Sa��[9D=�~2�!�9.�i*������עŇQ E��YJ�47�E����|��/,/Cc�3�̙F��9�<��J	��\+�N������J&b2�:��O#�t��@D�GpB������׺3�|���.J��'D%���.O����/ͨ$��6�+�+9{�d~�hf��q9�Y_��(��P#fd�{b���m�߱�6e&,�BT�V�k$(���y�~{���'����62��xz-:��5Bc�z^�_�����Y_bL6�0����3QK�16��:���>

����̛iK{3��(vEӟ��q
�-<^���q� M�P�[1�䠈��s�b2��ZsE��Vⱱ9��9?���؞Q���w�|�d¤?���;#z�d�(���b",�T��f��F.�����mnk(��B�����c.o͑��������@vI���B4�:���ߋ-�hxx�=�D��d�	S'yYʗ�j+r�s�}P�J7\�[���T/�1R��z<Rۢ�G���@�)�R���!�$p�N9K���4�^��a���dr
d�����`������>Y�bh��6���8R7���j6)?Е�>I.P���gh�ٝ�%V�F{�+wLîo�#�߅�(�)���3�u�cW�f�r�{x-�d�Og���(��Tqqk�=I�Ɩ���ﺒLš�D��\,�]?�$�e^��{&�PX2�;�\S�Z�������	e���4g})�87��ɰ6�O�)�?R2��:����{d#ԛZ7N:]�q�nX�"����Jd9����%�w    r�&����W�i�ߥ���ɟ��@�Yio�AZN�%ˏ�d��h#��]��P�'��K1�&�M���GB�Ï����Z�n$���b��/wy~ �4/�}�D1�T�%ߟX
�k�^���H1��Oy|"\ `��1e
tT���zNy��x��F��;m��52����(g�i�p���ڤ�#{�Ϯ�}��$�J��� u'�'�$��T<~Yﱖ3#�W9y��Gpb*&�.=|
Q���d߭Öb�Fɱ�t�B%�����|Sy�H������}��8�U��yGn0�i!�8p$%�x����bx��f��ǵ��Z/<e��.�	t�bv��f4>��%*Rl|]"M����BSz�/s�:��Ήtv�n.(U͒P�b��+۸g����UO�A����Vs�m�}o �8tn�Ɓ[�[�ׯ�,_]�*.��21c܍���L��yc��߅F���5,"��I�����Q/�l#���?&�Pd���;D@�p`&��Ns��\��I�X���霤������=ϗ��t��nĬ��dU$?�oݙ�B5�3#���ڑ)2%��-ޓ�9{�?���=��?�so�����ni��
�70�Sw���Y>�G9udO�-���,#g��z51��ptn�4�\#��{sͥ��5#���ˈqH�~�U1K���/$%�TNZʼ��kd�׵�/Wh�PH�^kF`��R�2g�^�)OU�o e��]" �v.X�T���}������E�{�Ƙ`�?>a�z��}�8����|�T�P�Y7V6�QX2~�8NƭЁ�m���#�f:�}�㼾r��=ת�	H�߄�K�P��R H��ܽ��]Zr�����_ ?�}I����cP* ���{!M��WQ6�9#M�B?���D
҂x�{� ?�bm��
4
�>%<>�381�e!��'�Ӹ�^��Y�iA�a�����(�ӁI����� ���*�p�ڒ��~�����Qo3�V��n����H(�p�͸sF��zP�a<�ȗǥNڃ�:p���ƶ��X�K���)|+%N[�Q좵�ǳ,;[��Y�0��5C�@cA[��_�\���%��p�P�8S*@�qE������y��q��z�X*��~���'i4�M0OǕ�_�=r���!�ڎ)3T����{`�c�7�����a�� �D�esq{p��Do髛�Q���(�x���Cp��dPP�Z��{o����������#��Tk�M�(*�?�a����|]���!v�^O�����tM_�M�8�њ�HA(F�}p��i~�@��̈́����������/�l[\}��
5�P�(i�|g���;���ث ?s���\���}u���jK���(6A��a�VW�&n��u�a�&v�}����9n�|�M�=���/Pk3a��\l���N�B�y��U1�F�f�߸�0ֲuhD�tB�/_�?9PU�1Q�הX7v�������K��z�4���Hݳav��b��uȾܤ�k���O�4�����x��8b���Ҝ���y e`�D3���9�#��Ϋ|�Ws��}?̢�˕�-��}LB6�8 ����_��j^�w}�e?v��강	��$�S ҽ�}7�dhh�=֚K�pw��mB`�-�ں���Ǻ�)Y$�:�,��������˲�����RiR��u�g�%A�������u) DFÉ�X�̜z�~�;��lYֺ�%l,���?r
o����w>�u�<�yZ>\+s���wB�7��) ��(56\*��a-�tΘ���{{�D�\�����[{^_E�z4�;Ӽ�BZ/��)g��/������`��
ǈ@et�}6TYU۱�����A�4f��f[�>ف,��������q���ꑐ�t�D�B�9�pGl ��J��q̟���� ��Z9VA�.��3�&z��;�e\���-H�k�x�b��m݅��]w&?PF`>���� aq7��R`�3�l<ٳEI��}��2�gK�P��'����x��Q �&����P�I�y�i�9���F�A͝��xo�X�%2��a���ܥf�X@�a��k���t`����z�n��U��X������Q�z(��/�$?�XQL`����QOd\�-0֔�&�z]�7g&q�J�Kk�=0�4���c�)� �Ik}-6?��&�ќ$�-������.��?��11�k�֣F]53�:'kA��$F�4��+	���_�����MΏ��&�؛)�����z\����Ɖ�߬����yM���a^˅��[ߤH�@F<i@��⻴�Z�����@�|�t�1���> Q�܂B�v�[�EW�Cq�~��J�L�lϔK��p�,��
�[M��������K���\z�yV���i�5^G��S2�z!����	/ޯz�`�~�mͶ̰\w�q�S@�th
ZN���B6[�dH���/��j�z�RQ[��c)/��*̓��B�K�=�}?V������MC&i�`S�� ōK�W/�qC;���IoJ6G��<�.\�O���޷����l���Iǥ}j@�L�@#ia�Jڴ���6q_ d�c�W�u�"���������(��7����-ݮK���L=�D�*.�hk�F�X��9ƭyFSC7� Ѷa��'�,�T&L2k��R�.������s��Ԇ�ό�dh��96���a�X$�H���.H���wx�9�{e�_X4�~���E3¾H���Y��eH�
Z�sS������)�6��f�{T��?ҭ�0��U��u��j�=,�Z�=)�F��e������QN���+?�}����K|��M�y<�eń@�#o};�4��lBf�#�|��^��*����"y�k�qc����$/�-ǔ3�e�86{�� �*|��) ��oq��ק���S����ؑ|y��b3�u�US46B:T#�8��,g]+��M�ᵊfi9���vz���p�ҙ��w�Z=Cn�Y��HҾWS��V�{Q2�쎧?�+�9G�_��>��?�a6 �}�3l`�$� `���|?/� �<��J��X�N���a��R���˩@�N�}�:=��L�D;`v�yk�z��Q&�2x!��Ul�-�5G����N�Y3|>nVo86T�6�Bæ�f)��z�P�I�)(���]SB���
6��Ð�v`��xo�ֺ5.�J��������g�T�3����u��/���_����80���镁I���0�ދ"I�a��r"s��D7iݲ��!w���ʔf����<1��+�LQ2�GLw~Dd�K���K/<C�ާ�zQ�3���:}G���$�-��z���ϰ'm��la�P~}s�\�(y��E0���h_H
hG��ț�}��߄��)w��$����
�K�9���J�Z�
�P������+���j�Y����1�= �˶�RG��֛3��!��ڤy�5|��?X;�[1�Z˶�p)�l
k�آ��{�ߺ0{ʹ��}[O��Lb�k�VG����(��O{��:�V�&��yq�of�X1w�Х���%��!$��ۡj��H�j���l��N�)��BoD�p0��-�BT���2�sd�0݄�!��-�55=PA���������ƶn!|Qö���צ��͔�,�������q�;�Z�a�������I�kv3e� aoh|
�-Ns�P�Щ)i���t��n��!��t��Y�h8�F�*����5���௔ҿv���%i1�������v�f)�uL�l�[A��'7�ؑ��ؖ��8�`�!�y.�b��ފ?Kx�Je6�����/�<��,�7��� +��
�� �����^܇�ǡ���8���^���n�
x�'�PvA�;O���l�M4�1��w���J���bQ�?�-�nN<�]���-�Uf���x��;f�(����}�R�$1���yH�F����M��j"�=\��v�nFaq�w�p�8�a�s��ݨ9j�?[h�|I��Rm�`!��NH�+·2�    �.H��U�`�,��Pt,H��^�w\�X1�bFR���+Lfo���fL���ݖޚ#Jw�n��S%������m1��șm����g�@"t-le�m�����q���B��� �xmx�)�I�\�;z5 �U���z3s�HB#���͎شz��^�3WA9v�id�i�~{�^�yP��Xk�Y���ej4�ڊz�:OM��a�/�B�0������x���;�H*�bg�(�9vL�ͼ�s�|MK_S��V
8{����n>q&���%] I�Y�,[�����
C�HH���q�u0�(g���z�Q���D�K��ry���,��	ޘK�4:e��M����S@�c�?t��f�N�(��\�K��2��-�jN����F�E�4�.l���fgI�]Sw���������%,��@�Жr3x���EJJ���2ɂ\{��w@/j���Li�R�V\UԸ�JQ�j'gґi��a�Y~�b�b�\E 9�խ��O�Te+�b�J�2���	�<@o����B��I^*m�)����A�ƴeF^�@�2e� K�CD����画��ghy�d8�%<�f�y�q�F{�(�%X�x�Y��T�0}�c�+�r�1ې�,H�:��E�Hg���s��X�ѧ�<��i =�{�ή	�.g���/��g��XZ؛o�t�����8?#��m'�5e6N
}s�W�
��a��?#T!��ʺr2!RK��:
x'�T��~���b�Cf��3!Ƶⷽ���k��t6l�3���f�!͏	�-�C}�N�{��:�"�lh�[����Z������Iӱ��t`)<��aR 0��k��4v�&����������}m;�6v\�A��*�r���֭��z��V?�7XT>�2�hk��@'�Cm��e�f���Q<����5w��)����=� ���GjvP6�-	��a��7���f;���S͝W㸔?��L�U7n8��U@b��{�L�	�������k`�uxLOd�:J�����Դ���ҁK�R�t`��R���RK�ز�֨�$��W_)����@b�����ؿ%s��H�i����Z�-��M�8��9�r���5a�
��i�X|�B�-K_�h����?V�T���8�읖$\ظf<��k(00%�V�5L��X"�n�(0.��a z��՟F����|��RRCs�)��Q��VuB ~/'{� 4c��U�)��I� �=�R�B�j�\�IF�:���{��oJ旁M����R�f�-�p�j�
���f��0��C�	?��mg�c3]���ks'�����y�<�Ȇ9�u�<�I�(#��8VGu/�E��ۉe5ó͡�X�Cs�R�����7�h�r6VՁ	�3�����h�1yU�0P֫��yf[�ԅD����$�.�{�`� � ��o�U1[Y�q��w���D�i����-�L6�apd��\���R�e�6M]�w��ud�;Qf#:r��O�:d�뀂����$�T/��텮��@����3{��-�T�P���>À���H��J� �k�/66�����f��r/�jL��%�t��dQK�k$�rYZؚПۈ�k �4~9�.��j2��m�bt��@6��]Ns�Oy�vvnv��?c�m<T�vaQ�"��b�U�t��[35I4{��y�ُ+�;��q�a"����!`�X��F9h��8)�۶����"��p[ۍ/j@���)��h5eb?�|�R�����t���<�@~���_z})ƾ�k��SřQ.���S�ے�ﳐRU���~�
��5�Z����㒹z,d4$K1�j�HkEPۇf����t�*��%�V�$|p���¼�n��,�-5nVv��+;	$���<I5������6��@Q��
�E����S)���0��-�\�!^R��@,GG��4wIUsdf��YLJ&�N�9[s���䱅����<�^�${R�U�������a�8��%
,�m�deu���K���^E� ���B
�	u�`�%@\��pC8���f/����0ݠ��cń�ָ� �n��=���εc[�O�Q��AX�8�����GF����k�Eb�e{� JP��>�fʲŔ��ה28����,��8��~tEy�>���3�كu��h��:#a�I��� ʼ��w֦�W.��52�-ٲH��%USi$��Asp�vչ�U�VF�/�E.>oQh�Zxx�oi�QM<i���H9deߔw֛c8L>����Fv��Ġ����%�K�<y�t��o�URH���kݙ���y��X�qF�x���z�Շ�Cspb�do:0����A" �~-w%��0�|����LP�����˄��-����J�Ƌ(@ �i�U��-�����w��b��{���Y��ك"���8x_�%���*���ޚ5��-�����Ro� L]���։zz�9�.D�X�9��C�)!a����\%$z:5���/���=#��'�g��B*$o��� ��[㕠B�3o�rk�a����,dd�����{"�(+r�y��������������z	�q%tLW�l��-N�8m��&1��536;�oRn��L�`��j�4x��i���c�9T�p�~T�Ϝ��A�oh�E @���N�4K@�ВY���<���Dv�q7�؀(���" 㔣�*�h4'�P�'�?��(bq}�҇����?B�O:g*`�i�t`��Pl2��ҵzU� �2(l*ߋ���ؾs���ЭKݮf�j�7
�E�� ��_��C�h����f��vL$(�m�xj����#�4wt����^Ĭ�2;H\&��,����bk�}E)H~��Wv]۴{c��f+&:6/!�#�;�:oŬފ�@�c�a{�*�2t鮁�v�W�L��
v�����m�d��<�D9
?T3Sf���GNN�(z<uѺ{���R���;�q>T��s�̜)Ģ�"��ȝ�3-Tk�Q@*�Ss7+"�9�
4���;�{�D1yG���㇥,L��n@�>�Τ�V��2��B�փ������\q" 4Ȭ]Ձ���霩W�Llz���@fm25��&�f�w���(�}6�8�K�%������O�
�����`���$���+A����|�43�����J�ǂ�̍��S�`I2*W>,�qT_�Vj��x��R �- �×|P����\e��'��u.�)������{��_�P:yZAI�G�7q\ ����'�q|C��(�,ex��WXz�"��&Q5@6��l�M�,&�p� ^5K�0���4������
*�����gO�e���|/Jd!�0;�cq�ek��m:������]��zh6�O�Q��sqڐ I���<�S��ݗAr`�SQMPio�ǗIF�����<	9�<�2 Uݙi>�}�D�x���(�f�Tp�e2S�����O4*d���@-�)Q �䱣��\b@��X�ovg�貀�����&�e����q� ���e��L$A����S��`���1 ����T���\��$�)�~/���$�0
��g����������f%���t�ғ�o�TU8A&�^���@ ߎ��-�˦}<6P z�9�}i�cEf%6>o��R� �#�k5�>�A� �L<���f��v�9+���Du���)[���L�x$��Q X��������f΄�����d�k�]������$+r8��;ު��
UͺCW6:�K5M���WM7�X	�������I��ï9K��Gѷb�CE�h��8K�W߫[B�h[�<O��lѵD�d�'�V:�u<u/_����W�?dK���T浠@�A<��h��"�Y29��t�`��y�$�[s��y�6WU�<�-��"������F�0	$s)R��rG��v'Sb��'�ͦ'6]4W�{���bXa�vF��F��~��������-�[.���_�k\�>��d9�I`P��l��Ȗ�����B(�^͔s�2��~�wj���    \%��F�Z���*�1W��O�=r��{{�ed����T��J��(G�K8>3S��O3�Z��iiΒ٩�Ċ�ғ5�E3�-Ԛ��R��F�[1A��o��.ō-g����T1q`e܀�i���\�rh��:2w%�G�<�����an�"�`�+W�sMj{�?�͞i��)�]Nr|�����U���ӝ��,������?�����k�D�Ƞ�s!Y�r�9�T3��~Kɪ���ZZ�
��`k��@r��v8l���"��C�\�ZOZn��ٝ�%D��è�6@7#q7e��I�U0�G�@�-Ւ�_��k1[�A�(|���vvWO��(qq@5<�mȤnG����w)Ŭhf���I�����t�XeX���"@���  z��v�\���3XД��[���a��dX�Vj��,u�K�6w�Wn3��s;��Q8�K�Yt��]�Ֆ{�@ ��8�+�D5�V��X�����,�iv�]�e�V:4���:�<P-���`G6�'kHˌX(�ʖ���H��}D�`8N��R�BTݿF�)��vC� ��@�k�r�O`�H�~)N���m��F�>����##��ȫ�WnJ�}4�\��.���85��]��Q |�ǋ��e����Z�{�x�����u`�3�M�=(���z��4�ڭ�
g�XlC�ǩ#��~���P9��͍ܝ���6&:r`�V��]�Ap�{k� ����u.�]_�{q6��I}��7�b:.���2�?K�C�P�Aw�����Qd�҉&eGr��y������*}g�����8�yl�,�3*f�3b&<�a����i�?���#7���=)�J�T��q��X�5�cd���Z��D�q돟?kd���=���FFBm��y�9�qd"����W��첚`��Ƞ
r�$n=��G
��:�]�CUgڷ�f�'��ð'ܰ�^���.Bs��U����Z��5�,���{����+���Z���}�@�kO"[���q�s�OU��[c��A�^���k	|^A)�[��٣.�0;a7	~������<�զ �)�ţtKH�;|�~���=c#�,v _A�1�'p�����@bW�r�)�KO��4@�%R���֯aQ7��)
�% ��Cd�G��+-��>9k#��T���F�4��Iy[h�&��`�Z'�`���C��1��{��j�`߅q}0޲�B�峮�{�3s�M`͑���$V��
x����q�r'�l����u`��>҉50rT��'T��p��l����<��N)�Ġ��=0�Q�=Y<��:���E���0��ҳËt�2�����[�R�љ��.�ȸ�.>�Q�-;��u�O����k67P���zݵ~|f|e�$xGD1pc�${;�b.���s~�2`��b�}����Y���Nu`r��c�#��Ri�:�HNv����'�8~�ڛ������� �{!����m=��M��w������Eg�O^�R?���.u���e�R��/��3�8~4���0�9gY2pa�v}MB�\|Dj'W�*�9�;\v��٦�TK�4�%�GQ��������H��xu"Z
Xڨ�dT������c�$�@�oLUO���ϼ���^6/�C�E��	1rc�)�s%y>_��l>�$W���Τ����~L��Hn������bj��*�3ޚ���g{��`dZB����2�W����~��a���v�;��X�[��50���׮g}<������>p�.����B��m;[6�����)�{���7!�b�BV�rv?�N*�'ٚ����ﻹQE &�H�� ���2H��(�[̖�26t4+"��4=���S�m-!)�d���O&��x�-�\U3z�Ǎj�dU�w���+��p��>�۹���p��N5�@so?���d��L��PH��>L�3!6���r�	a�|��LXH��]��^��u�7)7�Hb����:�{GW?x;��+��z�}K��T�� �L-Ιԕjn���Z9���$4ܣ�:0�ix3�^g���m�$0�����8R���{�S��9��hTR���W�5����0�v��+zƲ�u�����0!�S���c�ϛ�  ���?�]���E�m�50wH�g:��_u^"��1���i}u�,Q�2���S����ݼ�w8y�Y�,���'vrVe�Eޠ�iy%��7�f��$�uhT� ��LjA2)��J*A'����`��ܺy���5�3�-�{&>����q wɗn�1�j��'td/�^�R�@�A�D`�w���J��Ɩ�� �(���jds�d�I��Q���}��[���"�K��%
#�a���Dv�{�I)�0�l�NU�pq\s�����殝�9��	��#^��9�1"�Ä� ��X�87Y�l�l�s��p�D�c�)� ~��M%%3��.����瓑����祸���Wvj)&�ax�=�3g\ǵ��G|�%����f'�Z��<^��� x������T�Oϗ��▆&w�m�˻C��@`���|?3��x�_���9Kr��5#��k���q�k����n6�))O&�|̾	�Թ;���Sf��[@�?H�q�zj.�u��Bq�k�Wj`i��������i�Տ�'�Rq�3KɀK��nO����1����7����wWE�KѤѬ��Fz�w�b
$�Z�7k�Ȥ�bk�p�<�
��PK5յv�[�;_QT߽7`f�T��ew.Y��3`)nR�a��fb�P^�cd��u����nQN���ƥ;�����VJ]0��" |�v*�;_|��_9H>�KӬ�Y(��FljfL�����k$h�\��6�<��9J�ٯ���w�')Htw|Uȃ�51���;�%Р��~+���B��>c6�X-�e\��H�"73���k��v}�����	�Z�mFH�9g?����L�
��B�涕�&�ʔ\��8̢�'&�f�i��8R?E�?\i�5��7h�Z���b�(;�뭸�<&Ļ�g)�Xw��<*n���\�M�K�p#�kM+�f�x�D1�= ����W�^ y��(�4��	�K�ǔ[k>��#eS�H���x
��� B3��}�(�Y"0\�TςD>ū��yK5���ry/g����h�8Q�^ec��|QYJX5��������|w$\#�+c��wy��bOj�v���(RJ�	w��� A��C3ɐ+�=^�:+�m��A�׽�)�-�C5|7�l)f�N��Z���@�~^%��Ih��92����E1�'KǸ�|2sIR���v�M�������K��LZX\Z����%&�c˭|�`e�G�R%�&k�:�n��}�zvw4}	�-}��[�Ӊ,mEI��%ƿ�[�#����A��1�kH����n'�j��i8���j�T]����i<���������-��X|��+�r��lZ~�)ӿ�Aw�u����'�����J���H�b�\{����@�o���$�.U���^��&�W�&C[����Jz�fVH����֖/VP�
��&�'u?6n"�o�������i�����q�IpI���dNN��DG�.�3'�b�ޫ������PnS��Pk�m�q������;+��ș&��Z˴�]� �pM��B�+������ϔ�Rr�n,����}��uNޭ�_3.|�@n�oN�) ]jǮ�<22ps	�4��Rt���y8����ɾ��wW�q�"�s"2ǩ�%�.�R_w"i�J'��>r!�Qf�ֆ�ڥi��\���Ըц1k��9���P�~hfj݁�/�����]�=.�<z��X�*���z[s�@Qgk�͞��փ��nP��U�hk3X��	Q������nQc�zC�d�u�;�(_Ӱ�5�D5a�է�ÞR�qlI `e7we���[���0�Dò�4Ӛ��~0JX��_��\�-2��7�g$�/t(�Ӟ�Ӈ#�6X���K�T3o���~%`���6�F�L��4��i"�>���4�����    ��VL�ġ͊Yk�r}�Ѽ�C��q���a�n�TnJ��7J�����O���3V+�N3l�k���l�>o͙���˯)s`��"�Z�Jr��RـX+Tй�uc��&5������؀�;}+�4���?I���;;�׈�[F]�^����;w�t	v��$~V_����������o�E��}MVA4'Hw~��Q���Cx��Ju���wY���S��eB��TQ��^k�\*t���)�����_���N����s�B��{���\;Ĳ�q��ٿ��V]�3v�{֑�{�N[;IT�z��mk��P��D�N�i�a�w��F	0��UI7�w�g�i�^�яP��E�s���[D&�e���	K�ӏ�_�-Po�PP�3��3�֒s?fW�v2{ʀ�p��&�4l]��?��k�F�@�Wh4��8���ϏA>�Z)~�3Z�9.��fQ4I>d�`�n��F�p�2�1��)����N];�t(V��F��K�8/��b�� b���搁w;Fzbҫ�Ғ�gr���I��Z���v�<^�a5�-=fq^u��$��;�ܴ�k\��ӻ���0:��]Q�Ŗ��C/�Gxm�Y�-�9[�1S@ʌ�^7�aV�
�1�aFR"���k�Ĳ�P��) ���O��c�Ѫp�Lr�VS��/9Jmh�"%���9�����֣ծ�2Kr����Z�Yu7/�H��uaC�} �kt\�e�����]�'��m(?\dǫaR��o�z}k�c�@��4rߎ�]{x� +��\v�����������欽�=2{��/�&6� ��Pgx��SA�q�L<�Yō_\��uN���r�-v�ʵ���A�q�ȕr$׳�&� �d�r��$EkY�֗9k�Z�p{}�q�k�P���ԑ��ZK>BmX�v#P@{��7��4��Ov;͠��pAy�f����� �i<9 ���E[}�w�__�#awe�u_�%�ϳe�ed���6���B�t�;���mo����zs	,:5����1�zi-{~���ИX�F�%�{�R���Wd����v�)+��9�#{���E���$�/��ퟦ P�x/��P�z���R-ߚY�^�O6#��4�l��Y4�� W���P�ķ�UE�͹������O����@��DģŹ�x���(�z����ZF����3il3g
�S �U�Tյ-m�Å�z�O\�/��#�q�.�0І;u"V���y�Xŉ�AB��Ǹ,��*�!ZI���6:�4o�h�IQK�Ÿ6�j�}: b奖�6~|��'9����I@��Ǳa[P>�~3�,�l���X�Hc�!ѽ��{}�6�Ǿ�,�d����S��'���t��Ƅ�<�<��b���A���m.��lR� �m�2����ϳ�������9�PǵPm���w�K>�~�9p�tF'D�d��b�p�$@C�ι'�ʒ�9K�:N��;VΉ}|�ͤ)���K��4M\��Z��:�R_A V�^�G^}�Fĥ�d�U�sA�{f.Qʹh^�*'���R� �\#�1cN�ؼG&�U7 ~�]�迲��A,?h�L�6��Q�>ki�Y�|'��dQq��$���P��7Pq�E�ގ� 4:}������aE���k��RBu�* �Ƽ� �e�W�B�ЎT���v�'���[/0~U��X��射D7��a�%kG/ՠOW���y�����Q#!��Ū�I���Ky�S��w	�ra8	���?�2x�u�A������ޖqK�F�f�ɸM����-��gXy����7h�����*�[��j^�mr���Ӵ ��ҮG�9�YL�X*\���-a��N��b*��f.�xS>F׶Xj�@{�����5�MG�������{�1H���Éc�⠜���Kpu�=����P��.ެ3Ko!E-[z�.�:2Pr`��B��r���#����e�q�9�<v��G6�or��7���|�e\V#�q^�/N�D���C��]%�J)��Ky�
�/f�'�|w%^gb�ry�ȑ�p�%���Z��j������CqA���6�.�Yi�\s�8Nt���[��w�L�e��4�Ɔ��<����N���~�%5i������e��&�V��]�?<S��q��j�9��'�a�_�NՉ�g-߽SD��~H����e�������c��R�X�^������gw�楖_�??O�N?K��O�Z�Z�*�DԒd��G�H'�kƽ��qq��ˁ�L���Y����#�a��K��6H����f�$G5�ь.ciZ{�!22m ����
H좡�����u�,���s�X�hF?e��Gv[4�U����0B��":�2.����#���j��4\K�$���E^�@.���^�@�P�ZS@�M��,9��@b�1��Y�<�5׻�u�����z�1!�����GV�9Wj�[a\�^E֭V�h����/�e{��^�,�!�p~��9Kǧfv�D�����Z6Ƨ:�ߊ�W��J��<IQ'� �ʿc��a�ݍ#�a�筩�.�5m~y�Pٸ������i�N���US����S� aDm��[�����+e��I�?��޻q�E�WV�]_>�N^yDFz�r4u�%r��;�z�K�4�^E*I���V쥤���dM9,���́5.ʖ��9(ָYr�љ�ך19�G���M���̙�a�G��l�H�k7�dr�
��d��.���۟��X�s�������U ]��O���5���J�~8ꪘ`\�ř������ǳm<���S�����K����c�Z/Yr��q�m��%@h�/��C�|�N�����ɪ ��K����_F�3}??��3���HA2�81R`���XR[�|U"��:8a�}���Q�br6���:�q>u�_V�4�z��vA����:�)Y>rr���^�m1��D��5�;g�O�L��M����5�U#���,vf{����+o	d�ry�nI��/�O�䱩v�Vׄ�kAl���R��J�db�* `����,��f����d���ґ�P2V���k��0����`E"1��J
�C���j�Δ����N��_�qy��UC�%��FiZ�ٮ� "٨��7����0��F_A��k׭\A"�%VcA�*@
����4K1�r�,,͟s��U���\�A�dZ��qYI�B2������}��eP��nn��vF�b������#F��@+D �xv|�n�lX_��ykN,Ge��C%��������n�h�ƴ`ªkwQ_1|k��W��s�)(��^�޹��^x�#�$�Yth����	"H�_k���$�6ҕ�
�����:�
縉���F-F1$Y�Ƴm��!�y���u{�VX�M��^�F�(���b.�pwl��ݡ3��t���ҡ=琢I.1n�h/0�\Xg��M�4Kר�q)��Bb�U�܎��Z+݆�j� {l��h��,YV��z,P�2�p7�p��Z �LTG��Y�G:��b�衾��Io�fi%,���˴:M��D�C����|���bq�蘵7��a�0����X�>�[?��$����|b��2�-6D���cQ��E���`����Sу���L�~t}���PX5�
��yJY�Y};N3����:�O:l��>��k\22��(��6i�{��ޥ��٪��ã��>-�<.���[@����.�81PB~�7R�m�Q�ɠ��fv��l�;��p�����2��4��p�L�X�v56��͂�A���3r{i�N5�+g|���RH62��?����#�Y�#������f�9�3^(�ρQʞ�����5�Ex�����N���$�Lp�^��h�z�6��g�8��@k��P�&��a�ȿ��'���U2�X�ޚ��j5�ψ��:C��G:\�M�x6�6y!X��-;k�P �Ҫ�vUihr�����)ip��8# Xmѥ
�r=�Wh�J)������Y�;X����E���6��NLn׉*�7|�{�θ|���Yƍ��:cggyv    tm.�'U�}]�K'X���r���a~*,��(TO�k^P��	5��o�d�ӲAI�bik��%@�1���bz��n���=R����cBɿ���z�-�L�
�-e��e�5�%��O�j�eKh�d������b�%�*�><`�>3��k�5	W�^:�řj]�Q��j��Todh?���x�Z"���銬��lp��v��W��u���̿��� <�m�E󬍼�'��Z�a �k�-2.Û�7o-`mdoV�Wp��>0���/�� n�������Qm-�Җ�4�^Md�Z���&#��<�vs��B��3I�v^�>z��-М$���Vu\������Z�2����23,�qum(�Y�6���=��3��#����=�:v`ˣ��Τ<ˤ�/���S�}��+MB�ķol�f�Q*@�T�㗀V�l�:AH�w�@�a��J����l5�d��!�=>��8}S��$��X�>� ��y�Tv����t���9w^���D���ǡ��؝N��A�-���T��Z�	"z�Ӓ�{���]�h��:�t���@`P���3
�Ǆ�v�19>���.��{\X��H�e�e�;�������&���eř�ag�Xl�U޿̳��~�kf"��	�сI���3k`B�{�al
p=�5g.v����K{MɁ�в�f^`��bC���'1�~>R�]Z�u^�s\�j���FP �<g��H|��(�"��U��0��ĊUW�B���l)<�3
 !�ǜ��4��Y��ni�y�����alA��R� �s!�vB�1� ���� ?^2S���c���k&�,C�n�����ЙB�f��4�=~̘;E�6���>�.�K1�Wx�"̯|��s\x~0�~��<�e���@��<���8�d*-z-�Fu�l7�R�V��,�/h%�Zl�����F#h1h��wK�&�xǲu�G�X,f1Ǚ0��o��Tv�ћ$J��[͎T��Ŵ	ƻl)_U1���\gJr�D���&�0�[B���%Tw[s���-@����o�&�x�����^Z��ß��ۓ$�;[�"�^�Ӄ�d�r�@s�0o��[�#�S3�E�7��bZJ�wǅ���(b�a�����3��#c�u1�m	P��@�[�S�>P�,Kn�9�H(�wR<Խe�U����6%>" x�?b���_-v������"����3b�+dT�wH�����t5μg#辝�����1?����vx
o�$5��P�s&�}����!�:�%&���@�f�U�q��i�R�R�3�)#)n��EG��A��Xn�<I��h�Q��&��q}�jr�d`�޳�]�a=�;�l.�p�s�%����3���n���ʗq%<�4F,������V���*����>���1AfTC������K~Y$�Ĺ%��:���Y�_�F
x���"*��A(_Q�~��/�v�>B��0!?��X ���ש�f�� ���lޙ�n�	P���+���X�PE�>2�]�s�@���Dv6wW׏�ݜE�&�l[2chL�%�Nl
HG��Ƃ��8Z�Xj7�iCn�>�2���Zo��E �#� �v�fi�e/��J����H�&�<�V쾦@� ��R;�Td��"K-0�<�+Q+
�v��eQoa�ұ�G�����3��bo.��Z	��tbf��[�A�To�I�����,� ��R ӂw�>.�!��~��Cs����Μ��(f_#F����pif��/�"X�AZ��X���5f7v�鰞l�F43�;���sri� T�n��M�9c-����י��<�%,681����Dj�Ǣ���&�)���v-�g ʂ2d`�5�ԟ{�u jf��I���W6�����B���50"�)��5㉵1p�Q�e��ERs��'���
��b����c��y�=х��ϧ�
i+~�#mǹ���bY�D +Ek6�ο���=�lI��3��i}���Z���#R.#��{~H��ͻ��5�^���)I�Ӳ���Yp�8�Y=���C�O&�V���^ϫG�L�ڰ�)0�-��
�b��nK�[��+�vN�!��w������@�rw���i�gҤ���Ι��u��?V��-<��u�D1�JB�<���}[Q�l6:�.%�"�q	�,(��!����m���Z�E���	'6 B/%��Ȱ�9�-���p�o��	%o�O���0*`�>8nu\V���Y�T���j�|�\��	�>O����wi���4,�n�4���5�IH5j�Z�B�#�6׉wS|���|ƛ��#�)�� x�7:�=]���d����ë"�$;��5F�����<�})���!߿�q�q�Y0��|��f�8"��� ��pY�5I��OfNܸ6�)#�O�`vx�t6JD�ꐿ܁�66����I���ً~<~��D��!�ַ	Q��H�F9T��f�E
��N������E3��cB�#��%<h3�i.��»�3��b���XWj�6����\l���VV�6������C��=����'}��A{c��E�ɭ�Wr�hf� M�l�Ff®��pↀ4����rܫB�51���؉@�䓳8ћR����^+
|��
�5�O X�-�����a�X��o��=OTԆ�(S��9˸oҫ� �Ӂ�ttI�Z�2pe�ָE,ƂR��|+h��( �ti��f�@J���R��A�~�9�0�;;H�Ҹ�f�q;ɍ��%���Y<���Ά�)���C[�g��������m:%2���~����@s[3e�;��rj��Ōn��M�Ϊ%��l������q���! <B���Ou��V�;G��I�����,��"�ђ��f���E8�
�<T����iōg��5�*.�F�Xmc_��Ѝ�~<kb�q��,�vB��`[��&2����@&^����ƄE��^&�&4gl�EQ�� �ￓ�i�~~;QyFл��P;QLțC�?�,˄H�z�� 3��~f����	��{����p��{������ �Wt��o���#��lf�����|�i_Ch6�.z�Q�z*������6�	��ŵ���.�9��p�ǵ��m��[�T|ğ䟑��9KU��X���)��訣R�s�����W��\ИGmW�%����Ƨ(حy�a�skU1s���T�Z�2*p��s6dO�Ȃ�mێ�3��g��cO���p�l����}9)��'�x��J��vW���o��w�b�k�x�5�� �S�=�nw3�{���u�'�����(��6S K����}�,�rwro����ǟ���w�8K���K���>-\�1u����O�!;3՜���#�&���cx��Vݢ!���;-Q�JXi+ZW���m��nX�C4��h�-�@��_w�l�_]��b�����,���5��h`���W\awY{踍����t�'�u�$" }�iW����(_c�T�"ȇ�-wӑI\�Ƌl�d���/m0���rwR�W����9nzP��^b�{|$�T/�3��[gY��p(�Rү��G�R��l��K���㾾�`MQ�▥�
鮛b�g�R/�R� �O;���/�� l�bc�C�W?nwct\i13NS+��ve��g"�E>�}�"�S�D��|a���qXLBHǥ�:�bg^NHl��נR!�	���LX���s8��V�!�8��CQJ�'�ׇ����ai���kc�*Pir��L�U��cn�o�7�����	��J���,C�jk̄)�8򕩮�.)�\�,m�Ё�K���:20�L��0 K0�
��R���:�i�@���T�,�*�������rN���E�ckL��eXM�N���t��u�.��o՜�ܫ�E�i㒩х�&Z��I�̏F���1�T5ح�j�%��0י��wS��UuWx������ueY��(�;w��8�����Zf��yv�OU�����a��pt}5� ��B�q:5C)<p1�U�GA��<�@��nL����f4����?.2'    Tb١��i��+��N�-76
i���i�CR�����Y�>�z���qQ���9hqk�����RͶ�����2r=D�p�y��38%me�$��3�ΞG���Y6X���4ɹ�m8���e��f2�}�k2OG�]�G���l�P+W�qG�]f_����A�������x)�n�:�t�B����H^���B���T��9)��ll�X�1��톪g�g�fO�^�����hOo
��.�"����	:Y�Y`9�!d��;����p��7�Eys��b�z��1{O�T$��谴�r��cJL��3��W�a��O�>�ޛc$�AQ�	��beFu幛Q8$�/��gks�^�qG�b.���E{*��.��G�m ؗTh�]8J�����q9!�pf!`��.\
�o��S�ҧ@`�%foÜ�8A��V,Q�-�8���W��V�p�m|�J��c�y><1�g<��b�
HW�q�?.�
-(*96�r�_+�{��a���/(��&9�� �b.q���\_Z:d�:���]0;f�hl�:֎�Ϩav w�K�c�'��J��a޻>$�MA�`�b)�v�1�] e�n~�&U�|���I�Ll��Y��V�^��D0��+��Eq�QB`��'���W~�^�5����3i:5L��Np۹鴀g��x�U/��C���^ڔ6�@b�I��%��J�R��K��R]3a5�� fEJ����f�����HO���1_��Y+쪉�� kHQ�absjY����tvSTнJ^53_�\�σ���6LD�S ��B���M��HJ��Զ�-3f<�-��G�O\�� (B%b?��\_�L����?�����O��dOݾq)��FV�W�o�&z�~�;����o(�T���vd�5�rj���J�5�I�T�i���7 t�>�D��T�Y�&C��Iw�¤�Ҏ]�=I��^4�z�&���ȑTԙ�����e:3%��.	�������~Leb�'���������ܮ~�|���?�͢~�8'�mY���"wr�] ����!Â�,b��=/�r�&�t��5�	�B�sЈ@e�!g�L b/����,��u"��p훍�M�	<f�?��FqK�����	��ϫ�Y}B���&���	���&"PWw\S]�"'�"���~V�^�6�5�4X�s�eo\7n,�-e��r^���y��h�gTo���B[H�tc�:Җ{�߈�^���w^؄C�Ac
� �Ymɐ
d�XRiqk0>�Ǫ�#e��,û��q���Yk�_��@) ���Oe����r��n�Q&�8Ug_b����h���\wc�c8�Ϲ�_��f�Vi�d���D:���@�߫0��Z����A�����T�&Ѓ��j#�3�'[���.c��8W��N���Y��K�Q�������%oaz�!�Oo�Q�lkK�LX{
x��l�=R`liύc�)j�m,�͆J,t�x-�WWv����Q�n�0�yU�Qd�w�N���r�ϋ�f��#�%�����S�~�%kXݙ�<~pf��#�=H��R��lA�H�q�?nk�=��z)�ݦ:�0{�����@��u�̭���
TR�-(T��㱟�_ɍ�>��q�.ģ����瀱H�
&/��^�X��?d�+�G�PĊ�7��iQ
�.m�6���^����v�A�t�}�i����\�CL'ƱKl�f���k=>�0:����c�^A@u�����\�~#mv�Q�X�f��*:o�ت�N[��z
 ��`�/3�Uw�B5�K t�a����;JX3=.�j��gT������X��ϰN����
��#�N�L�kmoב��k�tA6_9�m����nb��`�b���q+/�u���������S=�> ��:�lC�C�j3���*pX<ս��XХ��@xNe%���na�* ��p[}v��V۫��n׹�E�A{ 2D��0Q��)�]��SN~��;Dj�^0�����<��^Ϗ�����`H�T��%�O�m��7��N�A#�uL�d��դ���W�W����m��O��00ja�G���G����*����ԕ/(_ڱi�����!�%���eC<@.u���B~���8��:���kaR{�cf��"�� |��qmh�Zf/57i^�³7�[m��'zYT�g4]`rƃ�ǐ��n���5���3p`�U���{�! �K�X�"�T��gpa-l7��&�O��	~C4d���* \&@h���ʆ�h����=1����N�|!�ꏣK��q���_S.�Y����I{�v��l@UP�ԛ�� �K�5=�����nv�k�B�?�����=� ���1�~|�p�����m]�!R��3�/��D57�r� �l(
��򯕸B��.�W�t<RsLHp�g�a�RŌ��X�]�2�����'k�b�|Y���o�ɂG���`'��.@�e�T�'�n�{�k�^n
�h�d����+Y��h�`0�d��#w��q�d��6�����R�8\7���T_㡳�u�����9S�s<x7���F��^T͔�<�g$�Wʊ]週�zVL�qhʈHr�w�="Ds#��*�yN)?/��W�$|��H�b/R�,��\A�����+̻� �R ��?�Kg6J6TUޅ��]�Dޅ�X/V,��Q"��i�h���%��|��&3p��Űt3���X`���n�}Rl���r��Lp�;����W](iO�17'!g���&��N�1���� ��=>Ӹ�̐�@'_0��[��V_�4�w���k��=.����tq�������46���nv�ā';������ǓN$�ǃB�xv��y���aW�ܸ�/��U��wP٬ߴ�۱���Zw�0�,��;f>a�cq�^�"� %D���+�pf��t�E/��-y۵r���q5����@G9G�>1纈{ݯ�$�}�����%Q��|�ŝ"��Y�c�Ǭω� �� ��-�EL�<���CL�q�I���a�ɓ}/&�,�r'5�c'G�kS,�k�Z�lW�b�,{	o��A��M?�f��g,��i�`Y:E ��֧�z>)Lx�*�p�gH$ݚ��Vǿ��F�ɨixIfqO� �bL����E潶0��F�a7w��yQ-mBRM�I��%+&�_TD���ᨃ'̠q=������.�7�	���/;�էF�p_�(����D5�(�<�������)�Pa�ՓE��8~XN�Χ�='yEԕ�'���D�1+�iөT�o�L{y]�y���{P��+Y�~�FX�5�LLcZ�M�9�� PR��kԲB�����B4�ѷ���Hn���.��)]�t�����T��X	����4"��X��,4�[H�AF�ķ��������˲>��ކ�尉�K�z�~�\���UY̐�y%�f���m����Tj��u^���B��a��o���_�%1[�5,Q����l0�z�?8𣢗{��`ٜ��W ?���ș��m���	i���T�n����ƫ9�����e��U�y�&��B� �8�z��E���Z������i�@�X����8�CҀ�����Hv��^K}|u���N�~5�P�;W��?�Kw�{t�b>[��ֽWb�^��{./n��@�~Y��_(RfU��*� `�������8D �gp�FG�]�;���" �<j�u 1�Jgw�_p�B�G�*�۲�����B-����V:,���w;�7��g�Qh��9%�xs��� ��A��%�b����Ͼ����yIph�V�`�-���jY��o��9���n��̊��-��S���,�C]��83?wJ��9� 1�n,���٦T1k �N�Xθ�aM��a9r��/�oa"{�b0��o�h�����0����(1���0��J�{�!R�Ί�F*tH��>[�`�p�����ɘeY�Am��dil�c5���M�oh�|�;�ÂK�鉛*
��ZÝ�3(���!5�v�����@J���DŰ;3��V�~�u���A�8RI&�*�,]'H�bQ    m>a����^��%�W�
0H�]2/*5,=�;�h�SW���6#�؝ř�f��Jo��!¢:���O�sS��G�����L B��WkǸIjXp�����#�|�W�-zZ�E��1�)@^�?pИ��
��p��ǰP
tDv^$�glu�H����^��
��_&���x�	${�Jmr��^��E��q�}*ٮ04�8A������7�0�w������W�w�^-4H-m(�Vj,�7M�
=��^6E�W��d�A�?�W��¯΋<�RQ2�~�-��`�}?���lr�,�.��d���4��{��o�PW�h�*�|yD���<X�V���-�bXn��$�̖0h��4�j="���
O~8#������U������˒K�S�'��P�/R~%� R\��	rD(���k��}E�f.��cN؋	Ｔ�RV����c�I�iɉ�ǐ��)@��J�@T�Hd��/� h(l��*�]��#��yOd`߼�J2�,*�����Ce�3�>Iq�p�3-�B�����3ʡ���x�[d����O1%�^?��"	�j˧E I�T��X\�y�W��c�H2�mI����J�#(��0��[H/r���PG�-�N�
sI��^�" k:��bUA�83s��Q��0��<���B\��<���@��6�����}8ѫ�T�[�[�1��L_��K�!�����晃����xy��D��x/�����?ˬTO�#����`H�u-KE%��K3�FUL=��x:� +9otvN�P��z[	���˺44��6�����zHW��' >���&����f	_�T��adx;�<�z<x�k��F&GPՍ��#�>��q@���jl)^!��E	���,�%(I�NV����e!֘~	E�8\�����8�V�[�ˢd圯��D�[j�#"/3@��J�}\��j	����.� -~���9�Ý������.Ï_%�ڐC:�/����b��Ғ�p���^���M��ۦ�C{À5���M9�����@t���������p��d��y�pާ� �6�!(���j�������� y�z���.v�򅎦�[u��ki�f�=��A"�[n�1i@ǧ����W�d7�)I/p�����X��k��ܲ���׭�G9����8X7NM�t�Q�ϰ���L���<������kT�`Ɯ�<�S��J���#f����*n�W���OY�β�)���Q��_*^Y����3�/l�ng���!�
����[��2,���sdo��Z�y�K�e�ZȷO3���᪶��K(Rw�w
�ؓi�9��A��
�]ߙ�x� ������ !���p�ߔ���Ta-���a�� ��1d��s�َ|�d��1�2d��@h2�q���頍=s�`��~?f�5
�!���;�1�@�ŖS�/� ��..ȷ )�����7?�zn��FdĻ��>���7�X�寧L�[�\R=GhY�ڷ��0�����J�h�@�f��P�c$�T�܂����wn�t�3C� Jt�	Nw%�/�[ޣ���j҇��H�O��B�w)�g�0g������G��;��D�,>���نB�ἷ�颴L��f�S����Ї˯�n���V�l]�>ˬ����1��]�k�Y�T�tZ��6k�]%��׈x���#�D$�ſ�;��Nk���Z�����_Q��V��:L����)�߇+�M�]I}�p�ԩ���~���e�u��a���6��~nw
	�va/5���k;�J�+��ko0
�,$�!�b���=BF��+�It���}���#rS qw4g=[ b7u�o���avh���N$�%�d�=!�� S�[X���
��N*,�� �7{��B\�W�{	������2��\gO�x�B��Q�w���"��C�ήlgnz�=K,�o�JC���'�L'�����Yfh\#��.�n����}�������bϭH��!�h�j���5b����k��z>���e�|�	�}��"4>���g�d_!��>7q>�:�4�_%F�m���5���0I��ޘ!��Lʭ�v�v�%��!"���H0���`
����3�H�8�&ƭ٩��Z��X��˿�Z`^:`��sUWX��v�}��7�;s׊ �=�A�Q-��8 qgt��ǳ^�G�k.�kǪ��E7�+%C�8�� �\�gPջ��^B�����:��%{v� ky{�⒙����,.�J͠-z���GpL��cO���c|�%��"ܼ������yns5����o���a� 
d6U
޶?�\&����#}�Z�~[&�f���2�z닶���vG�B=�gf��"��xW�@�[����E�V�_�f���O�	�w$S�,Kak�7��@Zķ�.��~���5�*������-p�in��@L�ׄhf�q:�h	���Y�Z��Er�2�w�w�(�bϡ�뭙��q+�lc^b���q���G� ��{��K��Ӆv?c[E���"X�_
D�݈�s���p7��Fiu�J��*�������f�ǃU~���rA)��g�>���\�����A���-�ګ9��rc�o�+ �:Z�莳���v���d��o�6��}HGgĺ�2�\+)m�;E����{�|�QM�Gk����(�Ř��� ������*'^�3�x�g������(5"������*�@�]�;߬��|��|Yd]�	�5�}#j��L$>215o��'�{`�oe�K�O��ç��I�E{s� +���>lloG��B���cĉ\a�����+�	A�9>|!�����[���Z���N��ֲ�0nhEk�ק8�������1-'�|�i/Q����2�.Y�m�G,�/]�;q���5�E�.���C�~%4��d�?�g��P�#�C�@f&�O��4x_�-�y��=�_[���s.Y��,wF�T���֝��-X�t�j�������%�aޓ$�O;��,��\bo���M�x�Q@2������)	�6�1"��*&�G����P���9��w��~G��L	�$�i������]����0i�1V`4#��P��ޢ_�3�ulg���3��,��!��ȣ�m=Z�$��-�5��Cg=q��9�H������d3j�1R�c��8<��΅�!G���}/ϙ�����p"�(�8���{	�ưUJ�"=s�,.���l�'�0^���������,f�>��аJ���O��K�7�k@�-�7���� Y��c���\����^�@�6e z3߈��׺,������u����f�W��+n���b�l�g�q�D����Ok'��Em�{�#�r���l^[���(�1%��A�����ݯa�0���T�	]���S����,�S z�h�����a?W̲���G1�����.�a����Ȇ{���������dW������S��h���(�\����O�M�ݧ3�Wu"�ҭ+z�|��|
���:��RpN��c�r�G�MK���l���7������~�@"0�����pR�j��L�K�*�_�M!zy�4cOIb�j�^�Y�O���L� Z׏u( ���#sW��l��۾��Bo)
��./ 6�O��?g�(t����,��y�)
���I�{�uq�i&��4,��l7�4�=�+]�B1���-��)���w�4�ڋbVo�M�Ý����>��a�Mu2�+��E2�3� p,4s|�~е�c;��'\�:�#�)����>v�s/K��6��t
���[>���63%��\��b�b��r��jC�b���;����k9)5�|�ƄR��E��f�W��#rB�H��qʔ� �'��=^3b8�5�}y�)�ZF�Q�_�����"�`�K{�~٬['�0�ceG���]Y1	͹�O 8�19H0��ף(�0R�Q,M[zt6�/��ݨ����bS�(��b�vdg�4N��b��zF�w�p��TV��<Y�є^�7��Ή�JSm���g�#;ƾjE����6j:E�q}e���:H<K�c�6,"�    y���R��2�ac��3�����{�k��0�l{,�D�}�W6�Mi�����EÕ���xM{�X�&Ĭ'�0b-�U ���k8v�#7I�ka��#�:b~ ��b|d��&��߽���,������&!9�~�z�w�#�&$
�����X]E�BL���@C0Ϭ�O1���;�4-���T�v(���ͤl�n�)&�m��r��e^����S�sܽ1�1�
���b�*���6�� ����q�Iˊ��%j73"�ݏw|��9d�q��B1�U�9���I���|��%
�j����W�8J@p⯢,�p��.�[�3ΏD�d߆������9� � 
���E�!pl8~���;m6�'g��4��IHw��f��^�:D�7ba]%X����q���0�=&jF��@Tj�\���Z?�MI����L�J���(N��.�'� *��ާ�͵���1U$��͐3�^u�!6B �YE�]&����L*��D�2�Z�v�u�V�T9&���/ɈX�j.�q�@�}�N�{���sW�l{>��|~M%j�rj�n!��q��N3�V�vFq�G�<ۿ�_9ڕ����D@ȤR���۱F=���g����<��&�u����0.��3���I(���p��%t�Z�],3��Doz�Ȧ�=��U�΂m_��"_gd%�G�X`��K�|A#��0B�3����|���:�"BW�����攴��� ��x`\`U���F�&&�̒��L��1� 8!]<'���.� *Ү�|�������8��:Fu�@��)X��	Ŗ�M�L��G�^ȇ��[{JM�Fߜ0�� ���9�+��d�,A-�����:�7/W��T,mPqe器	\*6��O��e�Ϸz�lwvU���g�T��<��m�lD�K0�,z�z֢�U�m}�e2
;�)ݟQ-3�U������=?K��2���,w�W���n�:�?�`�DW��� �,!!�'�ɦ���L3��p���ڪ^��� 4Oy@ S�oj"�-�s��O�e�Gz+&-�D�L���	�Znu����nR���^�S��S0�k�� ;��BbK;����5�$H�7Q�6��ĕѡ��UP��FK��(!���_��I�PPM�Ldb��,�(���X^}�F��0��ܒL��ˡ��"!��+���"_ӝ���^��GlB���%z�Q�<�C�w?��rc@w��n����;
���MلT-��>|]�1/MP�{��a���۱GM쾮����x'��OMKl����ƈ2��K��X`=�5����S/��Ҹu"��[�V��Oq� ��N!��(z��;v�����L��0ZM>��~7P<5MT�hI��A�R�ȓyw��r���C
|7�dS%"�x2Q�LI}yY����="�����' �D�x�V��Mr�;P���MI�w���W�4�FT�c�6�:�ʈ�]ہvqf-z��[�#�526U̗�@d�C� �|�K�]����)@;܆I�7f�^��>���Wb� ����JStGì����
���8Jƻ��]Ղb��7�� �'�n�U�\��R�QI�ۏ!�8@?��|YB��;l�v>���P|����0�ٔl�����P�����\R�w/�Q�� ϭ[WG4��7+���.M�D&�ډ�ݼ&ӡ�u1/v�,=�K�X<�Lb��]�����)�v�,��d�oŞ�s>٢),6��׈{28�_بf���q���D�\�}����:�U_>>���_�k�͔C��9��e�Y@~��rF��x��ci#}v�0��Cf+��-��%~��H*ηt�� <��	�t+fB΁��\���i�x��X�
��N���ֵ��f��̎�#�U٬�C����V�:�@b@�[7�	<~�W�(�j~��S�kR4�}2\���w�*D�g��x�`8��0�נ���1'�{��x��L����k��Wk������Lt����j�!��4w���,�	�wys{�L��L �fVP�i�kL��C�������pXƫ*xa]=��9��ǩ���d�Cï�O
x�e��TaAf�����Y�NA��krDj���q��T�� Ϲ7B�2�N�xv�-x= 86E�v��S��i�%j�X�
���}���Z�[Բ@���%'�74g�����ǝ�x�(Bp퀐DK��2��"�n�ag���~%����O�g�}�_��&\�oL��T��i ��BW�/������o�M�l�X"��UW�?�����d�/��#A��Y^���_��'@��$�+�$���i��G�W} g�a.Q��rb��xW��P���Y���91(bڃ�D���	=�
4�CgZ�A(�m��6�`|��{�Hs��Z���d�F~�l��n+��R����bv��)G��� )�2��R�>��&o�;�����)�pS��.��ߟ���$�%�w��b�k��{�i�a�\!�F�xu��9ى�h%ݶ��߁5	�.ä�sX�n�2�d tÖ=PX��[r��3��W��`g��5ݭ�>�g�C���
�O��1B5���3���jGܘ����O��_`�5�{����H��q�Dm/u��-�݅m�B�l����- f�H���8��BL�,�)�_�'~Xf;pW���m9���Յ*QR�Y���= $������I٧����}�1�xu##\���:�k**E�{�bFos��(f/�q�[$�
�U��|2t�)�uv	�g;z���6 ��7&�~�`�,�=�g�<ExA���?�v����t�R+c��{fdhyA^}w$JAq6+;�����}E�q��r�|?P�����L�B���,�M���P���*@^?�G�P�j,#��3I vG5�咍1� �����Z5�G����yn�p\�7�:K�bz�$Ǔ�!ٚ{��L�E�m�YJ�6��G&=`D��r��Y]�i�1��~�����<����'��ϴ\��uIvGQ��~�Pd�P@8N��pC2|^P�%9� QLz�1d��$6��Ǳ�	"[f��}>]NT釤��#�,�9���ZjӋ��	$�o��l�}�1�����g������7p:՜�Eٮ98)���2������!��0)�e�ES}��EvU�e�� �f5�K�S���^^��`�C���K悎���+'�������r�u��"{p�jA𪕗�xS��?6�b;C�`L���M��#� ��p����& �@a�'�z���e!]}|��$O�}��^��t�����s^�� C2.��*�#D 
Ō��׈��RD��m�=�ѷ���J�������y�������X�aT|�5c]�s�+Ήğ�5�="��(p�u�?"�b��!�f��4��㘗��׆�atX�(d�2�hc� ��o<����Ɛ��*���(v�R��懟^f��x,���^�ȡu\�o��y�36�����社��w[����8x_��ŝ��9�:B�{Q��c5HM�K�٘G�K��8ҡ:��ra���W�Q��b�1��]s@�0�(�p� ����>�!���gW5�
��?ܧ7K�S �?�M5�n^��z%��e?pbuk�x�
�l/ÅE8�:�p�I���\���Q�|�����/��N i?�����}��r1�D�`/S�$�+��ӧ*c��`�,�{��fT�s��6(�1�$��������=���V�Q�MhB)��NF����e�Z>d�Ov0 �.���!��L���S)4̲Ew�G����C����.nY��m�&GHۿsѩ"��95�<ۂO��( _�v�W�q�%J��ؑ���Ph��s	2�h[�a�O��6�<vuR�y$;���)R�N�O�`P�S'����u>'��Mݍ�ʶ�;����X�;�T%RQW�K�%x�`C��G�g�<G�h8� �|�4���"��S#����K�    &~����Q���=����' ������U��B��Q��6J�tpʀ�q������Kx�t���Li�,G�^c�����̊�~�0^gȮ�#d��Ǫ/�7��U���\'������F�a����11�̏��[��9��g{멹��r��� �߫�� ����*��O��u_�QG62���*���=w��2������5x�t>޲�Q�+���ǈ�oأ�爁����s�|�5Iކɇ�I�m@K��UL��M�R 0 �|��Kԩn�[=<�J�D#�� �#���
�§��dQ�ru��� ���*������0�;o���0��gL�'��Q�����#gON�E�b'$.�[Ď���E��ul�r��ɖǲ4���F�Ug��D �뱮Sq��q��L���lιd�`���e�KK��Z��X�[�X\����V��z~���k>؇����X��;��Q��}�:����c��4Z�0��.�������ja�H>����fIG�-w�)��R��9-��k���27T�mT=�� �
Q��*<`��ؓ�z��lB�����~?��8�v���W�ڋ퀟;Y����r�zY��Y�wr�N�	~$��'\b�=wƍlC��0x!J�-Ŗa�����y�"��A�v"m
�sy�V�^ Lh��D�,	㈩a�~Oӯ�Q�n�:5�&f�����	|����A
�3:����!U��8�3����x"��& �a��i(�F����y���>�	�F���j��� �.��R�AM
$�3�z�W��ú�u
���\u9Mg����X0����Ϲ��cR�!с^%��S��fǊ��ٝ,�y���.���3a�%U����}�)D��j��mᗨf9II��|xVӍ������� vה�c؉i����CU�j����'^(s�j��L�H8��ZI��Yg�kh����~V5�7m��kb���Ѻ�Jc\`�v`���> ϭd����G&Ü%b9�n.���2�.��v�V��t{n�b���Z-��B�v�sJ�K�%�i4��k��D��x>�����HK���E��"�[c�m<�tR��9��te���{�O��Y{�m���r�e����x��c�+�X��-]iq���/#�ו�]^����|��Vj9;z+��6��>��者$�xy��r��������A���e��8'�Y[_\:��a��Ky�N���[����D�3b͙==c���"�I&Ε�Ӂ�%V���܎h���(�=��h=O�aҟaOk�/���(A1�91M�rh�+��X��n}���g ��!���x�GpZ��{��(&�/��̾^� �.٬{\�g�T�
�A�1ٌ9�&�g�ǩ'�����ʶƹo#V��(�{��E/�����S�0v������9��ܭ}�_ѧY@sO5
h"�[�1��Em��}�R@Zm���ؓ����\Gg�)i�4���p�f�����wD��X]�m�ι��g5�J��@ӡC
<���o���e+c�n
/�Wgu��e�e�8�Qp"�_�d�=��f��r�V��U������fX>�sS��F���Ԥ$)���|�dX��!k9��)�T�2<�uqո��a�&[/�:5���)��z��:�h��5$���3�h��p*n��+�;��4�oc�$Q́�GךI�@@���U�(���1}s�N;<�Ғ��j�C�7�kԤj�o!V%��a�`~;H�pe�5{g�!5L���m��I�]�g�u�1(�~?�U/��:�Ϲ�����3^1_��Y�!k3@o�˔�~�@�$��Ry.��zv�P��+��%꾟Z�L" �H�Z�cF�M��PĴ�<.�z��˚����/AU��E,�n�p" o���ߊ�ŉ�?�}�S��L�f*�jF�m떄T$;.��Q
'�S��O9��S[-�_�����ш9��j��</���Q�Q��{0J���2��v�U�of?� �. ����#;�Y_�x�zz1	�o"#[ZG��E�H����J�������'�۵�v�Ӳo��ˀ�O�'I zaݯJW��"J���� RC[ϟz��qɠiU���pF�*
��1�ٽ�)�2�ؽ_z��;��-�$,(X���t�Dܧ��zYI2��l�٪���s6��*����V�u�L����rt3�DF���$���Em�L>BJ�H#�6Xq91*�ց5S��l�Xm]��1.'�3�R:��l�DJ���+6�q���%��� N�,>�ž>	� 7.�?����� ��i^�qlWT��"@���=H�ߨ�=v2�I���%Kv����=8ɿ�R��Vq�b�aWs��:B"ģ)l�lP:� �9�:G�wn�>�$�T'5����'kX"8H��T��Eh�D9E@3f��v'ޞ�f�����f�~w�]4Wy&�jJ�E �3(G~���y�$)E��w�(���Ù����:5�ue�W>0R�����d�A�[31�=��c�g���l��~`IZ�d��#_3D)���q)�x/��.5Յ��-%�-@l���GJ�Л	��L�<�!�*�H��l��@�89�$\�!%��. E�����4��b3����P!̯4�0|:��50���ifD��I;����i�}��n�IS�J���An�fb����^8@VPR��XP�N̞ �﯆=�cG���a��!DU��U�1
�rk��(����u|h�̶
���%)#��!nbV������#A�O�us��_�Y�4���-���KDF�S��d�s�RR�����䱙K�����ȁ��V�R �6�}���%��}����<GI͔��b��l��e�����Ty��7�g���D�3�k��2I�Gߜ�D)��|.�+P�՘뇵�����o�e�a�b�aj9KC�����"�M�;�_-7D�@�h�?����6K?
�*�)r�����G�)� A��\ڽ�Ya#h��=�|17{�[q$����f��;r���*@��x��CG�:s*�Z�<�t� ��`�1�}5LlP(m�����*���!^�ɆD��k T��˲�e�Sȕ3D��\��~�������S���~H�&{E pS��}�5i��{Ԥ�a�Ju.�@��M��s]�j(xw�e#%��>9�v���ѵSG���G��%(�@.�.�8�ߧ�.����b���h&O)�l��.�zc󶴽��T��vāĀ	�D~�E��vΆD��SO��:`�PM[��0:ݢ@��7`�k�߀��Q?_5�+J���p�"����eWP�^0���OK�A;�#"�B�X�w����S/��" o7m#C�uѸ��<e����3�K:�WtL~9|�*�T�~��4���q�8A�a�.@A�ue)�ɋ�X\E�q�Ƕº�k����$dN�陠zٶ8����5����b�B�^U��g�k>'=�j���Bas���DlZݟC�)R�ro��i�f|0��F�V+��f
�w7�j�O['�Ͻ����A�3ZD�j΂'���#��O9n�Ϯ��X�ms����N|���2�X��q��e��*5֠�g�)D)]��h�8����T�9KT�?r �]w�xD�i�>k�p�����ˏ�D�#�)�+�B���ͣ�M��#_"����G�DGa���`��D����M��(|w��u@E�Z�l�H��v��wo��.�����\g���7��!Q����cS��1dص%�"�Y{^��U�i�a�A�V}��t"A�X7��.��:,�����r�-��uqj��zz�p6�*�	��1=B�b���X�şuq8FZ&.��ʢV���k�e=RRvv�M��Дԝ�9���[4#��T}��35��UO�@2mW���,ia��i�� ?9Il<��(���v�B��t1]Y?4>Ɩc���bkrr���hf����S���P��[d�n��e��w&���|Ոa�|���XoüDǅ�l�L�G4�������N��g>_�қo?[ިz3=<��HZ���E��W��{    �X����v�o�����9j�f��yM��%��d*.������{��`)�D 	��bcDg� �H�_D;ܪ~ڢ�Sդ	M�XȒ%B���~��Ǟ�<{�&J�1X@�4=V�x-c"�6����_�����,�YBB��8��7@t�A꠴<.Z5͎ �\��9��eUI���0|�6�/���"1�k���� ؠ�A�����,8��[�UL�;ă�k�^
NSr7(]�t�rD��
'��#�	1-d�1�H�u����������k�@��f¯�����C��A���L�2K~"j�Ҳ��;'���˸C�b���h;x� ��xc<��E ak��t�+,��wtaT�nX�Ѿ$��H|���b>E@:��b|������}�Q\�?���^�Ï�l�貍X�i�BE��>q����dp6cf�k��28�O����X���Ayx�+��8����U���-rH�x]�ć{���w�*��/� k;9��<]��3� E{FM�$-�f��25(I�끑�L���+�;g
4|}KV_�;]<���,W�k'��n�+y����%
��e ���܏3�=^7u4���#����̋��ǩ<g�|��vSQ�64�]:��s��T��+g����A3���=�f�D�����~�䶰��`�tW��q��rULԔ��- ��փ?�s<��o�Viٓ,$�DC�Z�xw������>!�k������n���:c{xN͈/�j�{d!����;���'�a%�#"���ʏ�I�^����
�рw-]�a�!'-���ᆅ��~�t��L�[J�o�㧣��v[�o}eI|�<:���A7�7PńT��5+��n�xR����Z���*�*�o���4nuS@���� # �^`9�}ى?��f��z�3�,�B��/�������̈{dĲ���6�}��I���`LZC
���
�b~G��ڿv��hq����ԪjY˹�Nfj��ΣP�b��񜳼{j��XJ�ޒǑ�0bek�I�����d�~�e��'�W	�N5n����9���g�ޫ��V���㥀�u�~{�O�t
�}<b�.��ح�h4�ѽ�+S@:�š�k����X
���^����8>gۊX����p+����3P��0-��#�N�O&֦�q����1ٺ�������p�u���x��M��>���Š������N���f�	Vz8�%9���#�k��
D�~�`��)J&t:�.0]��t�$m�ǩlN��t M��.���5�-Ν�;YcZS���(M���TŤ�m��>ҿ3����~X�q ��{�,�n`��`�T��+��G�̛*�5ږ�)�ē�\��9�Hy�����"�ΤYȠ�=��X���-U�^N����_��ǔذ�4��3\��������B��N�\C�C/��5�h{�� �����e-��(̈3�V�<����Ƀ���+^F'ǋ<WEL��L�v6��������nܐm�0j\}�;{)f�L����<�l@4�d�g��e���xε�͚���(�p@4�U�6�Ͽ���T��VL��AWq��u^K��q�P-8i�������2������b�8Rl�����jU�-�`�?U��hc�8���13���F:;[Y��5⛮󚕐	��V�yi�X����o��B�+';n��fsyo?�D����������}�4��M�H^V�7���Q����Z��q��1O���ճc��8��r��!ɵۻT2Ck��[��؉R�u`�$��im�A��k@����˾��.ÿ=�����'�+��]:�>@â�/el���b�)�$|�[Ӑ�U�R��a�ש��i%�G6�S1!~<�MM�x!E*aa��&^S���Kg��4g?`���IC�1��8�!���:Y���w��k�ލ2"%ˁ���ƭ]]j����E;W����fp��qY�#B�H~�\Z�
\���S��ߜ���x���.�j���hoK2D���q���Z� W$;F9�5� <��6�:�
���w�1Q�=,X�!��.��O�V��?B�"@v|�<�3K��h�P�6ď
��̰n,։�@bYW���ҍ5���i8κO�eݧ�ݲ�]�nrcU��ZX*�QUxb�xhf���Q_I����g~�{��!ڴ���!��4'�F�[#�-�
�6������[�cSn�J&�M�r~s����6i #
B�\܏����t�2wrֶ�g�f���q�Xo`���;mc��g�>�q۬G���L���SY�yM���E/��W�y�f��w^~HV��l�#B���m�Xf2�>���j4S�
[�K�h�&\_��ٱ��H�b2��g%�T��1i�AT'���%)�����;d��oD	uh�5R"/)�Bim���&%�=��cQ�b���w�d���l!��e��xfխk��8�JT������\�+�FEs&}��p�2������d*I ��:�8U8�J�m�U�.���Q,3Ď��i]��[_Y�;H':��Ǝ�vN�6����ED ���nC�͆�I�fc91���en<l ݇o߽��2�Ʌ��Nr�8�J���^j�ZY��A�vC՚唹
ż�?��E�D���yg��s?M��=��zI�U���P�7T���D�	H(���R�m�^�+6hυ�i�9��~i&�v,�p�,�.T��:�TՄg�a�5&i��,\|Z c�(�e��
��
��;WO?��Օ��KE[��a��vq8���
򈺝���J�j��EX��!;H���Y��	V	ձ��[ ����l5�Gk�s3���L��sm/�t�j���e7�kи��&¾��R�
vt*ȿ�U(ݭx>�$���ue 9��z��#�rs-����5_N�I������lS�j�h�W�q(Fp|#t�4w9��Vo�D���ܕz���{��s��c�1"g�r�����Y�@���
nu�r 	~զ�_@����%rլfТ:1�\�^0 �~����|e6H��R��U��L���"��,��"�m����N�c��������E���,��7�W�� ��?L{�eJ��Ѥj����ux|'�B����w�Qޞ�b����n��^ :�W�O[Ty�����l?T3P�<����+�[��Q-mNB����0�4��z����L�6��Z�}F	h�T���EMݰ��$}��9�D��t.��w&�h��]�ݼ���2��AK3Q�96g���b�{�f�)Y|?܋\NF+��e����Y�b�H.��lG���6��$��{ri�sNkx�H�1�d�P
$���5������ָ��6 �0˔b�f��a�:�ֽ{�H4J�k���un���jQ�Y�aS_ �!'MZ&�~�t���'�a4k�����=�(�H�C)�>3���r*�~֙`}�g����=�b��+�&~���GÉjH��s̴�A�t�K��������E���a�:ՍKcU�%)W���dbeǋ#a����]h�h�R@�c�~SO�yOwn���XW��4�{���˽�E��:$A���C$�mS�eg��\|����N�a����5�"ᑶ���zY<����ޤ�2��~�]�������[_u�f��7HY�xӽB�j��>�(��U�mF�����p����Zz�~�8͎�. �X���I{C�`7T��y�.-l��j��
v�Ω$��"�˰t h�Y�C>ov�=9�?����*�L����	�-���o��luqe���{�3�^�y���M v�$���h���p	.Xe�eŝވ(���b���"��a8��b�h��Nk̓�/;�G��\�$�㜷�
Q̎y��k���"�p�C�X�������N�S,g�;��vqYF���:�2i���?ioq`g�e���Rh�9�X��������eof`8��s���9<x9�����7b��j���& ����D��!hY/��Q��#��x/�bb����$pC����Ak<`��#�ˤKD��
�.ń���J�    ~�B5�9�Ý�aLMp�[O�"�|�u�Jl钶[���5{'����T�h%���j����r��~e�n6.�6(�c���k��߆�m���d_,"���\�#6�u�)�J+8���pǺ�:��C������h��,v��cᷕ���E�Q6������s[}ϵ4�*����L�,I�q��L����'I4c i��k��zZF��������@&��V��KP;�̄w�O�i1��.�~�.Uz�
<�]VڎO��3�.J,c��r��k6g��MlXQ��_�������}NR����8��N��_�iR��[o��n��h�"��TO&|���9�7���'��{�W�Ն/D�q(��/G^���-�,�O�_�َ�@�����XB�'T�{9(��ʿ��4���\`d�ë\��ح�׾�h�rY��9FH��(k��?/�U�7b�N"��e�FN��.��]b��~�bb

I�،猍�����P�������Q�#�s�X���/.ŉ��d.f
$:�I��m���f3��/�5�֗Ť�q ����B����!s�����hm���,^o8�s��*��/F Yn@Xs�,�bg_�P���b�"ȼ�#zۿ��ܥ@�.�x�sseW	����w�r��F�w���l�	�o��G�K=��~U;"$k��R�����~ؓ
>�N�>�sR�j�����!UvXE��c���Z�]GgP� �����;vNiht��R����5�7VhBa���S$�IL���0�½�׌�^��ǻ_E@>s*��p���9jQ�q9˿c��u2]����(�=8�k��(յ��FL�����9y[��$�t�����T�|6�D�h��b��ՠ�d>���r(�h�"�&�>�_+r�L���o_Q0�Odd��P ;�����g^*�2�ܟ8OI��&7�2�v<H��F�R8�r�0��[\Ussq��D3��v(��$����UoOl
�DV¾5��3���?����W^`h��^��q�ê��E@���,�ܲ֗����YH��er��n`̭�qb���M$����YI3�n�
�������(�����ӉS�!'m1�KXzK� m�鷺w�;J�E�*��5ѓ/<� !�{��v�W�#�L���>�d��C�e���1��=!��L(�m�G�ٔ��.B�ASҲ���S��3�V�Cs��(�'��ZՐв��O?���$=�N�X&sl{�[q��9�u6��4���(gYT��T�����b�*r��y ����Ӵ���5�dbM\�U�1��HF?(��Oˈ��]���i�5�7�e8�����>����u��2ɳvn�]�H��@4w��p�e}D��� o���H*A<��6`C�,�ky�����9͇��pD���s��R[�!](����-�E������9[K��T��W���졔7���ь�^�9Yc�����wƣ�q�d,6"(�~\dw5�[��/�2�]�Ӊk�V�T�Y/<v�͊R�'m%ٶz�2'ޖ�=%v3|���(v�����+v��(�,����p�e���}i���P9YPQOhq7.��K��9�"��t-vH�7�؞`s*��+ޖɭ�U\����$�L�bB����n�CrhS����SPx�ܕ��������[/S� ���Q� �p+����JyT:o�
�f�s��
3��"����j�X�����F)��9�a 7�ⴟƽ�P�Y�������,v���;�� �����d����#�9�S�{�t�ƿc�7B�������!��&�_7��ȹ�ǋF,7�g���'�-U$8PͪN�dKW1�a� �[,k �l͹���HÉ+z��-�M����d�(�^rx :�@#�X��d?ݠ2���j����V\��ݨ����>�$�ݓ/<��ŞM�E�����D���U�n��a�q1��X&ymle�/,����_Y��)�8��j#Q�ї?,�������v3�D"��hǖaP��C�xB�R�k�I^1�[��P7�?ݾҕ��)��r(�nF ��G��T�{D�e�Oh! ��v:��sq�S��֭�$%O�Y�b8�v�+4�ĳp���TE1��U�JE2�4tMy
�P-�P$܍UI��
��F4W�eQ���T�6E���x_��LE�Zr�d���v��1n��b�t����,Q�2���� _�K��<�G��^3�?��`߶C�f����I S���0R׹w/�ꥀ�4��9�U�ko�f�^4�e(���c7��&�h�R�;�8V�3���9o��2�2�V���c�+��V�<����AqgJ�y'a���I�∎�f�0#��,n�,��zs~B���_~B�q��.P�#�>�ˁT#G��ӄ|��Y���^]����7{\�ޭ%��ۉ ����6�"�	� ٹL���6���A~��T��w�Q����A޸�"	�w)�z�B�+4�lV����L�ƍV�R?7<,���*߶���g�(����B����D(>��["���0�����}���es��n"5���]T� ٚ��CH��`�`myR�ܖ#۸�Rm��&��b�*@48zЧ��i��	:2��������d�E��*h�ݳ�7Q��������̆JD:� ���Zf�5g�W�������O)��M��嬊���Ǝy[f�b�o嵰��p��ߠ��se�aՋjC�o�v����<�3Y�՜��5�v'n�qY�����ܛ0�!7X��c"��GwN�o/H���J�uٓ$�L�`5�ZNB[������&Ӻ+i�I���������]2�����[mż�D J��qU�v��5kQn��P��zSH��}���6�ä���t��h8�l�Q,���~�}ł[�׈���Nqֺb3�,�R�#�z�D��K�'+b�I]� !����k���5%Z��/"�o	���G��]�������į����^��zX6�G��ّ�4��
�岣���ւ�)������3F�
+��c O8Jܟ� �R�Kv���-�b@c⫪X6{~�k�YW���d�\�� �<��B������pdE|6\��=_����UQaW��;BF�z�]�@s@HB�=���W���:7�@�����_<�b�D���$��	{bǆF��)�8h%�)׹I�@���˯�,<�csF0#����o�Yq�]),]������^�?�,���(�u�����VVo��ګ��WE�����!s�M94gt���QX,�Vl�%%��+}܆h���<�d�"���A#�+���>�v�Ͱ\'/�mY:�@�~(&F�bfe1����QJ�J��"@]v+�c�c�9) �}|�R-nVX��r�؝<6���F�����%�/,Z��*z� P2K���h�;���\w��k���mW�v���&4}?�Cf���!�����(,f�%�_�w�ɝ�����֖ �3sHac�M
h,��Vf\g*P���%�:O���uM���⣬�f�xD�5[ܪ��f�T��/h6[	/eMv�7z!�?��߈[�I��a>J-�7�4�@�fX->���rke:)�Ǜ���V@���e d�\��>,�i9؉���MD�S��.��o-��rvy��[����#��Ӷ���Tq&��ߋ@�*������^��p;/	�\ٵ�;[�������J* ��s\��<�B��=1����e<�MY��[�P���Q@5�ܗ4�_¤-L��Y˖^�ӛ*/E�E��vｶt�LO�H1�:��$'W������x�X�_�d��r]X\!�>�fUG���Mj����.�&�ҋ��謎O�g�ꂳ�;Y���-aPYl<L�^��n_w�Sx]	����"X�(F��|>�|�>���F� "�+/(!��S�sZh�
X}���z�qz[] �=r�r^x���AX������ԯ�Ah��7��#M�-��m���ʭ    7��!��¢���~x�qVB�&��*���u�ɷi�n;p}��2ҩn [��
t�# cr6�r꾽�G�bn�q3u�v�@`=at-Z��ă�M�7n��P�2��q9�e� ֶq\Q�=�8�d}��Yة��Ɣ8����'Scb#���Ss��� �@��RV�}�;��|�r"��Wo�2&fYQxj Hj�^�8��ƫ�Q�w����+�\L]�j%�hrx��2���Z��:k �Ĥ՝f8��` �1��l98�Q sϵ�FE��C"j����~�8���ދ��|� �>g:��etmO	��KT�]�Z�}0�1���UooF |l�Vҹ�9�*GH3{*��60{�^�������g	$86(v�`}����;Y���l�T4'i�a
�>�j�g1-h�K��f�k�9W���j3��XA�	v6�$�6h�/v��2��c��$
<X�4�L�1?�1�Ꞗ��1��Za~^��KV�^�6G��ݳ��t�6[G��� J��t�����)ºPDr�5���S�c�hU�l�gf����ܲA��������n��s�'�U��4����~�����u[�OgL7��+&O���/��]m����ђ�L���Y�rb��oD�/�G&T��>����UD�n2ޟp5��s�[������z���g�㹣��,�*ݖ/�;�#�%Z�Di�D�ȼ�cs}�ՍZ�PR�=W��=#-<2�C@�	zo�yzamr�]�j.�.gf5;*�.�RL��*�� s�s�e��S0���<����v���S4�F��"<��t�X��+�.c����b8��>�,�f%c�.>��,��fg7�RY����L: �$@WOsBP�+��k6O��F���3����(����L
b7%{ �f!�C�I�5(���2u�Ff�B�}?Ji�0���?�}�}C* �ÁЁ淜̤m.Bx�NR5UL֡qD4{:Q 	�;��fO�@� ���J�y=f�0^mh�O�>E>TSϡ���5X��=�|x���FK4�Ֆ���v��rC}���pD���nK�2S`.���j]��mh�K���noG(L�������L��d��o˝��������m���Q"B� �1b��>n��U��E����:�q���K� ��`�!�,�բM�[��$�}���'"��*��.&[Z�;�ο0��m]�y;
�};C}���
�Ƕ5a��i����k��o�r����L�aC�()�x�.����Y��[H��sq�(Y��onE$y�%��f/0��V����0�T&�k��f@yz��\.l0��ei�S�f͐$3�G4�<���w�@d�*�s��ѓ��R���U1��
�͎Ō`�gE�e�0��	|
\�U��hMϺV˚���{���gE.:��>�l�ߊ`�Wo�e�!�2�V�t��y��h��>�	��q{/8���s�����G��:9߈�3�#�.��/�c����j��d�v$)���<2IV����1V%2��{��Z��C�&�~1�܂;�P�2�M���y�L�h�p���3�\� �v�@�������`�m6*������~�n���]�+ќ��ќeC�4� H�e��k@��|3��Ix�Ybhы�vyx�b�q� �~[&:
Ѡv���3)��R8U��P�ևW0��k�B��0/;��'�'I-�ةc|��D��q;̽H�I�s�ۊ�Y��+x�����Jd�ӄA�s�;��YH�|}��)Yc�2���/T�D����\��U���cHB����+'WwV��g�5��W�5�O-��(X�Ŧ��4�:�ϼ���g�������A���Ʒi�_���w��$���eF�Tu�(vD���u5�?������~�O��5A�3f��d˶�2)�C 	�p&����#]I�AhQ v"��;�+H������ΏQ�������8��r'-�j? ٕ�;����T�h?�j�Û�$�@�"��YYa
\e=�iM%�|�z��Ų�e���[ 봃�%���3�	s��{�,��طbtjD��- ��{=���X��6A~�e��c�X/���8#����H���j�Ҵ��<��%���D�m��J��&��(|	>��8I�����R,'~�q6[��XfO����C#�X-lO�:�$]!Gʹ�PE]�=�2���E��	�h���람�{����\�Q0j3���N���i8�L=3׵��'��	��@ο�.� )�:�Y����8��F�X�XX�����2'�X���8j��QC;�;��<��=i��h�sB���Xa�x�؝�֡��8�W���?��4i�{��jYP�5F��i #{UL���2)���NcC[��dm@4��e�*�e>-c?wi�yp��^G������^�XP��@:��;2;jt���:}�F�t���i��j�����&zH�͏�u�6�\�4
��D1=7^�6,5ci4�UO���x߸v�h��W���?���+��٫b�j
��-����o<,�Ԯ�s�;Ǯ��@���E�c-��)�;T��@ �C:N�!I�y�9U ����{ȑ��L2oˈ�����5u���I0�����S|��)���9�,۬i�t�>Hgui���Ɏ��r�d̆�#B-?� �;�Y��t�DP��Y�/�Yؠ��St�t���麲,Yv��]������_�� e*��~�%�� ���7V�J���㭗����ҁiL�.NӚ�9������ Mz6�`{0��Ź�A-�Q~d�k��3��C�*�I~���[^P���1l�yR1IBЬ��iS�@u�D��K΄)WdzA�]���*�簕��K܁�a�8�A^��^�R�c��3�{���')���S���9tլu��!�������M�J�w���8F÷��R�-ub�c��=�
$&�b{{����ш�������'<��I!�p��\�kQS�=����4+{��n.�%ob��1�>z��˶W�bB��K��K3�G�N����>붦�Z)9�>๦�4�o�V�Ό�۪�f�KN_�p���+L� �
0�B|A�+��㛆,�?�
`�00�@a)����!�P�)o�t��0K�ޤ�3qR�Ę�bD�s�X���.G��*Y���fj��#����}� �;+��z�����m���Q9ݾ97)'N�?64jYЋ�R�!�,e��$�g��(.�{�*�c��9���P�Ĵ����3���{O�����J/��r�1��0�T�N��ő������斺�:�_�;.�Mk��
D%�k�n���g�����84�fP��}^O�V��^*0( s1����oV�ו�>ބ�L����}N���b��A���*l4�����\�|�<�ѣ�B|��^c���S2��ܺ�I�ʻ�3U��)��l¡_�Ԫ�	7�8[��]��[QW�V�=u���x�#MkĂ;yE���#k!_��ݠ��1���܌u`�^=����sKãJT����y*K�i������o&[p��}R�ff u�]��	�!�rS=� �yujE�x��1r?ϵh���@b�n ��++/�5��f����b'zT�xji��*��{�*@�1��d�>�zVD��3j&�� -ṷU@����pC����p�E�A��+,g���aY3*N�V�aIF��`/l��������ټ���äMǪ/�S�b^s��NQ�#����u�ee��if�=��}�Ӭ>@-�UI��%���t�ي�WL�M.��⪦x𦩿[��N�7�q�����Z��.�}�J@q����
��h"M��k�q=��0C92�$���i��Y=�BS�˘��B��������H��9gEqކ�/>sP�6�K��pQ�]#F~ڋ�
vx�;��L�es����^�@!{�lΝ�|Z�EW~��{rʉ�C�����\�^��G�Gy-�E��Kz�����Q�{ws��䫓k����	�3:�����oQMW����i�1���q����ݙ���(1�7e ���7�,��}dF�q    ;)�#�K9�3c�]č��e��E�^�(E� ����Uo@`����Q\���n��ꂲ�v]��&��������J�ȧ|֙>k�
1d��h�������u
ӡYT@1�3Ͱ�@&�F�����׵{�Q��@��1�{��04�F��
�e.��|*�k�S���x��-&@���|}) :{]����4vѦ�zԷ͈M���%�i��^-i�]b�V���/|��M5#��g�뻬%�P��
?M�P�B�I�u��F>�d�Lz+d��~6:�Xfw���O}�S��`�ph�5m���;��!���aɠ���O3P�JR������7��l��aYA�}�_k����]s�7en�����Jj(=6�������y����D\'I�_ +]!k��I��(>7v|7ǈ�W�@e��Z�fMԛ��4���y>_�kR�e���]1�݅�t`R���=� �
$��2��Uy�8ͧ�}��+Mv���*��8���M�O�l��L��4	�T#�sk��B�E!���٪!��yfl��J'B��nSz�ON�4�|^ދ�/(��~�U�{���#��W�S}�[T�Ju��|N��"�g�% ���ϑ�DO�-�;��[���}�לd���⋖mN�U�8��-(�`;���`���/{�d�p˝�._�H�3]���-��� TsU�vk���	�q͓��^����Vv���4~�,e	M��@f���8[�i��r��EB�����L*t�ݬZׂ��V�4W����)���+U�:󾐕,E`�sh7��՛5��=�t�Z����S����P5Ņ���qUŬ�O�o����M{H|��M1/�V�'�2͝�#��/d���e{���$Z۴����+� ��v�y7h1F��I$�:�$�E2�ŉ����ڙ R�݁���持��>��U�
$������dX��+��NF��.0�X�av�=�L2�\��c��v���CL3_Ȟ�����:�XJv�	�L�x��V5akzC2�CT1*��mm|��T�۪K���CC��Wը@fgP�<w�Q����Eߋ�UO�x���UuE�"���jy�/����P'�W�=g�h��'_ڝ���dC�;�ϜŢ)o�"7m����ڟ�wl=�H�fԴ��y]
A�r�����9��]�o{4�Ff�0�s�E��tA���P�jc�(�hW;?gz(~/����d��5)t/��7'� ������-�y�����T8� ����S�]={��	(7y,}C�6���#,#z�h8��%~K�:
�s��Z���ù�}D�#��DGM$I���£��[����	��ܨ����H�K�+	n�_���@$-V,�!���l/�"�_�,[{d]���)NZ��|���n]�}��9���oL�Ȍa�����&z�J�F��'�m`2ƀ��W 2z�z�-�`T�W}���+�٠�b2��Ҝ��'Ct_�X6�7��hk_�s1�9'���?s����Z�Lv��7^��Y�u�3j3�(�3#1Zj���L1d�����/�èt�[k���c�qc
�8; ��>y��|��X]3<�1���(n
OF���l#< wW6*a%r���������i�*��9��CU��ؓ��)PI���f��]`�3��Kʅ2.�$L/�uX��DS�]�*ڛ<��<\�3�=�X���}��
5��H|�ܺ�dT`�����:H��3���W`{P�Z��ƥÅ��/�jFɅ����p��v��7լr�Pב����2��W�Q�F�)\�JC���3�ͧ��R2����C���X*oA�� ��f[q�t�;z-����n�?���㡳7���}�C��g�@�^���`��sBE�}\�*������}&��jގ�}������Ŋ���7������; *���
0_��԰g>�W&}X��L鸌7�Z�F(�����= �������ew)4����5c�O=ۍ�ec[`C�O���G]>��Ĺ�R~����R��X_΂����H���{*��~!�Z��Q@�4]K>	H�����/jZ��	���T>h(XK���QLX{�}v(F��q�Cofz��=k?O�{���æ�h9h�>��z�������G^���i^k��x62z���q�� `qb����J3D���Vd�]�}��t08�EwfOUi�������)>'�;Y�����߹�)r�@�
�_�h��-�5�Gu���ql�bÆr���JZ*����U���]@iX�V�0�ڌ��8Y���͵�oI����1�rϹC�S1��ڱ���s{�G�t\�Q�G � *�����C�ڌ�!X�}"�6���*�ù����<�6O�|��:ܜ�4fP� �4�=��~�`�"�Y_&:�bgGM2��:pdk�Q����6m�:��)P����5�^`(��5�;�bB_3�_�3y�AC���a���-Q��D�us���_k�墖�G�T@�W�_�+������7XSl�7K����|(Q*�fb�x��8`ߏ0Sʟ�q�n���a���So��}*�e���z~���»�l7������p���@�ζ)]79�P�+�G����q^J�l�F�Έ�i�
$��z�G/T�%�9ȇ~S�I#P#�|�L	��!��֮,�GGG��n���$�7^��f�d���1�52����cά��瀽* ���7Ry�逃l�d��쾴2��\<����Jdܲw1)P�o�e|Ts���~J�M3��l�ە��-M(q����q�n�R���#���<�k���t��S}�o�d�h��}iI3W��޺�Θ�~�JF��¹��&��Ȃlð�����u;�j�ā��90
��0��U@��%����o7�U}Z=#[����HF�r�R}�	�@�⤊|�A ~e�V�?MXd��K��s`��nL�+��H�Mc�'�m��iH�Lw|��;-�����4�V�Hb����8/����7�lk��U�b�qh>����R��F��(��y��Jְ`c��a�8 ����w������6r2R��i�Y�L@���#W�ƅ�X2{�T�
}^���-Z�Ul���rXU1_��b���$��u��z5�?��$>zS�]�K�Ct��f<�����o�K~���\���b������������N JRr�ֶ��:����b��'����v��ˣ\�ywJ��&D�"��-��g��2D�����f��������k�<�W5]�<�!s8�ET�c��I�9��^����4�tM앷k{���0���j&�Y��~�6�y���L��.�n�nsY{�ŞU�Y���j�)<��:�n��Y_0)��
Ns%���	��3v�L)�@�����>�A&��M|>+%W{����51+)y�Y�j�p¿�cX�E����+&�!�P�v��Aa�U�Ut��J�����+$�(�X�ʱ�I�G$���o��U�}ʙ�̵�7=n[8ͥ��_c�K�V��]�|�Y�r/W��#4ȝ��_���(M��qsvF]��{G{za�^/8R�!�.y�D4�ޮq����&P�O�q�+;�z�%��9��+g1�`�7vgOct��Ƕ��`+��6Tq$�J�Ja�������wYJ�!f��e���o�ll�C�{Z,J�Q����4X�� /�O� 9��݇�)P��W�J�:l��}n/Y����q�Ȥp�-�CU"0����F:f}'�1����qw�������Ho��^���ʫ7��A͊���]���z�m�
�7����@d_���Sׄ����.�x�sIͩj�_K�ur�K^����K��.��㲮�@��eӪ ��d�K`N�2+�C�@�Bo[������?�qj�b����5+���b �Q�j�S��@ףQ�}B�h�:��� Zڊ*�6��j�y,�p��:e\�R:.1*^���e���/�`5˕��h�?&�N�PVd����#W�O��|����Y�"�y{��6ns�E��,d̞��*�W�)�l�j%K/����<P%6Z\�n�4�|a�����t�Re4����=M4qjz�?��i3��"wJ)�    �����y�j,[��a�2��Q��%�=\�:.k�A���! ����B=>26u+
��Y/��+��i��%7hY�O���4�H�����V�s�3������}��YQ����7�h(�Hf����7S���f4L���ĊD��J���ŉ��c�~���������Y��oD�Ę���jUL'�_�Bc�$�a�=�9lU��~����?�U���0U��i���d�Qq�����?CE��0�{�*ɨ��̾�S�."%�G1�Vׯ;�Q6�.��|����8J��ﷶJ�J�������(��,О�%�:J�YEyi�[]E�����)!�aɱ�&#��ò5cI3���Ewfy��]��v�g؈fX��P�Ň�>{�zA�hf��|�Y�űZ��*Q���kU�2��Qo���<s�����:�-�S��`3�&i�\��1�,��,j��R��<2�f�ݮ���7�l���+�JKӜ���e�9iӜ����&`d�|]�0��&:�&@Tz�^�1gF3j�JB4���O��7���\��'��32­h�pnn��\��?IX��.�4�M3\�=_d��0t�p�]`�5�e�,hJ����0<N�����\.O`|��i��=ȴ�`�<��ri�`h�O��F&|.��+�mR��	m���f\J�����ͷ ��{�Xŀ��?&�\��u	`(dkEW�2����<�b~_�M5в=�z$�<�U���� �}h�PS��D5?�ǲ��Q:KP���Ȍ �e��Ej�ob��/�O׻�SѶg�4�O��r�Q�e��޳/�VE!d��7j�71��Oאgdb����m�]�'�� �6D��?��g}!�멙�����9Wri���;ƙb�F��u���K\�ch�/�Ϭ!�>��/ڸ����f�V� v) Aa����ƴ�!��� ��3�L�v�F����R�¶��"03��_�3�,.зϨ�p�_ZՆ8LO��`e�¦v��X꥞Æ%l�����R3$&&�l_h2��i�p�q��-�}�O��!4�����<9ck ��Q��~8��)�!���^ G�?]<�
h6KNd�,��ҞEӬ;?��V�i�$�Y6�(�}���������FJ,(����QY�ĵ����]�o�k?��_���0C�x�������3ݳ(#���(ddEG��m	h�Ey>K�^ ��g�_�3 
X��+���ʋ�Ɠ ��eD=�U��l�J)�>mȔmB�	J(��5!�3����#@?^��I���i>MB�h�������9��۩��h�����J�`���-vek�kS���E�!�3��(F 
ok.G�i@s���k}m�i1���cF�� �p�	Ke�o	�����ܸ����q[k�������(f�;���F^��u��X6�9p���Lc8���X�#@TVC��h�\4=���k	^�p&����Đ���}��WR��IV���5�nn�(z����������F�-ͭKy�WS����RB>Y'����L��4�#�7������$h��.����80�/��3p�e�x���r�	 c=����K�_��F�x�4�w6�糰��\�Iz.��ZL2��:��+N�d�QFMn� �l�~[U��@�&�r�ͨl~o�M10bh��f��#�k�O�����œ�󅷭fiӈ��c�|�M!��G�M`�8*ٽ%:a~+���/b!�����ҟ�wx A����CD 3��5�۷`%�
�ۜ�=v���+����� -�D���~����S3x���%�=%x3=��H��䌛��u'FGf/�&s����"�B�6 R5�u��y��*?��3���D5��*{�<��o�#-�r[��~l��H�x�b�����G�?�m�l������)��V���}�t\�b���X0(���&u`��AO�BS,/4�x2��$D��վo���i�&�=�3.�/�]��I����Lr�?�Zm29��_�L�t��R�bF#���%�_�$�<��vA��Nl�Q��5�
;��׷�m�If�Fi�}d�$�\L�U�g�z�G`I!�,{�V�⤠��?���2��s\x5���K�jq���ہZ�����b帿��Ӷ��H�60�(�-�}]���V��Gɯ������-6�)�����~`���%�<��弉�1S�g�u���s�B<����bjKܾ����N��xl��d��k��x�!�%-�r}�4����G��j�Z�^#�g�?u��TM��.��7�#�Mh��K����{J_t0��44���ܸQ�F/]�d֏"V-�?�E��۶qϯ�Ù�1}�̑yC�4�ڰ%��B����\�I �W]����ҫ���ցI1{��iQ~�P��n�jfv���d��0��z?7��3.�'�"O��)��dp�Gqe6x�m�;,k��7���K����˽Sk\�����}
���q�{m����lh���d���2��Q�U� ��%AT�]d�?2�W.|���xb�)
��U�!Z�ݷW%p^���)�>��3W5���^�/�t�g81���L��p�|U��.e��߷9�k;[u|usF�,�DO<��U'8�?4@��g����=��X��OճVAΓ{���.vͼ��Jf$i���֟;�
����X�^G� ������oӮ��P��p��=�q�&T����T��cl��SyT'Za}����%0�5��̢ǀ�4�a�zyM�cs�J�����|��N9K�f8�����M�ok��
�F��>��pw�E9g�%=ٸs�ٌ�����}�3�l�Yg���G�s{��r�~+�~&��$	%����^��]�%���b��]h'�G�|Etq��P���b�����$������C���۩�} ��M�c��@�o�b>'L��m��ni�K����%���+�����h�\�V��ZK<��Q�n[�1���̥/-xOO ��CC�wk�宗���'�iq<vϰ��r\b�"И�D۵9�k-|�,��UΑ�Ψ��x;ɬw�]���g�R 2�4cڪ*�l������T��t�w]Uo�.���Q��*���րg�����R%���n���
N�g�֣��r�e_+�qΚ�O��bK%��@�2�����U�^��qkR&Y��w��^�j��.���do)_A�����J�SSi���h�-��NA�Dw`tBd�K�lp����lh���4M_�r5�:�h
 �91��|���L�ƃ:���&K)�m�{�S��2��)�F�K�g��`"��7v��,�������`'�Ò�V��ȕ��O��%��N�_���<QC=�O]�e�x�g�gX�W�@'�N 3�!_�Ҁx��Q{l<ُjZ��x�m�5rE�N:)�m�.�@��'x�[X%�N3���,�c�U�~zs�L͊Ql���[Të����N�}��f�Q�X����)��㾕�,b���J��g��y�ؓ�8�Z���S�n@@Iq�g��<���ϕ�&��U�����P���A��ƽ�x�#�˭(�쓧��g|���ϛ�*@W]���_)
��X��~��2[� ��\�\��Kr���QG�]8��3�ߖy��d��i�beaݏ����Q|>dk��Lu�s�
;�刚!�>�5,�J��b�q�����s����w��^I{0&��������Uq�r�|�`~���-�ښ�65�f�poG�zZ������]����$�&��Ս%���Uغ3��;1*0h&e�g��S��x��Ǫ֖����z-YqtK�O6h�-	�B�{�n븼
2޷��`S��.��ř	!D�U�,�����+#ֳy�y���J�[�ly�F���Z��
��<��ٷ�Z�;���f�Z�wW�վ+�f�����i��U�uA�۹T��%M����
�x`[����_KD׺i��jи�LVҿ�k%	�''��Y����;���ޟd�f}5�̛��$���и3d<� ̳;*=V�����`|c�_�����v��Cd�x>��<Q[��\.s����U5��K    Mgࣚ�=泂�Q�f*�>��^�z~n��os����]Ŭ�	��ǜ�ɁNծ�h��rf�S��r����Jb'�������H�^��(���t͚��z��
T�d�/�3�fk���7��Q�����n��� �%�(f14,��V�@�0x�U�E�Ᏺ�����3�w�U��o%����Q�	��_f%�HS��>��v�̘qj�?�62�����K�� l�`2�Zd�eo��8�CT��g�H�U�������Z+8�+C��[	4�e^��X��J�q��Y�wjCH�ev�"��79�&����]#Wp*���Ъ� ���I�И��ޞ��[�k��Bĳ∂��bY�7�\�T����L����>��Nr�J�O���e����D��vdLt�L���(��|I�o~�Y#B7����ޙ�^��3�ľ�A��XA��&��1q�(��_˓f�̫����j�E!��͇.�,g=x+L�N�%�+=�E�A[���f��`��G����	$�B�p����%<U�Z?��Y��u�˩�N�H�Qw��f&�Klm�D_TAs*U"Qh�����Q��S"�y�-T�T���S��|��id=�qs? .���52,�!.�] j=q˞��[�2��=�jW�)���IM�(�ƹ�\|U\���T�׹!�bZ}��j�������Q�j-޹������L�;g�B8)��)a��rə<k���tR8?��-x1�� �P��o�UǍ�`�Q�=�5E<>����@��_\y˟l���۟ �����wh��LV�ǚ�7b�H騆>ylkG�ډ��@!�/eU������K�Z�7i�04��&T��\l;lR3_9�g���l��Y��/��3����Y�I�k��9�gB8j�������!)�f�r[��6��LQ�n���ΑY�ZP��F�EF��>��[0 �MR�)��wg7�T�(�t�WG��Q��A"��'��i5��zG~�A�aݏ�\�#��ޤ]s�A9����T�魟ڗ{ZK�䖻��.��нE��%Q�[N.�G�[g��u��Du�:�[b�����Zr\�E�]��iy� s8�(�B׍ ������/��B������%�ii�g���@�jǴ
穙��.��������p-F�OZD���wnМ��ߋ{M	����.?�4�6���ߵE������O�E��?��R�ʘ��Oe��0[�q��_�׊��[�x�d��ϻI�#�=��Yj�p�dp�OS��u�ed���Z�8�K���s):�)��;ş8��W�>UQ�l~ɵT������,`\��]s��nO][!@Q���(��ðI�#t`f�e��}k �t����h�¢D�\���H��^��h@c���D �0�������,H�Q�<���P��Ka���
�ś$*@��<6r*k��������MZ��s.���zȂ;����I#��׸X:�zƄ���ڶW���aB�X;
�q�<�=���})�y��f#���5p;LL�k"oQa+u��T��&��O$�T*|��q�S~/X ����ⱐ�^���܄�-uUB?����gOa��;"o���/B�bG�ţ���S��y��(`��Ȧ$���W"��C��*�_Ȃ�x�`x.Rנ�ps��4A���b��d1Lb+��
[��A�Zq�#�uv�1�߱`����e<�hu�|����ڨ���=�7��b��vk��t5�לo�L��.~���%�*b4�G�d�Y����;��7���U�Z3�4]��	T�a q���ՙ��p���+�ghV^��������"�>�r��Zc{�k��X���ǎ��=�62ۋQy�]Z���g�y㡷؟��\���Dy�s:��Rb	�����2|�&.U��)����<�ܿ#�>�Gr7��H���w�	pg#Jqx�Ys�ӯ5��̾<�~9�2����Q�3m��X;��0��+[���(�]/K��B�׳����j{+Xe�K$��Puj����Aప*� �V��91��A�^"+0�}�8�2���~�=�ដv��/�������k%n��J�������y4���\�z��h1�g���Ǻ̯�҃��],�$���u�*PHDBv�Ә ;s>Zka{)?_V�����z60A���f�� +���"��&d��]���G3���݇6��}4qj��Tɫ������f��Wt��$_�3��Le��������8S���/��4��Q�ۓ�M�?dV	�oI4�gJx���u+���4���֦���A��e�30��z��Ѻ��zln؜�*[>���w�c�EP�(�*�8ڂ��L[]UEu�o�T]�=���^Sm4��n��jE\�3�>�C%[�\�:0+�z��y����l;�O>罏��[UbY�X���D�L�$�b��5��fu�N�{#X�������P�����"Y�;$��mUta���L����i{)�����ꇘ80poʕ�� �� ԓ�|	(�u�b�|sT��&i��G1�x?�-�R\�l����z)�C$���N�kgW����<ƱB��;j60Y��K�ǔ�6�|�,��" ?}`�X�h�����.����x�
Ԩ�M��/^�υ�C�k���h�����ɼ�ѐ	E\�g��ˏ�F��9r =��3禽#k���P��҈���g�\��T߯/U��5�Y���E��P|!�)&Y���z�ע6��C#�� ���/�6��	����⌟�BH[C�l�_]\���\1#�����7���@�?Rc�����Eզ��D�x3[�e��P��L�l�>ߘAe������ z�T���;��v�}��+�~��mU �VK�#�y��sY�r�~�>�Cc���E@�1  
b�[k���p���y��+����r';��>Q��Z���\ӫ�k|�f�]���]8�xX�����B��i��꭪ݷǔmR�IS���P͆_p��VT��ˌk��4��|+thbt����
n
�o���G`�`��M���\�nX����lh�_Ϧ&I�<�[k���o�Q�6kkL��u�qAQ\چK"�j�81�[�cߚX�&D;e�-'�����0Ѧ9������5V-��c�cod�q�ҡYo�<	���i�T���I�/�����m�q�{�o��Uko
��A�=�	����Рdm?i\�PO���Ѵ������<
0�"Sj�?V���xf7��X!��.������w��A��'�P�k)QG��}2V�q�-Ers&�Q��}lFGfs��յ��${����wn#�?'x&<���62[P"���U����ݰV	��U/�=��~%L��8�E�X�e�M/��:r߈��z7Ȍ?�6��Z���]�j�l`��Fϟ��h
TF�@��!��JEv%(�d垥�?Q7�S]��a���k��Ox9�i|٩.���ٗ�A��t�4Ȝ�Q"{e� ��Q3'��e�#�O&:�����Y����3�J1���ŋ��F�p۫�`Y��J���G<��~��,VGq_��1q}���ݽܸ$��o�븙�{ף̅F�+oɜ�� �lpA��ǹ�D�>�Vem���ܿ
(�tΟZ��̡������>�܋ �����$G�A�LqVBϰ�3�ek��q��a�*_I��Wڸ�r��ȥ�T ���l�0/KmI�Opd�^ �b��6�R��.t
:��Z?�k���i��wi^�m*��1�_�=�Ӌ�1(+��PWn8�i��G�U���%�y�V�����`���\���(VsV���㲮4�>خ4Dj*{K���ƹ,"��
y�b�g��%P�9K�W�B��U��҆�m+�;W��Um�������,1E+�� �E$�"��-�9i�a�)A}9�Fwh{��d.���`?��H���{�kZ�OXy-%�����/r�l�7;D�M��}f�{��BL+���:c������/�
�r����2��mLzL߼+ߊYd�$.��X�6�=�֨�To�5gD�C�p��g1�1��x�gJ�qBK�"� ����    ��t@�L^���p�8��Q�������ٹ��̞H ��n�
ЧA�ǈ�Նb�C~w��H����c3:������V���i��nĿq�`s.��xj&67�Q�����5q��߹��X&~�����`]�?h��+�s�h��8u�܁�A����wn��X�DuԚ�꾳�3zgӜhץt6�{��A����^������J��4�}qW�N��c���5"@^:��Yz�&J��&�>%k��[�%���d�|���t*�t1���a���b)��>t�e �����Iш���[�e����*�²��zs#&�k��Z}9�
���<vq���@������Nteia�S�?S^O�xo�����,��"��2	]�O<�� ��SU�/ ��|��Ⱦ�Y\׍���1�+)wY� '��T���\�MR^-��{wΥx��nǁZzKi�� Y���~�qV��$mʚ�U��*F���TB�|�6���2�����)��O�$� 4Uu�
<F�B˘�O!��P�2��<{�-\R��żw��x�"��K2f\�ѧf)P�`���0�� B�H�zY��]Ȼ:֯G1P�����};Ii/��i^,�Bh���@�C�l6,���Ov�-IS���F���d����v���x�C��ZGtL�@5��EX1?���a�#�ۊg�6Г�������c5��{���T����4����F������$^�[��KPN�ϰ�2��.��1���������D�&��)�f#����*0�[�_TO�!�4Q�٘5�ޡс��a��k�#��1������),�;�Lk�w�� `mp�ɛ}*0����j��������R˥�qY�Tw�(��m#�ǎT6�,0:XAb؍�EӢwz�NGftK���h�δ�3�L�Y�q{+�g�@H�q��%�R��̿��������݃����i�f}v�|&��+��3W���+�z�Re��Ϭ)�
���2K����%)4�l��bI�+5	>��ZI��ƥ���Jx�+��.w��F)��}�����Z�l&60/qw<��	0|��}�`��!���fsSs��*�����R�5S}-�86>�[AM_�TZ���I��� ��J�CY�v� SU�_��s��b�9���!���M�bB���R�L"���̟9#�3b���_��-�KO���!��[X]��b�U<��m��1�n����g��m`D/BJ�E�D�y�zz��l��3���Z�����c��穥>����D@��f.L�lO�p+�R��][�����8.�!
d���w�����De���ۨ�~��K�>0|a��bE�<o�������L<L��}S	�g~td���_"�*@���W5��ܹ�}�loc���U���;��k��u$�o��JK��>��ฃ����/6
]����*P}9��������L���u`��h��>: ����-��d�cY �O6L&�k�o龲\�Z���Q �J�L�[6Չ�����F]�⥻��`;����0�g)}�x�K�G*0Y�U�&�8����#+(@��W���e�uV����z~p�7tz��t6rR��J�b�����ỽ���ł?F�gJh�yM��Ȍ���.�=�T������Z���9��/�����-d��>���sމ`�:ʥ1�4��5�%J  L�,����w�|�U�;�H�s[w)�[��r�����J�?k���8O��L��m���@f;/���
r�'*�A���R�r���hQS�x��4T�3���[[�i��Y0f\�P�f����NT[�z����>90�؃�Ƨ�U�������#��B-�_�Fk	4O�4C&[����� �u#��g_�kR7�:͕��z�۔��齖=�R�$�/i�P���96��QFu��׌`���} j)�M�g��& D����W�q�Ќb^{����%A1��b�w-�cQ6A�
�X��}JJt\B ����tW�Z�H!e�~N'�4�i������S1<�"���o���_k��#��mm���N�jnZ�1}�SM��P�����n�`�6��U�k�z�O��e�_�vR�Y;���_(UL�X��Rz�r]	�:/��
�?��D���-�ųĪ HH:�ܿ�͍݌�xo����>�vC��)_�zU� <Fl�l��ZT���\`�$�׏)�W����)P�/{"lA2_�%M�}��kw$�_f����X���^�d��	�X$X_-�op�A�2�����apʩ�u����YW��4"��3g�ZY���;�@��ԓܸ�gT��!�!Nܹ�E +�F	�G��S������Z<��B�:�5)���[�T�R��1|�7C��Xt����/ݑ�y�En��\�H���w�mEm{�L5�?˸����C���B~��37{}L�U��C�-���j�l/=���YO����yT ���l�FM�I�?��90	mt��
���Lt�
d���9�\�4I~�?�/��`�n��I����S�����qxTP����Ms�K(�`�i�,�Fa��������1D��z��j<s",[���9��I��fQ���=�����͋�X��	��хX�`�e����䒷�+.C^���c���5�@�q#3D-���&0��2̇�������vvQ����.Yb��(���*fW�\���c^$�Z����@��x��"ظd뒷ȗgB 3?�ϭMN_��ޟB�skW�] �C���U�шV]�'����y(���12]c4Upf��L#e��S`:����֧� ;��T��M��0�4��b�p;SMB��������a��?!S=�(��A7դBb���D&�Z���q���
���8.#S΄�c�{bgx4dvV�
(�F�h}�x�#�c��m��C�3p�d��=U�<��-����qq���2��7���m�J�]�W�{aÊ��|��B���w<���$���(?�66o����ҋP�x��k�cc��7��f�fE6Oxj��#�Zu���hT���3n̄��pe�Z�idSLb�$N�s%M1;�ȶ�=�Ӽg�OdƆ�Jܘ��	W�ס<�V�3[ruŸ7�v���Վ�!��k���˹��@���$���7��lѷ�Lk���w��;|���ˢ�0s�� � �|�p��}�q���g_d$���0�bTC��_��^M1�̍��9��V�׎�#1:�!y����U~	���@������ >/���V�e����>�b#7�ö���@&=l	co��j,��+��Nͬ�jy���i&n���p�/�9���R�g�Q�gQ0�^�e���O�0_�b�5Ϛ\"��vw�;[�Y�]�c)�b�z����6T �FD.��/
h�9��3c{8ę���f"���,�if�u���f����9=����1�֔�T����,d ŏ)�3��ܶ���b�s<\���	�k����q��;#2�e�V���j��kNE�(t��y���@�b�Գ9���ɦ�rz�I�	�"|��'T��*����Z��mSL����\��`@�!�>I��E���?ɺ�d�&��md�ƘY��"�:i`w�ܰ��.�f_��h��D�O�Z>�����_t�,s
Z��Yu`6����>7�߭ؑ����7!/��؜��`�mj�mυ��Ż+���3��3��������'v(�34b�ӝ٨$8mb\7_�:�J��Gs��T
V5t�jNG�b�R���L��]�X���9Gx���xr�����le��Z}�V��T�p
V�}��Yy�Ch�uӑi��S��B���|i����z
�B�Q�C�V�q�*h�.߇f^�$��2��i�K� ����+�订�2J�s�\��b�Ĥ��f@�#��t,k@����]��M�����*aC"0��]���l���c��� .h��[�7`}"a��vز��W��!�*��������`d�Vżݐ�� ���H    d���2�`p�+T�q'f�:v��@�{i��9�����?:O3�!2�j��'(���.ĀF�?��>yv����\{���:%bÒ{݀Š� �K_�*j��V�E<.�bAl�K]��͈oߌm�p	r��X�/$��)�����b�r�e���.	�;�����>�<����cw�e�2��_*�H^��'4ѿg��h�r�Q�Q��Nd��Y�Ǝ��l\l`K�74U`��=Z���R�4�?W��3�R'd���IO��P|�K@�[������)�������0ߧT�Y�#:��	4�TQ�r�+��N�(����	I�z:(��B�Z}p@k3ǎ����'kd�����GWA����h��ݥ$R	 n}�j5))�q��p�7o\밌y�����Ľv��τ�u����
Mo�^�-{KR�e���KK9`U�7�[�Rgf����]^	
0/[OhgtH��|w5o�44���\��Y�1�#�:0���Q��Zg��ޛ�3c�iꜱ6B��Q�q�1��Ig� h���?2�q��V��v2af�S�f�Y��/&0I�[Fo_��+'e���^�Y��3w���*n�֫ �r����j�MY)E�qwU�p����&�qeߊ��}.��\��'����aI�l���,g�n�B����(��Յ	��ͬ�ж�E�ur�+��38�����I�^,�G�f�i�U[׎�,u}��W�����1����X	,D�&��߬0^ʌ��?9"�gC4��!J��1�Ú������a�侠��'���P���k��&`a=�P4�C��KG95��q�M�莃x۰�h�{�	 i��W/KO[��E�ա�cƍ�9������1y�'K�H���|_�����Ϊ��ĜK��B��K|UW����o��E`�J\M���y��W��h��I��X�?M*0�Ⱥ]<�Ts�<���X�/�溥V�>W��@�q�K�엋�d��_z/����!���՝r��T�7)��R��*�s���(yf�·�u���b�Dx[�����g�@�@q�����ò,!��|�A�%_Rͪ�h1����B�T굣���%��y|�^Y>%7��b�@7{Pl��a7-ɘJ:_
�1���f���tɉ蟧6��ˍ�B*c5W?ϱ"h���"^z���ү��5�(�b�|�1�Y_�O��g)�>zJ]���0J��
DeS��w)\ Wf]h�ϫ�803Ű���L%����w�)��e��ܒ�C�"�X��EC�b`$��-�)�b%��r��⬝G9���UkҪ���;�y��
_���;4+\��P�����*]�'��;1c��}�q	�az�3 �eNy:�?�Ր(_��32r�m8B��g��*PH))�j?��8e�O����f�<������/���Z�f|2B��_H4�j�ܛ[n%?�!�lf�]�+u�i��Wr����C��}uc��f@�n�[�X�K�
 ���|?� ���ϜY�C�q�Y���8H��kG0d|g�g��E��΁;l��r�5!Ŧ����V$ʽ���J�VV��~�6�Α�(��H���D�uOϣ��a}����Ϫ����Ɏ�j�c˜.yUM
�ں��f��sdn�(5Х���������d�D��=��Z�ie�=SM�e�_���	�oݲog#W�W�9���TG�!���J�W&�����H�ry�udr�d�>�����B6��u����.����;j5�r��%��+��I%�%��j����)���IY�㧽A�`-4����
t,8�[�
d2G���6Z�d��Ժ�#��Y�<KJ��с�37��/܃�e��ymC�P��j���������֏����L��������Cm�A��)�	�R���j:.)��(��(�������+fI�n�O4�q)���*&4O�G�bV���*+׭K�tS.�z+Z��k��.n�Ok�䰆� 6vWO���7@�.o�����Uƽ�4-{�qx96�x[l�^s%۽�r���4�E��O�ȑYjyr��Tצ��r%��w=Œ=�R3�/��̪���	Ϊ
llC۷c{q%�9ƜށP��mV�%���+�ӣ�y�.u�p�'5��D��//�]���] ,*���\A���ݻz{7S<4]>��It�J\�<�n���Yyzj��d��`������%q��s�k���ҷ�z&��xr�[OǦO=�߬��C͖�r�#Z��̻j8��t+#.Z���%w�n�.Β|D��Q� ����可\�0W��=^
l�WD��^���/�򮺇@5'M��ݽ�ະWT,J�4�d�D�6p�N	�[�:.R��G[\���`�L��N��4�lx�OU�j�3$VΥS��V��~���f�R�*Z�׽�Ƙ�ܔ+�o�uU�������kI����m?��0��sa?�#�`�xܗ����=��H��-��gǹ���W�����$-}�b��Bb-�on��0��=��\3�f|nś�X@���/�*Zdf�enf��j�jpAc`1x��� ���Y��X[�q~��)�sd�� d�/&<k��hu���L�`~Y��׈�����l?����ݱ��NB�Cg�^��G\s�eY}3��t�����"6p#&mw�%krцg��<ʹ@9N��!o�tn�i&*��;B���<�b~��/���/�������30��G�GS�J<��P�@�)f1�r*&Kb���t=��r����F����b��*�q7�l�[D�T_��̈����&@�n�����b�3������K�s�Vظ�,SÇ( ��D�GKd��O�hÍ˰������@�&�u� �)&<&���'ۋ)��	����>B�Y'Q��+iU 88Q1nM��8I
�)Ǿ��ř����ע�K��
$E7�-����r������,6DRL�T�{5�u}KX���������9D����a|����l�&%�?�v�X]	�Z^|C{hrH�*������0x���y�:�W]����<^�{6(cZ�=����]=�`�K"G���}
��1l����@9}6�ѣ�������OS)��ڔq�*�����EXs���In� #�%'�����Dt���Ɇ����T��.fnfR܏O���������q�bP�&`��S+���!�=�T]����?l���G�E& �J�J�x�ޫ��C�.��$%���o���!�Z�uט�� K�H51���Dv�o���f��^��R��/��۸q�[�jl�� ���_a�1��[��;��;(��S�Dk�
��U��6���yl��#�4/P��Kc2 qv��L)���QI�G[�-�Y��aw���	���xfD:���K���|���h.���ߜ�M1�B+��Rf��~vc|�r˄�̥>ͻ��'���ꢿs>����bX��wkt��Cs���u=�T�6	⅟��g`e����z�+�Ei�}�s����r"7@0�~b�v;�/���ڍ`�ذ�e�"Ѵnմ��hK!�g�q����
t#���{W���Q��	{��6��}��}�Ea#��X�B��<�ozI�M�;�_lt��h7�R���`�"g���W�,bp��XtN+��U��-���FV�N��@� 4�[+[���ۜ�W�[�:Ԛ���L2�.w�/��c��7�&�"z�i]a�P�-��L������k�#E���Ƀ��6�g��Mj#{�N� s�c9'�C��,`�F��F�-B�E��y�T��������Ŗ=��C��x̣�� ���z;.O�J��j�߮0��G��ةZ���O��M^n�v�#ٚV��)��-R�m�.�l��)>s~��a����{��ϿS����3�HPHޗZ��3��).V���x8����#�����߁5�WC)/N:d<��H��i=�)�- ���6Ӥ���������ek�R-S���Z��֚�������\�_��Ì��Kk~6W����8�-���܍]A�fEY�}�Wb    ��~�)X`9�۸uF��ld��|\D ��T�����~� Kq��摉�g�ZP򽽖f�X�	~4��s CtWL���~�X��raį�_9�R�Uh3������N�?f�P#|��|�ٹ>���9pe�Z�uoS������e'� �*�Ge.�p��z:��Kfq<z|�{Sfu��1?�E�h�NY����_�K�����y	d	�=�7JU����q#[��r��$����x?�L�7t	�S����w�}=����e��r��<�f�UI�[���҆"��>�����\;DZݵp�f#�x�x�|��@Z����B�h���@6�Yx����� �+`�P��Y��e�FN��� 
Tm�Z�09�O"a1z�_\6c_E��G1a�s���Q��q�'�f�*fz���?ǉ^k)
 �C���\���3p�f?��W�5Kb2��\����x'J����bK	��t�����~�Dt.�V�2~�l�$5�Y�j+P��l3$o�����F,I�tR 1C4Z�e}�fA�q]��F��R�[�TLU3(���Թ��C5�N ���`�y�e(�����M܋l]�qU@�8����4�*�K�΀���p_["�Zm �P�i��B�Ă^
1E�����>���`y�J*5��Sֳ�iQ 	����%���Y�8ɪq�k<��<��r&�⪙m �7�j�F��N$�27ˮ��s��+�	G��)F�0:��!�^�ZK���x��a�q3	�����*�!��/9
T���1���S��o#H�T@�t��5B��ܿ�v�۾m酝ȵ��]���.`������-���C����-�d�ƙk��껥����Nƍg�֣Xc<Ӣ�b2���ځ��jU�~F�*%��RԒ�T���U�W��q+xHϑ�ff7i�,i��ަ\ҳ��a��2��n�b��l������ˈ'Y�303����H
$�5{��̡[X��Ŏ����	7�c�H�n�ϋg˿��N�D�v�Z�`����=��	Z�h��k��T�C�$�,x i��L�I�Eq'hQL�zW��ġ9I��@!�h��@�ڒܲ��^s��|��Z�LW	��?憤��$��V<S��}_�UG&�Q��cN�����W��Lŭ��Ѕ�s} o��<h䏓ybQ�0����C���{�BXS扭J�Q���?zKZ�UpW̗��
�_x�͓ˇk]��VZ[������u�f`��`,+27�ۜ�!m���^1�?�>��Ǆ-K躶>�Y�$�[�f��ƶ��x��D`�S�_��ľ��'T�|�)��ݛy�����թ�&z����7�)����3	)3Т_0 ��k��'8��,�rJ�g��M!�~�����<�@c\Ξx���#�^�!�PvY�e{����+�`TD���u�n�
!�}߹��W`\�qv_W��r�(�Y��Ř~|f͓p[��G���G���l�Gr_j�z���u08椹�6�������<�Hü�̌A���K3o�M�ꀓ{{� ����;��s��{!*�r��*=9�o�]M�Dι������l��T1k�1�۠����A;�8v_���TV9�>�����Di�m΅��	�dk�k�������E�t/�~���V`;��:��R+������7~���tB���?C��&�g^a�a�'���<�Y��h�9
?�{��Y�:�Oo��aqƑV�V?�ex!�����I�֛w;T���A�����èV�����̨�p{80�����Dl�3��_c��FaB��&�c�*�Q�R�_�
R�ɡLr���Zӑ�v�y���Ȯ�K�BU�ؚ>����}���XEyh�������Vd_�YM��[�����(����o?Kx��wY;T�JyP�y�aM�Z��b�=�Q��o�7j�Վ��ș�u�7��k�w���(�wy�F�\^Ō�6�tS�dǇ1��BX�t����})":;��ff��Q���Ӂ�����TB��cʕ��{���1��f��ݥK)�;��ˣ�mQ��w\3�; f��뾞�j�;18,�Ŋ�:�2�%P��Xr��qR���;b{��8=����|�����#�
 ����7
���a��0>KM#w�j�S/h*��;��lr�)8�O��'��z]�Y-��B�!��!��c�`�JuO�#��Z���>Jh6�.|Ra�TLd��G�-��T��
7�/T���1�+��S͝m�����@N��'��]�*�ڲ��_Ӟ��Crܤ�� �������q%q�}.���xb��ٿ�g����ec�v/����_F��,����2�:+=�$�Y��%�������
9��a�RM����`֪���>�bK�"��:�!���ম$�7���;����{y'�T�@s�����R��x�CWGuY�D�w~QR���(zB�5��
׌PE,f�7D֌��D�׏)���!r�q4�����x�<�M]I�;�����)\�"��Q��$��� �ͥ��Wڰ���8�3^��G�j�0����{+T�,'W�[p@P�l��w�{]X����[]��h%X��aTՌLd4������F'K[ck}�G�S�R��V�xlULJmy������N��˝��{>��<�s�	��ƙ{K�鸉Ev��] 4(n�����İ�����2�u�rvv^��ꪽ3��G��B�̔%ts�߿J�g���$���s���V�C��;/��|óiţ���C��u�"�b����
���\6��E]S�5
�C����>���#v�=y	T�+$��6��쨱�v<STȉ�w�캖2��RL�SxR%Z���PM̋d����w-�h���@�vaH��or�965�>�&�f��l �(f)B-�b�bBK�<��ʹF�-���_��q���
� �T@;˾�a ������:�yֶn��������dg��cB��k1{��d?�zy��y��4\N�O��;����Z�boQ �u�sܷxӒ�%Yq�7򥿘-�:�g�YU3±P-W2p߯�2i���^J�0�c�3�[rN���X����|�5�씞F��;l�Cr�@�dA��R�ÿk�	 ����Wʖ�Kn�;��t�{UL�
h��k��Y�]��=>s�b�>����<Wt算�nut_ޠz�J������n���Q��3_2p:�^Ѹ�]�@Sp��޾�N����׏���<�)��/	�ׯ���Ħ��n�yXP�$o�����
I�|�
T�r'_���,��[F~ד7z9���3`r=3����\��H�>�3�L/��rW�=��s��i.{P�f�^Cߚ�����]8�&-]t 8x�@e���m{�b�����mJ��a�xȄi���bS�j�./]�=�k��-Ϩ~���`�(��ON�G18=_��Ӆ�^�˗sYL4���=*�$*�/�Q���?
��N������V�j��p?Tӯ k�C��j6��h!�}+p�d��%�Z�@��93W級ZR��v��YQ���}�3p%�W�g#W홑=bVJѾq�cL����F����w��`a�$�2b����p䏯�"w5>��2��)�t�j=�i@�5��J+��dȇ��/��8�g��L��� �30��G�����o��y��'_����f�r��|h���=\��ׁ��i��|�Y<�X'��O9�aʲ{�Z� C�9�4�x�P��\�Fĉ;�D����?}�ՋNd�87�ыت8bϾ���j�լ�͘&��b��ջ�*@J:N�3N�WY!��8)�.i���Ѓ�0b'���;p[�$io,I0��76��<����5���IH4��g��G3�#����X&�"�y�k<�a-&�̷�Mn?��]w����M��gQH���R�F�v|����~2��<%��$AC���_E�Uq�w�j�UJ����"q��7���]G:��ɣTT ��H�9����Cظ�_~�}g�{c��ӽ�    z��y�͓��:-x�>ˏ^d�~L������s1�(V�f�����]���Q�*0�������|�� ����7��$������ކUJ�����zQ�'��9�O�ڙzL�pf�>��4 ��?�J�~)���uJ������&���e�,+Tj~�z�[�K��|��̬wn@�^H��m�\���+��̘Sfe2��rƧ��ĳ�ɣ:���xZ�u�̣F���w�M3����T��D�q���Y�+�y�����x� ��դ7����������ȼz�gm��O��]I���i��e��2���8N��G1��ɳ���p�q�T�ڱ1s�k�+͓2���plN��%PXe<{�~E��*٫<M5{T�0��ޏj-Xʭ{+HUәG����@X�݌�}��́YW�G�a��&��p9B�m�PX8�͒����<���8ۥ-��
���FV��(N�u|w��"(͚=�}������ހ�9U�������e,�#|��Y8�����=�q��k�8P�3p@h$6ouꔁ�$�W�Qd����o}��#��Ǆ��8�e�^�Bs��ʈL���wl��S���?�%�mj𶻢Q'�iA�O�T!޾|��|����r��g\�̖TL8��Q��yм~��`G�_) ��\���6���� �E�T7n�i�W�2_�\W?[��k��h�����˹cۚ�=���%��M9_^� �9dU~��ëqiE�']�d� ����J��F���BpʬڋS���|�!g���}�b-����/ �*ɺ�7�X6J_��C��0��Ѧ��:'��k���M��)ho��m��!�}>�lU�BN>��(�-Q\K�M�R#���^�3��ԡn�K�$s�>2B�ib�i*��wV$\?ߙd���K~{���Vg{f઼��Sř��Q^�E����,	n�U�AQ���b�����z �	��D�ѷ"����<�����m̆5^Ӕ�k�B9"=t9�L�6w�wBI,����W 2&��z�qd^�[�v�-��*�ꦥ���~��։��U %1�o �>�:��\�8.�D�	T��������x*�#�M1�U���`m�a�}ߗJGf�f���'(��S�-��JF���j��y��� �O��i&]<��+�O� �k&�x�/��Ψ9/V�sΉ��2�C�w�B]��c�qm�{����r�c��~�sV���� `�@v���Y��Z2��QW?��X�J{[n��jb�
��j��&�n|p���)�X��q�����Z�<�ۜ+�������q�պ5� ]��ӝ�R��7Mǯf�m`1}N����4�$ïl �t<�,��k���w�bD_��IS\��3�)�w��|.�;P��<����T��#8���t�8E��e�fhO�2��H%�ˌ���<���<`ھ���_�˷��������Z�05 �z����Ֆ����0i+���#�3f,j���GzFf��&_GND���އ�T@� ��5x�ֱ�����(��}�Z��f	�;T�썻�.+h�9�*3�s�>3�&m #p�K�8'�(�5�:Ε����6��B�ڇ[KX�s�>J��w)�����M#�~ʉ���Ig��
�篥I�	��݈3J���͒�>ӗ=���[�ɝd�7�ܣ�N�l����y&�X�F�����,ۖ�V��(<�:���X<�qX��b��~ʇ�6$�{��;1���������q@�
�P߀M{P6�����>qa�j��J� R�dt���V&�r��EEj45��3��Q��R��(f��{�����ʡ��.�庨�!jt�%��A�q�\m�M�f�:ų�-��z(�E(�$@OIe����k���Wf��[�[DFļ�}e��0g� t�=��ɐ�s�i�q��:(�{W�ٺ�ĩ�b%i5�k(��~#�6L9�^%�y�$ܒ���� �D#+u��]5T����E.d�L�{sNPq�#ħ�T0���^�辶�Q���ȅ�l`z��r�X�������Ux*�Dl�g�M%+o�_�5 �9��*�`����<,����Vq/N���>|r滷u@'B{����\�Vb�q1� �kg9/�%erj�%M�[NU���9o�,K���+�8 ��@g,�5~؀Fx6y�c;�1J��V�����9-�<���*�hA��>��L|Ǳ�"�b��j�B�/9���`@5.�����T1�Χ�Yr\��p�����	�F�KiH�P�Ԓ�`uwq�O/�߸���?�|}d�B�W�X�����L��a�և�ƪ�^l���NN��q7E':��5 �;r�SK�ܓ�B�Gu��P<�����a���$b��Y���4o���u�f'&�S���^�$���5�GɴذsK���A]|ou�ԶN�B6Q�>�f������)(=�bx�&V�N���rF�U4o�0^l��Hm���P�6�g|3a��Xj
�S;d�#v��#�U�>�b��^3F�[V�{U���q�ufV	���*�6���V*@rh1�_��Dte+�v���+I/�4�X��Q<�n�P�Q�Vuع)�w>���G"��%���f"��z)���c�}(9�U�4E�Z��V$�:�/�Q�����:��A�yq�3�+
������D%�����Y�҆G�0��9�V$\������#¨3+>ԗ��� b�9\5	{�E˝�Н�+q����]��_�4p�^�+I�<��<_���I�_ڞS���e��l;��j�~	c��EC^5Y���f�y?a���E��f������t �HFrh�Xg�^�GF����6��P��O���QJ~��ߢ	9s�����}!�ԋ�������fρ�� �{�!*r�I�qGEP_K���>|���/�cq�;&YO�h'�k�3����ʕѳ � �����`���h{k��9f5����΋�AP�^T��Kf����������RS[�ua�~�\؇�P��	���%-�a``�6����&�B#`��r	v*G�Rz�r��d�Ϲѱk�^|�e�2�~	J輤�F��C�����y��p*���;�_ˡ��R������u;�u�dj��<\�[�`��#Ya|s�ϊ2`��g��0t��F=S�����w�+�>���|����[n%���T�BGVM��Ypg���^��Ċ� ��QA�'h��OP�%ix�x�Z�$�O2q��Bd����ܴ;5�����h�ffA��|�Kgք6�I��•/����4��Z�}���""���$���ҫ����薓h������b��;�-�j�Q����hޙ���D�R��u�Y.�	�ZX��-�
xJ�#����zݢ7�e��oP���W�E[�kG"7�7�-�vJ��M�����0<p����f�}e��Q(��鏀4�z~��2+"��Sb6��=ES���!��LF��a�a���� R��\�&y���j��9�6��PBm'�Q�t��Ɋ�n��t{���w�=�0@��9 ��_^��s��4#%Z8�6X\��e�ϯd��'f��Ȩ�q�C%�ﮨ|=�f<5�g�?7-�8q����wF,��C*��W��������e��#����KT8@��A"��B���R�,!J�`��8����<�mzŭr��ŭ�49���"�,����kQ��9�,������������R�j䖷��iR��_����*����bO����ʆ^yoJy`+�Y�Аȑ��yI]?[���D'&z&��e�$ 2��ԷXPY����:��ʅ�K9#��kM $�>?���V���y۲;[0P9/L4h���}f���\�78��_��6-Z��U:�!�Z;��D%H��u [��\��?bU}�M�#���5m�s�y��f+�Wl,������{��򚛒mu�)��i	�8�.h��P�˭��{R/@���>]�Į6����m^��U0�~�l��4\��	�Toe��߷�Zl$l�gE�[E�⻗��H��)��^��;�y��    =-Zo���I��]����8�]�IF�A���0�*���s����&x
�)5���LP��Ǳ��L����ܚ���|��f�fu����.�q�Z���6x��F''9�My<�T�`����:�cA���E`tK
�;��Q���5�<�@չ}e H�=�Xq��ǽ��]O�C�W۬Q��O�� �6��O����8,��ړ^��.���#������)��-��5�\ʫ�Ğ*I��H(�urE*2 3$��s�� � Uw���mU�˹X=4�+�0��RtQNl�&���W��� ���J��[mZ�����8P�WnC��k�G�M�/�)����Ԧ߱T�єLex�@����X�Pځ2_ܑ�@��޵h4���Y��+e�yY���|��ZO����CO�n�=���=yM��ɰ�CE���9#�s�yy��Wp[�b��0���ҟiL���
QG_�y|#�!�[����O�)ۼ�.*1ܷD8P
���Mh�5M1�V#�����<˩b=D��nBIO4���k���1�j������_�e[ ���ܯ��ېaX�0?��~^�[�O�����Y�q=Y��q�V6���H.V�s�<��#�ʹ)���#�%��VO��>��*���Y��O��Ě�@���E��vn]���)�|��++0v� ������al�����^r���v{K�]\1��U����e�����3t_��Ze��@L��\�w̫�������^7�]�D������~�₦��_�|�!�[%�:� �#����=�	&�\+�������H�w	=rsbo��d��1Wqn�"��R?�*d��I�����|I�g�\�lb>�/�+؄,�-�*���ѯx�� �&��~]P��p]ڏ��������0c�4�g�R��F��x;<�Ĺ�Lσhf����v�ڊG̢��=�g����>i�I��܆+���_�.��8�m�Ϊ�l� ۼ앐_�����F���b46 � e�Y2R�MC0�I���,!����nB#�}���$����q�ff������<Oz��e:
�V�\��Y��; >�S��{\�XBv�|�S�i	.7�WO� vz���-�n����iA��9\�� nH��}� E�.r3�������7�U>ق1�/�
&�~���}lE�
�H+���db��|,)��EA��#�bH5� ��<Hr^/II Ͻ�L��U��P.�b~��6�Vj��q�lfB�@=�*mP�b�[}��^o,���P9���#G?���oE������������e?��3���"�� �����^��Px?P���)�At�f֝6�D"Q^)�f3#]h��(����d�q�g�M�N/���6��!�K�n���&�8���WigQM���ǍZK* ��2�&��ܧ�UÀl�����e@ɃG�¨�F�N���P�m�c�ie��	��0�-L�m�l;F�{3�T63u߾k�Yj��Ӝ�َƵ����rA\�_K�Z$��l`�#��MT�I���v�Q����z �<�=�����N����a�%�Ս�9`�$1�����̉De�_��L�Y�0�;���^%��a�G�ﶘW�m{'3%s�$���m�=�n�5�9 e�m/M�x̂�j�l߉�q�e3��mAD�K��h:`���ɮͽ���T'V�Dx��],v��o�\m��@Yy��`�eh��c�F�#9 �]��4lue��1n!�E�b��q&LpQ�����)+r�].�"rc�5_-Z����h�'G�ˏ�D���C�*�N�lc�3f^��s���Jy`|���w ���R�OP@�+;o=q���l�;Uئ4]��&l��b�� F�P-9ΰ9̠�F����lߝ%&�k�<�>�mh���^�7�RR��w���8iS�� ��ϲ���S��/qKٺY�����%ς�l%�m���U�v��X��c�Nǣ��&����T &8*�q�kf (�q��B��/���F�����%�����n��+�C֦��Y��%N��ߝ*d��V�dT�G�:�sLtj��¶���Bn;]�Vd�s�$Fd���=є(��3=��*��K���D3#���}Fm����"qͮ�0�૕3f�fmv</�Nd�Zۼ���z�s �yy�Cz;g�*iqJ�z�B'���jx�'��&�ۦD�(��x����򺖣�M��x����E�����)�����͇J��?���qj�]��ݪ���t�{�L4X�gx���r~@O�W2��r��˨dv�!�|��]ɋ?}4Gr���~�ě�����W��@R���*8jIE�ߋf�a-�K3���.����>ufF��K>�J���OE+t�Qn���<��s'hIF5Ǹ9�K2|L���iPpW�p �� �d��:/{����� Ś��q~e��yh���y�,1�)��ǂ
hA�t��/��^ə�-6�WNM�%���čqeqB]߾PN�!�jk��n%h�����{x,�C� �4 �����t��^������b�]��Nr�]^A�y(� �`�U��i�S�ʫV��m�3�b����N\5n<|<H��p(�C�i�c�*Y_��rQ~�ܻ7�ׂ 7�v���#@~ڋ�ou"�R�<5��;3�`�o����r4��r�·���d�b�}<�?S�	��Hd��v���h�FX_{��<�gg�G~Ѣ��ƅ7�2i-5�_^(I.�L^Z$��kѿ�I��a?�4��y�e��l5~��"�<x�-��� �n����S�.^��b9�c�-L�-�ߞ����ffQ�(!��i��b�\Ot@a�gi�m�$u�Fj0h��9a� �Bl^�Zc����p��,ɨ��:�2�j������$3j����)�gM�Δ�B�@n��B���Č��P� E�̥rO���]exw���"{q�[����;ڙ�o�����^6�p\�P��W@)�����=ѝ0|��w�s� ��4�ry�m�V�!6s�xU�`����R�4��x�>�3+�;X�nۭxs2����م�ò�>�^�����2�/|�1��~�: ռr���0uY����ji��.�N�&�,���"����@�U�T��}��T�ӜZ[3��Q��cb�}�둠l �T�w�J�ԩ�7n?[��o���]R�|)�ҿ+9O,5�Y����fZ�+��t�3�m�O̢(D@|<A�N=��ڭ�����b��γU)��s@&S�C��
�R*o��Q`m9�GRN3;`��>ޯY�AcA�K4NX������:/v���L#^|��S�:1a��g��K2I�R�y�0��ͨ����.*T��Pu�n�L=\
8@K�x�O$a�L�|\�;�ZE�\~l���:/9PИ���m��O�|k�Fvw��T��~ɍ��ub�����$a��#�����rm��]�9\�]�[#��l	�UK��~�R�|���?�]&�����b�b�D�� 2\h����炼o^2+��W�H�;9������:�>w<;�g�º&����J�d���f�%��'�v��d q☼K��{9<��s�
3��Yq�K����@*ba��=�[Ű6�X�v�ܭ��/N�x�"��(F�x�%��0x�G��g��E�����wb☇�|[�M̖7t�d dB6��Z6���K^v�YzP�|U����Ȋ~l7��dG�|m�n���9�=Y�ѧo��$���������	!o�����v��;�l��
�51�t�l%B���|�B�;{_��;1���K�^'��� Kz�i����r9o3-�>������h&��B�w���̏��B6��W���K�E�Y$s����o����"&��M��w�,�؞T��B<ԩ<2�*�����4��'e�> '*�rN�Xqg	͑a���u^t�z&I��e�N��j�o�P6��R�#i��gՙ�BCE.Й�����․M�;��c���9�xT4H��5ݝQ���D!�Lr���\|�D��G��31�����_*���    M.��cљ	~�^*3�a)�}=�H�\�v�!�ik���W��d���ᬽm��u/���M�3��i餜�w}T2�����暻�}7'&8s�(�61ˏ�1�aP���a?�oc�nW�ۙ�=�����MQ<�	����>�0��xג�A��7�ub��p����MyoMk_�\��Q����(�>1���J��?�dR����#\���i���T	"$����&�ʄ#.��s4Z�H����֪�)��;d3�f3�Y~͜4���wt �k�}�Y�G'l*tt�r���xn�;�%�h��T,�Q��v���kfQU������ ع��F�W�#F���q@d��إ3�C2�����Q$�S��r�f�p�\)���D��_�zӝ��8R����!�KfW'f��K�Ǯ$i�Y����Ra��2ڱ_��|��tU�݃])#�O��e�������0��9a�Ld1�4v�T�!� z���$o_J}�q���3�a��g�ɝ��b5~�R�^�5�x�OT]ܽ��Z�=�W�K�Mp��[�����2�N���OS����j�L�ArT�ݒEk��]��m�I��;�l�
�)j$�y���,�=\`�pD���=�����=�ߎ,bb8�C2:zȺ�;謭�e��y�wI�Jl'�2���Z��@ry�Q������=�63y���w�F�I����[��=a�4bG7�#X����&��,����m�Iʕ���^�2r�"���-/�|gxg��W[`r��YG�&�X���=��L�:�t��HA�9�p��6�ŁE|�O�_��|�??�e1����6q�dc�G;���A���\�������zv��w�`<kR���;g�3�z�4S��+�<�pϚ�l�o�M�e���$�i*Ɔ�Q�˸Ǩ/��͑�+� �_9OQd�_���K�������{��CG�j��m�ĲQ��s���K�z�3��e��(ǭB>��l��q�T4�&�E�}^3���z�AT6��#��JM�Q���`���N�^y�`-���{�&�r5�1�J���l��;��GVx��nWkS��&y�)����Rˮ@�'�M�ѿ���ۚ��(ɘ�����zym�l ��P
���#��"O� �ϒP��fp-: j�~s�#9ZĠ�a(sN0��i/��&���.mr�2�����vg�sAe�ＤO�Bd�|ʴ���]0�|'J���}{;���%"�n���J��|��	���Rv\�l�sO+�?{M��F�x��8 7h���P�Z�8�s�Q�S2�NE;I������Y�:����}@&Bi۪��-�9����&I��O��/u_=���l�F0�>@A�@P�h���Lʠ�n�!Y3i�g�\�>������'-�l����u,0�>D��;ucv���b���A#+�d+2[E#��U�*��\%�Ⰺ��~�	�g?��EQ�O�DƚO�������m`1���(z@��M��>���M^?�'Ų��){�|�w�+�%Zڡ^��` g̻d�D��oݭ��'͞�}��,·(��&N\3�k8��Q�$�]�����6����v�uD���Z��	&���r����(�&��]��1���S����[%3�1C��z��N�ʤ�tN��6wU��ٜ��^��s��=>t`�_�}l��(M'&~Xi�c�/��v�яd���N�ot ���2O� ٛ��&�}geC�&���Ja$�8 7g���h�R�j���%�!n�����<+��z�j.�bn�2u3����8&���a�:ˎ{�L;�Q%��d�/�<�&OX`��,p@͸7��	�QL촘�&�3x跇z��lYI+d>ff�#��S-3+}ܻˏ���ML�v����<\c�̙b�2;��_��V�7��V�m���Pg�x8x(�!��}���_Y����"[
�Y���}@�"�1��?���^�;���QWc�:LE�B���dE�|jz��ᡶ�:/��Vc�f��8�,�h��At�B>A�������3+�o�Eݷ�D
ny��0F���'y���/�c;$7�e�ɟ\����#Ջ���=�A�_�)V���F��7�ǴQ]��vT�ϊ�%1�-�ج���� ��?dL5�ܻS���F����>�лB�Sacyu����Na���N,SF��W���K+F��J���j �JVn��XQfW�x��ǥ+4�Jo}�H�6��R�$eq;k0N��Z�~����w-k@�;�a��5�y>�W�\'�ex�
�}}�*;Oj��-v�^��:��\lA0�{���NL������)�� 0Ligu+#qU����V�B��/�ݗ\�+ΜC�!��ڠVg �Z��$?3�n��俢ά0�a�������9�,��A��<��P:mRL��~m%}X9;����6Rܓ�o,%R�#y��:3�ڑj�11!vdӲ��9 ѣ�Z�����#^�Y`�-Z[�HHy��1$��cd�Z
�~�$�T"�[`=�:[%��b�go«���TE�f%"�s��s�os�s���o���kɬjǿ�X�_&6�8���U�� V�`����^5Kn�W�k3A�z����J�Pw ��hJZ<w���J��b%��:�c�E~������ނs�d�Wn��5�V'��w�ߧ�,�*s�.�(��˯�����-Y7W�(0�� x��~�\y�K;�; ����-����Ǣe���6���~�*���ٕ|��A�~���:[�՜)+����p�\���O]2��cxC�*�Ns�4���0��L/�Ǵt��A��D� @�7����9�f�D߫����߉�9o+��5����O�$�j07_X�no-�OV9�O�(��Q��tG� ���*ճb�[=������3r]���u��������g��i���XY+%�'�W���{R)��Y`��yS��C6���[��كZ�_����%���Z��qR�
 ��L6��11��bW�ǂ���#q?�hϨ=H������?�G����'Ly���:`�P����P�9F	����i�!�#�^mEh֫ɇ�tZF9A^�^� 6Q�k{'�z��>:��7�uI�+c�x��0�, �l�E�&��C�{�8or��(K�K���!��v��>B���60����k�X�J�TN�]�:s �j?@��J����W4VX�w-�O��5)9\��^<��]<0ɵ+.y?�&�_
��И|fƗ�1���%����7�9 ���>G?�t�ٞ<cs��*�����vv����r�����E,�)�Y\����^g�H�*~���Ǽ�S�7t�<���9��"#�+��Nk/�����Y	��Z�׻��|P����)�!�޲NLpr�y���-��'Lt噈e+��aĳ��I[�k�_�B3�'�8�O+���{��J���+g�KEw%�t	��DL4����c~����Wy(L|u�+30ZC���,�B�E��B��	���Z��=�F-�}�C@�
��ǂ�|�	߲���b��Ќ�W�I]��Π�
�b����d+,|ZJ%Wm[#�C2ߊ14��O6� ���G��D��^~JFG��pL�s� ���c����L��<� :_"E���[�gQܩi���9`�J��0��T���)�>G!bG$��W�`!���Ya� �8A�$^b�ƫ�d�����NБ��<2:3َ�.W������a�;cT����W7��"�'���_�����	����{d�)t0T�n+�'$�J�%�`51�{�:1����k΃�_��y�5[O�e͚؜	��׉�Ҵ�s1��
iB�����>�U}6F��r�F��z���7�8 k�X�f*� U�#�����) �a�7�J�ŋ������b�\���:�����"��9Vsb�Jn��,bG����4u〪�XU�w���+N~<�;����W'���ӻ[��ʲ�X��쮘�5����L�R��^V��b��?q����ŷ�Xs���Q��ٺ�D2�2~���xӻq�iώ�x �  �5ܸ��ʟ��NN0��"�)e��Q� �ݿ��x���s�&����̕�G`���C�*Y��C�ޡ��ЊY|ۓ���E���g�����(�$��(���z�i��-��N��Ks���F���G3���Į!Ϗ��\��'�_�v7f\�[sԄk/Ӈ �gd��H^��`u��Gp3E2B���?K�[�K�d^�|y��}^������|gSaѭ95bӶ����Rޡn���EǡT@�yV-#J1���]�tN��)�;`�{a�|�zPN9�����՛�5m�k�����ÿ�:/��r�F��`'_�~�Se��WͲ[}91�/W�81:����ߵ'R^1\?���1Y^�(pԉ���^*�tbRF9��='@�A�x:L�3���&X[�ҳ�M��uyOn�X{"�p�8\��X�����e��X��/6h����1���s��%WE��Ս�����]�V��k��s��'�^��3����K2�h���s���2��ٗ$���
H��q��4���6r����GU�JN�mߞ)�\q
���9X������w<���
���?_	1R����"��R����3��d��d+���7�`M�p0��f���CpP�9���|YG��:R�*�3�|)7�i�d{ς*���7a�\(��Q.�ȰO�N]q�E�x�䄗�Ο���BB�'.M9ڻ?RRD�#����������my��֬�yBQ���&Gn$�ֱ^�cf�GPw鏶�L�R���r �9�yY�@uX*�Y�kQ!��_f�]|Dn /�cѕE�qk�׈���TWG��ά0��(��N<D!M_I��&�S�h~�{�!�VV��>�;�x����@�������	a1���������8��_T���.����Pp�R�[�����x+���懶���OL�\Ύ�wb�^����e� ��p�7���t�dt�E#NA� �����Z�$�r�\�L<�t��Á�Qb�+��Y���_�$+ohD� �.���K�/��#G�|@n^��.e��I���(���e(��6\�d��#;��}E(�����)[2�ߢ�$A�!.�ei+L~��n�ߜ�zI|�x��i�u��n���E��h��푻]xП&�]0�b(�����>}X�����Bd��f�j&or�QRGl�ջ�N��^o�=2 *������h{O��+��&¨��ȽD&j��]0/%}�t惑�����WB%�L�}g@�~f����d9w���I�Mo6/���	i*��:/��x�h0@�*?<����9�|����� �}Ͱ�3�z��m�(�;���*F�w��r5E���!V`6���r#4�؏e���jU`�D�̔�`�`V�c+ݿ!T6�a0�}����(�y���,�:{��Lz������XQҤ���$R��b�էuj�l�����*r$Iπ����<��רd�gnl���33JQ��a�}%7�����*�nI�&�9�a����Bْ�ro������?TN�R���V6�����D�wd���7�^��ݬ�>�PY�Q�K�J���F�0ŝ�����|�cOH�tӜ߫\1L ��ܪ�!�[��{-`/t�ǝ��9���<Y�2ŐtoA2���?n{�<��@�ب��6������?�JV;      9      x������ � �      5   �   x�M��
�0����S�	BF�]�b��M���#N%Z�o�D7����#@3����v�w�;!�6Y^���u����8L�]g g�	�Ɉ_�9�t�ː���H	��RAv��8�ں�,� ���'R��>5(f�||�ci�K�p���p���h��oF�<eB�      7     x�uU�n$7<S_�_H��G����Wۈ�@.�<-�Fw�7�Oi/�l�2�)V�E'�vʩ�H�T�q �sl��B�i��84�cڴ���R���`���I�M�<��l�SZya�2�ynNS���XE��Q
K���|�S���q`�t�Z8z��ih�ڲ�@N�hG����-e ұۢ��&D/�MS��wi�)(ˬ�Z%"���]���,���l�Fk��J�Cw@�/%O�(e�6�K)��G����0�Qљ�Bi��6Cn.��6��
6D�PL�i����\�@��
�Z+�qBA��>+�3@��B�������9+�����k0�.�����to	�Jtsփ���2lSs�6�s�ٰ�Z�:U�c]�2�]�`�z�J���Oy�e�fBK�;������L�[봓F	Q��K��k6u�W�F'�F7���eH{�28��j�G�Z���ݾJ��X'�C���ð�%5Oy^HW�y}�-�\ �@�O9�3�"G'  �'S?/0׎T�1,��U�.M�8d�hMT^I/t�j�ms��2�即�Z�#��y�b��z�yI��y*�o����P��`E��G�uΤ5�{T7E�YNC5�m��k���`�,���|�3��(8	�a��-O��#�[#!'[xhh~���N����2��c���	;YR_�F���l�#�y#c����ݵ5��܌s�����Xp�;]2��v���`���F�׾tG�a6A��C��>?�8`%0�X�֬���ҕ�9�Yh���a`����Ѝa	�c�
���p#.*�u��k���(���ɴ`����Fj\U��f���"�*A7���a뻜��m��/�&�K�����X��HWNh�L�w�����eɯ�ݮ���b=!���*��r^�۴�&h��:Y�A�o�a붐�6���gB�Cf���p�-�-n<�ka��?�=�����c$���}||�ɕ�n����)H�F���J�?}D֘:���?���)��D\yï��kd�^K�q�k���!����[     