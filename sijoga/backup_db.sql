PGDMP     )                    x         
   dac_sijoga    12.2    12.2     *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    16602 
   dac_sijoga    DATABASE     �   CREATE DATABASE dac_sijoga WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE dac_sijoga;
                postgres    false            �            1259    32622    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    32534    tb_anexos_processo    TABLE       CREATE TABLE public.tb_anexos_processo (
    id bigint NOT NULL,
    tipo character varying(255) NOT NULL,
    arquivo character varying(255) NOT NULL,
    enviado_em timestamp without time zone NOT NULL,
    fase_processo bigint NOT NULL,
    enviado_por bigint NOT NULL
);
 &   DROP TABLE public.tb_anexos_processo;
       public         heap    postgres    false            �            1259    32542    tb_fases_processo    TABLE     �  CREATE TABLE public.tb_fases_processo (
    id bigint NOT NULL,
    criado_em timestamp without time zone NOT NULL,
    descricao character varying(255),
    executado_em timestamp without time zone,
    resposta character varying(255),
    status character varying(255),
    titulo character varying(255) NOT NULL,
    criado_por bigint NOT NULL,
    executado_por bigint,
    processo bigint NOT NULL
);
 %   DROP TABLE public.tb_fases_processo;
       public         heap    postgres    false            �            1259    32550    tb_processos    TABLE     h  CREATE TABLE public.tb_processos (
    id bigint NOT NULL,
    criado_em timestamp without time zone NOT NULL,
    descricao character varying(255),
    alterado_em timestamp without time zone NOT NULL,
    criado_por bigint NOT NULL,
    juiz bigint NOT NULL,
    promovido bigint NOT NULL,
    promovente bigint NOT NULL,
    alterado_por bigint NOT NULL
);
     DROP TABLE public.tb_processos;
       public         heap    postgres    false            �            1259    32555    tb_usuarios    TABLE     I  CREATE TABLE public.tb_usuarios (
    perfil character varying(31) NOT NULL,
    id bigint NOT NULL,
    cidade character varying(60) NOT NULL,
    complemento character varying(30),
    numero integer NOT NULL,
    uf character varying(2) NOT NULL,
    rua character varying(100) NOT NULL,
    cep character varying(8) NOT NULL,
    cpf character varying(11) NOT NULL,
    data_nasc date NOT NULL,
    email character varying(255) NOT NULL,
    nome character varying(120) NOT NULL,
    senha character varying(41) NOT NULL,
    insc_oab character varying(10),
    advogado bigint
);
    DROP TABLE public.tb_usuarios;
       public         heap    postgres    false            #          0    32534    tb_anexos_processo 
   TABLE DATA           g   COPY public.tb_anexos_processo (id, tipo, arquivo, enviado_em, fase_processo, enviado_por) FROM stdin;
    public          postgres    false    202   �-       $          0    32542    tb_fases_processo 
   TABLE DATA           �   COPY public.tb_fases_processo (id, criado_em, descricao, executado_em, resposta, status, titulo, criado_por, executado_por, processo) FROM stdin;
    public          postgres    false    203   �1       %          0    32550    tb_processos 
   TABLE DATA           �   COPY public.tb_processos (id, criado_em, descricao, alterado_em, criado_por, juiz, promovido, promovente, alterado_por) FROM stdin;
    public          postgres    false    204   0O       &          0    32555    tb_usuarios 
   TABLE DATA           �   COPY public.tb_usuarios (perfil, id, cidade, complemento, numero, uf, rua, cep, cpf, data_nasc, email, nome, senha, insc_oab, advogado) FROM stdin;
    public          postgres    false    205   7Z       .           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 220, true);
          public          postgres    false    206            �
           2606    32541 *   tb_anexos_processo tb_anexos_processo_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tb_anexos_processo
    ADD CONSTRAINT tb_anexos_processo_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tb_anexos_processo DROP CONSTRAINT tb_anexos_processo_pkey;
       public            postgres    false    202            �
           2606    32549 (   tb_fases_processo tb_fases_processo_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tb_fases_processo
    ADD CONSTRAINT tb_fases_processo_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.tb_fases_processo DROP CONSTRAINT tb_fases_processo_pkey;
       public            postgres    false    203            �
           2606    32554    tb_processos tb_processos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tb_processos
    ADD CONSTRAINT tb_processos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tb_processos DROP CONSTRAINT tb_processos_pkey;
       public            postgres    false    204            �
           2606    32562    tb_usuarios tb_usuarios_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT tb_usuarios_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT tb_usuarios_pkey;
       public            postgres    false    205            �
           2606    32564 (   tb_usuarios uk_a3le6btay0yn6er6yv5vyoxum 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT uk_a3le6btay0yn6er6yv5vyoxum UNIQUE (cpf);
 R   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT uk_a3le6btay0yn6er6yv5vyoxum;
       public            postgres    false    205            �
           2606    32566 (   tb_usuarios uk_m5wxg6x9o255esk9cuwv00pp0 
   CONSTRAINT     g   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT uk_m5wxg6x9o255esk9cuwv00pp0 UNIQUE (insc_oab);
 R   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT uk_m5wxg6x9o255esk9cuwv00pp0;
       public            postgres    false    205            �
           2606    32607 )   tb_processos fk_19gvumk4jmgcpdx26buv3ovvk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_processos
    ADD CONSTRAINT fk_19gvumk4jmgcpdx26buv3ovvk FOREIGN KEY (promovente) REFERENCES public.tb_usuarios(id);
 S   ALTER TABLE ONLY public.tb_processos DROP CONSTRAINT fk_19gvumk4jmgcpdx26buv3ovvk;
       public          postgres    false    2709    205    204            �
           2606    32602 )   tb_processos fk_2r40eq6s8xa85naegfq63ctkj    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_processos
    ADD CONSTRAINT fk_2r40eq6s8xa85naegfq63ctkj FOREIGN KEY (promovido) REFERENCES public.tb_usuarios(id);
 S   ALTER TABLE ONLY public.tb_processos DROP CONSTRAINT fk_2r40eq6s8xa85naegfq63ctkj;
       public          postgres    false    205    2709    204            �
           2606    32587 .   tb_fases_processo fk_3tg3s539nca3gy0cx2wupeadw    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_fases_processo
    ADD CONSTRAINT fk_3tg3s539nca3gy0cx2wupeadw FOREIGN KEY (processo) REFERENCES public.tb_processos(id);
 X   ALTER TABLE ONLY public.tb_fases_processo DROP CONSTRAINT fk_3tg3s539nca3gy0cx2wupeadw;
       public          postgres    false    203    2707    204            �
           2606    32572 /   tb_anexos_processo fk_bl2biy5pspt0o5vph8x84sm6u    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_anexos_processo
    ADD CONSTRAINT fk_bl2biy5pspt0o5vph8x84sm6u FOREIGN KEY (enviado_por) REFERENCES public.tb_usuarios(id);
 Y   ALTER TABLE ONLY public.tb_anexos_processo DROP CONSTRAINT fk_bl2biy5pspt0o5vph8x84sm6u;
       public          postgres    false    2709    202    205            �
           2606    32582 .   tb_fases_processo fk_fwinv2sxyvy26opp7xrul7bdo    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_fases_processo
    ADD CONSTRAINT fk_fwinv2sxyvy26opp7xrul7bdo FOREIGN KEY (executado_por) REFERENCES public.tb_usuarios(id);
 X   ALTER TABLE ONLY public.tb_fases_processo DROP CONSTRAINT fk_fwinv2sxyvy26opp7xrul7bdo;
       public          postgres    false    2709    205    203            �
           2606    32597 )   tb_processos fk_g06pk4w3o0r9qxo9nqn489sbu    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_processos
    ADD CONSTRAINT fk_g06pk4w3o0r9qxo9nqn489sbu FOREIGN KEY (juiz) REFERENCES public.tb_usuarios(id);
 S   ALTER TABLE ONLY public.tb_processos DROP CONSTRAINT fk_g06pk4w3o0r9qxo9nqn489sbu;
       public          postgres    false    204    205    2709            �
           2606    32567 /   tb_anexos_processo fk_jv3uym013mjpkw4n0aoldt7pq    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_anexos_processo
    ADD CONSTRAINT fk_jv3uym013mjpkw4n0aoldt7pq FOREIGN KEY (fase_processo) REFERENCES public.tb_fases_processo(id);
 Y   ALTER TABLE ONLY public.tb_anexos_processo DROP CONSTRAINT fk_jv3uym013mjpkw4n0aoldt7pq;
       public          postgres    false    203    2705    202            �
           2606    32577 .   tb_fases_processo fk_kwy9w0w3tww49naqqsb8lpxlh    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_fases_processo
    ADD CONSTRAINT fk_kwy9w0w3tww49naqqsb8lpxlh FOREIGN KEY (criado_por) REFERENCES public.tb_usuarios(id);
 X   ALTER TABLE ONLY public.tb_fases_processo DROP CONSTRAINT fk_kwy9w0w3tww49naqqsb8lpxlh;
       public          postgres    false    2709    205    203            �
           2606    32617 (   tb_usuarios fk_qty6tao960nbr7liim86jt0pf    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT fk_qty6tao960nbr7liim86jt0pf FOREIGN KEY (advogado) REFERENCES public.tb_usuarios(id);
 R   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT fk_qty6tao960nbr7liim86jt0pf;
       public          postgres    false    205    2709    205            �
           2606    32592 )   tb_processos fk_t8ott4ycxdpur5lsocxkrw8mp    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_processos
    ADD CONSTRAINT fk_t8ott4ycxdpur5lsocxkrw8mp FOREIGN KEY (criado_por) REFERENCES public.tb_usuarios(id);
 S   ALTER TABLE ONLY public.tb_processos DROP CONSTRAINT fk_t8ott4ycxdpur5lsocxkrw8mp;
       public          postgres    false    204    205    2709            �
           2606    32612 )   tb_processos fk_tcj29jyh7o9wr1f07c5d2iise    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_processos
    ADD CONSTRAINT fk_tcj29jyh7o9wr1f07c5d2iise FOREIGN KEY (alterado_por) REFERENCES public.tb_usuarios(id);
 S   ALTER TABLE ONLY public.tb_processos DROP CONSTRAINT fk_tcj29jyh7o9wr1f07c5d2iise;
       public          postgres    false    204    205    2709            #   �  x���]�%7��k�Udӱ%�i�0�$���n2��I}iA}��yq��R���k����Ϗ��~�x����?�.�g������_?��ş��/u}i����cm�mKV֫��%fe��ZZED�Hc"Vf�����g
