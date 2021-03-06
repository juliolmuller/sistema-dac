PGDMP     -                    x            dac_sosifod    12.3    12.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16402    dac_sosifod    DATABASE     �   CREATE DATABASE dac_sosifod WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE dac_sosifod;
                postgres    false            �            1259    54433    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    54415    tb_intimacoes    TABLE     Y  CREATE TABLE public.tb_intimacoes (
    id bigint NOT NULL,
    cpf_intimado character varying(255),
    data_execucao timestamp without time zone,
    data_intimacao timestamp without time zone,
    endereco_intimado character varying(255),
    estado character varying(255),
    processo character varying(255),
    oficial bigint NOT NULL
);
 !   DROP TABLE public.tb_intimacoes;
       public         heap    postgres    false            �            1259    54423    tb_usuarios    TABLE       CREATE TABLE public.tb_usuarios (
    id bigint NOT NULL,
    cpf character varying(11) NOT NULL,
    email character varying(100) NOT NULL,
    isadmin boolean NOT NULL,
    name character varying(100) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.tb_usuarios;
       public         heap    postgres    false                      0    54415    tb_intimacoes 
   TABLE DATA           �   COPY public.tb_intimacoes (id, cpf_intimado, data_execucao, data_intimacao, endereco_intimado, estado, processo, oficial) FROM stdin;
    public          postgres    false    202   G                 0    54423    tb_usuarios 
   TABLE DATA           N   COPY public.tb_usuarios (id, cpf, email, isadmin, name, password) FROM stdin;
    public          postgres    false    203   �                  0    0    hibernate_sequence    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hibernate_sequence', 7, true);
          public          postgres    false    204            �
           2606    54422     tb_intimacoes tb_intimacoes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tb_intimacoes
    ADD CONSTRAINT tb_intimacoes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tb_intimacoes DROP CONSTRAINT tb_intimacoes_pkey;
       public            postgres    false    202            �
           2606    54427    tb_usuarios tb_usuarios_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT tb_usuarios_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT tb_usuarios_pkey;
       public            postgres    false    203            �
           2606    54428 *   tb_intimacoes fk_p47q9pvxoopkffaiu9khkfdko    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_intimacoes
    ADD CONSTRAINT fk_p47q9pvxoopkffaiu9khkfdko FOREIGN KEY (oficial) REFERENCES public.tb_usuarios(id);
 T   ALTER TABLE ONLY public.tb_intimacoes DROP CONSTRAINT fk_p47q9pvxoopkffaiu9khkfdko;
       public          postgres    false    203    202    2695               �   x�u�1� ���q
.І� ��]���Pb4Z�&�ǣx1��q��~���7�#�"�)�a�D���^����r�U޸�rM��+,�g����̀d� �xҖTh,�9f��Fҕu�q؎?�g.ۿB�U���!�o�=�         �   x�Uαj1E�z�1Fi5#W�FH �0�J#�v�'��}W���-ρ�~�q��isZf��|�;�/��ۭ�=g[�}�V������ϟ鼬�x�/k�]#�j���H�I��(ƃ�������H+��aj��P���5)f*Y�	�v����$����2�j��Q}#W�c�#:�z�c� �M7     