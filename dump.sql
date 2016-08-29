--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: anasayfa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE anasayfa (
    id bigint NOT NULL,
    haberbaslik text,
    habericerik text,
    haberyorum bigint NOT NULL,
    habertarih date,
    haberresimurl text,
    habervideourl text
);


ALTER TABLE public.anasayfa OWNER TO postgres;

--
-- Name: anasayfa_haberyorum_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE anasayfa_haberyorum_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anasayfa_haberyorum_seq OWNER TO postgres;

--
-- Name: anasayfa_haberyorum_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE anasayfa_haberyorum_seq OWNED BY anasayfa.haberyorum;


--
-- Name: anasayfa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE anasayfa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anasayfa_id_seq OWNER TO postgres;

--
-- Name: anasayfa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE anasayfa_id_seq OWNED BY anasayfa.id;


--
-- Name: dunyagundem; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dunyagundem (
    id bigint NOT NULL,
    haberbaslik text,
    habericerik text,
    haberyorum bigint NOT NULL,
    habertarih date,
    haberresimurl text,
    habervideourl text,
    tiksayisi bigint NOT NULL
);


ALTER TABLE public.dunyagundem OWNER TO postgres;

--
-- Name: dunyagundem_haberyorum_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dunyagundem_haberyorum_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dunyagundem_haberyorum_seq OWNER TO postgres;

--
-- Name: dunyagundem_haberyorum_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dunyagundem_haberyorum_seq OWNED BY dunyagundem.haberyorum;


--
-- Name: dunyagundem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dunyagundem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dunyagundem_id_seq OWNER TO postgres;

--
-- Name: dunyagundem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dunyagundem_id_seq OWNED BY dunyagundem.id;


--
-- Name: dunyagundem_tiksayisi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dunyagundem_tiksayisi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dunyagundem_tiksayisi_seq OWNER TO postgres;

--
-- Name: dunyagundem_tiksayisi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dunyagundem_tiksayisi_seq OWNED BY dunyagundem.tiksayisi;


--
-- Name: ekonomihaber; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ekonomihaber (
    id bigint NOT NULL,
    haberbaslik text,
    habericerik text,
    haberyorum bigint NOT NULL,
    habertarih date,
    haberresimurl text,
    habervideourl text,
    tiksayisi bigint NOT NULL
);


ALTER TABLE public.ekonomihaber OWNER TO postgres;

--
-- Name: ekonomihaber_haberyorum_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ekonomihaber_haberyorum_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ekonomihaber_haberyorum_seq OWNER TO postgres;

--
-- Name: ekonomihaber_haberyorum_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ekonomihaber_haberyorum_seq OWNED BY ekonomihaber.haberyorum;


--
-- Name: ekonomihaber_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ekonomihaber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ekonomihaber_id_seq OWNER TO postgres;

--
-- Name: ekonomihaber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ekonomihaber_id_seq OWNED BY ekonomihaber.id;


--
-- Name: ekonomihaber_tiksayisi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ekonomihaber_tiksayisi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ekonomihaber_tiksayisi_seq OWNER TO postgres;

--
-- Name: ekonomihaber_tiksayisi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ekonomihaber_tiksayisi_seq OWNED BY ekonomihaber.tiksayisi;


--
-- Name: magazinhaber; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE magazinhaber (
    id bigint NOT NULL,
    haberbaslik text,
    habericerik text,
    haberyorum bigint NOT NULL,
    habertarih date,
    haberresimurl text,
    habervideourl text,
    tiksayisi bigint NOT NULL
);


ALTER TABLE public.magazinhaber OWNER TO postgres;

--
-- Name: magazinhaber_haberyorum_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE magazinhaber_haberyorum_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.magazinhaber_haberyorum_seq OWNER TO postgres;

--
-- Name: magazinhaber_haberyorum_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE magazinhaber_haberyorum_seq OWNED BY magazinhaber.haberyorum;


--
-- Name: magazinhaber_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE magazinhaber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.magazinhaber_id_seq OWNER TO postgres;

--
-- Name: magazinhaber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE magazinhaber_id_seq OWNED BY magazinhaber.id;


--
-- Name: magazinhaber_tiksayisi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE magazinhaber_tiksayisi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.magazinhaber_tiksayisi_seq OWNER TO postgres;

--
-- Name: magazinhaber_tiksayisi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE magazinhaber_tiksayisi_seq OWNED BY magazinhaber.tiksayisi;


--
-- Name: sporhaber; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sporhaber (
    id bigint NOT NULL,
    haberbaslik text,
    habericerik text,
    haberyorum bigint NOT NULL,
    habertarih date,
    haberresimurl text,
    habervideourl text,
    tiksayisi bigint NOT NULL
);


ALTER TABLE public.sporhaber OWNER TO postgres;

--
-- Name: sporhaber_haberyorum_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sporhaber_haberyorum_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sporhaber_haberyorum_seq OWNER TO postgres;

--
-- Name: sporhaber_haberyorum_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sporhaber_haberyorum_seq OWNED BY sporhaber.haberyorum;


--
-- Name: sporhaber_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sporhaber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sporhaber_id_seq OWNER TO postgres;

--
-- Name: sporhaber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sporhaber_id_seq OWNED BY sporhaber.id;


--
-- Name: sporhaber_tiksayisi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sporhaber_tiksayisi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sporhaber_tiksayisi_seq OWNER TO postgres;

--
-- Name: sporhaber_tiksayisi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sporhaber_tiksayisi_seq OWNED BY sporhaber.tiksayisi;


--
-- Name: tekonolojihaber; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tekonolojihaber (
    id bigint NOT NULL,
    haberbaslik text,
    habericerik text,
    haberyorum bigint NOT NULL,
    habertarih date,
    haberresimurl text,
    habervideourl text,
    tiksayisi bigint NOT NULL
);


ALTER TABLE public.tekonolojihaber OWNER TO postgres;

--
-- Name: tekonolojihaber_haberyorum_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tekonolojihaber_haberyorum_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tekonolojihaber_haberyorum_seq OWNER TO postgres;

--
-- Name: tekonolojihaber_haberyorum_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tekonolojihaber_haberyorum_seq OWNED BY tekonolojihaber.haberyorum;


--
-- Name: tekonolojihaber_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tekonolojihaber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tekonolojihaber_id_seq OWNER TO postgres;

--
-- Name: tekonolojihaber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tekonolojihaber_id_seq OWNED BY tekonolojihaber.id;


--
-- Name: tekonolojihaber_tiksayisi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tekonolojihaber_tiksayisi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tekonolojihaber_tiksayisi_seq OWNER TO postgres;

--
-- Name: tekonolojihaber_tiksayisi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tekonolojihaber_tiksayisi_seq OWNED BY tekonolojihaber.tiksayisi;


--
-- Name: turkiyegundem; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE turkiyegundem (
    id bigint NOT NULL,
    haberbaslik text,
    habericerik text,
    haberyorum bigint NOT NULL,
    habertarih date,
    haberresimurl text,
    habervideourl text,
    tiksayisi bigint NOT NULL
);


ALTER TABLE public.turkiyegundem OWNER TO postgres;

--
-- Name: turkiyegundem_haberyorum_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE turkiyegundem_haberyorum_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.turkiyegundem_haberyorum_seq OWNER TO postgres;

--
-- Name: turkiyegundem_haberyorum_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE turkiyegundem_haberyorum_seq OWNED BY turkiyegundem.haberyorum;


--
-- Name: turkiyegundem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE turkiyegundem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.turkiyegundem_id_seq OWNER TO postgres;

--
-- Name: turkiyegundem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE turkiyegundem_id_seq OWNED BY turkiyegundem.id;


--
-- Name: turkiyegundem_tiksayisi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE turkiyegundem_tiksayisi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.turkiyegundem_tiksayisi_seq OWNER TO postgres;

--
-- Name: turkiyegundem_tiksayisi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE turkiyegundem_tiksayisi_seq OWNED BY turkiyegundem.tiksayisi;


--
-- Name: uyeler; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE uyeler (
    uyeid bigint NOT NULL,
    uyead text,
    uyesoyad text,
    uyeyas integer,
    uyetel text,
    uyeeposta text,
    uyesifre text
);


ALTER TABLE public.uyeler OWNER TO postgres;

