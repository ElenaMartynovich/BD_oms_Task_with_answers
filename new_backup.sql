PGDMP                         w            new_new_oms2    10.5    10.5 Y    Y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            Z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            [           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            \           1262    17653    new_new_oms2    DATABASE     �   CREATE DATABASE new_new_oms2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Ukrainian_Ukraine.1251' LC_CTYPE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE new_new_oms2;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ]           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ^           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    18278    category    TABLE     I   CREATE TABLE public.category (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.category;
       public         postgres    false    3            �            1259    18284    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public       postgres    false    196    3            _           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
            public       postgres    false    197            �            1259    18286    city    TABLE     f   CREATE TABLE public.city (
    id integer NOT NULL,
    name character(20),
    id_country integer
);
    DROP TABLE public.city;
       public         postgres    false    3            �            1259    18289    city_id_seq    SEQUENCE     t   CREATE SEQUENCE public.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.city_id_seq;
       public       postgres    false    3    198            `           0    0    city_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;
            public       postgres    false    199            �            1259    18291    country    TABLE     H   CREATE TABLE public.country (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.country;
       public         postgres    false    3            �            1259    18297    country_id_seq    SEQUENCE     w   CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public       postgres    false    3    200            a           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
            public       postgres    false    201            �            1259    18299    customer    TABLE     {   CREATE TABLE public.customer (
    id integer NOT NULL,
    first_name text,
    last_name text,
    id_country integer
);
    DROP TABLE public.customer;
       public         postgres    false    3            �            1259    18305    customer_id_seq    SEQUENCE     x   CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public       postgres    false    3    202            b           0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
            public       postgres    false    203            �            1259    18307    employee    TABLE     �   CREATE TABLE public.employee (
    id integer NOT NULL,
    first_name text,
    last_name text,
    date_birth date,
    hire_date date,
    adress text,
    notes text,
    id_city integer,
    id_chief integer,
    id_country integer
);
    DROP TABLE public.employee;
       public         postgres    false    3            �            1259    18313    employee_id_seq    SEQUENCE     x   CREATE SEQUENCE public.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.employee_id_seq;
       public       postgres    false    204    3            c           0    0    employee_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;
            public       postgres    false    205            �            1259    18315    order    TABLE     �   CREATE TABLE public."order" (
    id integer NOT NULL,
    date date,
    id_customer integer,
    id_city_ship_adr_ integer,
    id_employee integer,
    delivery_date date
);
    DROP TABLE public."order";
       public         postgres    false    3            �            1259    18318    order_id_seq    SEQUENCE     u   CREATE SEQUENCE public.order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.order_id_seq;
       public       postgres    false    3    206            d           0    0    order_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;
            public       postgres    false    207            �            1259    18320 
   order_item    TABLE     �   CREATE TABLE public.order_item (
    id integer NOT NULL,
    count real,
    historical_price real,
    id_order integer,
    id_product integer
);
    DROP TABLE public.order_item;
       public         postgres    false    3            �            1259    18323    order_item_id_seq    SEQUENCE     z   CREATE SEQUENCE public.order_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.order_item_id_seq;
       public       postgres    false    3    208            e           0    0    order_item_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.order_item_id_seq OWNED BY public.order_item.id;
            public       postgres    false    209            �            1259    18325    product    TABLE     �   CREATE TABLE public.product (
    id integer NOT NULL,
    name text,
    price_unit real,
    id_category integer,
    id_country integer
);
    DROP TABLE public.product;
       public         postgres    false    3            �            1259    18331    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public       postgres    false    210    3            f           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
            public       postgres    false    211            �
           2604    18333    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            �
           2604    18334    city id    DEFAULT     b   ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);
 6   ALTER TABLE public.city ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �
           2604    18335 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            �
           2604    18336    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            �
           2604    18337    employee id    DEFAULT     j   ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);
 :   ALTER TABLE public.employee ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204            �
           2604    18338    order id    DEFAULT     f   ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);
 9   ALTER TABLE public."order" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            �
           2604    18339    order_item id    DEFAULT     n   ALTER TABLE ONLY public.order_item ALTER COLUMN id SET DEFAULT nextval('public.order_item_id_seq'::regclass);
 <   ALTER TABLE public.order_item ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208            �
           2604    18340 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210            G          0    18278    category 
   TABLE DATA                     public       postgres    false    196   �Y       I          0    18286    city 
   TABLE DATA                     public       postgres    false    198   6Z       K          0    18291    country 
   TABLE DATA                     public       postgres    false    200   U[       M          0    18299    customer 
   TABLE DATA                     public       postgres    false    202   �[       O          0    18307    employee 
   TABLE DATA                     public       postgres    false    204   ,_       Q          0    18315    order 
   TABLE DATA                     public       postgres    false    206   �f       S          0    18320 
   order_item 
   TABLE DATA                     public       postgres    false    208   �h       U          0    18325    product 
   TABLE DATA                     public       postgres    false    210   j       g           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 1, false);
            public       postgres    false    197            h           0    0    city_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.city_id_seq', 1, false);
            public       postgres    false    199            i           0    0    country_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.country_id_seq', 7, true);
            public       postgres    false    201            j           0    0    customer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customer_id_seq', 1, false);
            public       postgres    false    203            k           0    0    employee_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employee_id_seq', 1, false);
            public       postgres    false    205            l           0    0    order_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.order_id_seq', 1, false);
            public       postgres    false    207            m           0    0    order_item_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.order_item_id_seq', 1, false);
            public       postgres    false    209            n           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
            public       postgres    false    211            �
           2606    18342    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public         postgres    false    196            �
           2606    18344    city city_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public         postgres    false    198            �
           2606    18346    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public         postgres    false    200            �
           2606    18348    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public         postgres    false    202            �
           2606    18350    employee employee_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public         postgres    false    204            �
           2606    18352    order_item order_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.order_item DROP CONSTRAINT order_item_pkey;
       public         postgres    false    208            �
           2606    18354    order order_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_pkey;
       public         postgres    false    206            �
           2606    18356    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public         postgres    false    210            �
           1259    18357    fki_id_category    INDEX     J   CREATE INDEX fki_id_category ON public.product USING btree (id_category);
 #   DROP INDEX public.fki_id_category;
       public         postgres    false    210            �
           1259    18358    fki_id_chief    INDEX     E   CREATE INDEX fki_id_chief ON public.employee USING btree (id_chief);
     DROP INDEX public.fki_id_chief;
       public         postgres    false    204            �
           1259    18359    fki_id_city    INDEX     C   CREATE INDEX fki_id_city ON public.employee USING btree (id_city);
    DROP INDEX public.fki_id_city;
       public         postgres    false    204            �
           1259    18360    fki_id_city___    INDEX     O   CREATE INDEX fki_id_city___ ON public."order" USING btree (id_city_ship_adr_);
 "   DROP INDEX public.fki_id_city___;
       public         postgres    false    206            �
           1259    18361    fki_id_country    INDEX     H   CREATE INDEX fki_id_country ON public.product USING btree (id_country);
 "   DROP INDEX public.fki_id_country;
       public         postgres    false    210            �
           1259    18362    fki_id_country_1    INDEX     K   CREATE INDEX fki_id_country_1 ON public.employee USING btree (id_country);
 $   DROP INDEX public.fki_id_country_1;
       public         postgres    false    204            �
           1259    18363    fki_id_country_c    INDEX     G   CREATE INDEX fki_id_country_c ON public.city USING btree (id_country);
 $   DROP INDEX public.fki_id_country_c;
       public         postgres    false    198            �
           1259    18364    fki_id_country_c_    INDEX     L   CREATE INDEX fki_id_country_c_ ON public.customer USING btree (id_country);
 %   DROP INDEX public.fki_id_country_c_;
       public         postgres    false    202            �
           1259    18365    fki_id_customer    INDEX     J   CREATE INDEX fki_id_customer ON public."order" USING btree (id_customer);
 #   DROP INDEX public.fki_id_customer;
       public         postgres    false    206            �
           1259    18366    fki_id_employee    INDEX     J   CREATE INDEX fki_id_employee ON public."order" USING btree (id_employee);
 #   DROP INDEX public.fki_id_employee;
       public         postgres    false    206            �
           1259    18367    fki_id_order    INDEX     G   CREATE INDEX fki_id_order ON public.order_item USING btree (id_order);
     DROP INDEX public.fki_id_order;
       public         postgres    false    208            �
           1259    18368    fki_id_product_    INDEX     L   CREATE INDEX fki_id_product_ ON public.order_item USING btree (id_product);
 #   DROP INDEX public.fki_id_product_;
       public         postgres    false    208            �
           2606    18369    product id_category    FK CONSTRAINT     y   ALTER TABLE ONLY public.product
    ADD CONSTRAINT id_category FOREIGN KEY (id_category) REFERENCES public.category(id);
 =   ALTER TABLE ONLY public.product DROP CONSTRAINT id_category;
       public       postgres    false    210    196    2726            �
           2606    18374    employee id_chief    FK CONSTRAINT     t   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT id_chief FOREIGN KEY (id_chief) REFERENCES public.employee(id);
 ;   ALTER TABLE ONLY public.employee DROP CONSTRAINT id_chief;
       public       postgres    false    204    204    2736            �
           2606    18379    employee id_city    FK CONSTRAINT     n   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT id_city FOREIGN KEY (id_city) REFERENCES public.city(id);
 :   ALTER TABLE ONLY public.employee DROP CONSTRAINT id_city;
       public       postgres    false    198    204    2728            �
           2606    18384    order id_city    FK CONSTRAINT     w   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT id_city FOREIGN KEY (id_city_ship_adr_) REFERENCES public.city(id);
 9   ALTER TABLE ONLY public."order" DROP CONSTRAINT id_city;
       public       postgres    false    198    206    2728            �
           2606    18389    product id_country    FK CONSTRAINT     v   ALTER TABLE ONLY public.product
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES public.country(id);
 <   ALTER TABLE ONLY public.product DROP CONSTRAINT id_country;
       public       postgres    false    200    210    2731            �
           2606    18394    city id_country    FK CONSTRAINT     s   ALTER TABLE ONLY public.city
    ADD CONSTRAINT id_country FOREIGN KEY (id_country) REFERENCES public.country(id);
 9   ALTER TABLE ONLY public.city DROP CONSTRAINT id_country;
       public       postgres    false    200    2731    198            �
           2606    18399    employee id_country_1    FK CONSTRAINT     y   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT id_country_1 FOREIGN KEY (id_country) REFERENCES public.country(id);
 ?   ALTER TABLE ONLY public.employee DROP CONSTRAINT id_country_1;
       public       postgres    false    204    200    2731            �
           2606    18404    customer id_country_c    FK CONSTRAINT     y   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT id_country_c FOREIGN KEY (id_country) REFERENCES public.country(id);
 ?   ALTER TABLE ONLY public.customer DROP CONSTRAINT id_country_c;
       public       postgres    false    2731    202    200            �
           2606    18409    order id_customer    FK CONSTRAINT     y   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT id_customer FOREIGN KEY (id_customer) REFERENCES public.customer(id);
 =   ALTER TABLE ONLY public."order" DROP CONSTRAINT id_customer;
       public       postgres    false    2733    206    202            �
           2606    18414    order id_employee    FK CONSTRAINT     y   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES public.employee(id);
 =   ALTER TABLE ONLY public."order" DROP CONSTRAINT id_employee;
       public       postgres    false    204    2736    206            �
           2606    18419    order_item id_order    FK CONSTRAINT     u   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT id_order FOREIGN KEY (id_order) REFERENCES public."order"(id);
 =   ALTER TABLE ONLY public.order_item DROP CONSTRAINT id_order;
       public       postgres    false    206    2744    208            �
           2606    18424    order_item id_product    FK CONSTRAINT     y   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT id_product FOREIGN KEY (id_product) REFERENCES public.product(id);
 ?   ALTER TABLE ONLY public.order_item DROP CONSTRAINT id_product;
       public       postgres    false    208    2752    210            �
           2606    18429    order_item id_product_    FK CONSTRAINT     z   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT id_product_ FOREIGN KEY (id_product) REFERENCES public.product(id);
 @   ALTER TABLE ONLY public.order_item DROP CONSTRAINT id_product_;
       public       postgres    false    210    2752    208            G   U   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QPO��M-.�LV״��$M�P{^~�.�\\ �>(*      I     x���AO�0���>�{��8�@�	�E�MO��u4�}M��|{��������ϛ'M�|�Z@�;�i��S*��A�o�`�[٨��W��u�h���(()��Q��1H��a7�a%K^s틝v�IE nkll�+�~�Ew��8��.�İ/�{f�!lQ��9�uO��v���������p5�7+J�j7�-aJح�p5�UI�\7\�j��7�)����pui�'�(�ͼ�] �3l�������u�b��7�=7gՇV��'�?{�}      K   �   x���v
Q���W((M��L�K�/�+)�T��L�Q�K�M�Ts�	uV�0�QPw+J�KNU״��$I�P�k^zNb^
隍���3�H�j�TZ\��H�^S���`G�5�5z%$��^s���E@���� ڶ|�      M   0  x���Mn�0��9�vN���mEjЕk��7��	hibMD�)E�P��S�=A����-z r%z����ѫ��ŧ�du{�1y���e�Y݂I��:M�t�A�N)��z(u��O�/���Mr<=M&BU&t���'o�V!3��0�QZm�0s��*O1�2���%(����}��辢�40��%K��aJmQJab�r�_����5BY� )����h#�f�)o�r��"�`kG����s��ƌ��A�4u�%�!��3�ɱf�_3 �)M�q0��I�o5�@p�ӁA�
[�Z��b��<A�y!xFմ���YhKJN\�+�b@r��5H�yҦ��i��C� ���8)h �����ZU.�yh�9g�f�� ��״���у�e�7��MrR`���S�
�.�8,�JXڥ�����������A`l��� �=�!� P�LN��2-%��l�P��5�c�B���-v���dS#Ȫ���E�ҷ�Ao��Q�X�E��+*��������%��G�G��ƾZ�&��J��/��WK)�[�;j��?~�L" 3��+��8�w@l���$ׂ��nEǨ+��cg�}�x��W�Cƥ��ߦ&kT��1n���>P{����0������w�$٨��=z��ԭ�;2��h��V��6�;�-=Y%F�
����J,*/I��H��z�3Z�Q7}W+���r��od���(#�/�)綻e��GD��eh��F�ik��1G9�к/��;1 �,F����L�e+ -ڊ��}n��������J�V��%�&h���6��a::�)\*�      O   ]  x�͙�r�6����S3#��Y�^ɉ���x�&��@"$�&��(O��H�v 3��hv��������a�n���v�U+��۵�(�C�S��ƺ�;1e-.k���J�LY#�x���2^a�)��#뇵tG�H��Wz��9�eߗ�߮��ɔM���.:n�Tx�,��Y����x��f��Y?x����:#����o��S�����o>E���d���8�'�
��=�"A��l%`��r�kt�k�{Hҁ.)�l1eU4`�-o�"4�;nq�O<��0t�,�g��n�k�z�x� �&5?�g|�m��?��f��� /c��T�l����[n�O#U:2s��	c��e�%3"+b!�a��
glx'=U����z�����cǍ�/�RbJba�H�d{�*�1T�3���U�ǫ@%q�D(a�Q�<�њJ�2�������;�_E�"��e�j�)d���M���z��&�i��SLY8���^'Z�j�J���,]<���k`�B���
C9-i��H��*��焓�pU�+�+�Y�6[m$)�A�4��t�Ծ���(�^K:.U ;��e\}y�	��'v\��j����p�Ag�n�I�*x�GG��!z���º�{�n`�=�$+����I��GE^�]�M����(���2�t��FWP�����n⭇����U�k�7�H.��0���I�{�XPȒ�H ��8e<D��>����j[iCX�Q3�Y�Q��$*�(���*,���}+I,�q���z�8ٜ@��C��"U�(�rB�x-Um)�Gd
Q*�3���N����ěCʻ�*	w��D�m`�zy�M
�7d燠}��Aq��		<�y��YD͹J�y��=���]���Ђ�'��V�2�D#���Ry�^�����G� }�(x��h��`_Z��R�p&-۴{�XL*v���:�n�>��܇��6�C��<׭�6�N��v.���Ba����]:}/j��{GB#��9�t��=�V�u�]`���Ïe���Xǲ�>�M��(�aС���k� ������1�� jL�v'0k�i���.�p���鄲0,�Jl�l�a���вZla��啣1�)�3c����,�\���2�G�$� �,����-7N�ӯ�p�7V0H^�pJ��=�~�߹7z'&����g��F����h���W0��\L�C��j4q���p�t	=ǁ��	>l�b�
����!x'��a,g��'!����T�c��b���m+���9�o�V�Q��� @�HX? d;���w8����%��oԓ;g�a�($�60N�r��pi�Z�P���i�C�1b�#qit�*�R\aC�p3���<��6�Jw~[QVӥ���em����:�����E���8/a��H,�&`�gf���|�&d/�k�)��C���~�+#E8�~��w�԰�C��	c򌱈��oQk�?W�`�qԜ,4�0;$�;�fO8� �B����!�7,Q��9و�c~="nTbD�iWiw^z.[�(�}��3��/�(Ӵ�������Q+�$C��K��c9��/zul�L&O��0l��h�c�MHW�O@'�~�ۙE8����Q�_�B}8������H
a�E���>pCooD,������	�N@����H�6�..��$J��o�uK�˽�fzr��*[�]��C��އ�-/�|�̢�D�(������*0V%�ʞ1�j-}z�-l-| ��$CY"bdv�����w�� ?��wd�9���
�19��)'
��Fi�q���WGoM���Ң��F�̓��L�0r�Y6�ř�%A�F>����ɰ�B>֢/�� NG�/�
_��l�u��/��9;�y�?��      Q     x�͖Mk�0�����`�}����!�v��[֐�����+�Ȫ�{�t��A�̼3����g��?��_�����x���]�VL����4�}~\���,����{9���y���~:���x�˟�|����o���'q��hp\�O�
�
S),�i�6�bH������C�HC+d+�5��aa$�oC|��T2�.��H���A��H��<�.�B� ���E(���c�er��XN\ި�x�ia&���j��8}_a]X&�\͆�d=�IXMv��4�\���ρ��r��+	��Tr*�J����㫡4X���H`���!�W���K�)h�a�D�tp���nW�$�t��r/�P(�9�� ©�(� �4��S�"ա��)Hf�הyF�,U$��*��HdiG�a�T��eM�@j��ur��~�L��F�[�ED[;
��VE0!���	iu�F$3��䝮�JH}��!.sՐ��l޴�&$C�_�H'�T'Y$M�]�ȮD�l"^�����J���FlI�<���OD��_N �      S   B  x����j�@��>�wa(:��#=���l���UZv`[���7�X��˘�Ǘ|_lΗ��U5�닚��{�ƹ�6-×:�^�n\��n�g��}��	�V�o�[��y��n9�����E*��VPj�Uu|,1�a��4�2ʖ��҈� ��XX֢,�z<�1Ea��=:�������с��A���N�`d�d�;�Ⱥ2�����VX��,��ڳ�8�D����	g�� �I&��H^�9��F�%d���M������"- �����L��y�̕�k��m�a��
��e"�A��hتq��ּ�L�X�%�(~&���      U   A  x���A��0���v��c QOi��R�n�M�J{��q����1m�__�i7�s�}�7o�c�{xٓ���+��J+񮷦�#w�������V	y;��D���l��L3v�^����㷇�K�$v�8�sB�9�����l��Aԃ��4-��Ӳ�y\��W�Q�D�qH̓�� ����s�qh�m��T �k3miB�8�ң*+y}�i�I�q���B��-á-��d�	Dq@�����6H�
+)��~���bz��۱�U��́t[%��X�\�+�hNd)��HQm��<�%� ?��i��,��x2>x��!�Eɒ,��2�p�)j�0%��7�JT�����$��+et��e���X8���6���V#{�UU@�ý�[U�`�\}��W֫z�dm�G���^#H����JZG�JZkp�-C�sȳXh#N$Zi}!eg~�(�x�i�";m�=�gI�Wny�4���"3�Z~�!��b�!���X$`����u�ͯZZ/�UR=�KLw	{�zA����Ii��,(�r��̂W��_�����,�"��yTM�@�W����4co�4���)"     