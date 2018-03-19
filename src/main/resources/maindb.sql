
/*



insert into Categoria(desc_prod,enabled) values('Selecione',true);
insert into Categoria(desc_prod,enabled) values('Acessórios',true);
insert into Categoria(desc_prod,enabled) values('Cartuchos',true);
insert into Categoria(desc_prod,enabled) values('Computadores',true);
insert into Categoria(desc_prod,enabled) values('Impressoras',true);
insert into Categoria(desc_prod,enabled) values('Notes e Tablets',true);



insert into produto (vl_prod,desc_prod,fk_id_categoria,enabled) values(10,'pen drive',1,true); 
insert into produto (vl_prod,desc_prod,fk_id_categoria,enabled) values(50,'mouse',1,true); 
insert into produto (vl_prod,desc_prod,fk_id_categoria,enabled) values(1000,'computador',3,true); 





CREATE TABLE Categoria (
    id_categoria INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    desc_prod VARCHAR(50) NOT NULL,
    enabled BOOLEAN
);

CREATE TABLE Produto (
    id_produto INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    vl_prod DOUBLE NOT NULL,
    desc_prod VARCHAR(50),
    FK_ID_CATEGORIA INTEGER NOT NULL REFERENCES CATEGORIA(ID_CATEGORIA),
    enabled BOOLEAN
);

