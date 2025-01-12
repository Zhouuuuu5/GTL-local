PGDMP         .                z        
   gettolearn    14.2    14.2 E    =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            @           1262    17669 
   gettolearn    DATABASE     m   CREATE DATABASE gettolearn WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.936';
    DROP DATABASE gettolearn;
                postgres    false            �            1259    17671    account    TABLE     �   CREATE TABLE public.account (
    id bigint NOT NULL,
    accounttype character varying(255),
    email character varying(255),
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.account;
       public         heap    postgres    false            �            1259    17670    account_id_seq    SEQUENCE     w   CREATE SEQUENCE public.account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.account_id_seq;
       public          postgres    false    210            A           0    0    account_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.account_id_seq OWNED BY public.account.id;
          public          postgres    false    209            �            1259    17680    article    TABLE     �   CREATE TABLE public.article (
    id bigint NOT NULL,
    header character varying(255),
    img_url character varying(255),
    user_contribution bigint,
    user_bookmark bigint
);
    DROP TABLE public.article;
       public         heap    postgres    false            �            1259    17689    article_comment    TABLE     �   CREATE TABLE public.article_comment (
    id bigint NOT NULL,
    message character varying(255),
    user_comments bigint,
    article_id bigint
);
 #   DROP TABLE public.article_comment;
       public         heap    postgres    false            �            1259    17688    article_comment_id_seq    SEQUENCE        CREATE SEQUENCE public.article_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.article_comment_id_seq;
       public          postgres    false    214            B           0    0    article_comment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.article_comment_id_seq OWNED BY public.article_comment.id;
          public          postgres    false    213            �            1259    17679    article_id_seq    SEQUENCE     w   CREATE SEQUENCE public.article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.article_id_seq;
       public          postgres    false    212            C           0    0    article_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.article_id_seq OWNED BY public.article.id;
          public          postgres    false    211            �            1259    17696    article_paragraph    TABLE     �   CREATE TABLE public.article_paragraph (
    id bigint NOT NULL,
    content text,
    index integer NOT NULL,
    sub_header character varying(255),
    article_id bigint
);
 %   DROP TABLE public.article_paragraph;
       public         heap    postgres    false            �            1259    17695    article_paragraph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_paragraph_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.article_paragraph_id_seq;
       public          postgres    false    216            D           0    0    article_paragraph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.article_paragraph_id_seq OWNED BY public.article_paragraph.id;
          public          postgres    false    215            �            1259    17705    article_paragraph_imglist    TABLE     �   CREATE TABLE public.article_paragraph_imglist (
    id bigint NOT NULL,
    imgsrc character varying(255),
    paragraph_id bigint
);
 -   DROP TABLE public.article_paragraph_imglist;
       public         heap    postgres    false            �            1259    17704     article_paragraph_imglist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_paragraph_imglist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.article_paragraph_imglist_id_seq;
       public          postgres    false    218            E           0    0     article_paragraph_imglist_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.article_paragraph_imglist_id_seq OWNED BY public.article_paragraph_imglist.id;
          public          postgres    false    217            �            1259    17712 "   article_paragraph_questions_option    TABLE     �   CREATE TABLE public.article_paragraph_questions_option (
    id bigint NOT NULL,
    option character varying(255),
    question_id bigint
);
 6   DROP TABLE public.article_paragraph_questions_option;
       public         heap    postgres    false            �            1259    17711 )   article_paragraph_questions_option_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_paragraph_questions_option_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.article_paragraph_questions_option_id_seq;
       public          postgres    false    220            F           0    0 )   article_paragraph_questions_option_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.article_paragraph_questions_option_id_seq OWNED BY public.article_paragraph_questions_option.id;
          public          postgres    false    219            �            1259    17719    article_question    TABLE     �   CREATE TABLE public.article_question (
    id bigint NOT NULL,
    answer character varying(255),
    descripton text,
    explaination text,
    paragraph_id bigint
);
 $   DROP TABLE public.article_question;
       public         heap    postgres    false            �            1259    17718    article_question_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.article_question_id_seq;
       public          postgres    false    222            G           0    0    article_question_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.article_question_id_seq OWNED BY public.article_question.id;
          public          postgres    false    221            �            1259    17728    user_learner    TABLE     V   CREATE TABLE public.user_learner (
    id bigint NOT NULL,
    user_account bigint
);
     DROP TABLE public.user_learner;
       public         heap    postgres    false            �            1259    17727    user_learner_id_seq    SEQUENCE     |   CREATE SEQUENCE public.user_learner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_learner_id_seq;
       public          postgres    false    224            H           0    0    user_learner_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_learner_id_seq OWNED BY public.user_learner.id;
          public          postgres    false    223                       2604    17674 
   account id    DEFAULT     h   ALTER TABLE ONLY public.account ALTER COLUMN id SET DEFAULT nextval('public.account_id_seq'::regclass);
 9   ALTER TABLE public.account ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    17683 
   article id    DEFAULT     h   ALTER TABLE ONLY public.article ALTER COLUMN id SET DEFAULT nextval('public.article_id_seq'::regclass);
 9   ALTER TABLE public.article ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    17692    article_comment id    DEFAULT     x   ALTER TABLE ONLY public.article_comment ALTER COLUMN id SET DEFAULT nextval('public.article_comment_id_seq'::regclass);
 A   ALTER TABLE public.article_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    17699    article_paragraph id    DEFAULT     |   ALTER TABLE ONLY public.article_paragraph ALTER COLUMN id SET DEFAULT nextval('public.article_paragraph_id_seq'::regclass);
 C   ALTER TABLE public.article_paragraph ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    17708    article_paragraph_imglist id    DEFAULT     �   ALTER TABLE ONLY public.article_paragraph_imglist ALTER COLUMN id SET DEFAULT nextval('public.article_paragraph_imglist_id_seq'::regclass);
 K   ALTER TABLE public.article_paragraph_imglist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    17715 %   article_paragraph_questions_option id    DEFAULT     �   ALTER TABLE ONLY public.article_paragraph_questions_option ALTER COLUMN id SET DEFAULT nextval('public.article_paragraph_questions_option_id_seq'::regclass);
 T   ALTER TABLE public.article_paragraph_questions_option ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    17722    article_question id    DEFAULT     z   ALTER TABLE ONLY public.article_question ALTER COLUMN id SET DEFAULT nextval('public.article_question_id_seq'::regclass);
 B   ALTER TABLE public.article_question ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    17731    user_learner id    DEFAULT     r   ALTER TABLE ONLY public.user_learner ALTER COLUMN id SET DEFAULT nextval('public.user_learner_id_seq'::regclass);
 >   ALTER TABLE public.user_learner ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ,          0    17671    account 
   TABLE DATA           M   COPY public.account (id, accounttype, email, password, username) FROM stdin;
    public          postgres    false    210   wS       .          0    17680    article 
   TABLE DATA           X   COPY public.article (id, header, img_url, user_contribution, user_bookmark) FROM stdin;
    public          postgres    false    212   �S       0          0    17689    article_comment 
   TABLE DATA           Q   COPY public.article_comment (id, message, user_comments, article_id) FROM stdin;
    public          postgres    false    214   *U       2          0    17696    article_paragraph 
   TABLE DATA           W   COPY public.article_paragraph (id, content, index, sub_header, article_id) FROM stdin;
    public          postgres    false    216   XU       4          0    17705    article_paragraph_imglist 
   TABLE DATA           M   COPY public.article_paragraph_imglist (id, imgsrc, paragraph_id) FROM stdin;
    public          postgres    false    218   ��       6          0    17712 "   article_paragraph_questions_option 
   TABLE DATA           U   COPY public.article_paragraph_questions_option (id, option, question_id) FROM stdin;
    public          postgres    false    220   9�       8          0    17719    article_question 
   TABLE DATA           ^   COPY public.article_question (id, answer, descripton, explaination, paragraph_id) FROM stdin;
    public          postgres    false    222   �       :          0    17728    user_learner 
   TABLE DATA           8   COPY public.user_learner (id, user_account) FROM stdin;
    public          postgres    false    224   �       I           0    0    account_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.account_id_seq', 1, true);
          public          postgres    false    209            J           0    0    article_comment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.article_comment_id_seq', 30, true);
          public          postgres    false    213            K           0    0    article_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.article_id_seq', 3, true);
          public          postgres    false    211            L           0    0    article_paragraph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.article_paragraph_id_seq', 37, true);
          public          postgres    false    215            M           0    0     article_paragraph_imglist_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.article_paragraph_imglist_id_seq', 27, true);
          public          postgres    false    217            N           0    0 )   article_paragraph_questions_option_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.article_paragraph_questions_option_id_seq', 248, true);
          public          postgres    false    219            O           0    0    article_question_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.article_question_id_seq', 62, true);
          public          postgres    false    221            P           0    0    user_learner_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.user_learner_id_seq', 1, true);
          public          postgres    false    223            �           2606    17678    account account_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.account DROP CONSTRAINT account_pkey;
       public            postgres    false    210            �           2606    17694 $   article_comment article_comment_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.article_comment
    ADD CONSTRAINT article_comment_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.article_comment DROP CONSTRAINT article_comment_pkey;
       public            postgres    false    214            �           2606    17710 8   article_paragraph_imglist article_paragraph_imglist_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.article_paragraph_imglist
    ADD CONSTRAINT article_paragraph_imglist_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.article_paragraph_imglist DROP CONSTRAINT article_paragraph_imglist_pkey;
       public            postgres    false    218            �           2606    17703 (   article_paragraph article_paragraph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.article_paragraph
    ADD CONSTRAINT article_paragraph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.article_paragraph DROP CONSTRAINT article_paragraph_pkey;
       public            postgres    false    216            �           2606    17717 J   article_paragraph_questions_option article_paragraph_questions_option_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.article_paragraph_questions_option
    ADD CONSTRAINT article_paragraph_questions_option_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.article_paragraph_questions_option DROP CONSTRAINT article_paragraph_questions_option_pkey;
       public            postgres    false    220            �           2606    17687    article article_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.article DROP CONSTRAINT article_pkey;
       public            postgres    false    212            �           2606    17726 &   article_question article_question_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.article_question
    ADD CONSTRAINT article_question_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.article_question DROP CONSTRAINT article_question_pkey;
       public            postgres    false    222            �           2606    17733    user_learner user_learner_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_learner
    ADD CONSTRAINT user_learner_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_learner DROP CONSTRAINT user_learner_pkey;
       public            postgres    false    224            �           2606    17759 5   article_paragraph_imglist fk2x2peogix5ax76r5cekhwjdnk    FK CONSTRAINT     �   ALTER TABLE ONLY public.article_paragraph_imglist
    ADD CONSTRAINT fk2x2peogix5ax76r5cekhwjdnk FOREIGN KEY (paragraph_id) REFERENCES public.article_paragraph(id);
 _   ALTER TABLE ONLY public.article_paragraph_imglist DROP CONSTRAINT fk2x2peogix5ax76r5cekhwjdnk;
       public          postgres    false    216    3214    218            �           2606    17734 "   article fk4c7s6evbr6hpttpdchsnbhqg    FK CONSTRAINT     �   ALTER TABLE ONLY public.article
    ADD CONSTRAINT fk4c7s6evbr6hpttpdchsnbhqg FOREIGN KEY (user_contribution) REFERENCES public.user_learner(id);
 L   ALTER TABLE ONLY public.article DROP CONSTRAINT fk4c7s6evbr6hpttpdchsnbhqg;
       public          postgres    false    3222    224    212            �           2606    17739 #   article fk8j5ivr0u5c2ad1a4h7eygnwss    FK CONSTRAINT     �   ALTER TABLE ONLY public.article
    ADD CONSTRAINT fk8j5ivr0u5c2ad1a4h7eygnwss FOREIGN KEY (user_bookmark) REFERENCES public.user_learner(id);
 M   ALTER TABLE ONLY public.article DROP CONSTRAINT fk8j5ivr0u5c2ad1a4h7eygnwss;
       public          postgres    false    212    3222    224            �           2606    17769 ,   article_question fk9prrdmu7lvj0r8d9ue8gwejq8    FK CONSTRAINT     �   ALTER TABLE ONLY public.article_question
    ADD CONSTRAINT fk9prrdmu7lvj0r8d9ue8gwejq8 FOREIGN KEY (paragraph_id) REFERENCES public.article_paragraph(id);
 V   ALTER TABLE ONLY public.article_question DROP CONSTRAINT fk9prrdmu7lvj0r8d9ue8gwejq8;
       public          postgres    false    3214    216    222            �           2606    17774 '   user_learner fkg3xvkgynwqq7kswclodtedxf    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_learner
    ADD CONSTRAINT fkg3xvkgynwqq7kswclodtedxf FOREIGN KEY (user_account) REFERENCES public.account(id);
 Q   ALTER TABLE ONLY public.user_learner DROP CONSTRAINT fkg3xvkgynwqq7kswclodtedxf;
       public          postgres    false    3208    224    210            �           2606    17749 +   article_comment fkghmocqkgqs5tkmucf5putw64t    FK CONSTRAINT     �   ALTER TABLE ONLY public.article_comment
    ADD CONSTRAINT fkghmocqkgqs5tkmucf5putw64t FOREIGN KEY (article_id) REFERENCES public.article(id);
 U   ALTER TABLE ONLY public.article_comment DROP CONSTRAINT fkghmocqkgqs5tkmucf5putw64t;
       public          postgres    false    214    3210    212            �           2606    17754 -   article_paragraph fkogyuhxpasrqwb8t4msrp369l9    FK CONSTRAINT     �   ALTER TABLE ONLY public.article_paragraph
    ADD CONSTRAINT fkogyuhxpasrqwb8t4msrp369l9 FOREIGN KEY (article_id) REFERENCES public.article(id);
 W   ALTER TABLE ONLY public.article_paragraph DROP CONSTRAINT fkogyuhxpasrqwb8t4msrp369l9;
       public          postgres    false    216    212    3210            �           2606    17744 +   article_comment fkr7wmdghywun0oo4wvl2sxu61w    FK CONSTRAINT     �   ALTER TABLE ONLY public.article_comment
    ADD CONSTRAINT fkr7wmdghywun0oo4wvl2sxu61w FOREIGN KEY (user_comments) REFERENCES public.user_learner(id);
 U   ALTER TABLE ONLY public.article_comment DROP CONSTRAINT fkr7wmdghywun0oo4wvl2sxu61w;
       public          postgres    false    3222    214    224            �           2606    17764 >   article_paragraph_questions_option fksfxwbc2okwcpor1ykwikb7j4y    FK CONSTRAINT     �   ALTER TABLE ONLY public.article_paragraph_questions_option
    ADD CONSTRAINT fksfxwbc2okwcpor1ykwikb7j4y FOREIGN KEY (question_id) REFERENCES public.article_question(id);
 h   ALTER TABLE ONLY public.article_paragraph_questions_option DROP CONSTRAINT fksfxwbc2okwcpor1ykwikb7j4y;
       public          postgres    false    222    220    3220            ,   2   x�3�tt����LK�K�I533sH�M���K���442615�Jq��qqq B
�      .   a  x�u�M��0���+��7[@Yqb԰�.�
���K)��hE��o��L&�ϼcj��{�o��	��v��rh�U���AL�`^����}�$c�FB[��{<9)���BӚ^�����=+�9>���m����T{C��*h��;�BƤ�W�+Ui����a��Qu�դIH�$�\e}�_\ej�鲭�q}��t���6>����*��kI����j{�D���+���"Qۯ]C35S��H9����W/�h���Q�X�cJ"`[0/)��(i�e�&T1�T��̦� �%��0z�bdt�S������E�z��j�Ò�s����ShX0�v�`���O�	��**��      0      x�32�442��\F��)i)`f� =�E      2      x��}�rY��o�)N�p�h���rH��i�)���gw�Q�D��*tU�$ZR�����_����p�N��v��s��}=�<����s�(�g��N��:�<y�<Y�`ch�*��Y�U&-Ml��hq�^'���I6JL5�+�\���-M���b���0���2�Ȏn��|���E��`�qz���=�X��iq�65�S��Ib��~�|��$�y2]���47�tj.3I�c�f� I�fWs8I��kZ��_Һ�EN��d���b|���xQuL�ML�͍��,���<6E��")�ArK{�ў�_�c��&1�F���tLM+��l�/[�:_���Lӗ	`5�	��'�G/?S0th��xQ����I� ?-ٌ�-0���jR?	ݧ�$��i�#�ƣ&��"�_v��/b@��5��yhz��mYB}	�zg�����|��$�I�1�%N .��*3�Q�����4&�*i,mّM���Z��jQd	�����~��Ȇf^$�t�0�Đ]��kB<?S�|NkL�;4�4Q���[£j�b��@4j�ܱSs3I2�� ��m�H9OF�e��	��!���%�g̯nr3�����˴(+~�Qj��J�2!�K��<L�\&8&��󤨖B�����k��4���m������	e:`�B��8<�[�Z�F@�!ogI���~_��c�3u顂��Pi�@��F�qxz4<?>��|5<���9>>6g��󣯎N��6���;��2�{"�5Ni�_.L�KC�!�3aD�CY
��Y��$�� ������B�����*[ !�9�/���L�����]�4�_��2��s?wi.	�~�����w?<k�|?�H|�ӏϨ�F��q�����9z������G'�G���㤺_���L
��l1���4.�5�t.��y\�δMZ�b6��)����^���դjL�˪���D��H�Q.Ub�y��]z�n��J�Or;'� ���@P�[@��M��u�(p ?#��%?{�E|,��S�D_EQD}#j���+r���I�bY�'Ъ�`��>[�.h����aE(a���ap�����؈��{�:yrj6���%���/t��WON�go��m����@p0C��+���h�1[���c���t�-��h����1��ng&�S�L�i5)�ǘ�,0���	���8�@dB�5}r���<����&"�i�Ә�5�I�:T'�<�ǥ��h��bp�<^��>�0
�Ä�gD��( �����퍕�좽��@{Ў�70�{�P�����x�������L*Ґ�=`�g.� ���3o���s>��7ؾ�����9O���{rrf����#bv�{�>T�D�:�{�y��Ń���IF�<�,��#��83�=$�/I-�U~��l@N��D�g�L2&��aQ\�vrs�z������-w�}9��ua�(��(ڕ� �&/�ci%����t�Li��L<�i_��u��w��mY�F��'�@D{��iE8�M�]ff��C-��y�#	��B�u��U�u��A��o�����/�I��Qum/���������~g3�H���m���W~Dc�t�m�=|5�䛷�9v��o�?o�_��J�%\Ʃ�#x�X��e���C@�٭y��w挴���`F����Gc�T��#�2κ���5F�=5�+V}��n�~���E�=��/�0���:��"$�3��B�u;�A_�"c1>�t����w��z�`�HY(����]Cgy�ID�0�j���D�O�9i� h{��j'+:I��&x6���Qc�pI�bd�����}ݺ�$�ѿ}��4xRݹ3���������a���}�̋����j�[���K��i�٭j�*l	�3������U���x��p#��~�H��_?}�Z�^��,�FۑS��<��Oq"bӤ�]��拠����!�-�u���T����oi��e�H=c2�:fD���o��D���7����۟�=Y�gv]�fE��	�=S��F�����;�Z�e�BBx�@ {�$���dӵZ)�&FG�aIz��#{n�~��&�����t
e��]�5o���(Y�ٹYM'D�Wׯ���|����k�Y�M���w��i陡E Z��8#�QU�f&�t\���1�݃��~��/��ýa����N���kCX�o^�_� {��q��9�8����V��&�-�!��Mʫz*���D��鼬��asg��sz�����>V����7H8t���9#�ss_�.�lN��EYՍ�X�Ա�~�$36��.���?9(���Li�KV����0�ȼ��dD9l_���I�5'
�q�ݯȒ-+�N�;�<�M���TP��TQ��Xg>�VO��r�1�$�k���:y!2���V��f�a�����.�4��������߻�Y�^��p�'ޔr�v4��!�VD�{��O$j��E�Y��mb�vfX�	qv�&�_����ֳ?�2@��،���r�ݿ��QI$�Ag�1����YW5�!J$5eW��z����@&���s����ز����J�j ��ѐ�PA�qm��E��83��p���{���so�	+�T�Y�	kpx@ӻc�B]�g���	{��4��MR���H��_^Eg܃��N�x����>��_ws#�-�����xp�,���ۄ|�K1&bJ�$7!��x�1�1�х�rs�#aԋ�$�* s����UNp1Q-�E���p�uր��^��Bo��[��5�\��:<�s��k|*�Y˩>�6Y�nM=���op��ɳT"	�ݛg�n�qT.fl��D�	[�iX��t�U27���,�J�5�k�l.r�o�d�����-�!����ĉ�L��%���������Rk͖�������a����0��Fn6%���&A��ڐ#M�ϹH���ʨ�i <���i:w�J:Ӻ�D�e�/{+�!InG�\č���h��s��o��o�pp:=:������?9��ocL�O�Z�
'���_��������KwK�:����WE��Q	�[E�����Ҕ5��l<�0��=E�!{s��:��j�ҥ�X�[xP)�#D^��x�m�,,I������o�|���-V�hn�؃���i3$�!Il�A�2a#�HI"h������E^d����g��jI�fVv�N��P���R^j�x>�|
�c�`@�fK�^����X�(fXB�_����*Ļ�g1�u�Ypl��̧"�U:�^��/,�ӱ��Y��ʜ�&ڎ8*i���	�Ed
�5�TLL�u�yZČ��0:<��ƫ����^p��"P}��@���#^f�"�	G�4(f���F�P��t�^�	j��sș钵1:8��:ʟ��]�xOpC��&
In3�)V-X�-��4_H���#��1�*�u#�o�(����=��S��h�k���1<��5?���^��,U� ��T�u���Y/I;�8~��O}��{ԖOz{�	Br�j���� �X���egPq��M���| ��o��(�����\U�4��T�j��7/�1h�K|ϻg-l f�>]6�Sa�u���k�~��-�l�~���0N�"È�tH����@�7���>Cς�	=B�`�7��6�(.ŶZ!���X$l��y�lk�3����E]���E��z���������c��	_G���o��?����m�!����Xt`vl��
a�T������/�����N�<4�_?�f�|��1�+lD�"vY����t15��+.6�h����J��~ ���$B(�;t5�b��B:������� �a�਼{��G��4-'�$v�yV��4���c]���>WR�r��8�7.�����h*	A�mK��d�R�G�|l,+,�oqV��_���U]���� �
93�Qk��P|�cR� g�'AҶ���_ !�����s���y�$�32^�,D�AO���
�}�RB�"/Fh�հP������9;l]�+�1�jQ�yo�NJ�_�    �.BH�ɩ7�%��)q�)QW�����K0Ã����d��ʔ`=僚��_!�MIe�*W?;t��K�&-4�h�HA5V�IQ)�y��eYQ��,}k�Z�R�d�(��H|b�S�/�ȄTg	a?"����#�u.R��l�l4�ӑ�>����W�+R��H��A�< �� �.���r,�ZU;�NU���B~��ؽ*��܀$�ӛ�E6&�����hun��5����ShB��o�iE��D6H�V��^
Lt"6�>�^�$"j��M��(?dG^J�RH����]��Z>��!�}�3%9	~¼/��E�Va8VO3a���"�L������80X�0�LG$�bM�em��`�BK�2m�Kdvd 9Ǿt0�`? ���f������5�5ND����tn�7���5C1��m����I����dx�g��ѯ�����>�'���Ǎ���ֆUj�|N��K�$.�H�Bj��cB�܋CDv4�)�%��0�r=�B���~�}��z�a'G�i��Z")��6]�v.֎!��$��f�O�$Ѵ�iQON1��\��
����gB��i��#Mx�)�%؆38��%����r���/�Z�yXAg���秪_GS��?y��ײ�v���%�:{��3�`ۈ��q�ׂ��8���ؖxg9�����������]I����H��h�^цg�6��,�XĶ�8��U�54t�md�C��.Y	_�� !Ĥ��(_ DH*P�X�Q뛼x	��Z)�
E2J�8�Z�T��H9���7/�9Մd2�_�b����md�.�	��~��m�c��G���
�p�!�����2���I}{�D�`U�쓹ۂ�Hp��̘�
���J���>N�J�x.��e��4F�*��D΅���7dۄ���"�� ���׫�V?��07"�-)5� c_����+AL#��G{`�}�]w���qzP���9�˗��~	�	�]k�ᙩb�S�{e���8<>=|~,�ڃ��m�r�y��T��I2��f�h�+�����u_�nQ�-ù��I��aO,i�8cfv���a��!KF�N�L��I����ڂ,���iI^@0/d�cw:KZd݋�YV2��e�l$�r*-�-M8����/^_M\㩺j%	���Y{(�T34���DەѴ�.ˤ�@X(�>ſdtБ��]�h��s�4#����RΓ��[`��w�Cۂt#3��%C�/���}�^q�8p���5��'����"� K��C�T�0Xy#�r� �!)�L���t�X=�����>�Zfz�X,�Vg>�������)!�X�� �����z���J/�&u��j��e���P[���n�_��\ο���==A���k�HF�����s�%��X�$�^��x�	��y���?7a��m�H҅+}}釽J2��R묭7�`9��|�߸�)KM>���~Y�!�z��ͤ�h�'���^p03(8��f�Eq�V���Y��!�������/F�* ��b�i��c2}Dϊy��5h��s�}���<�t�܂�kh�֎��I{�b��.�#��M$�_���ȭ:���T�mώ��Gǜ�F$��q^��fG,9�f�1�����q�=�J���xӭ������(%ft�r��(�v��#E�e��>�AԢ�Ǟҙd��iM��廡�ˑ�Xs�q��i��e1��jS��T��-@�B�3��\�[�����0���5Χ(�q���W ���&�����i���z�!��d�����	����W��i+蓫	�z���/�c�-���W�����T�$]�U�X[{�b����v,i_��č�;��*�9ل@����;��%�~���R���,)Z��.Y�I��£5r>�m>Ľ�\H��|��f(������;�o��4���]"=C��*����b���U���T%�Jk-9`�ы��
�����/�$΄m1�k��w;[3�;�����׬I�o8��9�N�hx�F��.����������������ۿ�_m�������~�۟~��m�ۧ�-~��N�J�����?��k�w,��G��*/��#� 	�j�ą�Ф))F���ȼu����kxN�#7����vlcr5|v��aa��u%8�V���H]$���$��o��7`��N)�^�#�������Pf	�1�I�@���U\vT��fi��,�������|.�Fܝ�Q+��a��D��Fy`��}xi�f���%0J$} �ȴt��̌�p�]��~����?aɈ^���� �����k�<����,s������2��$b��	�x�=
Z�`�������a-��C ������ӏ���fڐ��n��p���Ս�3[��J߯F��C�\��)�ȥL��
�:c4]Lc�b�F��\b����������"��m_�9w�1����6~џ��_�\���N�ο��*�&������Q��Gi
�*�Ӑ��� L����u%Vp�ݻ0�p����omܵH�Vk�bg�E�ܷ����H+��c�-m>��s����`�Չ�o\_~��*4�3�C����Y�d�A�0�6TU�6[6�%x���U@S�O��S�(yv�%�SER���4b���r��3��kf�>`�M"x��}�,Cr�9���j>{ IvE�~���Ty�A7�����;��>�=�n��=z+���;�I~�{�HH�b������Ǉ���''�çOΎ��1�'�<:=C��A��K��%���{#�34V�'f�v5s�h���Licd�Uԧ�=��%M���Ài�]�zG՝=9o0E/������� ]!��+.�E#s�J��
t��rlf��7UK��rGU�aU�gAy_`���6Z��v�0�N{x�x�Po���K�{��p�NB��Z�J�{q�8�Z�W\O�	�;]6�n�.�؄����~�`����:/��y�9�yY����2�oH�B�h��|U�t�27�^*F�K�NU��B�eذd3��%���&_ha׏��;7h�i��ta��^�?�>���w�$����C4F�M���]:dm�\vhe��uF�u�]3���������w�*�f�\$Wi�+���7"�v7���[獌��9�?�b�ȧA��X虯/@<�4��SߏHW��4��Ǽiv��>� /&����9}�݅���hRl>���aG�]������j�Fx9�Fs/F�~0�Y,���K� X6Il�.u�����.�e�9�J--̥}l-do����K�\�f�K�t�G��=C���k��-@�h�Rpd�~���@׊���;3�1�б8���hP�
�$ ��a!�疅�_U.��%��i0��c�[�}�	_��4ȕBA�&���{�h��6�o�����^S]�\����]@�^��x�x�EO;�aiM��4�����) p�W��\�ޚ4��ڼ�s�l��$G_���͟w$���@��4�ݭ���(��9�m/���݁3Zā��@M��\��S\��<��"����A>�V�h�'j�٤ƞs^�[�
%v�G���d;D\#�n=|���<XC>!*1�	*i��ƽqMҚ�ONi�ro���sB��&I�8{CA E��I����Ֆ뺊��,��߱T��B�Ғǂp(�vo;}��-��l�!g&j�������8+�v=���I�F�B�Gw�a�p��*zrs"Y�-��(� �aG��L�n>�<҇��ӄ+��R2����\I&�s[g�����s�q
���<+$��ƫ�ͷ-��Uz>��)�������#�_�C6'��\~#� ��y~�����6��V��F�L���B%s.����� �sr	�P-j��~�M��be��Ͽ4�Ã�G�MD;>6���T?�H����3ٹ��-��H�l��v�omM!�$�R�V�͂Wx|������b/|���y��=s�0E���-EKd⡖G��6�<�U89�ŕ�I�5�    �^��0Q��ľ-����׳�-��n��պ������V�:d�z��{�n����޻nK��k�n�jL����/�BW�	���`Ĥ��K�m�v4F�-$̡P8��B��N�T3�ټZ�T'z�ݿ3|�!���il^�i���Rk{�׶��A��D�J2��z�d[dK��sa�Z�,&��*B�P�|�y)Nq�C�bݮlu�F���3�P�O��\�o:|�,C��/ldb�KS0��1��8��h_|�CWtQģ�`#7�|��mS��7�4|��r	q�ͅ�K�H�V9��,�b�Z�WDKA&�����50�o����?9.(��t�So\�U��Z]5?'��ΚzjO[��X��Qی��o:�=}�y���H��I�I��z�%�:�5�ｵH+M��Ql?�;�F�*E3נ�����Ϟ���V���r\b_�.(2�Q�o�׋-��T��]a�En6|��ߕ;�Ȥ^T|���2����Pe����f=u�ʘ��J�a�l��"Ħ�VǴ����l[�N��i�s,Y(Cr�^�6
��.k�(��d���&���^SaD���ZMt��py
��,���i�S�,<�\����	 X��c]�^�����=���% r[`�6�3�Ķx�9 �*��P��Z�-D�4���Va�6c��r`m���h*��9���Kl��j N_a��K?e��x�Xȣ5ϝ�H�I��|��e��%�p4Us'j�Y6�}�]�J�@��(���%;�A-^��G��q���`�;W�R�3�;�lM0�kE;������ߊ�7�ǿ=x��u�Y�_ߒ��NK�u�F]��#d5����J�Ǥ4	b(E�U�2�ɄH3�	!����:�)Kz�Z���!6�z}�k?ؠ�D�������
r�2i�<L?��j$��z=3՛�^��|��Y��lʯV*-���5gRa�%�I������'k5*&G����pJ�J�����v���nAeP����9������g}������N����.i������ϥo�����E&�	�}n��������~���k{C�n�:���]U"WU�����ʽ��g0��*+D;ZRa+�	���]_���4���Jd�-ߑ����(�Қ��`�9�E|�鴌�������v���ޕ*}�%ᆮ�6.s�Ef��4���S/��-��I���uDI����8��R���IG�yG~��g?o�E����j�h��2%繉��KN\��l����m^vl�Nmu�Z�89I�)�*�ɃOՄ���	t6Io����<�<i�׾�ݓu�T�t�'�����I/Z��Q��U���H�#(ߓߌ���r��D���f��H�����������=^��4J?���f2��U���w욑Q9���w�X�����v�w2���-��|����AO�5�j����vK��\�P�5-!|�f�܏��Mp88���j��T�����2�P� ��� 1���J��r�����uV�=�׮��xm�\��t�oy�&*��6��2���,�b'���>��:5�gm�=/\Uƪ�V�z��fn�T��!��է��i�����,g��/�!o��r��V�
�+{,�Y�fj�I���!8s��z��e�"�B%-͈�:0io��sX����0���,��{_ѽ����o�*��X�3����v��į��`��7Gk�Ƿ�_8�����d�WeX%\O|��I3��^_ײV���E[M��+��l������μ��~���R���k�VnQ����#+#�ɨ�x ����/ǳ�(�" ��M8+?���;��{�	#��<X�S/G���{�g�giZ��N{<��in��sJ˞c�{Z��b^7�r:�M,�:-�gg��2Mʫ�J�N=�?2\ �][�U�B�2B�F`":��:Q��gao�g����FR��Ԋ��7�2l���π�ԉ�ՠ;8����H:�b�~�@������T��O�e�~�E�j�ѓ=����?I���$��f���F�4c�8Z��^���j�2������8u���'��>��`�G+�f|�;�'e)�W
�$s��3T����.���"���Ҏ?����MQ��u���&��j!�����2e�����W���;eȧT�J_�x�T���쨢=I֙����-:S�A[�K%�f�+l�[�1J�=G�f�4��&��x�=H�R���^(�#x�M7�٬m�t9ɋ�kz��aPC�k�9Fp3�jz4 �F5ڶ-�f�-��r"�MT}f JA�r�W(ż���}������v�-�rW^.��M�o^��X�9C�����X֏I�"��'�=ɍƣ_��E��g_����Dޒ�8زo�]yKO���mGv�n���`\7l߾���9��~0�}ٳ/#?���t��"`��yU�3��󀱖]�$i�!��%+ ��ݒj{PD�\1��<��O��u$��e���WG�ǇȎF:�����`���jK��׮���|)vd���F��o �B&l�� ߰�w�b�p�B�Yk��	't�M�'�|�U��,� 뭭�'j6�l���>k��|4k4��EeV�^���� ���Q����@iU���>np��A�5�U�䇶]��Z/�=�ʱz��v�1���3h�?���m�M�ɮ����9<;^|���~�6+��Gꬩ�S�Y�z/&�	"��*�����wb�M�dG����.X��d(���
�:�J[B��h�%?�?�%9F�]��}dx$�`߾��WIG�� [���b�}	j�9��ї;:��^?Y�Pa4݉v�l:	�n�h�rN�"�����;�v�u�ː�hI�d{��R���P�SZy.�0]L��K�U���+�+BLYɯ�kI|K�lH;���\��~�U>����8��չ�W	�)v4N;h8V?+"_�2��8��RGu��kN�1�a#��e�r�4(I�1�5�'ru�/풝�Kvj/�r"�Jd�j�+}����jqx�t�E��BBP�-��W�똖�WN4`��Z�p��ar�5�\���s��Y�Ul�Cp%bQ��j|o�)Q;��M�� ��>]\��t��Upoyp'w��A�'5�0w>�u�T?
@��r0��[�M�w;��^V�`ͩzHVȟv#� �T��J��q��e�U������?��/i���~�V�.Ş����{�귻nn=��L����=��Qa���un�u����?����Q�9�A�
-���t�=�ּE|�7���~u[[�ˌV�W���h��R���JVET����8��(53�g�>� '���ds.j}��sp3��0��(��f�,�$�`ZP�f\�gY��9>?�LĢ��63�/����ۅ��͋���S{�]�ߙ�ë��I%o�W�r��Z��S�P����+�ZGW�Sr��E�_��+�''�h�Ѥ��.D�1����&�'_�p�ӫ��4��k_��"�Ԭ��(���'t�ճD����u�J|�B=�2NU�M"Ձ!%�:��t\2���˹�j��Ώ���`������9�kz�$s���������$��j�D\�J\}K\g�b��3������į�f^�%W^Gn��*O�������i ��;2�|���_=�Փ_"wJ�]Ia���F��T�v�c�/HrBG��\� �|&���n|�;�\v�-�n\H`)�+��$6�W�G�t%]�[;���ms�>��\�=��ˠ�)�cD�|�S�O���+[�%����� ������gAj�|�f���H�QAf���jim���a���&y�������2,*���˭4�pa�C��M���V�W�O��z�P�+G����S���1Q�)�on���G����5�jRRG�ҕ)�� tOiy`i��Z��ZJ�t��p���5�k$ڦ�^�f�4�kx�-lW�\��$�K��\\�N�+��O��|DF	� �h��E��PB"MO�|�\?,�����kp[:�Y�'�w�G��5����J�i��U�j���*@�r�^j�Mrc�� ��	��* 9   u
��X�nl�@@��@�X�T��C�2%!b�ݕ��p�Ȝ���{�/�!܋�{�����2      4   y   x�5�1� D���03wI����1�V�}Z���C�^Q�Ĝ;*mG���\;c�d�NA%)�dCNvA����h�8^�"y�e�h�8�O�Gs��??���hu�E����5�<n      6   �  x��W͊�>G=E���kE��h�v�u1kk��,53%w�=���ICk�`�e|3� {؃�B�&�$�"2��[c[#�_��Y��r�'�'H詇��lU"�:�UC�C�Z��� zJ�B�4Cq��S��x�+��d��F(E1�e��u�ڦe�	�Ty�,H��К�{�{�0/�H�F1%z��
c�ڲ�s�0*��n��9�?�`��:<�@�1O@`�*�U��+��c8�Mn��$��U�r��c5ZʁX�1 W�ǉ�آ j�$�*=|K<��fg.�.�z	�cn���<l����~`��x�e�U�'�aH%�<*��[����]U�tz4X�7�ro��Л��:@P:Ԩt�90��j�u�|����P���#�����V�C��ns=�Tm�_�m��h�h3�۪��zO,:���_�F3�y:��p���<}��vyc�����\��܀-n~a���4��W���\m����חg�;���93}���h�F��iܙi6;�_Mg�a�q~z�K�޾�./���f3��w���z�a��~?l��������p5톕Y���yڍ��n؍�ܫCR��b=��d�A�fؙ�\�˼^'.T�-ݑ��.��U_��u,�&����K �� E�Z�Nit_xeU&%�ЛBd�R��ʒBW��S"N��WY���`���lTj*�B/�@2,Q��d��^��dDF��L��h%2@2";��L��]��dDz��L@%HFd��$���dp2�Ѫt���s���R��
~x��s��?(OEy��=�����/rS��ή�_& ��'�e��L ,&�O K�2����a��U>�f����0��i�2�i^��8�G�3��z^�ǭ�׻cZ}�d���_]���G�����#�]��|0J>�B2�5����u -��[s����P�VDa���{5���#��q'��g�y����i7�q������:�U����ZM��nZ���ר+YO|`�"8�`؞�`S�>X���ǵp��Н�`�W��27���C�w�'��+���I�ij�֦�M_g���fV��Oނ�eب7���c�-�>�Np�Z�߲�S'J��j���a�8���[3�ǦGt�A��j�kjs2X�p�ې�-��:z��8�o�b����������X����b���"��Xw�:]��|�c�<��r�ݻ����F�?
�|��9���/�]���j����6�zq�p#�Ny�xT<�N۵~F�å& �Sd���t�E�#ӗ�C�������0e�k�js~{K	��V��M�9i	�-�&��Crm�s�h����p[���_y|�G�/TG��Q@�����Z-u���#����}" 'ü�T:�q�K�\��\�_s��w>e�۾��B	孖��lV�׫U���\�@{���QD�((�0;^զ�I�U+2],j�X�f	�\�ί���~�:,�j�&gFF���������]�������L؇\f$z�3V*���B*���<_lDFŒ)��3
�rˬ�ރɖ�$P��������R��]y��\y츃��=v��pX�\Q��9���ܩ9�����R)Ebn˓�R�3�o��kPpO�f��3��2v�{K| �Y��(��@��r0$R�'��=n��[G�}�ـ��GUU�����      8      x��[[o�~&��C�Z1�˛�Dt�?�Q"	
�������^,�6�9�8)��E��@�$@�<���'��O�w��^H��/
�*�rw�̹�3g.q*���0�����Ɵ��~���^tLIH}��Gް^��ȡK���Тyk�oN�f��*��[&c�?�%a/
�o�@����o����b��ѽF�d�ݚl�>Hc�
�+ �h�ڨl���@��
5L:�KGs3M�����P~��V��9�T���H�i�� Y�fe{R�3,*�k�%�f�m�4i�����_���i/X�������sW�A]/V [#���ۗ;�jI��p���7N�� l�wv��~��V���u��#-�vg�n�� �v���e�{AE�؃.�2Ki�������m[��Ў0aZ�.�v�>�2aW��H3آ uU��un ����O�Ƀ�������J��6���2\�/R�땍~_�<(zqB}��O�U�Y��-���!h���ˤ)Rq:L,�>����dЁ���|��Cy���=�tQ�Ypj��a���c4�Qx[���ȋ��>gѾ`|�:{�c0:ς��lu���%[�ն_ò�}J�yR�mw�A�B8΃�I#���?8 ��� �p_z#u���hF�iC�� >R�1�?[��y����#O��J�i7��^2�TKNI�S.�n�d�'6p��@�B�1+t�(
��)��-s��.��*��1�>筜���������`x�{i� [�s�xn&�@�xF&�#�+T���h�7:e��Ө�l������Ƌx����Wu8��pŉ:�P ���t�%J�Z�T<�pg�;����l��St���a?��XP@�kl���c��&ʸ��-9D8��m��5�]���8�8Ʉ���~}}(�N7b	҂�I0zG�{Ȃ�Q�ԵT
L �A���z�H1%�m0q���瑂��ֽ�Z��0������!����ԝ��6����!��셢�L���#?@�EZ�4y�6���4B*�^F�S8�TO�T~��0�ʨ4�������(�D;ݰ�2�1������mR!W���=��ش0�k1����P����#��^Y�x��>���5I�wK��w�I�WH?�-M�)$���WVQ� �#fyijO��kzi�T��D���f��2w9��l`g؇�E{kH�8�	�)�0��f4��Sqܪ�BJ�H+c��ZZUP��r`C�|�2@Ú���������%L�XՔgaFԨr�δE^5�^�n��)�P+�� %��'�9H�Y�wՁ���Ga�����m�.".�H C�m(�-�z�QKm.�TeR4�6{xn|�k�������w3-c��u�UZe#qNA���B����PO�ـ|�p�"�`�n�?���Y�RgJK�K�+���l2WP1��\/5 ⥚��W�ݖ+"�
�˫&:�w�x �.<|L��*Qs���땫�Y�<��M��a�U����� �~rL�P��k	#H��lT]��\l����0c*Q:�\�t��)�R����M�\���ǁ�����2���~�G}9�8#�"%+?W/�'.Dߛ͉�27R�	$w �� ��kN�AO�Ns���y)��<@:�^$b/���sUz"��f�N�W���K�.L��T�
���]ڸ�M��*�	GW"x-�{;k��&�B%T,6�g�
����FN��6ES�q������ˋ�uLs��3���w!��q�RH�� �F��6�]�6��cV���#T�&��_����Lbq�e�k�
$u����ӱ����D+����N=[��K��]u;�7}� CSbL��}�X{�SE�^}UÜ|����Q֡�s��C7��LwC
f���,�{6f�����U>ͩ��4��s8]y�^c��g�P���yJ��i�`�a?�J�/tJ3=��Z�ur���e�\N��ax�S��Կ�%]c2�<=0F�k�u��V��O�����P�}�W���3x_ ��Â��j��۩6܋fg5���,l���	WK�]���F�j��w�4�T��|����9���r�L���\�t#6� �R�+�1�$|�J)�^���U�A�[Xؠ�/��&��!m����O��!�+���a��q��h[�o���^�5| R;=H��C��I䣢���46@|�O�m#�Þ�M"�"0W�����Gy�������5'Cr��T|��<�a�Ȭ �ޢ�iϨ�~k���1��FiRR��)	7F>F�������ץR	F>���H�am��Pa��-�{��-v�{a�X��-6 �fMd�Cʿҡm����Ze�C�E,��i�A�~I�,<��R�1g��Պ��qv���d�4�\�2�F�x��tY��:(�o�)d>��Q)�kQzէ��D6�e:�d	'�D��s�^1�4\ �DjZsLb�o�B�u�s��_����l�b8$á�d�S��c���#�/� J���%������zŨr�JRφ��at(�%SV>dBk��~�U�S���ΐ�dcM�E��$�p��8e����S�v/���I@|�%��"^1kH.�ԝá���J�!͒��;��h�|5�;/��t,�X��;g���!�r?���
����։�)�L2CI�WqΤ�B���k�´^�2�}���K�۲�#�d�C?�{��;f�N=<�����Sm�H����*1�#ś�c�4�y���}�N��y&�[>���=
� �� �Sy�*R�P&����U��ǫP�7f_e>UYar�1�.�\Ymw#H�>mj61���D���HA�[j�i,�]M��‷v�	���~���#�?��\FW2f��}���P����n/�������`�Y*dm��@��{���$�t��$�4�M��I�;���%���x�^9%4-jYԶ�cѲE+���⌱�л��~��Z����m���e���l��bTw,:��	�x�����><]����Ǳ<�qa�{[��+�q~�HφU�8�kɋc^l�+�n�f��pb�K����*郏���m�1�R7��}%Ӻ��5�����:P�ޢ�E�KF���(&V��`� c��T�;h���w�*>�dr�%0�9�k5��ղ�V�Z6wXvg
K�vEZi;�ki�$Qߝ!*�|�S����*��	�Y�Bzm^.�z��L]Sᨒ����{�fF���G�E�|'`wxG�Xh�e.�����_Hr�v1x^�ۢ�i�z�ErV�E�ְ�����D�-���rD����'�n�+��ᢻL��7[����eˎvvy�p���{�a��?�����<I7zz,ಖn�R`�Qň��5�A�֬��05�-{�L��"{^��#Zީ85먡�s�8���b�N�M�*��oi��E���)'kW��׾W�_��xx�t/��+x[���F�����q\�A\^�������C���������'|��e�h>���!��=��|>,�f�<��j>��Ƽ'<T���fz<�%`���ytI�;���FQBm��k�jd|�Ԏ�Ю!��ˣCtJ���'�DO!L���=������ӓG��xrr�;)�
~_ɵ(�P�>���)VL	�4��3-�ʇ�e���^����{�H��\��,S�G��]I9�7����iA���6���W?��:Tخ�Z�@��6��V	p���^�FDm��E� !>� p������Xp�uA-lpD6$1ìd��U���kZ|,7��\���L��y!͵�n2#'PN`�R��<䗦�/�Q��:�z}�a2}'�>'�[��<�t�m����2�E7�+��1޺1�\��Kft9P~瓇m���T[+��F�|��\|Ӌ
��Nw�H7�2�N����{�Ǘ7�x+
�������
_m }C�.]"c�T�6|��X�rod>��^���|�f;�G��U�=5�ag,�kn�d����V�-9R�Q�ƌbu��@ƛC��ے�D�����7�Vvy��J��c{��b���1��tu��%�	2��j[3���;S�\���5���4�7��� 	   z�Z�/2���      :      x�3�4����� ]     