--
-- Name: uyeler_uyeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE uyeler_uyeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uyeler_uyeid_seq OWNER TO postgres;

--
-- Name: uyeler_uyeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE uyeler_uyeid_seq OWNED BY uyeler.uyeid;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY anasayfa ALTER COLUMN id SET DEFAULT nextval('anasayfa_id_seq'::regclass);


--
-- Name: haberyorum; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY anasayfa ALTER COLUMN haberyorum SET DEFAULT nextval('anasayfa_haberyorum_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dunyagundem ALTER COLUMN id SET DEFAULT nextval('dunyagundem_id_seq'::regclass);


--
-- Name: haberyorum; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dunyagundem ALTER COLUMN haberyorum SET DEFAULT nextval('dunyagundem_haberyorum_seq'::regclass);


--
-- Name: tiksayisi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dunyagundem ALTER COLUMN tiksayisi SET DEFAULT nextval('dunyagundem_tiksayisi_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ekonomihaber ALTER COLUMN id SET DEFAULT nextval('ekonomihaber_id_seq'::regclass);


--
-- Name: haberyorum; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ekonomihaber ALTER COLUMN haberyorum SET DEFAULT nextval('ekonomihaber_haberyorum_seq'::regclass);


--
-- Name: tiksayisi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ekonomihaber ALTER COLUMN tiksayisi SET DEFAULT nextval('ekonomihaber_tiksayisi_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY magazinhaber ALTER COLUMN id SET DEFAULT nextval('magazinhaber_id_seq'::regclass);


--
-- Name: haberyorum; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY magazinhaber ALTER COLUMN haberyorum SET DEFAULT nextval('magazinhaber_haberyorum_seq'::regclass);


--
-- Name: tiksayisi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY magazinhaber ALTER COLUMN tiksayisi SET DEFAULT nextval('magazinhaber_tiksayisi_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sporhaber ALTER COLUMN id SET DEFAULT nextval('sporhaber_id_seq'::regclass);


--
-- Name: haberyorum; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sporhaber ALTER COLUMN haberyorum SET DEFAULT nextval('sporhaber_haberyorum_seq'::regclass);


--
-- Name: tiksayisi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sporhaber ALTER COLUMN tiksayisi SET DEFAULT nextval('sporhaber_tiksayisi_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tekonolojihaber ALTER COLUMN id SET DEFAULT nextval('tekonolojihaber_id_seq'::regclass);


--
-- Name: haberyorum; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tekonolojihaber ALTER COLUMN haberyorum SET DEFAULT nextval('tekonolojihaber_haberyorum_seq'::regclass);


--
-- Name: tiksayisi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tekonolojihaber ALTER COLUMN tiksayisi SET DEFAULT nextval('tekonolojihaber_tiksayisi_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY turkiyegundem ALTER COLUMN id SET DEFAULT nextval('turkiyegundem_id_seq'::regclass);


--
-- Name: haberyorum; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY turkiyegundem ALTER COLUMN haberyorum SET DEFAULT nextval('turkiyegundem_haberyorum_seq'::regclass);


--
-- Name: tiksayisi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY turkiyegundem ALTER COLUMN tiksayisi SET DEFAULT nextval('turkiyegundem_tiksayisi_seq'::regclass);


--
-- Name: uyeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY uyeler ALTER COLUMN uyeid SET DEFAULT nextval('uyeler_uyeid_seq'::regclass);


--
-- Data for Name: anasayfa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY anasayfa (id, haberbaslik, habericerik, haberyorum, habertarih, haberresimurl, habervideourl) FROM stdin;
1	GIDA MÜHENDİSLERİNDEN KORKUNÇ GIDA İTİRAFLARI	1-)Umarız kahvaltınız bitmiştir. Çünkü okuyacaklarınız pek de iştah açıcı şeyler değil. Türkiye'nin dört bir yanına dağılmış yemek fabrikası, üretimhane, catering şirketi, restoran gibi yerlerde çalışan gıda mühendislerinin tanık oldukları uygulamalar bunlar. Gıda Mühendisleri Odası aracılığıyla gönderdikleri mail'lerle, forumlarda yazdıklarıyla çığlıklarını duyurmaya çalışıyorlar. Ama işin ucunda işlerini kaybetmek de var. Üstelik mimlenip bir daha asla iş bulamamacasına... Çünkü sistem böyle kurulmuş. Tek istedikleri denetimlerin arttırılması ve rüşvetin önüne geçilmesi... Ve gıda mühendislerinin, vatandaşlarının sağlığına önem veren ülkelerde olduğu gibi, hak ettikleri konum ve koşullarda mesleklerini yapabilmeleri...İşte mühendislerinin korkunç gıda itirafları...<br/><br/>\n\n2-)Küflü sucuklar tekrar satışta/ Et ürünleri üreten bir firmada tanık olduğum vahim olay: İade edilen ambalajı bozuk, küflenmiş sucuklar tekrar işlemden geçirilip kılıflandıktan sonra yeni parti ürünlerle piyasaya sürülüyor. Üstelik bu ürünler birçok yerde satılıyor.<br/><br/>\n\n3-)Gıda mühendisleri anlatıyor: Antibiyotikli reçeller/ Reçel üretimi yapan bir firmada kazana bir su bardağı toz kimyasal karıştırılıyordu. Bir gün bu kimyasalı tedarikçiden ben teslim aldım. Hemen faturaya baktım ve eve gidince araştırdım. Bir çeşit antibiyotik. Patronla tartıştık. Zaten iki hafta sonra işten ayrıldım.\n\n4-)Susamın kireci fazla kaçtı/ Tahin ve tahin helvası üretilen işyerinde tarım müdürlüğü tarafından alınan numunelerde ürünün kül miktarı yüksek çıktı. Bunu düşürmenin tek yolu, susamı sertleştirmek için kullanılan sönmüş kirecin Ca (OH)2 uzaklaştırılması. Kabul ettiremedim.\n\n5)Yemeklere çamaşırsuyu/ İhale usulü hazır yemek hizmeti veren firmalarda o gün çıkan her yemekten numune alınıyor. Bunu bilen bazı firmalar numune kaplarına kokusuz çamaşırsuyu damlatarak tüm mikropları öldürüyor. Çünkü mikrobiyolojik analiz yapılırken kimyasal analiz yapılmıyor. Birkaç kez neticenin ne çıkacağını merak ederek çamaşır suyu damlattırmadım. Her seferinde salmonella bakterisi çıktı.<br><br>	1	2015-04-28	f	f
\.


--
-- Name: anasayfa_haberyorum_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('anasayfa_haberyorum_seq', 1, false);


--
-- Name: anasayfa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('anasayfa_id_seq', 1, false);


--
-- Data for Name: dunyagundem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dunyagundem (id, haberbaslik, habericerik, haberyorum, habertarih, haberresimurl, habervideourl, tiksayisi) FROM stdin;
4	İsrail, Türkiye'ye karşı harekete geçti	İsrail Cumhurbaşkanı Rivlin, 1915 yılı olaylarına ilişkin, "Ermeni halkı modern toplu cinayetin ilk kurbanıdır" dedi ve ülkede bir ilki gerçekleştirdi.\nİsrail Cumhurbaşkanı Reuven Rivlin, 1915 yılı olaylarına ilişkin Ermeni iddialarıyla ilgili olarak, "Ermeni halkı modern toplu cinayetin ilk kurbanıdır." dedi. Ermeni iddiaları ile ilgili olarak Cumhurbaşkanlığı Rezidansı'nda bir tören düzenleyen Rivlin, "Biz belli bir ülkeyi suçlamaya çalışmıyor, katliamın kurbanları ve korkunç sonuçları ile kendimizi özdeşleştirmeye çalışıyoruz." ifadesini kullandı. \n<br><iframe width="560" height="315" src="https://www.youtube.com/embed/4so7dKXMcrs" frameborder="0" allowfullscreen></iframe>\n<br/>\n<h3>ERMENİ İDDİALARIYLA İLGİLİ ÜLKEDE İLK KEZ RESMİ TÖREN DÜZENLEYEN CUMHURBAŞKANI OLDU</h3>\n\n"Ermeni halkı modern toplu cinayetin ilk kurbanıdır" değerlendirmesinde bulunan Rivlin, 1915 yılı olaylarına ilişkin Ermeni iddialarıyla ilgili olarak ülkede ilk kez resmi tören düzenleyen cumhurbaşkanı oldu. Törene, İsrail'deki Ermeni toplumunun temsilcileri ve dini liderleri katıldı.\n<br/>\n<h3>1915'TE NE OLDU?</h3>\n\nOsmanlı Devleti'nin 1914'te başlayan 1. Dünya Savaşı'na Rusya ile farklı saflarda katılmasını fırsat bilen Ermeni milliyetçileri, bağımsız Ermenistan devletini kurmak gayesiyle Rus güçleriyle işbirliği yaptılar.\n\nRus ordusu, Doğu Anadolu'yu işgal ettiğinde gönüllü Osmanlı ve Rus Ermenilerinden büyük destek gördü. Osmanlı ordusunda görev yapan bazı Ermeniler de Rus ordusuna katıldı. Ermenilerin oluşturduğu birlikler ordunun lojistik kanallarını tahrip ederek Osmanlı ordularının ilerlemesini yavaşlatırken, Ermeni çeteleri de işgal ettikleri yerlerde sivillere yönelik katliam ve zulümlere girişti.\n\nOsmanlı hükümeti, bu gelişmelerin önüne geçmek için Ermeni temsilcileri ve kanaat önderlerini ikna etmeye çalıştı ancak başarılı olamadı. Ermeni komitalarının saldırılarının artması üzerine hükümet, 24 Nisan 1915'te Ermeni devrimci komitelerin kapatılmasına, bazı Ermenilerin tutuklanmalarına ve sürgün edilmelerine karar verdi. Daha sonra her yıl "Ermeni soykırımını" anmak amacıyla düzenlenen etkinlikler için bu tarih seçilecekti.\n\nTedbirlere rağmen saldırıların sürmesi nedeniyle 27 Mayıs 1915'te Ermeni nüfusunun savaş bölgesinde olanları ve Rus işgal ordusuyla işbirliği yapanlarının göç ettirilmesi kararı alındı.\n\nOsmanlı hükümeti, göç edenlerin insani ihtiyaçları için planlamalar yaptıysa da savaş koşulları, iç çatışmalar, intikam peşindeki yerel gruplar, eşkıyalık, açlık ve salgın hastalıklar nedeniyle göçler sırasında çok sayıda Ermeni hayatını kaybetti.\n\nTarihi belgeler, hükümetin, söz konusu trajik olayların yaşanmasını amaçlamadığı gibi göç eden Ermenilere karşı işlenen suçları cezalandırıldığını açıkça ortaya koymakta. Nitekim, henüz savaş son bulmamışken yaşanan insani trajedi sırasında olaylara karışarak suçlu bulunanlar yargılanarak idam edildi.\n<br>\n<h3>ADİL HAFIZA VE EMPATİ İHTİYACI</h3>\n\nErmenistan ve Ermeni diasporasının genel beklentisi, Türkiye'nin 1915 tehciri sırasında yaşananları soykırım olarak tanıması ve tazminat ödemesi.\n\n"Soykırım" kavramı, 1948 Soykırım Suçunun Önlenmesi ve Cezalandırılması Sözleşmesi'nde ulusal, ırksal, etnik veya dinsel bir grubu kısmen veya tamamen yok etme eylemi olarak tanımlanıyor.\n\nSöz konusu olayların soykırım olarak tanımlanamayacağına dikkati çeken Türkiye, 1915 olaylarını her iki taraf açısından da bir "trajedi" olarak niteliyor. Türkiye, konunun siyasi çatışmalardan uzak, tarihe tek taraflı bakmadan, tarafların birbirlerinin neler yaşadığını anlama ve birbirlerinin hafızalarına saygı duyma şeklinde özetlenen "adil bir hafıza" perspektifinden çözülmesi gerektiğini vurguluyor.\n\nTürkiye, tarafların arşivlerinin yanı sıra üçüncü ülkelerdeki arşivlerde de 1915 olayları konusunda araştırma yapılmasını, Türk ve Ermeni tarihçilerle diğer uluslararası uzmanlardan oluşan bir ortak tarih komisyonu kurulmasını teklif ediyor.\n<br>\n<h3>ERİVAN, İLİŞKİLERİ NORMALLEŞTİRME FIRSATINI DEĞERLENDİREMEDİ</h3>\n\nİki ülke ilişkilerinin normalleştirilmesi için en önemli gelişme Ekim 2009'da yaşandı. Taraflar, İsviçre'nin Zürih kentinde diplomatik ilişkilerin yeniden tesisi ve ikili ilişkilerin geliştirilmesine yönelik iki ayrı protokol imzaladı.\n\nProtokollerde karşılıklı güven tesisi ve mevcut sorunların çözülebilmesi için tarihsel kaynak ve arşivlerin tarafsız, bilimsel incelenmesi konusuna yer verilirken, sınırların da karşılıklı olarak tanınması ve ortak sınırların açılması öngörülüyordu.\n\nTürk hükümeti protokolü onaylanmak üzere doğrudan TBMM'ye gönderdi. Ermenistan hükümeti ise metinleri Anayasa Mahkemesi'nin incelemesine sundu. Mahkeme, protokollerin Anayasa'nın lafzına ve ruhuna uymadığına hükmetti.\n\nErmenistan hükümeti protokollerin onay sürecini dondurduğunu Ocak 2010'da açıkladı. Bundan 5 yıl sonra da, Ermeni hükümeti tarafından geçen Şubat ayında geri çekildi.	4	2015-04-27	ds	ds	14
3	Güney Kore Başbakanı istifa etti	Rüşvet almakla suçlanan Başbakan Lee'nin bir hafta önce sunduğu istifası kabul edildi.<br>\nGüney Kore Devlet Başkanı Park Geun-hye, rüşvetle suçlandığı için bir hafta önce istifasını sunan Başbakan Lee Van-koo'nun istifasını kabul etti.<br>\n\nKore'nin resmi haber ajansı Yonhap, iktidardaki Saenuri Partisi'nden ismini açıklamayan bir kaynağa dayanarak Devlet Başkanı Park'ın Başbakan Lee'nin istifasını kabul ettiğini aktardı.<br>\n\nŞubatta başbakan olan Lee'nin istifasını kabul eden Devlet Başkanı Park, görevindeki ikinci yılında üçüncü kez başbakan seçmek zorunda kalacak.\n\nKeangnam Yatırım Şirketi'nin eski başkanı Sung Van-jong, 9 Nisan'da intihar etmeden birkaç gün önce bir gazeteye yaptığı açıklamada, 2013'te Başbakan Lee'ye 30 bin dolar rüşvet verdiğini iddia etmişti.<br>\n\nMuhalefet partileri, bu suçlamalar üzerine Lee'ye istifa etmesi çağrısında bulunmuştu.<br>	5	2015-04-24	t	t	22
1	Fransa'nın Mâcon Kentindeki Türk Camii Yakılmak İstendi	Fransa'nın Macon kentinde 26 Nisan Pazar günü Türk camisine yapılan kundaklama girişimi, saniye saniye kaydedildi. Şans eseri alevler büyümeden yangın söndürüldü.\nFransa'nın Macon kentindeki Türk camiye kundaklama girişiminde bulunuldu. 26 Nisan Pazar günü yapılan kundaklama teşebbüsü alevler büyümeden söndürüldü. Caminin güvenlik kameralarının saniye saniye kaydettiği saldırı sabah saat 4: 07 sularında meydana geldi.\n<br>\n<h3>BENZİN DÖKÜP ATEŞLEDİLER</h3>\n\nYürüyerek caminin yan bölümüne geldikleri görülen saldırganlar, caminin iki penceresine ellerindeki benzin bidonunu boşaltıp yanlarında getirdikleri kağıt parçalarını serpiyorlar, daha sonra döktükleri benzini ateşleyerek olay mahallinden koşarak uzaklaşan iki saldırgan, yaklaşık 17 dakika sonra alevlerin binayı sarmadığını görerek geri dönüyorlar ve alevlerin tekrar canlanması için üzerine Camii'nin ön tarafında bulunan plastik sandalyelerden koyuyorlar.\n<br>\n<h3>YANGINI NAMAZA GELEN İKİ VATANDAŞ SÖNDÜRDÜ</h3>\n\nBüyük bir şans eseri olarak büyümeyen alevlerin sabah namazı için camiye gelen iki vatandaş tarafından üzerlerine basılarak söndürüldüğünü belirten DİTİB Macon dernek başkanı İsmail Serin, polise şikayette bulunduklarını ve saldırının yüksek çözümlü ve karanlıkta çekebilme özelliğine sahip olan kameralar tarafından çekilen videosunu verdiklerini söyledi.\n\nLyon Türkiye Başkonsolosu Hilmi Ege Türemen'i ve Macon belediye başkanı Jean-Patrick Courtois'i telefon ile arayarak haber verdiğini söyleyen başkan İsmail Serin, hem Hilmi Ege Türemen'den hem de Belediye başkanından her türlü yardım sözünü aldığını belirtti.\n<br>\n<h3>"TÜRKLERİN BU ŞEKİLDE HEDEF ALINMASINA İZİN VERİLMEYECEK"</h3>\n\nOlay yerinde incelemeler yapıp videoyu izledikten sonra o sırada Dernekte bulunan vatandaşlara açıklama yapan Lyon Başkonsolosu Hilmi Ege Türemen öncelikle geçmiş olsun dileklerini iletti.\n\nOlaydan haberdar olduktan hemen sonra olay mahalline geldiğini belirten Başkonsolos, hiç bir şekilde kabul etmeyeceklerini belirttiği olayı Macon belediye başkanı ve polis yetkilileri ile ele aldığını söyledi, Artık Fransa'nın bir parçası olmuş Türklerin bu şekilde hedef alınmalarına hiç bir şekilde izin vermeyeceklerini açıkladı.\n\nVİDEODA SALDIRGANLARIN YÜZÜ GÖRÜLÜYOR\n\nDernek binasının pervasızca yakılmak istendiğini açıklayan Hilmi Ege Türemen saldırganların polis tarafından ivedilikle yakalanmalarını beklediğini söyledi. Video görüntülerinin gayet net olduğunu, saldırganların yüzlerinin çok açık bir şekilde belli olduğunu belirtti.\n\n"PROVAKASYONLARA KAPILMAYIN"\n\nVatandaşlardan 2015 senesinde yapılabilecek provokasyonlara kapılmamalarını belirten Başkonsolos, Macon'da yaşayan Türklerin entegrasyon konusunda çok başarılı olduklarını hatırlattı.\n\nDevletin, Dışişleri Bakanlığı'nın vatandaşların arkasında olduğunun altını çizen Hilmi Ege Türemen Dernek Başkanı İsmail Serin'e bir kere daha geçmiş olsun dileklerini iletti.\n<br>\n<h3>"2015'İN BAŞINDAN BERİ SALDIRI SAYISI ARTTI"</h3>\n\n2015 senesini başından bu tarafa Türk diplomatik temsilciliklerinin yanı sıra Türk asıllı vatandaşların ticarethanelerine ve Türk derneklerine yapılan saldırıların sayısı oldukça arttı.\n\nOlayı kimlerin yaptığının ancak polis anketinden sonra belli olacağını söyleyen dernek başkanı İsmail Serin şu anda kimseden şüphelenmediklerini belirtti.	2	2015-04-28	dsa	das	15
\.


--
-- Name: dunyagundem_haberyorum_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dunyagundem_haberyorum_seq', 1, false);


--
-- Name: dunyagundem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dunyagundem_id_seq', 1, false);


--
-- Name: dunyagundem_tiksayisi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dunyagundem_tiksayisi_seq', 3, true);


--
-- Data for Name: ekonomihaber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ekonomihaber (id, haberbaslik, habericerik, haberyorum, habertarih, haberresimurl, habervideourl, tiksayisi) FROM stdin;
4	15 yılda 1.5 milyon	Tofaş’ın Bursa’da üreterek Avrupa pazarlarının yanı sıra Şili’den Amerika’ya, 80’den fazla ülkeye ihraç ettiği Doblo’nun 1.5 milyonuncusu, üretim hattından indi.\n\nİtalyan Fiat’ı krizin eşiğinden döndüren Doblo, Türkiye’nin hafif    araç üretim merkezi olmasında önemli rol oynadı.\n\n\nTÜRKİYE’nin ihracat ağırlıklı hafif ticari araç üretim merkezi olmasında önemli rol oynayan ve 2000 yılında İtalyan Fiat’ı krizin eşiğinden döndüren Doblo’nun 1.5 milyonuncusu Tofaş’ın Bursa Fabrikası’nda üretildi. Tofaş tarihinde dikkat çeken bir kilometre taşı olan Doblo, son olarak Ram markasıyla Amerika ve Kanada’ya da ihraç edilmeye başlandı.Tofaş’ın ‘Dünya Klasında Üretim’ standartlarındaki yetkinliklerinin de göstergesi olan Fiat Doblo ile firmanın 46 yıllık tarihinde ürettiği toplam araç sayısı ise 4 milyon 600 bini geçti.\n<br/>\n360 MİLYON DOLAR<br/>\n\nFiat Chrysler Automobiles’ın dünyada ilk kez bir modelini İtalya dışındaki bir ülkede üretme kararı almasıyla Eylül 2000’de Tofaş’ın Bursa fabrikasında üretilmeye başlanan Doblo’nun ilk yıl üretilen 100 bin adedinin 90 bini , 43 ülkeye ihraç edildi.  Fikri ve sınai hakları Tofaş’a ait bulunan, 2001’de Tofaş’ın ihracatının yüzde 83’ünü oluşturan Doblo, ihracat şampiyonu, yılın ticari aracı gibi pek çok başarıya imza attı.  Tofaş, 2014 sonunda 360 milyon dolar yatırımla ABD ve Kanada regülasyonlarına uygun olarak ürettiği Doblo Amerika’nın ihracatına başlarken, dördüncü nesil Doblo’yu ise Şubat 2015’te Türkiye ve Avrupa pazarlarında satışa sundu.	4	2015-05-06	w	w	5
2	Reel efektif döviz kuru yılın dibinde	TÜFE bazlı reel efektif döviz kuru 102.62 düzeyine gerileyerek bir yılın en düşük seviyesine indi.\n\nTürkiye'nin fiyat düzeyinin dış ticaret yaptığı ülkelerin fiyat düzeylerine göre değişimini gösteren TÜFE bazlı reel efektif döviz kuru endeksi Nisan ayında 102.62 düzeyine geriledi.\n\nmerkez bankası verilerine göre, TÜFE bazlı reel efektif döviz kuru, 108.33 düzeyine çıktığı Ocak ayından bu yana aralıksız düşüyor.\n\nMerkez Bankası verilerine göre, yurt içi üretici fiyatları (Yi-ÜFE) bazlı reel efektif döviz kuru da Nisan'da 100.71 düzeyine geriledi.\n\nYİ-ÜFE bazlı reel efektif döviz kuru da Ocak ayında çıktığı 106.60 düzeyinden, Nİsan ayına kadar kesintisiz geriledi. \n\nReel efektif döviz kuru endeksleri Türkiye'nin fiyat düzeyinin dış ticaret yaptığı ülkelerin fiyat düzeylerine oranının ağırlıklı geometrik ortalaması alınarak hesaplanıyor.\n\nDenklemde reel efektif kurun artışı TL'nin reel olarak değer kazandığını, diğer bir anlatımla Türk mallarının yabancı mallar cinsinden fiyatının arttığını gösteriyor.	2	2015-05-06	q	q	6
5	Yıldız Holding dev şirket Ak Gıda'yı sattı	Yıldız Holding bünyesindeki en büyük gıda şirketlerinden Ak Gıda, Fransız gıda devi Groupe Lactalis şirketine satıldı. Avrupa'nın en büyük süt toplayıcısı olan Lactalis dünyanın 15. büyük gıda şirketi olarak gösteriliyor.\n\nSatışla ilgili resmi açıklama bir saat içinde yapılacak. İstanbul Sanayi Odası’nın geçtiğimiz yıl açıkladığı en büyük 500 sanayi kuruluşu listesine 33 sırada giren Ak Gıda San. Ve Tic. A.Ş. 1 milyar 837 milyon TL ciroya sahip.<br/>HALKA ARZI İPTAL EDİLDİ\nReuters'ın kaynaklara dayandırarak verdiği haberde, Ak Gıda'nın çoğunluk hisselerin Fransız Lactalis Group'a satılmasından dolayı, halka arz sürecinin iptal edildiği belirtildi.\nSermayesi 320 milyon lira olan Ak Gıda'da, yüzde 45 hisseye karşılık gelen 144 milyon adet payın 5.78-6.92 lira fiyat aralığından halka arzında talep toplama işlemi yarın başlayacak ve 8 Mayıs'ta sona erecekti.\n\nReuters'ta Nisan ayında yer alan haberde, Yıldız Holding'in süt ve süt ürünleri üreticisi Ak Gıda'da, bir yandan halka arz sürecine devam ederken; eş anlı olarak stratejik ve finansal yatırımcılardan gelen teklifleri de değerlendirdiği bilgisi yer almıştı.<br/>TÜRKİYE'NİN GIDA DEVLERİNDEN\nAK Gıda içinde Ülker İçim gibi dev markaları barındırıyor. Ak Gıda'nın Türkiye'nin beş farklı bölgesinde beş üretim tesisine sahip.\n<center>\nLACTALİS KİMDİR? \n*1933 yılında kuruldu. *1967 yıllık süt üretimi 110 milyon litreye ulaştı *1976 Çalışan sayısı 2000 oldu. *Şu an dünyanın en büyük 15. gıda şirketi. *Avrupa’nın en büyük süt toplayıcısı</center>\n1996 yılı Ağustos ayında Akyazı Köy-Tür fabrikasının satın alınması ile kurulan Ak Gıda San. ve Tic. A.Ş. Türkiye ve komşu coğrafyaların en büyük süt işleme tesisi Pamukova tesislerine 1998 yılında 450 dönüm arazinin satın alınması ile taşındı. Akyazı fabrikasında süt, yoğurt, beyaz peynir üretimiyle başlayan şirket şu anda Türkiye’nin 5 farklı bölgesinde 5 üretim tesisinde üreten, 23 farklı markada 339 nihai ürün çeşidine sahip.\n\nBOYNER'DE DE HİSSE SATIŞI GERÇEKLEŞTİ\nGeçtiğimiz hafta Boyner Grubu da yüzde 30,7'lik hissesini Katarlı Mayhoola Fonu'na satmıştı. Fon'un bünyesindeki en büyük marka lüks devi Valentino.	5	2015-05-06	q	q	12
3	Kamuya 8 bin 920 kişi atanacak	Engelliler, sosyal hizmet modellerinden yararlanan gençler, gaziler, gazi ve şehit yakınları ile vazife malullerinin atanacağı kura töreni, 20 Mayıs'ta gerçekleştirilecek\n\nEngelliler, sosyal hizmet modellerinden yararlanan gençler, şehit yakını, gazi ve gazi yakını ile vazife malullerini kapsayan 8 bin 920 kişinin kamu kurumlarına atanacağı kura töreni, 20 Mayıs'ta yapılacak.\n      \nDevlet Personel Başkanlığından yapılan yazılı açıklamada, engellilerin kamu kurum ve kuruluşlarına atanmasına ilişkin başvuruların 15-24 Nisan, Aile ve Sosyal Politikalar Bakanlığının sosyal hizmet modellerinden yararlanan gençlerin başvurularının ise 13-24 Nisan'da alındığı belirtildi.\n      \nGazi, gazi ve şehit yakınları ile vazife malulleri ve yakınlarına da kamuda istihdam hakkı tanındığı bildirilen açıklamada, şunlar kaydedildi:\n      \n"Engellilerin atanmasına ilişkin işlemler ÖSYM Başkanlığı, 2828 sayılı Kanun ve 3713 sayılı Kanun kapsamındaki hak sahiplerinin atanmasına ilişkin işlemler ise Başkanlığımızca gerçekleştirilecek. Devlete emanet olarak değerlendirdiğimiz engelli vatandaşlarımızın, sosyal hizmet modellerinden yararlanan gençlerimizin ve şehit yakını, gazi, gazi yakınları ile vazife malullerimizin kamudaki 8 bin 920 kadroya atanması, 20 Mayıs'ta Başbakan Ahmet Davutoğlu'nun katılacağı kura töreniyle yapılacak."	3	2015-05-06	q	q	50
1	Hakkı İhlal Edilip Davası Bitmeyen Çalışana 19 Bin 450 Lira Tazminat	Bir kamyon sürücüsü, 9 yıldır süren hizmet tespiti ve alacak davasını Anayasa Mahkemesi'ne götürdü. Yüksek Mahkeme, yargılanma hakkinin ihlal edildiğine karar verdi.<br><br/>\n<h3>2005 YILINDA DAVA AÇTI</h3>\n\nAnkara'da 1 Nisan 1999 ile 15 Şubat 2004 arasında iki ayrı özel şirkette kamyon sürücüsü olarak çalışan bir kişi, hizmet sürelerinin SGK'ya eksik bildirildiğini ve işçi alacaklarının eksik ödendiğini belirterek, 14 Ekim 2005'te Ankara 3. İş Mahkemesinde dava açtı. Dava hem iki şirket hem SGK aleyhine açıldı. Ancak çeşitli aşamalardan geçen davalar, bir türlü sonuçlanmadı.\n<br><br/>\n<h3>MADDEYE AYKIRI</h3>\n\nKararında, makul sürede yargılanma hakkının ihlal edildiğine hükmeden Anayasa Mahkemesi, bu konunun Anayasa'nın 36'ncı maddesinde güvence altına alındığını hatırlattı. Bunun üzerine kamyon sürücüsü davaların makul sürede tamamlanmadığını belirterek, adil yargılanma hakkının ihlal edildiği iddiasıyla Anayasa Mahkemesine (AYM) bireysel başvuruda bulundu.\n<br><br/>\n<h3>MANEVİ TAZMİNAT KARARI</h3>\n\nAYM de, davanın 9 yılı aşkın süredir devam ettiğini ve bu hususun makul sürede yargılanma hakkını ihlal ettiğine dikkat çekerek başvurucuya 19 bin 450 lira manevi tazminat ödenmesine hükmetti. (Kaynak:Milliyet)	1	2015-04-27	a	a	19
\.


--
-- Name: ekonomihaber_haberyorum_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ekonomihaber_haberyorum_seq', 1, false);


--
-- Name: ekonomihaber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ekonomihaber_id_seq', 1, false);


--
-- Name: ekonomihaber_tiksayisi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ekonomihaber_tiksayisi_seq', 5, true);


--
-- Data for Name: magazinhaber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY magazinhaber (id, haberbaslik, habericerik, haberyorum, habertarih, haberresimurl, habervideourl, tiksayisi) FROM stdin;
2	Erkan Petekkaya'nın en büyük hayali duygulandırdı	Sevilen oyuncu, en büyük hayalinin evsizlere ve ihtiyacı olanlara hizmet verecek bir gökdelen yaptırmak olduğunu söyledi.\nBaşrolünü oynadığı Paramparça dizisi pazartesi günü reytinglere damgasını vuran Erkan Petekkaya geçen hafta geçirdiği böbrek taşı ameliyatı sonrası sağlığına kavuştu.\n\nEN BÜYÜK HAYALİ\n\n1,5 aydır yaşadığı şiddetli ağrıların son bulduğunu anlatan oyuncu, en büyük hayalinin evsizlere ve ihtiyacı olanlara hizmet verecek bir gökdelen yaptırmak olduğunu söyledi.	6	2015-05-06	q	q	7
3	İdo Tatlıses Çocukluk Hayalini Gerçekleştirememiş	İdo Tatlıses, yeni maxi single çalışması "Kaç Kere" ile bir radyo programının canlı yayınına konuk oldu. İdo, çocukluk hayalinin futbolcu olmak olduğunu ama kalbindeki sorun nedeniyle bunu gerçekleştiremediğini söyledi.\n\nİşte İdo Tatlıses söyleşisinin satırbaşları:\n\n"HERKES BABAMIN BANA HALAY ÇEK DEMESİNİ BEKLEDİ"\n\nİdo Tatlıses, "Michael Jackson hastasıydım! Babam gizli gizli benim danslarımı videoya çekerdi. Herkes Babamın "Halay Çek" demesini bekledi sanırım. Her şekilde bana yenilikler için yol açan babamdır" dedi.\n<br>\nANNEM DERYA TUNA ORGENERAL\n\nYapımcılığını da yapan annesi Derya Tuna'yla olan ilişkisine de değinen İdo Tatlıses, "Anneme 'Orgeneral' diyorum! Albüm yapılırken, fotoğraflar, klip çekimi her şey annemin kontrolünde gerçekleşti. Dediği şeylerin çoğu doğru çıkıyor" dedi.\n\nTOPÇU OLAMADIM, POPÇU OLDUM!\n\nÇocukluk hayalinin futbolcu olmak olduğunu anlatan İdo Tatlıses, küçük yaşlarda kalbinde sorun olduğunu ve bu yüzden bu hayalini gerçekleştiremediğini anlattı.\n\nİbrahim Tatlıses 'in de kendisine futbol konusunda izin vermeme sebebini bu şekilde yorumlayan İdo, "Kalbimle ilgili şimdi iyiyim. Bir şeyim yok" diyerek, "Futbolcu olmayı çok istedim. Babama yalvardım. 14 yaşındaydım! Topçu olamadım Popçu oldum!" dedi.	7	2015-04-27	d	d	18
1	Mustafa Ceceli konserinde olay çıktı	Şanlıurfa'da düzenlenen Mustafa Ceceli konserinde olaylar çıktı. Gerginlik üzerine Ceceli sahneyi terk ederken, göstericiler Türk bayrağını indirmeye çalıştı.\nŞanlıurfa Büyükşehir Belediyesi tarafından Siverek'te düzenlenen Mustafa Ceceli konserine vatandaşlar yoğun ilgi gösterdi. Konser alanına gelen Mustafa Ceceli büyük bir hayran kitlesi tarafından coşku ile karşılandı. Konserde birbirinden güzel şarkılar söyleyen Ceceli'ye hayranları eşlik etti. Konser alanında özel güvenlikçilerin güvenlik önlemleri yetmezken, polis ekipleri yardımda bulundu.\n\nGERGİNLİK NEDENİYLE SAHNEDEN AYRILDI\n\nYaklaşık 4 bin kişinin katıldığı konserde bir grup, bariyerleri aşıp Ceceli'ye ulaşmak isteyince gerginlik yaşandı. Mustafa Ceceli ise yaşanan gerginlikte konserini erken bitirip sahneden ayrıldı.\n\nPOLİS MÜDAHALE ETMEK ZORUNDA KALDI\n\nMustafa Ceceli'nin sahneden erken inmesini protesto eden kalabalık, sahneye taş ve pet şişeleri attı, çöp konteynerlerini devirip caddede bulunan yolcu duraklarına zarar vermeye başladı. Yapılan uyarılara rağmen dağılmayan kalabalığa polis, biber gazıyla müdahale etti\n\nDağılmayan göstericiler TOMA ve polis ekiplerine taş atarak sokak aralarına kaçtı. Çıkan olaylarda atılan taşlardan dolayı iki gazeteci çeşitli yerlerinden yaralandı.\n\nTÜRK BAYRAĞINI İNDİRME GİRİŞİMİNDE BULUNDULAR\n\nÇıkan olaylar sonrasında bazı göstericiler Atatürk anıtında bulunan bayrakları indirme girişiminde bulunurken, polis ekiplerinin müdahalesi sonrasında göstericiler sokak arasına kaçarak kayıplara karıştı.\n\nSokak arasına kaçan göstericiler belediye duraklarına, çorba dağıtılan noktaları taşlayarak kırdı. Bazı göstericiler ise çöp konteynırlarını devirdi.\n\nKonserde çıkan olaylar sonrasında güvenlik önlemlerini alan güvenlik ekipleri yaptıkları çalışmaları sonucunda 11 kişiyi gözaltına aldı.	5	2015-05-06	q	q	5
\.


--
-- Name: magazinhaber_haberyorum_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('magazinhaber_haberyorum_seq', 1, false);


--
-- Name: magazinhaber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('magazinhaber_id_seq', 1, false);


--
-- Name: magazinhaber_tiksayisi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('magazinhaber_tiksayisi_seq', 2, true);


--
-- Data for Name: sporhaber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sporhaber (id, haberbaslik, habericerik, haberyorum, habertarih, haberresimurl, habervideourl, tiksayisi) FROM stdin;
1	Beşiktaş İkinci Başkanı: Slaven Bilic Gidebilir\n	Beşiktaş İkinci Başkanı Çebi, "Bilic yeni sezonda kalacak veya kalmayacak diyemeyiz. Bu 7 maçın ardından her şey kesinleşecek." dedi.<br>Beşiktaş İkinci Başkanı Ahmet Nur Çebi, hakkında sezon sonunda ayrılacağı iddiası bulunan takımın hocası Slaven Bilic hakkında önemli açıklamalarda bulundu.\n\n"ŞİMDİLİK KESİN BİR ŞEY SÖYLEYEMEYİZ"\n\nKulüp olarak Süper Lig'de şampiyonluk yaşamaya kilitlendiklerini belirten Çebi, 7 maçın ardından takımdaki birçok şeyin şekilleneceğini söyledi. Deneyimli yönetici, dünkü takım çalışmasının ardından yaptığı açıklamada, "Slaven Bilic'in durumunu şimdiden konuşmaya gerek yok. Kesin olarak kalacak ya da kalmayacak diyemeyiz. Bu 7 maçın ardından her şey kesinleşecek" diye konuştu.<br>"3 KRİTİK MAÇ OYNAYACAĞIZ"\n\nCamia olarak bütün planlarını şampiyonluk üzerine yaptıklarını söyleyen Ahmet Nur Çebi, "Süper Lig'deki 7 haftalık periyotta oynayacağımız; Karabükspor, Trabzonspor ve Galatasaray maçları, kaderimizi belirleyecek. Bu 3 mücadeleyi kayıpsız geçersek şampiyonuz. Buna yürekten inanıyorum" ifadelerini kullanıldı.	1	2015-04-28	s	s	49
2	Mourinho'dan inciler	Chelsea Teknik Direktörü Jose Mourinho, Arsenal taraftarlarının tepkileri ile ilgili ağır açıklamalar yaptı.\n\nPortekiz teknik adam şu ifadeleri kullandı:\n\n  >>Sıkıcı olan 11 sene ligi kazanamamak. Bir takım tutuyorsunuz şampiyon olmasını 11 sene bekliyorsunuz bence bu sıkıcı..11 sene Premier ligi kazanamamak sıkıcı.\n\n  >>Kendi evinizde oynuyorsunuz kazanmanız gerekiyor hocanız 9 numarayı çıkartıyor. Belki Arsenal seyircisi Welbeck ve Giroud^yu yanyana görmek istiyor maçı kazanmak için hocaları 9 numarayı oyundan çıkarıyor. Sıkıcı olan bu, biz değiliz.\n\n  >>5 Puana ihtiyacımız var. Salı akşamı Leicester, pazar günü Crystal Palace ile oynuyoruz. Bunu gerçekleştirdiğimiz anda ligin ilk haftasında olduğu gibi yine ilk sırada olacağız.\n\n<h3>SOYUNMA ODASINDA TERRY'YE SÖYLEDİM</h3>\n\n'Bugüne kadar Chelsea'deki en iyi performansını gösterdiğini.John Terry klasiği diyebiliriz. İlk sezonumda Highbury'de yine çok iyi oynamıştı fakat bugünkü performansı ders verir nitelikteydi.Arkadaşlarına yardım, topu tehlikeli bölgeden uzaklaştırma, kademeye girme, topun arkasında olma rakibe şan vermeme ve oyunu okuma özelliklerinin hepsini sahaya yansıttı.\n\n<h3>NEDEN SANTRFORSUZ OYNADIM</h3>\n\n Cumartesiye kadar Drogba takımla çalışmadı. Ben de taktiğimi Oscar'ı santrfor olarak oynaymak üzerine kurdum.İkinci yarıda Drogba üzerinden kontratak oynadık. Her topu kazandığımızda taktik faul yaptılar.	2	2015-04-28	s	s	13
\.


--
-- Name: sporhaber_haberyorum_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sporhaber_haberyorum_seq', 1, false);


--
-- Name: sporhaber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sporhaber_id_seq', 1, false);


--
-- Name: sporhaber_tiksayisi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sporhaber_tiksayisi_seq', 2, true);


--
-- Data for Name: tekonolojihaber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tekonolojihaber (id, haberbaslik, habericerik, haberyorum, habertarih, haberresimurl, habervideourl, tiksayisi) FROM stdin;
2	Türkiye’nin ilk -güneş otobüsü- ODTÜ’den	ODTÜ Güneş Enerjisi Araştırma Merkezi ve bir firma ortaklığında, yüzde 100 yerli imkanlarla geliştirilen teknoloji sayesinde verimli elektrik enerjisi üretebilen, “Türkiye’nin ilk güneş paneli destekli otobüsü” yollara çıktı.<br/>\n<iframe width="560" height="315" src="https://www.youtube.com/embed/Ws6Wj_NEJco" frameborder="0" allowfullscreen></iframe><br/>\n\nOtobüsün tanıtımı amacıyla ODTÜ GÜNAM araştırmacıları, Enerji Bakanlığı yetkilileri ve davetlilerin katılımıyla MAN Türkiye A.Ş tesislerinde tören düzenlendi.\n\nODTÜ GÜNAM Müdürü Prof. Dr. Raşit Turan, burada, yaptığı açıklamada, güneş ışığını elektrik enerjisine çevirmeyi mümkün kılan fotovoltaik teknolojinin, son yılların giderek sanayileşen, en önemli yüksek teknolojili yenilenebilir enerji türü haline geldiğini anlattı.\n\nTürkiye’nin endüstriyel ihtiyaçlara cevap verebilecek ölçekte, bu teknolojiyi yapabilen en önemli kuruluşunun GÜNAM olduğunu ifade eden Turan, merkezin aynı zamanda Türkiye’nin çevresindeki ülkeler içinde de endüstriyel boyutta güneş paneli üretebilen tek merkez olduğunu bildirdi.\n\nodtu-gunes-otobusu	2	2015-04-24	22	22	12
1	Bosch, 100'ün üzerinde üniversite mezunu arıyor	\nDünya genelinde ise Bosch Grubu 12.000 yeni mezunu işe alınacak.\nYazılım tasarımı ve geliştirme için işe alınacak çalışanların sayısı artıyor.\nBosch Türkiye , 2015 yılı içerisinde 100’ün üzerinde üniversite mezunu işe almayı planlıyor. İşe alınması planlanan her dört çalışandan üçü mühendislik alanında olacak. Makine ve elektrik mühendislerine yönelik iş imkânlarının yanı sıra, Bosch Türkiye IT eğitimine sahip yeni mezunlar için de iş imkânı sağlıyor.\nŞehirleri birbirine bağlayan, arabaları online hale getiren, bir uygulama aracılığıyla ısıtma kontrol sistemlerine erişimi sağlayan ve tedarikçilerini otomatik olarak tedarik zincirine entegre eden Bosch, dünya genelinde 12.000 yeni mezun alımında da bu doğrultuda ilerleyerek sistem ve yazılım mühendisliğinden mezun gençlerin alımına öncelik verecek. Eğitimli mezunların işe alımı konusunda en büyük ihtiyacı duyan ülke, 3.200 yeni işe alımla Hindistan olurken, bu ülkeyi 2.600 yeni işe alım planlayan Çin ve 1.200 yeni işe alım planlayan Almanya takip ediyor.\nBosch Yönetim Kurulu Üyesi ve Endüstriyel İlişkiler Yöneticisi Christoph Kübel, dünya genelinde işe alım trendleriyle ilgilişunları söyledi: “Yazılım tasarımı ve geliştirme için işe aldığımız çalışanların sayısını arttırıyoruz. Mobilite çözümlerinden endüstriyel teknolojiye kadar bağlanabilirlik her iş sektöründe artış gösterdiğinden, yazılımın önemi de artıyor. Yazılım tasarımıve geliştirmeye yönelik ihtiyaç duyulan çalışan sayısı, gelecekte artmaya devam edecek.”\nBosch, 2020 yılı itibarıyla liderlik pozisyonlarındaki kadınların oranını dünya genelinde yüzde 20'ye çıkartmayı hedefliyor. Kadınlara kariyer yollarında yardım ve destek sağlamak üzere Bosch, kadınlara özel mentör programları, seminerler ve eğitim kursları sunuyor. Bunun yanı sıra kadının iş hayatından kopmaması için de Bosch Türkiye’de kadın çalışanlar çocukları bir yaşına gelene kadar yarızamanlı olarak çalışabiliyor. Bunun için herhangi bir onay almaları gerekmeden sadece yöneticilerine bilgi vererek yapabiliyorlar.	1	2015-04-24	dasd	dsadasd	19
\.


--
-- Name: tekonolojihaber_haberyorum_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tekonolojihaber_haberyorum_seq', 1, false);


--
-- Name: tekonolojihaber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tekonolojihaber_id_seq', 1, false);


--
-- Name: tekonolojihaber_tiksayisi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tekonolojihaber_tiksayisi_seq', 2, true);


--
-- Data for Name: turkiyegundem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY turkiyegundem (id, haberbaslik, habericerik, haberyorum, habertarih, haberresimurl, habervideourl, tiksayisi) FROM stdin;
1	Türkiye deki Masonlar	Türkiye’de bir çok devlet adamı, sanatçı, din adamı, yazar Masondur. Aşağıda bu isimlerin çoğunu sıraladığımızda normal yaşamlarında birbiri ile halef selef olmuş, değişik siyasi gruplarda yer almış, kimi zaman değişik siyasi yaklaşımları benimsemiş olan kişilerin olduğu kolayca görülebilecektir. Günlük siyasi çekişmelerin, kişiler arası her türlü ayırım ve ayrıcalığın dışında kalmayı ilke edinen Masonluğun insan sevgisi, özgürlük, eşitlik gibi temel ilkeler dışında bir yaklaşımı benimsemesinin mümkün olmadığının belki de en güzel göstergesi budur.\n\nAşağıda Türkiye’de tanınmış halen hayatta olmayan bazı Masonlar sıralanmaktadır. Bu isimlerin bilimin, düşüncenin evrenselliğini ortaya koyan birer örnek oluşturduğu açıkça görülmektedir.\n\nSİYÂSİLERSabancılar\nKoç grubu\nKaramehmet\nUzan grubu\nRahşan Ecevit\nİsmail Cem\nTansu Çiller\nŞükrü Sina Gürel\nErcan Karakaş\nBülent Tanla\nCoşkun Kırca\nKemal Derviş\nCâvid Bey\nNuri Conker\nAhmet İsvan\nOsman Kibar\nHayrettin Erkmen\nTuran Güneş\nSebâti Ataman\nEmre Gönensay\nNaim Talû\nSalih Bozok\nAka Gündüz\nTurhan Kapanlı\nMithad Şükrü Bleda\nSümer Oral\nAli Dinçer\nEkrem Alican\nCem Kozlu\nFatin Rüştü Zorlu\nSabiha Sertel\nŞ. Hüsnü Değmer\nKıbrıslı Kâmil Paşa\nAhmed Vefik Paşa\nFaik Nüzhet\nTayyibe Gülek\nSüleyman Demirel\nSİNEMA-TİYATRO\n\nHaldun Dormen\nHulûsi Kentmen\nAyhan Işık\nKenan Işık\nAziz Rutkay\nDoğa Rutkay\nAziz Basmacı\nYıldız Kenter\nMüşfik Kenter\nLeyla Gencer\nHalûk Bilginer\nMemduh Yükman\n\nTELEVİZYON\n\nAli Kırca\nAli Baransel\nM. Ali Birand\nMurat Birsel\nDeniz Arman\nBÜROKRASİ\nGazi Erçel\nMetin Yalman\nOsman Olcay\nOsman Kulin\nSadun Terem\nKaya Toperi\nGaazi Yaşargil\nS. Kâni İrtem\nOnur Öymen\nÖzdem Sanberk\nHüseyin Poroy\n\nGAZETECİLER\n\nGüneri Civaoğlu\nCüneyt Arcayürek\nAhmed Emin Yalman\nNazlı Ilıcak\nCengiz Çandar\nCanan Barlas\nAltan Öymen\nÖrsan Öymen\nAbdi İpekçi\nNail Güreli\nGüngör Mengi\nYusuf Ziya Ortaç\nAli Sirmen\nAydin Emeç\nÇetin Emeç\nÜlkü Arman\nSedat Simâvî\nErol Simâvî\nAli Nâci Karacan\nNadir Nâdi Abalıoğlu\nYunus Nâdi Abalıoğlu\nAli Gevgilli\nRuhat Mengi\nLeyla Umar\nİlker Sarıer\nHasan Tahsin\nMurat Birsel\nFazlı Necib\nNecmi Tanyolaç\nYılmaz Çetiner\nErtuğrul Özkök\nEmin Çölaşan\n\nEĞLENCE\n\nSezen Aksu\nNilüfer\nBurak Kut\nNeco\nSibel Egemen\nCiğdem Talu\nEgemen Bostancı\nMurat Arkan\nPerran Kutman\nHarika Avcı\nOzan Orhon\nIşıl Özışık\n\nSERBEST MESLEK\n\nAtilla Dorsay\nCemil İpekçi\nUğur Civelek\nYıldırım Mayruk\nMuvaffak Benderli\n\nKARİKATÜRİSTLER\n\nCemal Nadir Güler\nSemih Poroy\nAli Ulvi Ersoy\nAltan Erbulak\nTekin Aral\nOğuz Aral\nPiyale Madra\nBedri Koraman\n\nSANAYİCİ – İŞADAMI\n\nNejat Eczacıbaşı\nBülent Eczacıbaşı\nFeyyaz Berker\nFeyyaz Tokar\nCem Boyner\nAli Koçman\nDinç Bilgin\nCan Paker\nÖmer Çavuşoğlu\nHalil Bezmen\nDilber Ailesi\nRona Yırcalı\nSelahattin Göktuğ\nFuad Sâdıkoğlu\nFerdi Vardarman\nÖner Akgerman\nM. Cemil Merzeci\nZiya Taşkent\nCem Uzan\nAli Koç\n\nYAZARLAR\n\nHâlide Edip Adıvar\nOrhan Pamuk\nYaşar Kemal\nMuazzez Berkand\nNâzım Hikmet Ran\nAzra Erhat\nVedat Nedim Tör\nYaşar Nâbi Nayır\nCelal Sâhir Erozan\nEmil Galip Sandalcı\nAli Cânip Yöntem\nA. Hamid Tarhan\nŞinasî\n\nÜNIVERSİTE\n\nKemal Gürüz\nKemal Alemdaroğlu\nNermin Abadan-Unat\nSulhi Dönmezer\nTalât Halman\nGündüz Gedikoğlu\nEser Karakaş\nH.Veldet Velidedeoğlu\nSıddık Sâmi Onar\nİlhan Arsel\nSâhir Erman\nBülent Tanör\nNur Serter\nTunç Erem\n\nASKERLER\n\nÇevik Bir\nAli Fuad Cebesoy\nAm. Sait Halman\nTuğg. Halit Göktuğ\nYarb. Selim Soley\nTümg. Ömer Z. Dorman\nKur.Alb. Osman Köksal\nTümg. Sırrı Öktem\nGen. Cahid Tokgöz\nGen. Zeki Soydemir\nGüven Erkaya\nRefik Tulga	1	2015-04-24	ssds	ssss	448
2	Türkiye’nin ilk yerli otomobili Devrim arabaları	Türkiye’nin ilk yerli otomobili olan Devrim’in hikayesini duymuşsunuzdur. 2008′de sinemaya da uyarlanan Devrim arabalarının hikayesinin sonunu herkes başarısızlıkla bilir.\n<iframe width="560" height="315" src="https://www.youtube.com/embed/vaGtkXBT9gg" frameborder="0" allowfullscreen></iframe><br/>\n Aslında otomobil yapılmıştır ama sonrasında mühendislerin benzin koymayı unutmalarından dolayı araba yolda kalmıştır ve sonunda Türklerin araba sevdası hüsrana uğramıştır.\n\nTabi durum bu olunca her zamanki gibi ağzımıza sakız olmuş bir lafı otomobil üretimi konusunda da sıkça tekrar etmeye başlamışız: Türkler otomobil yapamaz.\n\nSiz de hala Devrim arabalarının başarısız olduğunu zannediyorsanız, olayın iç yüzünü bir de yaptığımız araştırmalar neticesinde derlediğimiz bu yazımızdan okuyun.	2	2015-04-24	ds	dsa	398
3	Döviz Hakkında kısa bir söyleşi	Bilindiği üzere, Türkçe'de yabancı ülkelerin paraları döviz olarak adlandırılmaktadır. Bir ülkenin para biriminin başka bir ülkenin para birimine dönüştürülmesi işlemine döviz işlemi denir.\n<iframe width="420" height="315" src="https://www.youtube.com/embed/wgvNcBeCODk" frameborder="0" allowfullscreen></iframe><br/>\nDöviz günümüzde bir yatırım aracı olarak da kullanılan iktisadi bir mal niteliğindedir. Döviz fiyatları arasında doğan farklardan kar elde edilmeye çalışılır. Döviz fiyatlarına döviz kuru da denir. Döviz kurları ülkelerin günlük ekonomik şartlarına göre anlık olarak değişir. Döviz piyasasına hakim olmak isteyen biri bu gelişmeleri iyi şekilde takip etmelidir. Biz de Bigpara olarak ziyaretçilerimize en güncel döviz fiyatlarının sunmaya çalışmaktayız. Bigpara Döviz sayfasından döviz kurlarını takip etmenin yanı sıra döviz hesaplama işlemleri de yapılabilmektedir. Bigpara'nın döviz çevirici aracı ile farklı ülkelerin para birimleri arasında çeviri işlemlerini kolaylıkla yapabilirsiniz.	3	2015-04-24	dasdas	dsadasdas	405
\.


--
-- Name: turkiyegundem_haberyorum_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('turkiyegundem_haberyorum_seq', 1, false);


--
-- Name: turkiyegundem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('turkiyegundem_id_seq', 1, false);


--
-- Name: turkiyegundem_tiksayisi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('turkiyegundem_tiksayisi_seq', 4, true);


--
-- Data for Name: uyeler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY uyeler (uyeid, uyead, uyesoyad, uyeyas, uyetel, uyeeposta, uyesifre) FROM stdin;
1	aslan	kaplan	88	72727272	aaa	1234
2	abbas	g	58	44555	kk	1234
3	delikemal	kemaldedikya	89	yok	asd@dsa.com	1
4	asag	dddddd	33	626272772	a@hotmail.com	11
5	serkan	ekincu	24	63637373	serkan@outlook.com	serkan
6	serkan	ww	22	dsd	ww	1234
7	Taner	Orak	12	TAENER	tntfg@dfdf.com	123456
8	ebuzer	kanat	1	1	asd@asd.com	1
9	serkan	sanane	25	0272773	a@g	12345
\.


--
-- Name: uyeler_uyeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('uyeler_uyeid_seq', 9, true);


--
-- Name: anasayfa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY anasayfa
    ADD CONSTRAINT anasayfa_pkey PRIMARY KEY (id);


--
-- Name: dunyagundem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dunyagundem
    ADD CONSTRAINT dunyagundem_pkey PRIMARY KEY (id);


--
-- Name: ekonomihaber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ekonomihaber
    ADD CONSTRAINT ekonomihaber_pkey PRIMARY KEY (id);


--
-- Name: magazinhaber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY magazinhaber
    ADD CONSTRAINT magazinhaber_pkey PRIMARY KEY (id);


--
-- Name: sporhaber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sporhaber
    ADD CONSTRAINT sporhaber_pkey PRIMARY KEY (id);


--
-- Name: tekonolojihaber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tekonolojihaber
    ADD CONSTRAINT tekonolojihaber_pkey PRIMARY KEY (id);


--
-- Name: turkiyegundem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY turkiyegundem
    ADD CONSTRAINT turkiyegundem_pkey PRIMARY KEY (id);


--
-- Name: uyeler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY uyeler
    ADD CONSTRAINT uyeler_pkey PRIMARY KEY (uyeid);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