�P-S��ӆ2�U�Fc܍qf'}��?d��AD.f�FVژL3����"��	����$ G�j#q��tE#���b�.�e��8�g1N�Ž	T;����nԑ@E��j�,-�*Tã�c�S�gN�"0>���Ul$��������bh�R�AH5Ec{c�RU�"�Ǌ�:o��gR��k4n�� �F#&꼡z��j���'f�P��M@5lbk���T۫��*ԍ������8�q�p:��lƩ�LW�i�t���t�ժeo��J������온+q��=:E�I����>��iŚ�ە8E��)j�$�S;���gM�Z�h<:E�s�V��G�h�1�p��h<:E�����N{=����X������S���t�N{;�8�a�=�{�o�h�J@m�ʮ��F����?�꾩vA�������~s��5*�V�^�¨�\�Bx��\,���+*�X��¸�7٨f�Տ�q�	Z�j�������mG�p�,�%p*�\pZ�OK���Cw��a�݅
cg��>V,���nT$*�ݍ
cc�\��
aWЈQk��Q� �
�ba��-w`.4B�T�C�Y`�ܨr���\��F��+��˕zˍ
!W��bQ��L!�`/R�rˍ
!���SW�-7*�\��"�[nT���+���(a�����Kb�+�]|>baT�^a��C���ż�.އX�ĮW�>]�~IK�b�
c����PI�b�*cO2F%��®�=��ci	^�]%�*n0��$x�B��}���@Zb�#�]Ŝ���Jb�+�]�gZ�nK��=��]U������V������%��®�dИ����
aW�����o����޸      $      x��\�v�ȱ}�?�Y�M$�#�eٲƲ���I�E 4.����S�.h��֚ĶD���u�{W5׻lq������o�]���}���|��f���B��c�wC��}�~�ʻ��_�P����\���ʋ��������P��u?�y1�Ƕɫ����r��&}�}�\�����ڲo�����_���/_������=�o�!(�.]�Z��{("|H��w���?E?��l�-��rvy1�	�e����5�U�c�W%��%T�?��G�E�˶���m_�`�_�oM��ϡ�}E^Dy(�'��>�9�d�� y�b�$C���S�i`6�<��S>�Ȉ�c�:/т�����p*4��^���'���p8�^������cن�i�h�"�_��@�i�7�!4m	Z4�+��(�CF(J0F��
f�������~��m�kX�>Ƴ�]7ϱS㘑�<�	�S�[tx*U����.V�*�~zY����.?k�7tѺ�q��@�|�)��OM�fɾ�������M�~A����x-�%�g�_�k�������<�/<D�n1�����o^ʶ�p�py8���cY��N� ��R��D?a`���z����������ex��q0L�p�@�ˀ�w��J�PyW����mu�Ǉ�\�o"���Z����7�E��Ol��3e��0���*�^��}�m@;���W����Go�8P��j���o��M=�)�u|�2XJ�a(75&��|i�*�C�AtG�a~l�-1K��Pfۃj�W�1Yt��Tc��G@O��5怮��84�����:>���wp�z����ݘs�g�K�,�Ё����p,�0%�3� ���0������
�o�� ���\����LFptp�/�ޚ� {>:?��O�l�vB����Yw��!�!Ƀ���>ܙM+F/�6�䡅�P��`k����R�K��(���#'��#����L��~���Ȗ�k����`�}9�UG��_é�� 7@�����G��*��E�L��s=�\O�d{�̪�t��8qBTcJk����$m��B�z�@	%�q�[�L����x(�4�|F�sՊ/-��W���P�sw��`��WX<J�$���{� ���[a��B�ڟЏ�m���]K0	f0o��@��"S^�1�&��!��r�� 'h�䭩���v`��O����T�O�!���R;=YϦ
����챜 l��ޓw`&8ڈE��?z�#�l�{����Т�j�PD�U? ���}� ��ar�`F��L[d���E�C��bH��@�!S�:6�ԖQ
\Dl ��W*�lS��ny�C���?���#�=f��y���l�����ޞ/�cX	�@
˯�E5ݾ���`�Trcg^�=c�MV����Fa�]Y�ܔ���|AEX=����\�MOP?��"$-<�DX� �PYCO��*�~��U�@Ȯ��{��W��G��8�#���2�6�(����pȈx2ϐB��x�TN�T��8�k�y�(b�J�q h��lc�*��}v���rv9M��eFk�L[�: ��I-!�Q�=���p�0UJd"�g9�FW���mM𯇕b�\�6����d�e��ߴg=R�4�ҧ�p�D��-�B�O�;�����cMM[������S�eF����6��{��eR�ѹ �UX:��1����G�h��������i�ޡ~sɘ� ��DŅ欿�'b=�CF���I�@@����C��L����w%� ���-|"$��� s�G�	_r-�I��d��2���l3���x)�-�]8`��ٲ���@��1�;�X�[Z�Ip,�YÑ<s��M7Zn	�'g��~"��#,,�W��%`7�L��-��T��\5lj��7 y��b}�R)90��$��	i�!����FG`��oM@�-`�p���d��)X�〕e���Z7>6��KV\��p���j
gܢla��;	�cpC꧟L/T�0�!�R�
pQ¤�L�Y��1�ph\&_pq�L������%��|�*�x�s�0�����ܭ3pe�sEfw��=sN�i��+� y�f��bp�&KS��Lh�GX#>(0��B:�zy:�o���z=���Z����Ϥʿ� (�Z� ���l3�w ���H;��୑7�� b���,R��<3, ���Py�]J@ߐ��h.�=�CW>��v�L=�}z�C^5�؁cT���"�|}�y�+e�D�N����P�X���$�x����,�*��)Z2p�a�1�hs���BF�Ό�ҪDcj~Sߠ�)̧DSϐ/�,��'r�T6nQ��r��2��]�g�i��H����ry��N��yQǤ�?��ٍT�94�p;�=#0))��,a�n�ZVX�r}��ڔ�ީH5�SJuݒ��{�|V4��֤�1�d��X�R.A�����GT� )��v�ƅ;����	;�.*��bQ��(�
��O�ښe'�&���D��Kg�:��#�_���8����L)|��bU1��o�����8�v	yt��b��2�T���v���L���8��$وE_��H�aC�q�H=-_ 5K�A�z�_�=FH�E�E������*���tN��kR��d�o�Q�N�7s?
��3Xk�-���4V�-�D��T 97X
#��䶲3�f���QSJHFM9���� rsT{���C�ϰ�Oe+P�w�ͯGL���a�Ӏt��XJP�R:p����H
gi$�v��ʙ��[��B:K�J�yU�X&�Z�m�Lxx���'f.��il�[�2:��/^0�+�A�t�J9R�Z:��ꨝ����� y���)ˍ@l1,�<Ny4���9�*U;��j�����6K[����Jt��x2q֣9�VY�ԻUѴ�sR�e�Jm����3`�܆�0A���Lg�6���w&�O�\��͒]���n��lYղ� =%��� ��V���U��ut\g �
)�@/�	X:g����8$�k�#+<��x%E�J��3�W���`A:=��;�8�Y��� Y��P� υ� J�K����$?vH�Kiu�*G�kq���ܘ@-x���o��}!y�T�@���	�Kj[϶g`�z����˴OE�)sSd7F�^��-S��3t��	:����/���E�Q v�{���D�D˫���8G��>r�YI������H��^̓��Y.��;��B��*�-2%���J���P{�)K�L`�-�]!�"Nz��)E����j�_�>�B��82�����v��u(�6'!�O��L�{Jx]R6��vI����#u�'Y]� \�?L^�`��7�)5/#��z�J��5�'I��gj����6���|�����9��B'`".�zS���';��[u�x���m��'�v՜�F�MS;K,�0��rt_�ӻL�|�Y�k�� ��<c��C���V�ݞ0������*��g6�R��^���Y�yQ�Y�K�_�������#�ӈ9����3(v��r��2�5$�06���9*��^��~@�$rZ�
b=ҩ!	Px�,S�OS>l�1#�?w��;N�V�Y�q�K�)�{m�	�Y��4o]}���K��2[ng�38�)3��z���c���>�����ðǉZ��b��Rs3�6��~�_���X���YE7xs"���s���$"%Kd�ڜ$�ЗXn���I/$z���Q���p��w�F��w���e�q��_��ٳ�14-�4K�2
 nV�aB��tw�k�tw|�	�4�D ��&@�<�#��]WC�o2��Ub����+ٸ�3�� v��=,X�<�aN��	Y��Z��bֳ]����E���u#�@�T �N���QGK;��Xn����[�f�w�����
̍T�k��GQ]5�u�
�ψ9��/��XfI��FjTM�V�.�Z�jjU�=<|\I3<B����>�֭��ԑ�,�R����Cq�X����.j���� �  ��ȸ��?h4<(���Al�8��т��TgRt�Y��A>�!�K'�ف�2t��U�Ml����hأY�%�h�:����uv�Y�o2�B<eu1�M�d�;S�����&��&�N%�␁��i�� �;U��H��HA�zKCGx��1{Het;+r��=����L[�B����:ӥ��ػ������a�5�	�(-|��=I��f��kĽ �?Dt������S8־\dn�+�fBdĴoD��d�`�%�ۥy�y�GY�'ES�P$E	�g������JT��(�t�_=wUu��Oy�T��0t����*�j�]�jS��FCƃR8�N�p�������$����������R��'I��K��M��Y�й���Ǆ���g�P�~��d����+�ڑ�F���:4X�0w�Eq�ZUg �@��Q���qv[$X�e2���q-`Q؊ �Oz(�*�c(���_"� HL�`��*#���,4�B��L���d_L�V?w�G;[2�!��5Ȕ�SG̉������Rw�Q
��0&1��`
D� ���#��<�D_��
�T����p�}{����6͕���[��%���!����{^}ڪ�";���*�� *�q-¡Ɖ�Wm���P�%�����S4��H��.c����l왘,��,��ty������J"�)JK�����`<arM�W�K�%���a�oC1�4����X��h��h�3#
�B=�'ipCH�h^@"�C��F�ǯh Z���O�{�qP�4����e����׸��vE�+�S����2h*q�IE�y&����4$�eb��:d7I�s�?���U&��O�h/D�<lRd��ηege���]�DN���0qϽD/̔���=F��,t;͗�٨V$�O�@���&Md6���dm�#w�־ʲ�1+�X��(8e���3���ǩC1��l�2Q�Z���i�5_]f�+���
�LMDz*�Q��V2wó��@	CM7LY���
Ez�A��L2�xQ��H��(%�c�.�r4�`T�2��G:�R~/\�7�oc�yD�s�su	F�\��*��i��q	z�y�Nb#�N�P0�"����5WRz[v��_��)3]]_�>�|��!�Y�x!���5��/�� �6��ih5_�2��J��aف�K<���r�J�EG�Q��i���$]Z�ǰ�W駏�I�;V��s�
u$u��-�~kc�E9�{{r��^��]Jȭ�|�X7P�jYt��/����Ү��,\�`b�nې�.u�Fa�&�:���^�{dJ^��¦�|�� �R3߇LmX�4�d��5(i�A:e�{m��7fr:p���w���J�6��G�OL5��Y替�s�E�^jx��X9�Xg�ͷÑĭ�~�&ɳRl�Ё��*��6c�Y�����Fv� �3a��B&�����sd^�d��8��D��*���IF�e6"����Β�"[_�	��|G���č�3�E����D��/謬�O �i���9��%>`o��wk���i���w,r+E'�|�3�Hr����US��Q��d�P�qs0�>��ׯ�{+���Z*�A�G�5v�e���"�hU�Q��.�����+�Y���B���0��)kђ��ar������Ա�Tj�hJ?� �v��_����B�%*3�Vm�W�U���ӫ#�8]�Ѷ�Yw�$R���>&QZ[T����j��>M�7埔@5g�yE�\LU�2�>��x��p��R(L���b�����v|C��i��:�wl9Kd�Gӽ$�I,1���ّe�-�^���O��ˁ�q~s�$:��Fk �X.mj��ik2674:KW�����|�X307��Y�d�1 �΁�;��?���Ywp��2�J�&�A�ga��|;�Fŋ�\e��z��m(����&��5��f\m��Y�z�H*�`a)�$*���G�����^K��T������A =����il�Xn3�4\AS�nf������1��=�R�	fQ�Bgy��I��}i������m�n�����[_i_�u�80q)�&��w#"�oL���'9�M�X����N��s��z���/Ɏ����v�9�o@��[T�5�X�'	��ܯ�F��p{Z8��h��'���E���cݕG�G����s�K!�ף��kM:(:��`�i\���2s�D먀~A���&��OM�7<駩Tn~����\C���"!�~ԣ���|�Ҹ��]OC��n����2�c��>�%�ֱ���]�8O��\X���������AA�z��΂AH��cq�M���ѧ��gi�c��6�i=�[���GR�i�.ωJ��ʩإ���:�8|�ݤ.3P��!U�D�O��HS��n17���
�=�7��u&_��==�0�z�RY���Uv��2�O�z��������]X/ϙ�*�Էy���z���������)x>�E�;��|th�iH�\]f'��\ֹ�Vx\�FA�!x��-k��4)E�J��hqYM��-��#2t��Z�;���܃�t��z=�/�A�r�����y5�$p��\m��]ܒ�J����T�Ug�v�y��t١tc.��4��5Y���GfZ�h]u���r���,���#�`G�ڗ`�i$��L�6 �7}i*	t��E��<���Cs�]T��D�T�'�k.E����'5���\滦E�oo0�$u�R�ޏk����G�}nV�S2�4�[]�2�}������r����(�+�j�}6n.ʬ��EK�.�b��E�|��5":Ch�����܃o�>H0I���槱��b��(�xx=C�i!��)�(U<�P|�P:?3��|S��m������|���w��.�Sy�x��TJ��}��鎫��&�E��8T���ݦ��j.3�:���J�I��k�J���حLEz]=T�vVl)M?����7��+?g����"�F�M��ty��x�\؍��Į�Me�G��pH���	Mg��[e�"��S�ܩa��!�/&�*�ϖ�ƹ+��¨��z���[��v�5�ҋ��Y�I�|�%B���gjr�jU�4������r��+J,%�KGS&��?����?f�i8��&�!�h�>m�*1L�""ύHs��ئ�uu�w�f[����Z�Ű�kl���o��6�l��^4%'�ַ����EK�U�KR��JI�@N���G����>��W�m��K�@�/�H���%:������
4}����K-c��.�=b��q�L8D���N�Ш|��ը�,7��ws��\Ѕ�{�CO��n��-6hUz�o�[#�C;Os���<��]������Mi�#/A�K��:���~7+��V�0~���*5���@����Nۜ�-�u=�iU�Qy�.~Y�sO����֍Ahu.9�V�K�ӂ>�t��a�^����Y�̂�>8M*�"�|�eR�j2�%��ٿ~��f��Ā      %   �
  x�uY[��8�ƫ`=���{-�#�lk J Oͬ~"Rp�S���R>"##�N���s�������^��W����?.纘l��5���Rw�mg~0��g?���f��Y��u夆������u9���߶7�����f��ƨ�wf*g���ou_>Uc�-/T��4�Y���|��+a\o�]���)����s8]�������N;3іɫ��ś�6���I]>:5��y��ia���i6��co�YO�q��ٱ��|tS~�G;D�����7Jg�%�7�i�8}�t�z܉K&������祈a�K�����%��=�`f5�:x-�SqDH�j籺�#d���)=�s��V?�1☟<�ԕ�^��� "%�S�~h7���f���_7p艀t����^����~����?��$>��)���r6CcZ?̻�^��@�h���է�c�̀5P8[��l���\�pE��k"F�G�����Di�X��ӿ*���4�<�j.���7� b>�/�GM�Y�G�����t�y�V�
�x���P?�Cc��e8{G�E�P�	}0�uklC��h�Cؽ��H`\+��4����o'�So��j^ݚ��/V���`�� ���5�m?v�.#גi^O�_
�O�4(Y7:M�7φ���߾�0�����l9�"��}��۱ $<�XJ�e0�xR5�|�\��̘
��z$3E�,2�G�Zj�3�[�9BI�b2����uR�0�p�Y9��I� ��u�iՀ!aF��T����1H�h�B9��D;YC*���V����g籺 7���� N!�\p�lY?�u�곡����A�6<v{p-~Րb��4�X-F!���e,�7R����%��7�ZE�fD^�xaq��}�F�� 3������ ���f����~#"�5��d�PMh	�?v �^�9��Q4\�ۑ(GDS�T@7�֌� ���e}c�Ɍ�j+�H���3�~E��>�:�ܑ�tg%����S��6H$��cO6U$#�_�,��&�7��A	��+;�?�I��~	c�8��ԢPT�o̽a��,d���TD�.fױؑ�w$}[rU��a�;��5�Z��D"�B_��bb/b��G0�p�;���V:�k�J�c�7k!IŊI���?��VG�J�� ���9J?���%�!�LjI�Z�)O�� �
�. ~�j[�Uh{������bLB�,�]��y--�k��@o&0�p3��x�3`8������wy%���y[bU ��/<��tKy�{|v
�JS�V�#��O|�ٗ�������i�Ei�v;�*Q�z�����w�M����ok��* /�N��}`�E�#أ7il@�.v�]��޺�);�R&��0�2q�Ŏ�G+
7Cd�i�"�2o$e�X�Y���]rω{Tw(�󶄂j���D\`��笟y�{���_�~��1Pǹy�j\׾}SZ��m�u�)�`�,�V,��p�VLU}-�ڭ�� �-���R�(P�1w	飦�InD�=��J��%;o 
���gV@�`�e0H���^��I�(x!�IX�#��(��2�F4��ݮ�w��T�ۺ�����Pg0�5"����L���ް�&���6����ב/*�q�Eս*�_0#W#=���-t��9)�0�94'��V����\ֺ=�*S�J~G��$t�:�Gw��e[��?�"NG�y��C��ٖ�E��F)H�:X�,�ج�p�i�O9/���1Z��z��@`��]�	tj@nn����Zh�:FGQ�bF�A�屔���d���-��|�H��жg^\2���(�˶��A�`��=�]-4�6���*�k��I��T:�%�l��@���{(P��U���1��t�e���puAk�J]��FK�������r!%KB��JP��`5��\��t3�(> ��x��y,�$��˴a����F���ϖ��^oڽ�r��헺�-)�ӹH��n;Zcez�_�s	ޖ�_��l���t)�F+�[�U��[D�H�|AO��^/�^���(��̍�2��ti���TE��S�h�1WuEr���qE)��D�Ь�0/
{7_��V5T��0hY��D�
��,rB%��F$�.lZC#�=]��c�e���`��0v��r�J4K��5m}Iͼ��L��Vo�!��;�$
{���ս���kY�,	�/cS��4
��Z���VX�|��h%C�v⧕J���Z,ۍ��{=Tۍ��Ϙ�?�Bgٟq!HOLpe���l��0�7^V���=�|����oI��f�~Q\x���vzu}+��'L���%W)�M\z���Is��@u��_d�J�Ck[�Nnރ�����]�JI܋�n������-.�NþB����+V�I��٠2K�q�7��.��FZ�2T!����\X����X��NT5ɰ:PIwVz��+~�~�DIR���k],��۠���t�$1���Nԉ)w�{��[��L�j�wߊ�	I����X6�'���H&��w��eI��1;��Vq�b�Yڤ�L��j=�Y4�t%��%�DJ�޹�k�N˽��!��/�t�X�Ƀ�GSF0j�j�a�J�ҸҴ(��:�T#���;Y���-QZ����|��	J�R���%�J���WGF��������R,�G�! z�Ob~�R�zϕ@�n�WؐW�/#:3� ��t����/،�&:�%� ��t����l���rZD��r>��qvK�W!�S���������      &     x���=r�F���)p�z�gy~iӢL�.;Q2�B$hAcwY�B_Ł˱3�3^̍%)V��pS��ׯ_7�w�'BI؍ݶ{U��DKNN��ٮ4'�8��vC(
T�+OA?���ś�mߗ�v1�'�x٬Js��ׅ|{���G�o�N0nx�b�SYK#�����'�݄�$�j�p��pϳ���rh^���G�,0ˌ$`VZf��wC�w�4'7��};΀"���'I!HɩP�ʅ����،vR��ݺ\�Kqõ� ��X��x1l*��������~����Z��E.d�i�²����\����14�e�O�sa9?%�c���4n�mKsTF��W��I�
ǔ���z5���뛿��7ݧ](3h�s�T��a���)x���;@��.�j ��>c���DwG��Є��6����*����(����� S3��qDΥ}ޢ��a7ε�Vƥ����vӷ+�_�M(�����+��ډ�W)��sV)C
��=�R/ԣ3��n�-�C�c�]��X9P(I��.�[�-͋�b�ۙ��A�.���&'�,��������X��CC�f�clh�Ԇ2ʦ[*���.[��ЇS�ҭJ?��!��e�"H��'Yd�	�'Dp��ˤ1*`M�$�W{��\O�5�\w�
5N�o���L
� ��*tN�JIc)}�sN��/H)̨�lJÉ��������7ތ�,������T���.J�<ϧ������'�R�+���S}DS�dD�(2b[l[B���X$��t{����B���$<6ˉ&G�����}�{���b�j���c�U-2' ��Rߵ��mW5J���2o26Xi|�*g��΀R�h���uWms\֨�>�5c��*��fD�)3���P�9�}�d���v��Z��P�)���R�4�g[��Db�1Ţ�G�C^��-7���u��zm:���/�ჶ�5�b���Fk�1���1\d��2Z,d�Q�����NIs���{u�7�Ć�t810 �UL1v0��e�ܞ�i:�	=H�O��2)8��F����P�C�j�4L��y,8&��o~__�=�Y�/$�m�c�&�c���B/�����a���?���g��Bpز�/�pV#h�V�A59FLl׷�cK^�G �V�����r�
m��B���)�GU{n#n9�q�88���8ot�C�4��{��1�hJ�
���]Y�h���8z0#�6Mq��*�X&`1\��b��L������_m�%GaLKʘN-��3��pDƅ��`c�r�]�d������R����������j�ĤA��}Ǜ��'��,*���b� Z�b�*
矞���a�(�e7\/;���c\��6��Xl�l�r����ps�������.�y7aИO��e`�<W�j���t�n~۫ͻ����ژ�n��7��"S�S�b.�f��{)����H�H|��S�	�� �m&Mpӛasr�'C���
��Q�P�ڢ���\|��ɓ'��1�V     