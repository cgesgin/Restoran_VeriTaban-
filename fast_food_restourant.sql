PGDMP         )    
            x            fast_food_restourant    13.0    13.0 �    }           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ~           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25267    fast_food_restourant    DATABASE     q   CREATE DATABASE fast_food_restourant WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
 $   DROP DATABASE fast_food_restourant;
                postgres    false            �            1259    25268    adres    TABLE       CREATE TABLE public.adres (
    adres_id integer NOT NULL,
    il character varying(20) NOT NULL,
    "ilçe" character varying(20) NOT NULL,
    mahalle character varying(20) NOT NULL,
    sokak character varying(20) NOT NULL,
    bina_no integer NOT NULL
);
    DROP TABLE public.adres;
       public         heap    postgres    false            �            1259    25271    adres_adres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adres_adres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.adres_adres_id_seq;
       public          postgres    false    200            �           0    0    adres_adres_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.adres_adres_id_seq OWNED BY public.adres.adres_id;
          public          postgres    false    201            �            1259    25273    fatura    TABLE     �   CREATE TABLE public.fatura (
    fatura_id integer NOT NULL,
    islem_tarihi date NOT NULL,
    odenecek_tutar real NOT NULL,
    "ödeme_türü" character varying(40) NOT NULL,
    personel_id integer,
    musteri_id integer
);
    DROP TABLE public.fatura;
       public         heap    postgres    false            �            1259    25276    fatura_fatura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fatura_fatura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.fatura_fatura_id_seq;
       public          postgres    false    202            �           0    0    fatura_fatura_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.fatura_fatura_id_seq OWNED BY public.fatura.fatura_id;
          public          postgres    false    203            �            1259    25278    kategori    TABLE     s   CREATE TABLE public.kategori (
    kategori_id integer NOT NULL,
    kategori_ad character varying(40) NOT NULL
);
    DROP TABLE public.kategori;
       public         heap    postgres    false            �            1259    25281    kategori_kategori_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategori_kategori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.kategori_kategori_id_seq;
       public          postgres    false    204            �           0    0    kategori_kategori_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.kategori_kategori_id_seq OWNED BY public.kategori.kategori_id;
          public          postgres    false    205            �            1259    25283    menü    TABLE     �   CREATE TABLE public."menü" (
    "menü_id" integer NOT NULL,
    "menü_ad" character varying(40) NOT NULL,
    kalori real NOT NULL,
    fiyat real NOT NULL
);
    DROP TABLE public."menü";
       public         heap    postgres    false            �            1259    25286    menü_kategori    TABLE     s   CREATE TABLE public."menü_kategori" (
    id integer NOT NULL,
    "menü_id" integer,
    kategori_id integer
);
 $   DROP TABLE public."menü_kategori";
       public         heap    postgres    false            �            1259    25289    menü_katagori_id_seq    SEQUENCE     �   CREATE SEQUENCE public."menü_katagori_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."menü_katagori_id_seq";
       public          postgres    false    207            �           0    0    menü_katagori_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."menü_katagori_id_seq" OWNED BY public."menü_kategori".id;
          public          postgres    false    208            �            1259    25291    menü_menü_id_seq    SEQUENCE     �   CREATE SEQUENCE public."menü_menü_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."menü_menü_id_seq";
       public          postgres    false    206            �           0    0    menü_menü_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."menü_menü_id_seq" OWNED BY public."menü"."menü_id";
          public          postgres    false    209            �            1259    25293    menü_ürün    TABLE     q   CREATE TABLE public."menü_ürün" (
    id integer NOT NULL,
    "menü_id" integer,
    "ürün_id" integer
);
 "   DROP TABLE public."menü_ürün";
       public         heap    postgres    false            �            1259    25296    menü_ürün_id_seq    SEQUENCE     �   CREATE SEQUENCE public."menü_ürün_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."menü_ürün_id_seq";
       public          postgres    false    210            �           0    0    menü_ürün_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."menü_ürün_id_seq" OWNED BY public."menü_ürün".id;
          public          postgres    false    211            �            1259    25298    musteri    TABLE     �   CREATE TABLE public.musteri (
    musteri_id integer NOT NULL,
    ad character varying(20) NOT NULL,
    soyad character varying(20) NOT NULL,
    telefon integer NOT NULL,
    e_mail character varying(40),
    adres_id integer
);
    DROP TABLE public.musteri;
       public         heap    postgres    false            �            1259    25301    musteri_musteri_id_seq    SEQUENCE     �   CREATE SEQUENCE public.musteri_musteri_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.musteri_musteri_id_seq;
       public          postgres    false    212            �           0    0    musteri_musteri_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.musteri_musteri_id_seq OWNED BY public.musteri.musteri_id;
          public          postgres    false    213            �            1259    25303    personel    TABLE     [  CREATE TABLE public.personel (
    personel_id integer NOT NULL,
    ad character varying(20) NOT NULL,
    soyad character varying(20) NOT NULL,
    tc_no integer NOT NULL,
    telefon integer NOT NULL,
    e_mail character varying(40),
    maas real,
    ise_giris_tarihi date,
    unvan_id integer,
    adres_id integer,
    sube_id integer
);
    DROP TABLE public.personel;
       public         heap    postgres    false            �            1259    25306    personel_personel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personel_personel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.personel_personel_id_seq;
       public          postgres    false    214            �           0    0    personel_personel_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.personel_personel_id_seq OWNED BY public.personel.personel_id;
          public          postgres    false    215            �            1259    25308    siparis    TABLE     -  CREATE TABLE public.siparis (
    siparis_id integer NOT NULL,
    "menü_ad" character varying(40) NOT NULL,
    "siparis_türü" character varying(40) NOT NULL,
    siparis_tarihi date NOT NULL,
    fatura_id integer,
    musteri_id integer,
    siparis_durum_id integer,
    personel_id integer
);
    DROP TABLE public.siparis;
       public         heap    postgres    false            �            1259    25311    siparis_menu    TABLE     n   CREATE TABLE public.siparis_menu (
    id integer NOT NULL,
    "menü_id" integer,
    siparis_id integer
);
     DROP TABLE public.siparis_menu;
       public         heap    postgres    false            �            1259    25314    siparis_menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.siparis_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.siparis_menu_id_seq;
       public          postgres    false    217            �           0    0    siparis_menu_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.siparis_menu_id_seq OWNED BY public.siparis_menu.id;
          public          postgres    false    218            �            1259    25316    siparis_siparis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.siparis_siparis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.siparis_siparis_id_seq;
       public          postgres    false    216            �           0    0    siparis_siparis_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.siparis_siparis_id_seq OWNED BY public.siparis.siparis_id;
          public          postgres    false    219            �            1259    25318    siparis_sube    TABLE     k   CREATE TABLE public.siparis_sube (
    id integer NOT NULL,
    siparis_id integer,
    sube_id integer
);
     DROP TABLE public.siparis_sube;
       public         heap    postgres    false            �            1259    25321    siparis_sube_id_seq    SEQUENCE     �   CREATE SEQUENCE public.siparis_sube_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.siparis_sube_id_seq;
       public          postgres    false    220            �           0    0    siparis_sube_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.siparis_sube_id_seq OWNED BY public.siparis_sube.id;
          public          postgres    false    221            �            1259    25323    siparisdurum    TABLE     m   CREATE TABLE public.siparisdurum (
    siparis_durum_id integer NOT NULL,
    durum character varying(40)
);
     DROP TABLE public.siparisdurum;
       public         heap    postgres    false            �            1259    25326 !   siparisdurum_siparis_durum_id_seq    SEQUENCE     �   CREATE SEQUENCE public.siparisdurum_siparis_durum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.siparisdurum_siparis_durum_id_seq;
       public          postgres    false    222            �           0    0 !   siparisdurum_siparis_durum_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.siparisdurum_siparis_durum_id_seq OWNED BY public.siparisdurum.siparis_durum_id;
          public          postgres    false    223            �            1259    25328    sube    TABLE     s   CREATE TABLE public.sube (
    sube_id integer NOT NULL,
    sube_ad character varying(40),
    telefon integer
);
    DROP TABLE public.sube;
       public         heap    postgres    false            �            1259    25331 
   sube_menü    TABLE     k   CREATE TABLE public."sube_menü" (
    id integer NOT NULL,
    "menü_id" integer,
    sube_id integer
);
     DROP TABLE public."sube_menü";
       public         heap    postgres    false            �            1259    25334    sube_menü_id_seq    SEQUENCE     �   CREATE SEQUENCE public."sube_menü_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."sube_menü_id_seq";
       public          postgres    false    225            �           0    0    sube_menü_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."sube_menü_id_seq" OWNED BY public."sube_menü".id;
          public          postgres    false    226            �            1259    25336    sube_sube_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sube_sube_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.sube_sube_id_seq;
       public          postgres    false    224            �           0    0    sube_sube_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.sube_sube_id_seq OWNED BY public.sube.sube_id;
          public          postgres    false    227            �            1259    25343    unvan    TABLE     g   CREATE TABLE public.unvan (
    unvan_id integer NOT NULL,
    unvan character varying(20) NOT NULL
);
    DROP TABLE public.unvan;
       public         heap    postgres    false            �            1259    25346    unvan_unvan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.unvan_unvan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.unvan_unvan_id_seq;
       public          postgres    false    228            �           0    0    unvan_unvan_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.unvan_unvan_id_seq OWNED BY public.unvan.unvan_id;
          public          postgres    false    229            �            1259    25348    ürün    TABLE     �   CREATE TABLE public."ürün" (
    "ürün_id" integer NOT NULL,
    "ürün_ad" character varying(40) NOT NULL,
    kalori real NOT NULL
);
    DROP TABLE public."ürün";
       public         heap    postgres    false            �            1259    25351    ürün_kategori    TABLE     u   CREATE TABLE public."ürün_kategori" (
    id integer NOT NULL,
    "ürün_id" integer,
    kategori_id integer
);
 %   DROP TABLE public."ürün_kategori";
       public         heap    postgres    false            �            1259    25354    ürün_katagori_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ürün_katagori_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."ürün_katagori_id_seq";
       public          postgres    false    231            �           0    0    ürün_katagori_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."ürün_katagori_id_seq" OWNED BY public."ürün_kategori".id;
          public          postgres    false    232            �            1259    25356    ürün_ürün_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ürün_ürün_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."ürün_ürün_id_seq";
       public          postgres    false    230            �           0    0    ürün_ürün_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."ürün_ürün_id_seq" OWNED BY public."ürün"."ürün_id";
          public          postgres    false    233            �           2604    25358    adres adres_id    DEFAULT     p   ALTER TABLE ONLY public.adres ALTER COLUMN adres_id SET DEFAULT nextval('public.adres_adres_id_seq'::regclass);
 =   ALTER TABLE public.adres ALTER COLUMN adres_id DROP DEFAULT;
       public          postgres    false    201    200            �           2604    25359    fatura fatura_id    DEFAULT     t   ALTER TABLE ONLY public.fatura ALTER COLUMN fatura_id SET DEFAULT nextval('public.fatura_fatura_id_seq'::regclass);
 ?   ALTER TABLE public.fatura ALTER COLUMN fatura_id DROP DEFAULT;
       public          postgres    false    203    202            �           2604    25360    kategori kategori_id    DEFAULT     |   ALTER TABLE ONLY public.kategori ALTER COLUMN kategori_id SET DEFAULT nextval('public.kategori_kategori_id_seq'::regclass);
 C   ALTER TABLE public.kategori ALTER COLUMN kategori_id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    25361    menü menü_id    DEFAULT     v   ALTER TABLE ONLY public."menü" ALTER COLUMN "menü_id" SET DEFAULT nextval('public."menü_menü_id_seq"'::regclass);
 A   ALTER TABLE public."menü" ALTER COLUMN "menü_id" DROP DEFAULT;
       public          postgres    false    209    206            �           2604    25362    menü_kategori id    DEFAULT     z   ALTER TABLE ONLY public."menü_kategori" ALTER COLUMN id SET DEFAULT nextval('public."menü_katagori_id_seq"'::regclass);
 B   ALTER TABLE public."menü_kategori" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            �           2604    25363    menü_ürün id    DEFAULT     v   ALTER TABLE ONLY public."menü_ürün" ALTER COLUMN id SET DEFAULT nextval('public."menü_ürün_id_seq"'::regclass);
 @   ALTER TABLE public."menü_ürün" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    25364    musteri musteri_id    DEFAULT     x   ALTER TABLE ONLY public.musteri ALTER COLUMN musteri_id SET DEFAULT nextval('public.musteri_musteri_id_seq'::regclass);
 A   ALTER TABLE public.musteri ALTER COLUMN musteri_id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    25365    personel personel_id    DEFAULT     |   ALTER TABLE ONLY public.personel ALTER COLUMN personel_id SET DEFAULT nextval('public.personel_personel_id_seq'::regclass);
 C   ALTER TABLE public.personel ALTER COLUMN personel_id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    25366    siparis siparis_id    DEFAULT     x   ALTER TABLE ONLY public.siparis ALTER COLUMN siparis_id SET DEFAULT nextval('public.siparis_siparis_id_seq'::regclass);
 A   ALTER TABLE public.siparis ALTER COLUMN siparis_id DROP DEFAULT;
       public          postgres    false    219    216            �           2604    25367    siparis_menu id    DEFAULT     r   ALTER TABLE ONLY public.siparis_menu ALTER COLUMN id SET DEFAULT nextval('public.siparis_menu_id_seq'::regclass);
 >   ALTER TABLE public.siparis_menu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    25368    siparis_sube id    DEFAULT     r   ALTER TABLE ONLY public.siparis_sube ALTER COLUMN id SET DEFAULT nextval('public.siparis_sube_id_seq'::regclass);
 >   ALTER TABLE public.siparis_sube ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    25369    siparisdurum siparis_durum_id    DEFAULT     �   ALTER TABLE ONLY public.siparisdurum ALTER COLUMN siparis_durum_id SET DEFAULT nextval('public.siparisdurum_siparis_durum_id_seq'::regclass);
 L   ALTER TABLE public.siparisdurum ALTER COLUMN siparis_durum_id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    25370    sube sube_id    DEFAULT     l   ALTER TABLE ONLY public.sube ALTER COLUMN sube_id SET DEFAULT nextval('public.sube_sube_id_seq'::regclass);
 ;   ALTER TABLE public.sube ALTER COLUMN sube_id DROP DEFAULT;
       public          postgres    false    227    224            �           2604    25371    sube_menü id    DEFAULT     r   ALTER TABLE ONLY public."sube_menü" ALTER COLUMN id SET DEFAULT nextval('public."sube_menü_id_seq"'::regclass);
 >   ALTER TABLE public."sube_menü" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    25373    unvan unvan_id    DEFAULT     p   ALTER TABLE ONLY public.unvan ALTER COLUMN unvan_id SET DEFAULT nextval('public.unvan_unvan_id_seq'::regclass);
 =   ALTER TABLE public.unvan ALTER COLUMN unvan_id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    25374    ürün ürün_id    DEFAULT     z   ALTER TABLE ONLY public."ürün" ALTER COLUMN "ürün_id" SET DEFAULT nextval('public."ürün_ürün_id_seq"'::regclass);
 C   ALTER TABLE public."ürün" ALTER COLUMN "ürün_id" DROP DEFAULT;
       public          postgres    false    233    230            �           2604    25375    ürün_kategori id    DEFAULT     |   ALTER TABLE ONLY public."ürün_kategori" ALTER COLUMN id SET DEFAULT nextval('public."ürün_katagori_id_seq"'::regclass);
 C   ALTER TABLE public."ürün_kategori" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            Y          0    25268    adres 
   TABLE DATA           O   COPY public.adres (adres_id, il, "ilçe", mahalle, sokak, bina_no) FROM stdin;
    public          postgres    false    200   J�       [          0    25273    fatura 
   TABLE DATA           s   COPY public.fatura (fatura_id, islem_tarihi, odenecek_tutar, "ödeme_türü", personel_id, musteri_id) FROM stdin;
    public          postgres    false    202   �       ]          0    25278    kategori 
   TABLE DATA           <   COPY public.kategori (kategori_id, kategori_ad) FROM stdin;
    public          postgres    false    204   W�       _          0    25283    menü 
   TABLE DATA           H   COPY public."menü" ("menü_id", "menü_ad", kalori, fiyat) FROM stdin;
    public          postgres    false    206   ��       `          0    25286    menü_kategori 
   TABLE DATA           G   COPY public."menü_kategori" (id, "menü_id", kategori_id) FROM stdin;
    public          postgres    false    207   J�       c          0    25293    menü_ürün 
   TABLE DATA           E   COPY public."menü_ürün" (id, "menü_id", "ürün_id") FROM stdin;
    public          postgres    false    210   �       e          0    25298    musteri 
   TABLE DATA           S   COPY public.musteri (musteri_id, ad, soyad, telefon, e_mail, adres_id) FROM stdin;
    public          postgres    false    212   ��       g          0    25303    personel 
   TABLE DATA           �   COPY public.personel (personel_id, ad, soyad, tc_no, telefon, e_mail, maas, ise_giris_tarihi, unvan_id, adres_id, sube_id) FROM stdin;
    public          postgres    false    214   (�       i          0    25308    siparis 
   TABLE DATA           �   COPY public.siparis (siparis_id, "menü_ad", "siparis_türü", siparis_tarihi, fatura_id, musteri_id, siparis_durum_id, personel_id) FROM stdin;
    public          postgres    false    216   ��       j          0    25311    siparis_menu 
   TABLE DATA           B   COPY public.siparis_menu (id, "menü_id", siparis_id) FROM stdin;
    public          postgres    false    217   �       m          0    25318    siparis_sube 
   TABLE DATA           ?   COPY public.siparis_sube (id, siparis_id, sube_id) FROM stdin;
    public          postgres    false    220   1�       o          0    25323    siparisdurum 
   TABLE DATA           ?   COPY public.siparisdurum (siparis_durum_id, durum) FROM stdin;
    public          postgres    false    222   N�       q          0    25328    sube 
   TABLE DATA           9   COPY public.sube (sube_id, sube_ad, telefon) FROM stdin;
    public          postgres    false    224   ��       r          0    25331 
   sube_menü 
   TABLE DATA           ?   COPY public."sube_menü" (id, "menü_id", sube_id) FROM stdin;
    public          postgres    false    225   ̷       u          0    25343    unvan 
   TABLE DATA           0   COPY public.unvan (unvan_id, unvan) FROM stdin;
    public          postgres    false    228   �       w          0    25348    ürün 
   TABLE DATA           D   COPY public."ürün" ("ürün_id", "ürün_ad", kalori) FROM stdin;
    public          postgres    false    230   %�       x          0    25351    ürün_kategori 
   TABLE DATA           I   COPY public."ürün_kategori" (id, "ürün_id", kategori_id) FROM stdin;
    public          postgres    false    231   c�       �           0    0    adres_adres_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.adres_adres_id_seq', 12, true);
          public          postgres    false    201            �           0    0    fatura_fatura_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fatura_fatura_id_seq', 9, true);
          public          postgres    false    203            �           0    0    kategori_kategori_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.kategori_kategori_id_seq', 5, true);
          public          postgres    false    205            �           0    0    menü_katagori_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."menü_katagori_id_seq"', 5, true);
          public          postgres    false    208            �           0    0    menü_menü_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."menü_menü_id_seq"', 10, true);
          public          postgres    false    209            �           0    0    menü_ürün_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."menü_ürün_id_seq"', 4, true);
          public          postgres    false    211            �           0    0    musteri_musteri_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.musteri_musteri_id_seq', 11, true);
          public          postgres    false    213            �           0    0    personel_personel_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.personel_personel_id_seq', 10, true);
          public          postgres    false    215            �           0    0    siparis_menu_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.siparis_menu_id_seq', 5, true);
          public          postgres    false    218            �           0    0    siparis_siparis_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.siparis_siparis_id_seq', 8, true);
          public          postgres    false    219            �           0    0    siparis_sube_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.siparis_sube_id_seq', 1, false);
          public          postgres    false    221            �           0    0 !   siparisdurum_siparis_durum_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.siparisdurum_siparis_durum_id_seq', 6, true);
          public          postgres    false    223            �           0    0    sube_menü_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."sube_menü_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    sube_sube_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sube_sube_id_seq', 3, true);
          public          postgres    false    227            �           0    0    unvan_unvan_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.unvan_unvan_id_seq', 3, true);
          public          postgres    false    229            �           0    0    ürün_katagori_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."ürün_katagori_id_seq"', 5, true);
          public          postgres    false    232            �           0    0    ürün_ürün_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ürün_ürün_id_seq"', 3, true);
          public          postgres    false    233            �           2606    25377    adres adres_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.adres
    ADD CONSTRAINT adres_pkey PRIMARY KEY (adres_id);
 :   ALTER TABLE ONLY public.adres DROP CONSTRAINT adres_pkey;
       public            postgres    false    200            �           2606    25379    fatura fatura_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.fatura
    ADD CONSTRAINT fatura_pkey PRIMARY KEY (fatura_id);
 <   ALTER TABLE ONLY public.fatura DROP CONSTRAINT fatura_pkey;
       public            postgres    false    202            �           2606    25381    kategori kategori_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (kategori_id);
 @   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_pkey;
       public            postgres    false    204            �           2606    25383 "   menü_kategori menü_katagori_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."menü_kategori"
    ADD CONSTRAINT "menü_katagori_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."menü_kategori" DROP CONSTRAINT "menü_katagori_pkey";
       public            postgres    false    207            �           2606    25385    menü menü_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."menü"
    ADD CONSTRAINT "menü_pkey" PRIMARY KEY ("menü_id");
 >   ALTER TABLE ONLY public."menü" DROP CONSTRAINT "menü_pkey";
       public            postgres    false    206            �           2606    25387    menü_ürün menü_ürün_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."menü_ürün"
    ADD CONSTRAINT "menü_ürün_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."menü_ürün" DROP CONSTRAINT "menü_ürün_pkey";
       public            postgres    false    210            �           2606    25389    musteri musteri_e_mail_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_e_mail_key UNIQUE (e_mail);
 D   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_e_mail_key;
       public            postgres    false    212            �           2606    25391    musteri musteri_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_pkey PRIMARY KEY (musteri_id);
 >   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_pkey;
       public            postgres    false    212            �           2606    25393    musteri musteri_telefon_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_telefon_key UNIQUE (telefon);
 E   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_telefon_key;
       public            postgres    false    212            �           2606    25395    personel personel_e_mail_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_e_mail_key UNIQUE (e_mail);
 F   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_e_mail_key;
       public            postgres    false    214            �           2606    25397    personel personel_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_pkey PRIMARY KEY (personel_id);
 @   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_pkey;
       public            postgres    false    214            �           2606    25399    personel personel_tc_no_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_tc_no_key UNIQUE (tc_no);
 E   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_tc_no_key;
       public            postgres    false    214            �           2606    25401    personel personel_telefon_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_telefon_key UNIQUE (telefon);
 G   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_telefon_key;
       public            postgres    false    214            �           2606    25403    siparis_menu siparis_menu_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.siparis_menu
    ADD CONSTRAINT siparis_menu_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.siparis_menu DROP CONSTRAINT siparis_menu_pkey;
       public            postgres    false    217            �           2606    25405    siparis siparis_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_pkey PRIMARY KEY (siparis_id);
 >   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_pkey;
       public            postgres    false    216            �           2606    25407    siparis_sube siparis_sube_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.siparis_sube
    ADD CONSTRAINT siparis_sube_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.siparis_sube DROP CONSTRAINT siparis_sube_pkey;
       public            postgres    false    220            �           2606    25409    siparisdurum siparisdurum_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.siparisdurum
    ADD CONSTRAINT siparisdurum_pkey PRIMARY KEY (siparis_durum_id);
 H   ALTER TABLE ONLY public.siparisdurum DROP CONSTRAINT siparisdurum_pkey;
       public            postgres    false    222            �           2606    25411    sube_menü sube_menü_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."sube_menü"
    ADD CONSTRAINT "sube_menü_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."sube_menü" DROP CONSTRAINT "sube_menü_pkey";
       public            postgres    false    225            �           2606    25413    sube sube_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sube
    ADD CONSTRAINT sube_pkey PRIMARY KEY (sube_id);
 8   ALTER TABLE ONLY public.sube DROP CONSTRAINT sube_pkey;
       public            postgres    false    224            �           2606    25415    sube sube_telefon_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.sube
    ADD CONSTRAINT sube_telefon_key UNIQUE (telefon);
 ?   ALTER TABLE ONLY public.sube DROP CONSTRAINT sube_telefon_key;
       public            postgres    false    224            �           2606    25419    unvan unvan_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.unvan
    ADD CONSTRAINT unvan_pkey PRIMARY KEY (unvan_id);
 :   ALTER TABLE ONLY public.unvan DROP CONSTRAINT unvan_pkey;
       public            postgres    false    228            �           2606    25421 $   ürün_kategori ürün_katagori_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."ürün_kategori"
    ADD CONSTRAINT "ürün_katagori_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."ürün_kategori" DROP CONSTRAINT "ürün_katagori_pkey";
       public            postgres    false    231            �           2606    25423    ürün ürün_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."ürün"
    ADD CONSTRAINT "ürün_pkey" PRIMARY KEY ("ürün_id");
 @   ALTER TABLE ONLY public."ürün" DROP CONSTRAINT "ürün_pkey";
       public            postgres    false    230            �           2606    25424    fatura fatura_musteri_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fatura
    ADD CONSTRAINT fatura_musteri_id_fkey FOREIGN KEY (musteri_id) REFERENCES public.musteri(musteri_id);
 G   ALTER TABLE ONLY public.fatura DROP CONSTRAINT fatura_musteri_id_fkey;
       public          postgres    false    202    2978    212            �           2606    25429    fatura fatura_personel_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fatura
    ADD CONSTRAINT fatura_personel_id_fkey FOREIGN KEY (personel_id) REFERENCES public.personel(personel_id);
 H   ALTER TABLE ONLY public.fatura DROP CONSTRAINT fatura_personel_id_fkey;
       public          postgres    false    2984    202    214            �           2606    25434 .   menü_kategori menü_katagori_kategori_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."menü_kategori"
    ADD CONSTRAINT "menü_katagori_kategori_id_fkey" FOREIGN KEY (kategori_id) REFERENCES public.kategori(kategori_id);
 \   ALTER TABLE ONLY public."menü_kategori" DROP CONSTRAINT "menü_katagori_kategori_id_fkey";
       public          postgres    false    2968    204    207            �           2606    25439 +   menü_kategori menü_katagori_menü_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."menü_kategori"
    ADD CONSTRAINT "menü_katagori_menü_id_fkey" FOREIGN KEY ("menü_id") REFERENCES public."menü"("menü_id");
 Y   ALTER TABLE ONLY public."menü_kategori" DROP CONSTRAINT "menü_katagori_menü_id_fkey";
       public          postgres    false    2970    206    207            �           2606    25444 '   menü_ürün menü_ürün_menü_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."menü_ürün"
    ADD CONSTRAINT "menü_ürün_menü_id_fkey" FOREIGN KEY ("menü_id") REFERENCES public."menü"("menü_id");
 U   ALTER TABLE ONLY public."menü_ürün" DROP CONSTRAINT "menü_ürün_menü_id_fkey";
       public          postgres    false    2970    210    206            �           2606    25449 (   menü_ürün menü_ürün_ürün_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."menü_ürün"
    ADD CONSTRAINT "menü_ürün_ürün_id_fkey" FOREIGN KEY ("ürün_id") REFERENCES public."ürün"("ürün_id");
 V   ALTER TABLE ONLY public."menü_ürün" DROP CONSTRAINT "menü_ürün_ürün_id_fkey";
       public          postgres    false    230    210    3006            �           2606    25454    musteri musteri_adres_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_adres_id_fkey FOREIGN KEY (adres_id) REFERENCES public.adres(adres_id);
 G   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_adres_id_fkey;
       public          postgres    false    212    200    2964            �           2606    25459    personel personel_adres_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_adres_id_fkey FOREIGN KEY (adres_id) REFERENCES public.adres(adres_id);
 I   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_adres_id_fkey;
       public          postgres    false    214    200    2964            �           2606    25464    personel personel_sube_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_sube_id_fkey FOREIGN KEY (sube_id) REFERENCES public.sube(sube_id);
 H   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_sube_id_fkey;
       public          postgres    false    2998    224    214            �           2606    25469    personel personel_unvan_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_unvan_id_fkey FOREIGN KEY (unvan_id) REFERENCES public.unvan(unvan_id);
 I   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_unvan_id_fkey;
       public          postgres    false    3004    214    228            �           2606    25474    siparis siparis_fatura_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_fatura_id_fkey FOREIGN KEY (fatura_id) REFERENCES public.fatura(fatura_id);
 H   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_fatura_id_fkey;
       public          postgres    false    216    2966    202            �           2606    25479 '   siparis_menu siparis_menu_menü_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis_menu
    ADD CONSTRAINT "siparis_menu_menü_id_fkey" FOREIGN KEY ("menü_id") REFERENCES public."menü"("menü_id");
 S   ALTER TABLE ONLY public.siparis_menu DROP CONSTRAINT "siparis_menu_menü_id_fkey";
       public          postgres    false    2970    217    206            �           2606    25484 )   siparis_menu siparis_menu_siparis_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis_menu
    ADD CONSTRAINT siparis_menu_siparis_id_fkey FOREIGN KEY (siparis_id) REFERENCES public.siparis(siparis_id);
 S   ALTER TABLE ONLY public.siparis_menu DROP CONSTRAINT siparis_menu_siparis_id_fkey;
       public          postgres    false    216    2990    217            �           2606    25489    siparis siparis_musteri_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_musteri_id_fkey FOREIGN KEY (musteri_id) REFERENCES public.musteri(musteri_id);
 I   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_musteri_id_fkey;
       public          postgres    false    2978    216    212            �           2606    25494     siparis siparis_personel_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_personel_id_fkey FOREIGN KEY (personel_id) REFERENCES public.personel(personel_id);
 J   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_personel_id_fkey;
       public          postgres    false    2984    216    214            �           2606    25499 %   siparis siparis_siparis_durum_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_siparis_durum_id_fkey FOREIGN KEY (siparis_durum_id) REFERENCES public.siparisdurum(siparis_durum_id);
 O   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_siparis_durum_id_fkey;
       public          postgres    false    222    216    2996            �           2606    25504 )   siparis_sube siparis_sube_siparis_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis_sube
    ADD CONSTRAINT siparis_sube_siparis_id_fkey FOREIGN KEY (siparis_id) REFERENCES public.siparis(siparis_id);
 S   ALTER TABLE ONLY public.siparis_sube DROP CONSTRAINT siparis_sube_siparis_id_fkey;
       public          postgres    false    2990    216    220            �           2606    25509 &   siparis_sube siparis_sube_sube_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis_sube
    ADD CONSTRAINT siparis_sube_sube_id_fkey FOREIGN KEY (sube_id) REFERENCES public.sube(sube_id);
 P   ALTER TABLE ONLY public.siparis_sube DROP CONSTRAINT siparis_sube_sube_id_fkey;
       public          postgres    false    2998    220    224            �           2606    25514 #   sube_menü sube_menü_menü_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."sube_menü"
    ADD CONSTRAINT "sube_menü_menü_id_fkey" FOREIGN KEY ("menü_id") REFERENCES public."menü"("menü_id");
 Q   ALTER TABLE ONLY public."sube_menü" DROP CONSTRAINT "sube_menü_menü_id_fkey";
       public          postgres    false    206    2970    225            �           2606    25519 "   sube_menü sube_menü_sube_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."sube_menü"
    ADD CONSTRAINT "sube_menü_sube_id_fkey" FOREIGN KEY (sube_id) REFERENCES public.sube(sube_id);
 P   ALTER TABLE ONLY public."sube_menü" DROP CONSTRAINT "sube_menü_sube_id_fkey";
       public          postgres    false    225    224    2998            �           2606    25534 0   ürün_kategori ürün_katagori_kategori_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ürün_kategori"
    ADD CONSTRAINT "ürün_katagori_kategori_id_fkey" FOREIGN KEY (kategori_id) REFERENCES public.kategori(kategori_id);
 ^   ALTER TABLE ONLY public."ürün_kategori" DROP CONSTRAINT "ürün_katagori_kategori_id_fkey";
       public          postgres    false    204    2968    231            �           2606    25539 .   ürün_kategori ürün_katagori_ürün_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ürün_kategori"
    ADD CONSTRAINT "ürün_katagori_ürün_id_fkey" FOREIGN KEY ("ürün_id") REFERENCES public."ürün"("ürün_id");
 \   ALTER TABLE ONLY public."ürün_kategori" DROP CONSTRAINT "ürün_katagori_ürün_id_fkey";
       public          postgres    false    231    230    3006            Y   �   x�u���@D��c�����AVٰ��K�?Cimce����M��s�MfR��%��o��{B��a�'�@�dН�-���N��?��}`K6\�5Қ���H�Zh;Uk	��O�t�D���8�i�� @�4tC����.�wh�qLH�������F
�-�1.ehX�w����e�߼��_$I��$�       [   8   x�3�4202�50�54�45��.JM�T�N,*9��ӐӐ˜�B
,	)����� 0@"o      ]   ?   x�3�,�/�I,�2�,I,�9��6��<�<��sR��L8�3�sJ�l�2�L-���qqq �5      _   �   x�e�A�0����)z3��3��qCC��6M�p0W��Ƹ���~��胉�D,�������f.���mpf�J�����my�v�C�`�Fb�q����:���%6�<wBo{�v��㞺�S��1E���x��^���s=n      `   %   x�3�4�4�2�F\�@Ҙ˄�H�r�=... KF(      c      x�3�4�4�2�4��`�Hq��qqq 4�t      e   j   x�m�;
�0 �9=��j�'�]�m�B����L�������Zk���iIS.��~tk!�����6
6��F6+�as�Y6/�c�y6��Q3�N)uw�N      g   k   x�u�;
�@�z�0�]?��6�B���c"j�y���B�!��:�m��1����>̝�e,b�$$�=�~�1�g�h�a�ٹ�3��Ž�-�ь�T��n?>;�      i   Q   x�3�L*-JO-���+I-�K-�4����54"�?8�2&V�	T�!gqiR*.U�pU��3��4�k�9Q�,���	����� �I�      j      x�3�4�4�2��`�L���=... K#      m      x������ � �      o   >   x�3��H�:��('1�����".#΂̣�3�2s2A\c�<�	��!�)�����1W� ��      q       x�3�t4���2�t4�Ɯ�� :F��� L��      r      x������ � �      u   ,   x�3��N,άL-�2�L<:���#��9s�I9���+F��� �&U      w   .   x�3�,.�4��2�L-QH*-JO-�43�2����I�45������ ���      x      x�3�4�4�2��`�L���=... K#     