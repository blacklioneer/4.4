PGDMP     ,                    x            ammo    11.2    11.2 C    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    17262    ammo    DATABASE     �   CREATE DATABASE ammo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.936' LC_CTYPE = 'English_United States.936';
    DROP DATABASE ammo;
             postgres    false            �            1259    17263 	   eplanning    TABLE     �  CREATE TABLE public.eplanning (
    eid integer,
    ordernum character varying(255),
    suppliesnum character varying(255),
    "order" integer,
    finished integer,
    date timestamp(0) without time zone,
    status integer,
    unqualified integer,
    technologytime integer,
    finisheddate timestamp without time zone,
    stepnum integer,
    stepname character varying(255)
);
    DROP TABLE public.eplanning;
       public         postgres    false            �            1259    25800    equipment_status    TABLE     �   CREATE TABLE public.equipment_status (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    pause integer NOT NULL,
    run integer NOT NULL,
    error integer NOT NULL,
    offline integer NOT NULL,
    unknow integer NOT NULL
);
 $   DROP TABLE public.equipment_status;
       public         postgres    false            �            1259    25798    equipment_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipment_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.equipment_status_id_seq;
       public       postgres    false    211            �           0    0    equipment_status_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.equipment_status_id_seq OWNED BY public.equipment_status.id;
            public       postgres    false    210            �            1259    17274    error    TABLE     �   CREATE TABLE public.error (
    id integer NOT NULL,
    eid integer,
    error timestamp(0) without time zone,
    status integer,
    type integer,
    errorid character varying
);
    DROP TABLE public.error;
       public         postgres    false            �            1259    25856 
   error_info    TABLE     �   CREATE TABLE public.error_info (
    id character varying(12) NOT NULL,
    "desc" character varying(255),
    solution character varying(255),
    reason character varying(255),
    date timestamp(0) without time zone,
    type character varying(128)
);
    DROP TABLE public.error_info;
       public         postgres    false            �            1259    17283    estatus    TABLE     %  CREATE TABLE public.estatus (
    eid integer NOT NULL,
    ename character varying(255),
    oee integer,
    estatus integer,
    mstatus integer,
    finished integer,
    run integer,
    pause integer,
    error integer,
    offline integer,
    updatetime timestamp without time zone
);
    DROP TABLE public.estatus;
       public         postgres    false            �            1259    25841    fault    TABLE     �   CREATE TABLE public.fault (
    id character varying,
    "desc" character varying,
    infotype character varying,
    reason character varying,
    solution character varying
);
    DROP TABLE public.fault;
       public         postgres    false            �            1259    17600    finished_time    TABLE     �  CREATE TABLE public.finished_time (
    id integer NOT NULL,
    starttime timestamp(0) without time zone,
    finishedtime timestamp(0) without time zone,
    finishednum integer,
    status integer,
    manager character varying(64),
    changetime timestamp(0) without time zone,
    truetime integer,
    oee double precision,
    eid integer,
    pid character varying,
    totaltime integer
);
 !   DROP TABLE public.finished_time;
       public         postgres    false            �            1259    17286    maintain    TABLE     �   CREATE TABLE public.maintain (
    id integer NOT NULL,
    last timestamp(0) without time zone,
    next timestamp(0) without time zone
);
    DROP TABLE public.maintain;
       public         postgres    false            �            1259    25816    production_list    TABLE     z  CREATE TABLE public.production_list (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    schedule integer NOT NULL,
    finished integer NOT NULL,
    working_equipment integer NOT NULL,
    date timestamp without time zone NOT NULL,
    material character varying(255) NOT NULL,
    "desc" character varying(255) NOT NULL,
    qualified integer NOT NULL
);
 #   DROP TABLE public.production_list;
       public         postgres    false            �            1259    25814    production_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.production_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.production_list_id_seq;
       public       postgres    false    213            �           0    0    production_list_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.production_list_id_seq OWNED BY public.production_list.id;
            public       postgres    false    212            �            1259    17303 
   status_g01    TABLE     �   CREATE TABLE public.status_g01 (
    id integer NOT NULL,
    tmp double precision,
    override double precision,
    "time" timestamp(6) without time zone,
    consumption double precision,
    vibration double precision
);
    DROP TABLE public.status_g01;
       public         postgres    false            �            1259    17306 
   status_g02    TABLE     �   CREATE TABLE public.status_g02 (
    id integer NOT NULL,
    tmp double precision,
    override double precision,
    "time" timestamp without time zone,
    consumption double precision,
    vibration double precision
);
    DROP TABLE public.status_g02;
       public         postgres    false            �            1259    17309 
   status_g03    TABLE     �   CREATE TABLE public.status_g03 (
    id integer NOT NULL,
    tmp double precision,
    override double precision,
    "time" timestamp without time zone,
    consumption double precision,
    vibration double precision
);
    DROP TABLE public.status_g03;
       public         postgres    false            �            1259    17312 
   status_g04    TABLE     �   CREATE TABLE public.status_g04 (
    id integer NOT NULL,
    tmp double precision,
    override double precision,
    "time" timestamp without time zone,
    consumption double precision,
    vibration double precision
);
    DROP TABLE public.status_g04;
       public         postgres    false            �            1259    17315 
   status_g05    TABLE     �   CREATE TABLE public.status_g05 (
    id integer NOT NULL,
    tmp double precision,
    override double precision,
    "time" timestamp without time zone,
    consumption double precision,
    vibration double precision
);
    DROP TABLE public.status_g05;
       public         postgres    false            �            1259    17318 
   status_g06    TABLE     �   CREATE TABLE public.status_g06 (
    id integer NOT NULL,
    tmp double precision,
    override double precision,
    "time" timestamp without time zone,
    consumption double precision,
    vibration double precision
);
    DROP TABLE public.status_g06;
       public         postgres    false            �            1259    17321    systemconnect    TABLE     �   CREATE TABLE public.systemconnect (
    eid integer NOT NULL,
    ip character varying(255),
    status integer,
    connection integer
);
 !   DROP TABLE public.systemconnect;
       public         postgres    false            �            1259    17324    transmission    TABLE     �   CREATE TABLE public.transmission (
    eid integer NOT NULL,
    remain integer,
    material integer,
    transmission integer
);
     DROP TABLE public.transmission;
       public         postgres    false            �            1259    17327    user    TABLE     ]  CREATE TABLE public."user" (
    id integer NOT NULL,
    status smallint NOT NULL,
    valid_time timestamp(0) without time zone,
    login_time timestamp(0) without time zone,
    authority smallint NOT NULL,
    password character varying(255),
    name character varying(255) NOT NULL,
    "desc" character varying(255),
    "callNo" integer
);
    DROP TABLE public."user";
       public         postgres    false            �            1259    25864    warning_info    TABLE     �   CREATE TABLE public.warning_info (
    "desc" character varying(255),
    solution character varying(255),
    id character varying(12) NOT NULL,
    reason character varying(255)
);
     DROP TABLE public.warning_info;
       public         postgres    false            �
           2604    25803    equipment_status id    DEFAULT     z   ALTER TABLE ONLY public.equipment_status ALTER COLUMN id SET DEFAULT nextval('public.equipment_status_id_seq'::regclass);
 B   ALTER TABLE public.equipment_status ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    25819    production_list id    DEFAULT     x   ALTER TABLE ONLY public.production_list ALTER COLUMN id SET DEFAULT nextval('public.production_list_id_seq'::regclass);
 A   ALTER TABLE public.production_list ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            l          0    17263 	   eplanning 
   TABLE DATA               �   COPY public.eplanning (eid, ordernum, suppliesnum, "order", finished, date, status, unqualified, technologytime, finisheddate, stepnum, stepname) FROM stdin;
    public       postgres    false    196   hO       {          0    25800    equipment_status 
   TABLE DATA               X   COPY public.equipment_status (id, name, pause, run, error, offline, unknow) FROM stdin;
    public       postgres    false    211   �O       m          0    17274    error 
   TABLE DATA               F   COPY public.error (id, eid, error, status, type, errorid) FROM stdin;
    public       postgres    false    197   P                 0    25856 
   error_info 
   TABLE DATA               N   COPY public.error_info (id, "desc", solution, reason, date, type) FROM stdin;
    public       postgres    false    215   KP       n          0    17283    estatus 
   TABLE DATA               v   COPY public.estatus (eid, ename, oee, estatus, mstatus, finished, run, pause, error, offline, updatetime) FROM stdin;
    public       postgres    false    198   �Q       ~          0    25841    fault 
   TABLE DATA               G   COPY public.fault (id, "desc", infotype, reason, solution) FROM stdin;
    public       postgres    false    214   9R       y          0    17600    finished_time 
   TABLE DATA               �   COPY public.finished_time (id, starttime, finishedtime, finishednum, status, manager, changetime, truetime, oee, eid, pid, totaltime) FROM stdin;
    public       postgres    false    209   P�       o          0    17286    maintain 
   TABLE DATA               2   COPY public.maintain (id, last, next) FROM stdin;
    public       postgres    false    199   ;�       }          0    25816    production_list 
   TABLE DATA               }   COPY public.production_list (id, name, schedule, finished, working_equipment, date, material, "desc", qualified) FROM stdin;
    public       postgres    false    213   ��       p          0    17303 
   status_g01 
   TABLE DATA               W   COPY public.status_g01 (id, tmp, override, "time", consumption, vibration) FROM stdin;
    public       postgres    false    200   ��       q          0    17306 
   status_g02 
   TABLE DATA               W   COPY public.status_g02 (id, tmp, override, "time", consumption, vibration) FROM stdin;
    public       postgres    false    201   ��       r          0    17309 
   status_g03 
   TABLE DATA               W   COPY public.status_g03 (id, tmp, override, "time", consumption, vibration) FROM stdin;
    public       postgres    false    202   ��       s          0    17312 
   status_g04 
   TABLE DATA               W   COPY public.status_g04 (id, tmp, override, "time", consumption, vibration) FROM stdin;
    public       postgres    false    203   �       t          0    17315 
   status_g05 
   TABLE DATA               W   COPY public.status_g05 (id, tmp, override, "time", consumption, vibration) FROM stdin;
    public       postgres    false    204   ��       u          0    17318 
   status_g06 
   TABLE DATA               W   COPY public.status_g06 (id, tmp, override, "time", consumption, vibration) FROM stdin;
    public       postgres    false    205   ,�       v          0    17321    systemconnect 
   TABLE DATA               D   COPY public.systemconnect (eid, ip, status, connection) FROM stdin;
    public       postgres    false    206   ��       w          0    17324    transmission 
   TABLE DATA               K   COPY public.transmission (eid, remain, material, transmission) FROM stdin;
    public       postgres    false    207   �       x          0    17327    user 
   TABLE DATA               q   COPY public."user" (id, status, valid_time, login_time, authority, password, name, "desc", "callNo") FROM stdin;
    public       postgres    false    208   P�       �          0    25864    warning_info 
   TABLE DATA               D   COPY public.warning_info ("desc", solution, id, reason) FROM stdin;
    public       postgres    false    216   x�       �           0    0    equipment_status_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.equipment_status_id_seq', 1, false);
            public       postgres    false    210            �           0    0    production_list_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.production_list_id_seq', 1, false);
            public       postgres    false    212            �
           2606    25805 &   equipment_status equipment_status_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.equipment_status
    ADD CONSTRAINT equipment_status_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.equipment_status DROP CONSTRAINT equipment_status_pkey;
       public         postgres    false    211            �
           2606    25863    error_info error_info_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.error_info
    ADD CONSTRAINT error_info_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.error_info DROP CONSTRAINT error_info_pkey;
       public         postgres    false    215            �
           2606    17354    error error_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.error
    ADD CONSTRAINT error_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.error DROP CONSTRAINT error_pkey;
       public         postgres    false    197            �
           2606    17356    estatus estatus_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.estatus
    ADD CONSTRAINT estatus_pkey PRIMARY KEY (eid);
 >   ALTER TABLE ONLY public.estatus DROP CONSTRAINT estatus_pkey;
       public         postgres    false    198            �
           2606    17358    maintain maintain_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.maintain
    ADD CONSTRAINT maintain_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.maintain DROP CONSTRAINT maintain_pkey;
       public         postgres    false    199            �
           2606    17362    status_g01 pri_id_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.status_g01
    ADD CONSTRAINT pri_id_key PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.status_g01 DROP CONSTRAINT pri_id_key;
       public         postgres    false    200            �
           2606    25824 $   production_list production_list_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.production_list
    ADD CONSTRAINT production_list_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.production_list DROP CONSTRAINT production_list_pkey;
       public         postgres    false    213            �
           2606    17368    status_g02 status_g02_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.status_g02
    ADD CONSTRAINT status_g02_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.status_g02 DROP CONSTRAINT status_g02_pkey;
       public         postgres    false    201            �
           2606    17370    status_g03 status_g03_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.status_g03
    ADD CONSTRAINT status_g03_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.status_g03 DROP CONSTRAINT status_g03_pkey;
       public         postgres    false    202            �
           2606    17372    status_g04 status_g04_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.status_g04
    ADD CONSTRAINT status_g04_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.status_g04 DROP CONSTRAINT status_g04_pkey;
       public         postgres    false    203            �
           2606    17374    status_g05 status_g05_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.status_g05
    ADD CONSTRAINT status_g05_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.status_g05 DROP CONSTRAINT status_g05_pkey;
       public         postgres    false    204            �
           2606    17376    status_g06 status_g06_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.status_g06
    ADD CONSTRAINT status_g06_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.status_g06 DROP CONSTRAINT status_g06_pkey;
       public         postgres    false    205            �
           2606    17378     systemconnect systemconnect_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.systemconnect
    ADD CONSTRAINT systemconnect_pkey PRIMARY KEY (eid);
 J   ALTER TABLE ONLY public.systemconnect DROP CONSTRAINT systemconnect_pkey;
       public         postgres    false    206            �
           2606    17380    transmission transmission_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.transmission
    ADD CONSTRAINT transmission_pkey PRIMARY KEY (eid);
 H   ALTER TABLE ONLY public.transmission DROP CONSTRAINT transmission_pkey;
       public         postgres    false    207            �
           2606    17382    user user_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_name_key;
       public         postgres    false    208            �
           2606    17384    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    208            �
           2606    25871    warning_info warning_info_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.warning_info
    ADD CONSTRAINT warning_info_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.warning_info DROP CONSTRAINT warning_info_pkey;
       public         postgres    false    216            l   z   x�m�A�0��W�E�v���4G����_DQA��,���9���	��8O^���-Q��s�nk���_�=�l�~> �$}�61vy��P���nUG�t%�?�ƿ�x;�B<nϋ�} ��+      {      x������ � �      m   ,   x�3�4�4202�50�5�P04�2��2��4 Bc�=... ~2         �  x��Q�N�@</O�`�]z�g���+�Ŀ�i�'@!FJ"���RJx�~��WpK�0�^�3�3����W�Tw�уN�K��仾���U�{z��Y�X� �Һ��ha��[�m����雴�-��s�־ݲ��l��@QC�XH�����1�%�v91�q��؛[��T����#ZAŠz�Y
mX<�f/4g�[c���[��n��Ƒ��g�yL~��٩o�)�&�CI����A��:TW���FT�o]��g���]�6>j�'3,��lYf�"_�#�d_3��l��ʁ�$Y(�7��}��>A瞾���-�����`A�R����CF�$q�����d���(�D��>Y3	��?�X�p�����oL�?S�L�b�r�      n   F   x�3��v�51�41�A8���2�Yp�bʙ��8�-1��rA4)��9XM�$el�M*F��� jk�      ~      x���isTW�(�9�+丏���<9*���K4`.�U�U]Qᶩ*^c�]ݷ�� I�Y�����L25D�O��s2��i�ϐ�L��qwwt�Q���Z{Z�^;i;�Vޝ�;��K��[���5'�awL:K#��pi.)�,�
��V��Y�9+�^�8���>�ۙ*���+�7˻�J�oڝk�����V�ӳcw�^�_�� �^&�lt���*�By�Vy�Ց��!�w���b�/+�|m�&~ʊ��l�q�=w� ��e%".�O���������=t�GX^�t��"<��?���:���8/G���ba��A�����+��;��0+����s �_D�I/���������?�� \4�jr�����j�_�����|��?��b�;w`�p��:+7�B7�����ή����7[a�����;,�Vľ��S>���F���+���\^�m��#��=~ܞ<xJ`�O=pz� ��8ko�,l؝��&���ف�`�"���v��_����@�^�FO_�fr�l�g�I`i�ʦ��S�>�Ã"�8���Ț�[u����O`��`N4~����{��g*nE`����N���r��#�E��G��b}@JK=�N�	�T��LM 3
���(���w���AKX��b���U[�%�I��kF?�[Y�����*�R���%�ȩ�e酒�������ܰ��{�h�k�@�T�\[���xh���j�����<w�X_y���>oL��'[$Xv���+�Zp��,�Q���ԻW��\���/(��%f���(�=/�ōl1?�a�p��M��M�{i�Y~
5���̓WPϞ8�$����Q�s���v� '`>	��a8QM��Ұ�M�$�i[t��@mUP��ׁ�&A�D�hn5�Vs`�Fl`H͆mE�X��Ꝟ��a�y1�`n"�xU���=�CMŕP���z�u0�
��^@��c� ��= �)��U��s@�!�c����2�T\9 \/.P1W&��u�����t�21�L�Eq@�4W)/�͓nR������4XQ3c��<X��|��M�}v�]{jؙ�瞗_ͳ�_Z ~�x<ق�N�u�{����\�Т�fbE\:��a�߳�V�U�k������tt+�m�T�Q]ך�J5�, <wی�Sb�ܿI�Ÿ��]��(��}K�����)X���WF:�����x�y�C���e�o�,?�|@�����^�:' �^�����A��8Q�
��ç�:��vg�4���سv.���ɞ�vFs���$c_��
��\����(J�%�+%���|Qyx��8/f��1i�.��o�əx����0 ��4}ƃo��2[�6H2��p�_�/%[�/�����-;i��[v�2���O�3Y�=О�qKf&"������=�nh��=PMV��v�kn��g%�a`������N>r-1M(��&���o��3���i�̫��㩊_�3�09&t�"�̈́/<t�3�c~�~����(y,�8�`��yg�	�1|����FO%���ۺ+��w�`J�\�+ʹ�e��������+��ved������1�&6��;�Ygr�έ{����|s��-� h�E c5Lnn�J�~y� �w���M���nf�� #0�^�c&z��|��|�~jӲ{�|��dK�[��{~���F^��w&���B%;�R�y뺽��v�kʩ=
�@�b��{��	ی���-
��l:˼*��>3,�4��F�2��޳R�ȩh���=��� "C� .�2N���~\3IB4sH�~:�I�7���ε�A���޴����W�‹U���וl���c�Fȍ�%|^�"����N��a;��L��ѕE�$~��RǴ���Ȟ�4�CO@���p:=�^�W8���{�hT8�%�K˳pN�}98o=����1\/���d(R�]�r���/�zr���� �t���s��߄q&^�~������Nn����O���@�P�^�_����c���'�h)r������s�_h���_qw&�;���o �L���ryy�� [��^�;a��ķT̅�hG$؋�	+
�z���N�������r��8�a���hȘx_o��ih&��0�d��C��=�*��,�O�"�A�`̟4:"�h2r��_��c�œ珸��AS��8�h��9*ȜQ}E3*f��f�T�lit���_�4�ı�͌ˉ�o<)l�\�</Q�*Ѣ��#x.`��	R�։u2^Aރ�蒆���[��߰'HCα���)E�p���8K�>��޾c��dp��5-=��f��
�-�Ʌ;\�M��l��4Ӂ�5K�Y� ������cR�T�������5,����M���o������_*��8�`��O�P��n0Kp�A�����w���-���+Z�~���W���_�]�z�[j1ov�
�����1�3�E�y �"<�j�A��1T�&����Vx��
��3�	�e� N'u���&^eɉ&��2t5q�B\�X�u'n�G�g4��r��:�ݵc�jy�%�h����d@��{��2:i����~tFv(��&h�#�UL ��s����������Ei�.|��Q	��g���}p8L�b�L�ư�wCs'��{h��8��[���ҋ앖#eD�@�h�@#���o>4v\=�}�б����c�i
���E!.�b
X��nuY�'G��
0.�u�b�����䈂��j4wQ�n>�������1G�o����̯�Ι����l|1���	��գf�Щ��jvp�}p��5��{/��}/���[ �����SZ���jU�NG�࠰���ް}u��vKK��������E|���I�
fX��4J���`�����"EJ))M�r��j��1��;o/o�D�~�W�^(��4=M�:���v�
Z,�!�^�6��r�KV�x�ڛk�db�	/��΃�j�4?��d ��+LA�MB��׎!�dY2���Ɔ�/�17{ԁ�FA)2�I`ro�u�����.���{P��x!!�->d�Oç��M�̺�@�d"�;�����c�/��Q�?�t��?oOO��Av�9ٽ���g�
��S�1�1�d�Sr�EhO<�&�
mAj��!��Y�U��V�{A��C+�G��96�<����3$�M ����d��[v���Bm:�.j��.��X�WM��P���w��3�.'�} �U9�z��㐹�>��g�u�6�ﰺ��_Y)��A)!�1���-�?x<�hD<`&*��V���ivU�t��_]��?�Y��6����r�P-� ̺��X��,=/������H���2���c��V���3o�zN��~pƽ����PE"#&���1U�0�Ǩ�!�E�דr� �pG����|ᬹ v��k�����&ݾ�v���ZW��,��Z�3���wa�Ȋ~�5�KU��L�.x�P�#>׬8�V��}����ܴr@�܉7r&�l�����ُ��d�P��wO�ֈXAU&�Ky���jU���&n��;����Ƞ�������BX1ō'�Q���$̈\�����ّ��8��#�OV��v�!;��,��W1������22�݆�<*^��5�� U��!`eh����O�N��e��Nh��z�uJ�1".Q����4X���8Q�+�C�4|�-�DO�1���lu\��~�(�e8�%c� G�G����U\�h]7Y��������ƭ�{��"g��3 15�\9�����z��f�߼��`��
�S"�a�Ã���NG�����y�$��%�wѨ�)+�N�4
���@ܼ�`?| �A���}ͦ���Vg�I��#�E�k�]$6��������iw�F�k 0�e{eӼe �h8Օ+a���{gaV5�`�djO���y.8P����˚�v̖
���5")�Ir���G�t}���|��{F,��lb�L4���Cuq�UT���qûpj�^�ZZ^x�W�F��������    Sq�c��c��ر�p��i`�>x��?����+��'��@�d&�F�=�~�!$#��A`�b���Q�]gWS��GD����M8��~k���^Of<��͗�)�?�Z��ƴ�g�z[����(��J�lP{�5�z��ځ��[��i�)=�Ô����	��an�7��[���h��>j�����4�l/?�U�Ӂ���Z5�5�T�!@��94�)�	�}����j��Oa(G���n���D]ϓ�t���d�\�}��|��Z`̲a�xdiCkee������N���=�Kއ%��"f��)��iZ+2�tP�9��C{=o��H�]�i����_֧�7�k�*�i?#Ub���Dܐ���Z��c�Ԫ���%*6�� T���(l��Ռ���aFo��*W��G_��pW�՚�i2�ÁP��T�F%�C��ڽ�5��`���j�CҨ�$Y��Q���ѻħ��9CY=Z~�sT*��`K��ʔ&^���^��xc<�m8$��%�\\Dh �:�  Pu�C��D�#��J�n�rR����$�RW6��^_5��r�p�`�Ҫ�v�-�fhh�r���10�|���0|��9��ȩhՖh����.��Ly������4%�ď�[���(�i�j�2La���g�gƊ��d�֭l��y��,Ǥ���V��g雒D҂�lEŬ=�7GSHaҮ�*��s(���ڗW�\�r��\��t(��%�ŮG���X_)�+��K�M�5 sjN�����#��Ǣ�?�_�Ah	?4w�Q�+�mȋQ��۫��-�:���7��"������]���護_�PR��Gy 8��/+S�nų�5@��G+Hs.N|1V��Ѹ9�� ��.���8`����.6���+�,:�x�[̓yTt��N{�)��"ŕǡ�j�½�QG7��;}�㞲ҘzB��b��w�����A�i�[�;��6f�s~3��!�97����ND]%h�]_�Z�<�p�,:D1�G-bjLM��8����k��xX�#����:$�{%�Lա[l��Pc�;��|Վ!��ϱ������L���]%�L�p����X�gz��ݹ]uF ʯ���Ղ���ID.��q��6pA��u��
���ϒ;����s���R`����E�#��?w��$�����q,����%�6%����ō'n�{���)��Kэ�J�~_7{�	�9�*g~��1P]��>p�=����IHpIP�zNTP�^?g[�698��<�(����s��,F*h4`8��\_q��/�N⌥[
 ��Oש�% Ȗs��t��eb� K,�h_-�A;{�3s�N_��9�u��3���`����t���?!���у���9LJ���:�S��@C��9_� �5�l?0k@�6?Q���S��`+n,�z�j�R��0s��̨ZK2��0��|#��B�guٍ�g �5�2ꌎ�[GZ��h��Ms�#�T���gZD�A�*n��x��h\���}:�{u���Di���ߚG~���R���ڭ�\R��V�Y[~]���ak���V���Ay�2�dtK�10Q�l�i�񋫗�t���Kg/_m����\�e�K���
�{D!{�Tc� 5E֙~�Jq�*�-%FDL�tv1)ޣ�i^��^ѕ�EN���~����Z��$/���zCgH����)�FiѪ�;Y�H{�����peY����M��= Z7#� 5dc�n+��+Tag�7���������J�����Hd*r�ܯ��dE��L��	���4)��]��Ćo��kep��AlG��zК����̏��3t@6��dT��8�ۃ�J?X}Ն���H�tL(�洫�f=Y$���>��e��W�'E
Xj�����k��=�|=~>��97a�!g���S�c11�) s����9����P)�,�E����5o�+�(�B���P��7Xp{����q�	8���t�H���������ܱ�FXj�|���cNb��S�?l13�N�Z�eՈ0��^P��	En�d&�<�m�<.��ia8RQO�Z���`02�p���'�
u����#N�ޙJvZEǍ��!a�⊢�����B(�D(�ݙ>I�\�̣�f��G����0���:���CƋD�#m�_loa�/�j�����A�ҫ���(Ǡ�颟1�\'��N���L�J��	��17n��2�2���,c���Ќr����sd�?�w�&�VƖ+�!��9�8
0Y�^@4���V,'w7΅
���:p������@+�ŭ{x/��(M�,i��nf&�_R6C��gk�T�U���E01�#�BW�^gy� э�>�/�0X��>���+Zy��X�3�kNkd������)oZ{�W�̯h�y3ɒ� =�CG:�U���1�E��[��W�Ĉ-�n�w�ć/(��-4��L�G*B��N������"1�ʐ�l���Ý�t��qƠ�N�ˎ>����A:s��kђ�]��z��%��h�ȩL�5D���������w�`
 ��� i��[���,���&�w���u�@km�afGi�M�bG��K2Η���ĴFk)1�x3��V�iI����f��"'/\�����η��������8o.�����b���Q�N�8�ɷ0^\�D����n:����,7�w�2��B��+����sH0$�q�fk"�מh��;���!,��y����#EZ{_��7�_�@oMG~KG�kr%���Ц�f|T�Yl�P�����F����tK8h5Q�����d�D���塝��}2�ZG9�Y�b��d�XF���ڂ3�=ǜ��u��ь�3TCI��p�rͻa&)`R�� ���21t���a���5�x�&���:�/kZ�$��ݙd��.��쫐.]j��k��@ϲ��v��'�{KF�	�Pf�$�Om��!_���a9YK�/�l.���[F�'%�-e�Vo��*�5�i5����<��icAŪFc��e25�KF��uW��5!����F۷׮]j���կ�\b���z�:f������d�:5�::)2��������H��L>3�@y��͚��I^,�I�Mv�k�^1��"[��c�!��/R�����%}�5>�X]�JE<���b�ݬq�}�J4>�D]�j�|;7S���{= -���pY�*�5�pIJ]<�j�ܿz��;U�y�<d"�.�p��o�����o?���S�fO%���a�Ѓ�Aq+�� ����[��ztt��4jZF�^���b��@����t�J��)���js�{{ME�~�fe��F/�Ep�u��5�n�����JR]'�$�y��pf ��V����`���;	�
�z�x!3E☮��F���X}��VL�U�k\��JN���pk�U������7����5��(6����zb�f�P��gb1n]�,Ti�����X�mg�v���Ww������O��,؍K�U��꥔�x,U>����F�\|�H]J5��_�Wt��q���`[��5�hl�?;g��{�ҳ�ց���أ��ϊT�@�<��_��J
�'�<b ��c��YI	�R��ՃUU��yO[*���\���G�*N�����*�N���(�\��k?�ΗRy���A�Ǻ�+�b�4�&n!:X��c�"���r�@<	��x��hʹ]fLn]Ű+�t+�-YH_���W�����]ҷ�M��?i����\��C�uePsS���
S]�5/��+��?m�b���5�� �[�Z�����t�4��n���Aqʁ$=\e��)`G�|���b���,��擛���	B�{�_�ؠ ��5PHc&b�<)��󉽦��;X�?���nྨ8�Y��\A�.b��w�V�&���r��!xkO��Oᯎ'b���@b�Pi0�՗A���� mj�!�T�Z���g�'��������i����:k�Y ��oO)Х����?�:������q��{���W� ��E}�����ft�C    �+](�u]9��H	4EV��P	]��R	]���|�,�Q�8�xU���,��7�	�3�ʰ�.�]�^�20��L8(�V���O3W���__���_h�˥����-`4��χ�#��<"-�p[]Ȓ�DS�N���$�[�-!�Y_C���^�U����kuNZ�B�[��Q������y�HƼ������	B��,+�N�0y��m܃�o�H�=N������3�i�̉H{��K?���._��ʯ���=Wa��#)�t��h�[իK$S^��BO{
U�ZW�D��Ã� ��)��jp�_(���> �%@�sY�Q�l�N��`( �c���S�t�|�/t=Q�����ȍa�>�O��x�.�P�u����w�(=�0f��qJ���7�߳>l���Ŝ��z#��U�/���sȒ�����~�� X
sx(���έ*�(ǘڿ�JT�ml\�Z���.�V;���Є�ݯ>�נ��	G:��pC[�3�4�[Lr<r��iL2>p�q]�;�qd�*#�$�z\�	T:��N��J����pF_�(���I菄�ZY',6zu�,7�Uao���x�/2�wc���/8i,�tTf�Tn�z���Գ�։o��-.Sk>���^jG���o�o���+_|
+�j���w��׺���DcQ�oD�&��(��k?����h�A�1��Zyp�� ��d�����wtm����@��ҽw��j���p���]�|���w��jR�����|����_M���?�._M�zv�7����W�8s����5&���ɶ����/�؞O�?�?w����P���gϼC4א��l��7�]�r�!�5j�7�Y�/��?����O�����?��o�f�|*��*�K�Ut0�G���,6ͽ��H\�9ġ�4�S�_���p��5M�կ��xsh��;x��{˽��rƗ�9�楟��r�;ʘdhq/�®>=���h�`Tr'�n�kp3?��d�I�ZH>� ��O&�r��Ժ�M5�t�"c0gA��y����Z�G�<�V�����Зi������1�SQ㬻'�C��]��Pʯk�"����ɛ���'G�Vfo�kJ��+� �I�?�d-H�ڪz�%�(�K�{�붪��&	����#8V/�M���/iI��S����zhl���o�5������E>�-��4�|���tsh�$���������Qx�k���En������$�6�����oU?�� ���u�܈�Ar���5H��_�cMc������4���,���FQ=�7I��m?~℺�Y	�~�#��f#�,���$�N���䚍�'�IR�����\�Q�$7I�����dw�۝:��j/Ɵ��{&�rm�&��E]$7I���k��;�Yye����8M��gō���N��L���[��וMN���Eo�$�o���3'�"�1��� �u��$�g�����ܘ�J�N�&٫]0��Y��݇Ec���>0��7�$�wH�P�Y��~�����m���)/� I'w@����fo^zO��Kb�G�Ѭ^z�e����<H��!�~�0�M�q��b�,ύ��o���$af�b���o���$�e�X���o���$AU��z=�ϕg�;;��c}�.=;�$a�b�7h�l���z����
��꡷I�H�����G<q�3{x��Ϣ�4�'z���4�$t�'��u!4�K=t5I������I&�*��ؤ(K�zl��ji� �w$C��C[��Btmü�/\z7c����%n��d�.��e=��'�vH]�bo�z�nZ�h���qq�.��@�*���:Z�Iw"
��Y&���?�{�X�w�S�����.�����X��xpc��"���9���ὡD4�}��k�9jx'�UY0���?�U�w�p��w�8q���_���B�Ҍ~OE� �1AV�(�Z(��A�!;��W�r��5�e�eK2���4pz�����82��>O�^,J��NX�
fU⅌�Wx	h�q���yNU��<�ɸ\k�k��dg�_�}�O^�����#�ܞK�
��'�*��ʍ*?>��R���vKE�jxtI���R�&evK]'n��v|��sM\��� 3���Ti��C'�������N�G�я������~�E�u\���'� ��Rє��������f岑�1�ٓ7��*f�j��_Z)�u����:y��Q�'G������|��7��~�����PѴV���uLe�Rڱz:]޾�T�9�,+�yasN>V|ؽ�yߕa���Kh';ۘ>5�uI��5b�6�X��o���o�iV�X"�^2�ڽ!y�x�����z�!K���\�����Z�k��{��@xa
�nv�}F7�Cå�|���U�x�o������hM�D�O��^���3֣Y�����z�����Ɯ�^�5/Z�kc��ܶ4�'Ve<��rC�iq_s�퍸5jE#����W H-�e�ܜswId�7��Y~P~�h�>�ߩ����c��e�eqs���&�J#�a���?�۫+<�w�0l���#
�(�wr��}x���*�;��g�﹪@P ��	o���\��m���/=��Kc��]���w`ߊ6���D�YҐ�`����qA�����m�vz�e`���`���A�ǫi�v���e8����d0�(M��N��+S��7�
SaPV*�ʐq�{�WnlSI�\��&ţ�I���X6;S�|��GͯF��6�|���[�S�����W�����`wi��9_ޙ�wo�CJ����0n��R��z�B#fĲӫ~W�'"�6��?D���8��ydȗ�&x1��d�bS�&���x��
|��� 	/�ؘ+����Z��GPT�{Q�>1p�����qf:�U�G�X�1^�E5C��z��s0v�(�Ԍ.h�Y�X*w-�od�/`���\�ث����R���~EGh�r�:�ˇ\��ݥ��,�?���^��楼�>ޱ��w���߁��J׊c������U�Ƣ��B�|jP�pؤ�Η��d��
.�U�R��,�8�4mv+t]������j��ڼd���-h������o��ĥ?���Ͽ���I���/։���'.��Q�z��2
2+L�CbН������2qF֨zՋ!�PՈ=��B�N�ӆ�J�B�Gd@l�27��;&> ��n�^":�!��wO_ބՋ�W�!��p�J�8�Ygr���)�ǿ!�z�O�+����6��d�t�J���{���c��)/���w�g�����
!�ȉKW~��w�<l�.�ux� K���bŘ<<"bRj��)�+��&��%��;�F��å ��0$��$���{͚G��|�g���+̈́����q8�����&��#�;F�����$��%E�/M�m��f�V��K'Q¶�M�o�Թ������j���{B����-@QRoxX/&t��䬵?�L���U�)L�!,�eE���������E=}((������!��7rFM��PN�f1�w��%�X�8CU��#�-z(��(-M?����V��/J�!.��F�g� �o?9��?����pf-ު݋^�� Z���Ś�W��x�M1�O{�ϟq�8�"�҃kb��k$4$�g��\����w%XF�옢w�||h�K���0�x�e"�� ʯ�n�H���8�ω�d��"Ǫ����Х����s��L?U	J �T-X����~ł�3��ֱ�t�?��e`|iO<P�8P��  �\�pEl=vΞf���P/�簴�=����-/<��n��=k��}���K��b8ٺL����=�U�I�b�AL��.���A�4wP`�ܾ��@��m���R~a�+��9�X��5��}�[�(f8��G��1�?DP�9r����C;iˠGr�u!���Ƞ���A�pH���{}�:\z�n��h�ل=0k��0;���c�H����8��S�o[��T ��!�N �B�"�2~��I�;׃L-:���3��М0h�S�������� ��W�H�$�?R�d�'�3B����V��k�    �d���@��N��W]N�*>�y��{�G�r#d�����F٩f�pȓ�	������G+����.uf�@�JT�)n΃rKK��+��Ieg�2��|�<��kqN���&�9�f���������'����5� 5�� �;��-�˔�j�#i�Θ�
�8�Q����61�2<(�</h߸
ު7�e2te����;�_G���I�pđ����!`�7�.����&�tpE0���yU\U�0:����K��Eoc,2̗���8�T��!����TV�K�oQaU��<(y�Լ{8t=?=j5�I]γYV�dW�_���s�l�W
n#y���s ���C�,� $���j��(�(�f~�����lgl�y/�Z�jG�V��)�G�q�iv1FXg�3�fjDnX��� �-�g�L�#R�Z�߾�l��Ţ��oLl�'R=~��m��M*�zJ�U������lۧN���zq{��ٚֈQ 1�&����z��2���;�L��U1{�T��z�ryk��35Fy��XC�\����������bĢ	ORl�g��=�g������`��\~��k�͞Ȓ��3��-K�����Y�l���r�%�s0�	�7+�:/w��om�n{�q+���0�옽*�w|���+ܦYH[c2V|�rt78�!J��K~�4t^��4���*�[�`�����-�󊔟isv%G�A�=2G�Ixv�/���8XɅ�7�C�\���Q~�]+�q��`<ަ�M�	���.�ŏ[�r�� ��M��4�='rg��_���j�t��[�&����,t� ?w��xo�:�1T�s테�z� �HG��K xx%��Q;�f�*�LVŹP�����w �Q�� �f���'Qw]euY�P� e|!C��]����0Bޏx�G��e�U� �Ym»���{��ߑP�C� KJ�<�>����Kw�B����pX��Y���(�7J�}Kr`CQ�����\7�GB9��q���P�\����w1%��SZC� |+"�MC���JoOI�f�+iE�/����6�-(��PX��#��A����Wn/�A�m�ڎ!��x��Y2��$[��МсgU�󧎗zr��3��8:{��L�"�^^aW�k�a��\7���}t���heŝ	{��C�D�X���.&,�=�t:`,�E��-h�-��<�c�u�m1;�g�b�����q%��pm�VT���V�%��v���8}T��T�U��~~2�d0 �p�&��~~2�|yWY���f8l�(FeVP.��<�9Nō%��¯�	���E�L.�IRY��c�*�<Ǘ�zV�y��x����π��ÞD�o�5�4�>��i]�a�̛9������gx�|`ڞ8}-i��w���>0�K}c���������'���t!��� -Q��Ɉ{'�,�_o2�ɰg�������d�h�>7����g5�f,j�:��o-:��^���{2��ɐ?8����瞆ֽ���Ɉ�èK���x�W1>vIv?���L�Gs�5���7c�� \s�{a��}�R@Ć��@�^ŷ��_Ǒ��%���Ĭh` 'O�g���у1ʫ��`�#����V���ԥ�wwg`ArhQ߽�����Rϛ��Y%+��|��:�?�����'����eX�a]��lyy�}�����)QeL�c�Z���J�|��ޕRO���2S�5@���@�+oo�	��y(�/�G��u�v
U�� �w��޹��,^��0��
łlО�Z��عl�t}挣
z|t��l�O�0���Q����?Tӫc�yI������G�ԅ��M2끷�T-n�ӟs����Ȣ��$�������#�Su���7����\Nު>�F[�*{����_똬x4q�}2Y��3ōA�%�EUą�|�tU,١3Ty�2��0�&��*8
^�x�]�����P���29����Z���J0�^i�����x�4'�<���iU�����j�a�'h��ߥ�3��w0.)�s�޽�m���AQ��_��7��e�,��Nث#,sL0?�E�IJ�8����3?����JV�2��R*tٹ.�9th��ul	��qr�T�{�c,{�D�Ȫ�
��N��x77:(��7���'���r ��]���=8�k h��8$�ӈ=dB�V��2���lt����&��Z,�/��t^.:7q�r��O��A�<u����NG���`kp�=�b6.��{�ٿ6;0����1��h�U��bp��JS���&>�`�6�>258������ds�мZ5��3���Ən �a����s��G��=.��6����_�]���ə��}��Dm�x�.���ڥ75_�~"�<Ef�b.�؎so��-c�a���aM\�ok���ɩ}�$^�>����$�
"��!��?|>6��H�����P[t��za%�RZ���	ߦ4o����TX���������[H:%�c6��ge �2|��`�װ2
O�d���2�+�����"Î^�`�������,efT���qk��F7��m�%6+�ݸ@��&���m\�Vet�e!������쭁��R1=p)QG�1���Zy�%���XZnGn�c�������H㎅�;�L 5�����&8��n��nK�ف��)�@��M	3p��Ym�x!γ!�:��)JM@�§�
���T�l��$Rq�v"��mCw�V@���m�Mx��ЗO�n�!5�b��R+T�G.<ȏ���$��@̫��&���$&��]��iN�?(��{�+�s��<�����Q~X	�~����.W��;&H��d���T�؍�����pjh��ݧ��t�����څ&�j��$�CF�O�������i:40�&{��-Y��T��0g��rR�,�Ot��vk��C��mC��G�Sej���Fg�Y���"O=�K͘? ��=�gp�`��1�ލ�,-�R]u�RLs��{� AB�ăj�Rm�R(CIH1�9uԳ*�?x�w���a�а7���1U�+�rt�u���ւ>��1D�K@&�g��]�p5gc��P�M���njo.�I�=�z8sC�Yᾞ��v���6<Q<^˧�w6h��
�;������a��1�9��,�G�?bP�0Bud��uǊ�0�eNi�Pi�@�G��;�8Ϙ�cQ��^X<��� �ڂV!#|e}�k��i}�XS�u�E�g��
�=sR�e�J�JI�d����Q��k%#3���[{����a���YiP�f1xJ���3zV��V�Y�2m�YI�Y	�樚q\�����R{��٧�$~b����A�K8���Q��5��6�(�IЈ�5j�#����If�#E�m�*;�#�lp���00jw�3��{��#���K��_�c���~"A�	���Z������@Z{�>��{���3�=�����Yy#y�:$q������B[y�[j�ytg�ߵ/��#//󥯘����gL�{^Xw+n�87��7��<B��AW	����.�f���/	���ȏ4��T}�����z�A�"��J�ɶ*;f�ԾZ��jK����lr
_$#hy��ٍAq:�d��_Fs�p��`pD���d�y�o�����@)J��W��yel��N�UO��.ndA:�C'c#��]4�}AM�2������2�d�yzO��P8�o��IA��,��>&me�a��\��`����~! �h���Y��e��ԜdN�1,���?��k��*�ׄ
6P#����W��r�wo���#d/�/���M��DKf��)�c�:�x�QqX`�	k�j`*�U|���n���%�����˨R��b�2��:3Y��i����ܢ�|Wէ�����;��d�Ћ�- ����\��/��.���X ���Ds7���h����;���od<�C*��~��� EI"�~X�m{6vQGAr�>V�¿<F6_�W�.�#l5�����U������1)Q�Ɇ`�֍�;0�jw�#��p���k    -�s
��H-�<�'����*m�+g��H�eS��Q7��~�����:�d�+#%
��Oڹ�Z��D��~�xJ�t3������WV\���xӅR�R���:`}�g�dg�=�X�����Ǿ<kZ\+lq1^��K��^Z���/R�|����[�ǠwB^�"g�mK���d�\�D'�X�/���^��T4��^
�.����;K�w�p4��q:�f��l����@s�(o�O4�~������`�{讎/0�z$<��`�!hP>���4⚔�E�)ߕn��fS{��s�	D�]�N�WW�hL��0�n^�-��K��|j��'������)�}���m�`R\g�k�s(���`%ɟ����j�p3���Ű��
��h���,n��G����pB���j�
y�l/�����\�T�s�Vb�D	g^�4Vb�y�Q�L'��f�pF��b��nN���q���`���O5t�bXA���4�d���f�36���[	%'�:���r��A�X&���������stN�J.���^c�8'���0�����{���4���C���r���<*,���:��PFB_���ފWŒ��QO>,��z��7�۪l,�'�i�rt��d��t�|��>����y�5�����<��k�>Ge��MҒ-UЃ��C�
��)^j�NPy�J�O�S/�r�\��=c}Y25Ԛ�/T �p$(��)�'$A�t�ƈ�K��F:#d���{,,	������Y\�����v�p���?M|,�0�=Mi}�bL���8Q�}��{��\�C<F�K��z��{���H��8	��yM��}��-_�!��������zA2C+��cVx�N�5r���G2l�F��{cc�H�j���zӚw�w��Z�A4d�dD��i��[5����dUڙ�5�菚��R\��ϝv*�o���� �aU`6d��U��^j³T�#�k�����2���E.�k�֐8�L����d�_��}���|���$�ݏ��ۨ�Jr@x���w�A��+;J����*��J��m����P�%��]�365̥=��6N4e襰�*)$�&;{��U'.�qeT�%�h��*���zq v����r��*���� �,gCY�����wk2�{MF`<U'#d�z?���Աػ5��j�]9z�t�����6� ��ʜ2u0�X�ǝ�D	���8�é`���\�oR.�'�t���ີauΚ�����<��}^ ��̓6ے���bGP���vf֙v�u-�N���'�������0�zT����~ c���b��X���<��O��H��Z���+��]?���7G@2��ʨ{[|1��^��U^�R3�I.���R�wp �c�_Z�BB��~O���H��B�E��M�o��C8��S�b�U���ӵPs��[k���/$��9����\� h��G�h�ڷv�8W6; �iɁ�&�zR�%ד,��[��<�����Qn9������ߌy���J�����.O��5�0�i�i3�,���`�s���z�?WI��{Tټ��#�4��*�Zھ%��O#R_�7�{Υ���[���d:[��k�2km5Z`�;���R_LW�"ޱ��m�o)ub�{��(�oI�c��Qah�����23�����L���n/�{����
s�$l1�}@��6���q�՘�ZI)��UҦ��8w7��!nQc|�v�yQ1Y�5>�����em�x�q���ԟr�����~aJeQ��%�lV�K�Ik�Ig6tg��&��#�&?��ր÷���xBoP���z�����u��6��^t����$�5i�b�I��G���� fU�����H����;Rz�b/cq3�}����a|��?��D����.
xQhc~,�b���a�)IC��oH�|]U��?��Zȳ��eT�Ci4a���0k��&�f�Q�"$.89��0��_��yYn�{�ɹ��dP��"��>���R'�����KDL�ŝ%������s�N��&��J����۲�����d�Es��"^���wɲ3?a݅�e��q.�!��9^S
��X���:�����c��e�T�,����j���P}q��Oc3Z9㗊�d4�K&8��ȯU��o���4��B7=V�E�ީ���+��y<	�v4PI+�i��6
B�Z�r���9L ���7YWAס��돊��baP9��2��υ8`\�`뾀R�|#�j���&b�w�c��q;�U�=-�g2�A͸OrØPE:��ƥ����C��ZԄ�"���>�u�w�`{XG�y��Ǽ�Ϗu�A~���f_�4�9F�!�E#��+�k����$���SN�T�GI�9�Y.>^�R�ovs��%1��b`�z=�s`ؽrt�QI::�K�\K���ʹ7X�|�)B,�3'�nf{O�K���W���ZWa�U�|<�G�X�a2���K=<_q��W���w������+-�Ą@�i��U�.��Riy�1ك��Mg��0����]H��i�'#v.k��T�U���}eN}A��2���՞�-�����6���mJ.-=��m��[�m���M�Y.	|8gu���P�F_����(�R��| <�%�<�U���LZ�[+G���7jp��W�����?,��c���0xM�H@�f�<��mq^l���K |�,Ѝ���۫7Qf��,����2�b?��
[�!0.~nr�fia@�l���b���z�4c&hL�)'b�<��{r�K[yy��|�q�aiaE��N$TK �^��յ����$lY�r0K�{����=��U~�O�N�o2If��o8�C+����b�TrJ1s7�1�/�|%��1�p��͑ކ��|��ݍ^Dx<r�ZE������W7�I?�	d�Ù)��sƠa���X��˙|���8s"���jD���D'E�Ꜿd���ڹ��# �)AX�~l��b����6���8w$:�p���":����;�EH�h䈅�DC�W�pM���@ias$�j,�����elNW顼`��u�= �*#˥�{�S������G�)����@>�Ϝ����)�){,�EtA�*-Pi�!X<���f���Zq$�i��CP���Dc���%"eJI\��+��+(re\�'a3C���'��kZ�������Hj&��L�2i�D�G|�ud�_��Tf���o�|�~�x��i����g�A�,|ν���Ce��,T �@������A�����B�Q��gώX�^�gi���;���W�H��l��Q4&�9h�[C��P�!�l��+A�>�vY.[,<��Z�;�rFL%�n�3>��)j�H�:;�b��drQմ&��%���ؚK��}�}�j���z�e%#�<Qg}�gϽb\�H?V�9��<�)+��҇������]�|�����֘����f��ʴ�[3�O5�YʤP���okRh@��8�'���d�*H� +!�g�0����6���*n2K.���=��Ӌ��0X7��ޡ��pX_lV&v����D�������g���yOEJ�{�S�3|N�A{�׷%��Ab��
������(��ū�����ݝ��d溼�*j7&r���SX+�cN�\��τR���t𡉣_�S��uv���-a�ի�˯ÒV�S���k��L �ʹv����S����� ��s��[���9� `���4I�xS�1x�:R���>DCG
~G���� �It�_1�A�h<�ay���/�9�-�����7��^8����
k��5hcg5��F��OTc<�)8�F^�đ���L�I`�J�;�Դ)ŤI��֜���< /��l��4��[B�Tĥo�Qyv�Ȳ"�kw�I�>w�!da�a�gd�"V!���ˏœ�f�g����)��j-y��UU���0nqCB&�Ĳ3�-�����b"B�
��ODb���n�ʏ�;2�Vq��v�ޣ,`��M/�������6ڥ� �  ���jh[��C=����{����� >��Owu��$v���1�j���eE1�9���]�:�{"���9���y��G���k:߼'�X�J�X�p��9U{�9��c>8�c3��,s����@�:�\0�H4Y�@*?��$��\6Ɲ�:׃6�eM��O�А����c�Q��ĸ��<Đ��yF�$/�p1w�.�F��Wb�xDB���zv0�g@S���%���D�+ߐ��<�JDt'����lWV�3��I+!���J�T���"�I����%C�1�`<ҝ���X*��k�U*�R�����:���ܶ��w,����� )d�V�3A'iHw~W�W�%�ȳA�a��^x��Vi)|,*�<� j��E&���%?�,?|��f�\�s�2ss�z��#��tCrK���������	���fgĚ��gF�4����E��.v��sS��хڗ�.��1t��W��ّiwdi�;��n����o�W]x�'�x���ӹ:-�#�(P("��?D�VP��snD�ԁf!��Ɨm1E����8"&V����"��6HL���q_�1_^��S!0S`�_?SE䅳��J�0��^29��ʝG����49�x|�@r4�O���v��c����� �?jȌ�*�H�pA'�X(ؽ����4�6p�nm�CO񡨭i�����������:_k�Z��^��N�桎�n2�����X��{�A��܏�q��H�۲���i x��12��u^$�ԓmX����;�����@���T�����,���#|�i:oO��SY�a[C`�;x[�	@ `� �ٺ�v�h����1�O��Z
&��O���MNrs��`�\��\h�^,�<䟠oqg����g��=V��<^bͤ�"��o&1�!N�\y��y8�3ĉ��g���t���4}�Ч��1	}�V���W5m�Ц�hO�=~P8S��5d�tS��u�����f5�,g�O����]��H�W~����?���U����v4���L�����8M`�Џ���>�
6UW����˚��R~NgU��l�!^�,L��7|���~,�^������R��+W�B�*L/#\�x���>C���5u�3��~D|��Y�f�f��d�m!�����\C��g��|�CJ��H�	m`��W{��ͻ��A�~i��=+g.�A,%Y%��U��l���}G��_zz��ϔ�:�{����/����ŵX	/�����K�:i� �IRr� )SRO� �&�$fY���J&��dJ��T�v��|�7�C詖��˳���K��~��X4iB�b]|���)�^L#'�&�!?�z���&zϫ����5��(�u�/1?��C����d#�7@�Ly{�p��m6�1ehL(�O��soƾ1��n�p݀t\���3Ω�����@��I��Ǩ��D��Ix��?����� ��'�0P�JO����xO��"X�2T���~�70������&��C�W�yc`9A��v���~dc�(���˂�y����K��	����PAsO`�<G���q�%6���z1P�R�S��iQ����`��t�
;5Н<��;���mz��@e2JTƈJ����`��5&�U��m�<0Ⱥp,��mL3���!eru?!q1aoݐ�}\2�.n����(��b9]���&֓�=)=�*���.*W|x�g]R����(eŒ�E��\�v�����F���tZy�x�M�a�C+���s|G���O7{1�����a��F��)����"͚9�B���R]F��J��߿��nz����[�r�E��I=����)sw�� �XÃ����� ��YIЬ���
��{g]ͼ!�N ��
?�Δ�$fD�jg����f�dP�����>д�4�$,]k��P�c\��D�O9���?,yD(�dg ��qgC��Iz��椊�J��{�,�|e|�}�!?��W_�R�L�#��/��=SL�I�h2J�Q�&�ղO�扔��44��p��~����2БZ
C��M�d� {st~V�87��&v؞�.l��P��w�>����ʬ3���O�n���5#�Z� k�f#��N� ��������B�;1��k���gDV�u�j��'�n�w�
Kōp<7C�Th�ħT�3͞	�v��@X<�L9N
`��s�~w�ꁨ��h��r���c`��.�U��7��/�0Y����[�2U�ǀҝ��7�a:>Ŀ)=�c���4�=�����4��w�J3	[rb�w �㰥�F~X���m���~����@�?��� ��ki���l�x����q&��Og��"zp�v�x�ŭ<�/n����Hb4��Z����C��e
Q�/n��\47Vo���΍��7'�:-���a��2:������ؖzW��"4k�qEl��лCD�����Yy�жv��O���D����nĄ��T�p����M�8��5�8{8G�) 0E�B	��H��{o��!Q0p�f�s	� ��V�,|�Iu�U]�0�VDk� Vn���D��}�2Ä�w�Y�m�024�L�0tQ�}���E�<��LN7��4s��ziįgreJ���	��3D-W��<A	���in���������ِxjhH&�����������zc����i�s�us�}���A�Ѓ�C��$����'������B�d�9��qjLήbNQ����v��M�v���D�� 8�uz��Q'�}�KC�h�4��[v�K��wn�_��P���b>����w�>�S@rʊ�9Ǉ
{+���Eŝɉ�T�ZԞ�\���8{CB�J���5�{������:!�Q��u�I~�ϥ���V�%��7�b"^/<0�sZ��V�ús���b�V&�~�6{;�f��C��{��2��u)�3?��2�rcg��V���VȤ��=`��K,	>8���?i���V2`8c3�|�m��cT��?AI3��1"2ADƈH�{?O��P7&B=D�"��3ٮz�"y��~���L"څ�+�|a��/9�@�'���K��5{k�Jj�HM���8�=�Dz<F�Q�i�dq�H~L1`oWķ�&��w�s�1j:�_�z�[�k����4�4�$Yk$���ۍD^�8ȑ��HPV��)��b�����9��ޡ 8��1���� �z��"6�"-.}y�嫿|y��+-���?��ҵ�g�_����-���a��oI���H$���~��z�0��8�P��=�@�]v�8��fk��z%�/
g��s�A�V�5ǑbR��U���W�����?X�'�9�x�<;ow�J��N��-p�d��`^��x=�:0�x��M�����"�RO�@ K#��h�r�rN�,�IU�&�<��6�3�X�=���!�WRpk�/�w�{��R�߇@�������f�s9O�P�k���e�*;${u�P���t�����%	R      y   �   x��Qɍ1{KU��	t�*"�
6�c���j��g<�E������A~ݨ6Ҧ� `�g���X�?r��"�"'%o)̽sii��������^s�Κ�4��[Sz��87�f%b֨����i�0�GBngB���0`�8A��Fx�9`ވC!,jɱ��^
X��>���p���^���R)�I��RД�g�o��5#l��w�uO#aL3�.����5�󎈿|I}�      o   J   x�3�420��5��5�T00�#���)\��.jh�����˔h�fD�4&Z�!D��P��M%P�� �2F��� ��.]      }      x������ � �      p   :  x���A��0D�p�^����=˿�9����B�fQE0~3WȜ��6Y�6�m�D?��P��Jf�Z��ɸ�iM@�G�`aOBegC�����]�q��A��.8I��RF���O�Q�BZ��+����.OG���.�H�U
j,��KU��;ݩBbGr����h�`rn��&H%�ɱ ���%��q�h�'E8��RHpx�sG�_v;��Ȓ�oo?�RO�2Rc���Z�WTٸ.����"����e���OøE�3�����{1���O��Y��(#�:��K5��r�;�l��{���JSȭ      q   |   x�u���0�`i��:\���#��4��@�.$���e�����4�F
w�6���=!���UX���&t�4{np.ٻ�n��sz4/i�B:¬��6lAfSX�/��bW�t}��3�8m      r   |   x�u���0�`i��:\���#��4��@�.$���e�����4�F
w�6���=!���UX���&t�4{np.ٻ�n��sz4/i�B:¬��6lAfSX�/��bW�t}��3�8m      s   |   x�u���0�`i��:\���#��4��@�.$���e�����4�F
w�6���=!���UX���&t�4{np.ٻ�n��sz4/i�B:¬��6lAfSX�/��bW�t}��3�8m      t   |   x�u���0�`i��:\���#��4��@�.$���e�����4�F
w�6���=!���UX���&t�4{np.ٻ�n��sz4/i�B:¬��6lAfSX�/��bW�t}��3�8m      u   |   x�u���0�`i��:\���#��4��@�.$���e�����4�F
w�6���=!���UX���&t�4{np.ٻ�n��sz4/i�B:¬��6lAfSX�/��bW�t}��3�8m      v   ;   x�3�442�3 BCNN.NCK#=C3��X�I�,b�$b
1��e�fn� ��      w   =   x�%���0�0L���d��?G�T:H`�"JLc�a�!]Y��S�ҷ�x�C����#      x     x�u�;w�0��9|
V�M"Q�QE�`�r��%!^/D�~�^���g����# �j���8��>`5̸K9 "�>�\m�S�q���{���EGA�͊eXWV�n�|�־��MN��X(�g��{�ؕ!ۛtW�X*<���*���0���6V��lJ���?Ζ�@��_N̩�q���:��0�p���\~��4�O�F+x�
9�	��F˥���ۊ&$����,WvC������Vt��s�I6J��y2ʪ�O�/�؍*�"��xV��"�����e}&�b�      �   c   x�{�8���-Og�xڻ�醶�^���d���SV<]���Ľ��5��9����-�z����4���262��&p�$f��l�NC��ad����� 1 2}     