PGDMP     0                    {            Shop    15.2    15.2 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16398    Shop    DATABASE     z   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop";
                postgres    false            �            1259    16400    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16399    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    16407    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16406    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    16414    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16413    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    16421    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16420    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    16430    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16440    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16439    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    16429    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    16403    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    16410    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16417 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16424 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16433 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16443    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    16400    category 
   TABLE DATA                 public          postgres    false    215   r9       *          0    16407    image 
   TABLE DATA                 public          postgres    false    217   :       ,          0    16414    orders 
   TABLE DATA                 public          postgres    false    219   A       .          0    16421    person 
   TABLE DATA                 public          postgres    false    221   :C       0          0    16430    product 
   TABLE DATA                 public          postgres    false    223   �D       2          0    16440    product_cart 
   TABLE DATA                 public          postgres    false    225   �Y       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 8, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.image_id_seq', 115, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 46, true);
          public          postgres    false    218            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 6, true);
          public          postgres    false    220            C           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 59, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 23, true);
          public          postgres    false    222            �           2606    16405    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    16412    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    16419    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    16428    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    16445    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    16438    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    16447 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    16453 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3212            �           2606    16463 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3206    215            �           2606    16458 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    219    223            �           2606    16448 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3214    223            �           2606    16473 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3214            �           2606    16468 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3212            (      x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0��.l���b�
v]l���b��6�kZsy�f���Y�]��[.v�a�9Ȉ������ �S�      *     x���;�l����+&��4�nB�0d���
l>�5$�°���c��d1�`kIVU=_~�釿������y|����Ϗ�ۯ������X��_��~��_����G��/���������������Rbm���H��������8<qx��?�����G���O_N����)W�Q+�1+ym�JY����=��lS��Hc�D�q�:$Q0Y���Y�3�K�B�g�!�E-1nu�A�-�FHe�ڞ�]���Cq35����\&5օ3�ʵ-���6� �cO.Jq�LY�k�S�(��X.�cɸ�c�sF��Q�Z`�ZI8YNY�o�L���C��d��Iy(J6��9[r��{�%3$۰���K�2n���������[�K
$�����`w&�����Zë&{�wI�mkmi�A+ȶ�Jd�A�G�#֒/�ȱ䶏LV$FB�	�D�B�ژ9��>��>���;��p���YU�eՎ���s.����j��Ir���]Y��=��.��Kn�ش��&�iNMg�!T�(�r��N.�l�ډg܎�8`]m�W3��e�r,��+�!��HZV	��d�)*����>�;��f�uƢ(�Ȕ�]�Ͳ����>�;������T
��������[K�^�J\�)��؎:Pn�O^����(}�%7}�z�W�a@A��CNR��9p��ǒ/�T�m�N\"l��D���:���e�s�M���Y��>�x��#��xL��'­]�9�|�����Z�8e\ ���L��\�E�s�M�9p�F��ds�y�s��S�]p�c�%7}�/��J�h��:�*�d��].�ر�
����3w���^�H
o�N$���Ϲ�O[%B!�4#I�jhK��*A�}�%7}VԖ&�E�X��\�� -�yZ��}�%�O1��"��m�ʠHD�z�5�q��\rӇg�h�/�r$m���{�����O=����K-/}bFuY����1���`��9�|Ug���N��ȏ�`]p*+G�Pl%��s.��3Z�)�:k�ҕ9�n)>)X��9���m��>}�R�8*F�g�=��K�7��%7}P�*������,�eKA��^�	|���O��!Y) 5��JD%��Wj�ba\�y���4�)
%�ٰ�C=�<��A��@o�� 2@��)aUG��I�tPkuTK7�5e(�f�[$T+��'NU�(͵9�%%�Os#[䚌>��=+
��I�g�aԄ���P8��ʩE��[�����ؿ4ڪi�����й�PI\̀��u��)N�uOl& ���s�Wjm��h����P�R�O�t����: ����ȻC�.��$h~%(�j�����n�u�UT������c���/������ާ�C;3�uT�����m����b�=t��=�Yvs��ʗ�ӱ����2���C���J�H��J_�k�uo�,ڬ򌹇x{�\��!�F*Rl̈́���E-�D~��K��{��A��[A(s�	,���0F�������9��t�vt�1rk���h�g�Z�+,�����1֫��[{(x���{e�UV@����;�82'�a�Áw�s���"d�Q��}�5�_����:a p��b�uOd�;�^jW��>͍��k�w!,����_tн��?����d�8���U�wž�fe�r���&���ʋ�E�΅pY��{��S��й�F�^/3�D1&�8X����y
���o�k�A���ߏH�b"e�	c;BKUnm�O������      ,     x����j�@�}�bvI�c�m.G]u�E��Ф�iF��6���N��h�Ƞ��.���G����ï����Ӭ���"�W��o��n�g&������v׿����,��]����f���v����zXoY-_��7��O��o�|���������햀؂X"C�@l�́��ֳ
��,d5e�\�9�SI�:ep|���y��@��q�!���Og���3��!Lg��06Lup�C�J���h�Ko5d��Ņ�}�⯘%���k�q|2�t�@�ޏ�Õ�1 �H�:���`҂�l����r�\�]Ȓ9�����x��h��JsЁ!���sO�h(��.�����,�W�=�e������#>�O��o7!Ⴂ�"�E@wRL�8��3Dm-A@%>hBð��!4Ǫr�%��)׿�mU�F.֕ؕ��6)��$d�%�î>G��~�&�6Mò�m�y �?J�	�q,�Vȣ��Z+�ɕ�'I��'�T�i�4��s�wq��8�Uqs�3�6'      .   �  x���͎�@�O����Ā�@̬��iP����LPJ,A(����$fb2�vws�{��䚶�c�3mr�~��g����{��ˊ��S�EU��(���s>�z�ýISnr�H)N�a,Ecq6ނz�aX�Gh�6(��p.�?�.9=seX���0*��(����p����������K��J�'�T�����H���4��OX.L.��&Ј hS��.��B���s��e�?�ɏ¤'X�46��֙�T'����|o�<��"�#K��'����n-�%���������BHW��� Y�V�B��Vkz���~��^VN����f�@�t��b��p͟\E�,�w��X�;W(��%�.ҙm�!¶{����@9����o�/v����R�&�DZP��i���Qfx���`�j&�!�61�k��F�o���      0      x��\�nױ}�W��%�� R-�O�0 ف��5`(��&�t�7Ό(J�$"�sA.v��!����i�9W���!_���j_�����Id�t�벪jU�����O>����������h�]y��uwm'�Լ�H���b������pm��`����Hl7���������F���ِ_�������C�qMn�xk��_4�_N~���?����ҵF���n�n$o�_�<ˇų|\��Iޗ_{y7/�b/��/E�x��`{�f��/������4ɟ��7�S����^�D/-yv/�\I�/�1?>��˳u�aq���6ʧrm _�-�I>�u�n����H��+�{��i��v��=�lE�Hpӱ<�-�ʥD��M��xL���N�gI��ȇ��\���([��l�\��i"��d��� ���A��-��~�,я��S���Ĭ�d�z.��8Iޣ���s}fC�<ѭ��D�Gz��<Iw2���L��N�"�g��L�53���iPO�g-��'	䶯R��#UH����g=��NU��!���G�=�E�I��[�Ԟ�<�T��*���W}*M嗱.���ȧܛH�g�zi˂,�*=7�Uk*���\Np���Į��悟�=�,H�-�eŁ��n�� �b�av�����V"��r��3 Q���TK�@a���C���h�y��;�Pf�L��h�	���G�����I'�syn��C�.�f�=ıqi��;�
@$�m�~j����N��^��u3#���7������|�XM���5�R�j�r�X�@Y�o�~�2���st_�4�����Wg� M1.�K�ޞ~��:���*b�=����RB�^���w�1�����c����v#�y��ի��?n~��ye{�mE�/bO��\���ήD��'��2�K�^��b�rm��o���Ɗ�+��:�-�N�p��
`Պ!�����V�Շ�k�������r]�|��'����j��]����J���B(�!�������ő��ԞvZBREً��9!�69�e����p�T�����%���dﲓ3��v
���@Hc���q �)�L�O��O��փ����	M.&�sŠv`@m�����x�y�^�ob�p�X�Ǝ��Q�a�7�8ܠ�<N-,�LD�4��l��L�!Y-���,�%�hdVnƄ5'7|��`�!�	q���<�W�#��)̢�dG��s��`�c�n�-$� R���F�'�������(�-�\�	,����?l~���X�\[�1���:�.��j7�}	���<�^."c�@���������W���D%d��%t�zD���z��̵���������^�s5F3��SࡦL��V���}�cR��V{��ֵ}6B���ᖑEi�&yJ	��K{������э�����;G�^�bp�8MO�O�ީ��|0@��H�A��е�eH#�Њ&ğL�;[=s��u*C�
��1�<
��e-:�B��!�`f��p~+V��sD���b�w���6�ۻ�m$�m|�H�dC��۠�5�nom�z�s��)CS�����wi����vss�aAD���wt�M8�G����ՃP%o����������O��h�+��+�$-f��ɟ!j�x���#��/�|���֯v^�ys�_=����>!�7��p����
�{�5��ǌE%��s�Ѣڽ�г {��μC��J T���@�T蘶�d�xJ�ӫpe�� Y_�MΒ6B60���$e(ص�i�&g��-�R��HjZ>^IĄ���x]�͜�|D3�	�~s�t1��W�Dς��ϊ�C3�L-T�}�P+cG.���G�� �NO	{f�-S��XMS�H�E�t�:zͪxjI��@�M�� ��K����V�������{�J�ՠ4a�β�A���ji��|\7�nԨ'�F<B)��7�Q=y1���1����-Ӕ�<
-����~� R��t@��#Wc�K�~9�,E�VU���1e����H�-bAT.a���tK�ll�M�����������S7�Sdg�
����Ф�Z��j�)B鑦�S�;[���nJ���d��/йa@%A�L d���DQg������u$�1U�;Y2�#�M�rw��H�i$̄5B��2��<8�8t�KC+`\.�G�����=Գ8�ե
��G�K�ʭ��]Z�����(�)��ߦ@�=|��B��+����y� ";6h�M\ql������'ut���7 �Wbt�Xs�0�TS�O�>°G:����|���}��a	��(��^ob�FCT���j���Bt.e��`�1�%0�Ӱ�j�6���OY)�-�
a[?��;�dk,ᴦ�S6��1��!�V�J)N��ء�'':@�y�0:%J�,ׁ�\�1��@�*�?�C|�������j�D�C� �9�WΆ���C�L�M;�,����KW_�6�9_W oL6�N�4� G�X*2f�(!�]��Ԕ��F�Xɀ\go��^�}]��䉏�έy��~1�������}��a�FF!�Ew�֑�j�9��˗1�9,tm4��<)& X�'�U�,��s0GlY�Kls|AE�;S�j�����?]�軾��@t*ThD[����L��h�ƫ���;���r0뽜ޚ!ԍ�����p��]k_��I��>��t�b����-�t��I���kd#����i5CqB�ު)�)��lXW� _ƿ���@9���p�}�	��_\�_B�=2�G�]�hD ���QP��s
4�2#{-�2F��|
S1�ݪ0R�S][��u	�~�	�M]䀬���B:ek���q�P���P,0�Q��뚥G��>�w�� ۨ�w�]��G�j��!����M׀��3�Y�mU�O���C�O�B����-�r[��k�_+�eS��r^�
�)�3�{��{FB#+Ѥ�ز#Ccث�=t�G�h���g�I�Cڡ(uK䙱(��.��ж�VSdT)Q��EX�jf�#Ƙs��d ��؅�G.�De�����wh\������d�g��8z����mN��{��C����Y߼�����N�X3�ۼJ�4{�gq��V�=P@����9�y��R$�@�cd�c�:sx�F��(��g)�õ#E�������W�ڡ��gPlL�]9�$�3�8�F<�Q."�BG�zՂ��)+U?#B���Xۉ�_!��i���?������IL+r�}�}�u݈��2��H���2��򤣸t~5x.����sG�Ս�;I�e�Ж!f��#+�3V�6I�*��L	]�����43&1�6�o�#�oL�p�" Ѷ+��N'd� ��G��ַ�������9df�8#�#��t+�d�`�������e�c���TiyJ���1��]0<h!��֘?t�;�
�mԤhj�����a�l�K������	�gm����a?[���/Vf$>/7Aӷ�@j�N����S\���@Hq-X�C�q]��l��lsnx�v���jE�ns�1��q�@'s~*��yz��٥{6<���~���]g&F����E�R����w��_�w�rZ�8^ʍ�Q00�˔V�R��LZV�X�C`��Sw�q�(�@ŵ@>��<���e6���N� S߄������@[܉=w-!�><��q���
9�J�͌�����:(LT\�RT�,�0~qev�"봓������|�+���_.�^��TRr·�6���b���x��L�3Osb�����f�-�n����aG~�f&A��~����)�R�tf�t~��������n���dI�L����Y�G��L����	��#�:��K���^��u*����ǃ�ߥ⽔���� �}R�O%JO9?ڊ�0����.m�Z�9�.�����#����7g��F9�m�@꤈�ϝ�ʐ7ё:?��\�����T#��|�V����#�!��?&4	��D��Q�����TЇ�����αy�giY��>.��(�Y����K����E���+�9D �  a 8� |�F���S�>�U�~�\e��g��Q���k����W��8�9�z��G�PR��B����u�U�㨢�WF3V���"A~a_)gaִ�(e�*�ܥ
�Q��'3��q[<c%X<��R��tk>òw1&�їD�O����]BGS42�	9TD`T�:9����y���_;�B7諻�\��� q��.�L6�DY����+5g{'��j�(��ݐ�ǈn缳����Ҕ_$l��x��C��M�ڎ屇g3L0�%#��Q(�">�M�n.�9����5��f�b��8.��"��0��G{9�^GF��L�=�DЄ��c�(�}zLO"����ʍY����z#Y��������իD���%?ݛ�{QQ��C��[]5 ���1&�Y�msm�vl�d��F�/���:�y�W��=o���ߦ�者A����<�Yд�c}iܶc��q �����A�rX�F#�T�*��w��e��t�6��J�{�!d�{���T�zKk��S��5�:�0>�L�bxrS,yyI���
���~cL9���rD-(��uQ��U���CKrhWn�$ĉi,��'͵Տ�|:g���Bua+�Q��6 oU�%� 
���_{������V7.[��?�K��oN�Ua׭j�;��D��׾�����l���H	��Vϵ�fh��#�~\����i��/R����34`+Z,���kx0}�P����(D�����/�y��}vّ���h.�-j`@-�ơ&�=��4�7���po��5��V��/,_�_knV�k}�)[0�����=C9(GV���@����v�Vj>;�Z�{��|93���I��{�BGa�;��G�#�O�$�;6��B�\o����gK�07�H*y�\��E���(�>����~���,$����q��s׽��W�ܑ/�A�1���4��.��@Jg�I[�v�8L�E��%>oV�~��Q��A��Y툗=X�o=��q��'��3Lf��p#��5��J~����1��;"1��鐮p��W��$�1_��ހ����B�fz%�o���ADFo '6�7�J�\�9��Q��*y^P��A��`S��.���3-��� c�/�!�/*գW<�.��~<�Bbg����_D�Z]�`S��]7�U��E�%��/q
��BnҦ���"_�./m�d[1o�~��[�g��4      2   Q   x���v
Q���W((M��L�+(�O)M.�ON,*Q��L�Q(H-*�ϋ3���)�
a�>���
�:
F:
����\\\ x�     