create table farmacia (
	tipo varchar(10) 
);

-- 1 e 2
alter table farmacia add bairro varchar (30);
alter table farmacia add cidade varchar (30);
alter table farmacia add estado varchar (30);
alter table farmacia add id int not null;
alter table farmacia add constraint id_unique unique(id);
alter table farmacia add constraint tipo_farmacia check(tipo = 'sede' or tipo = 'filial');
alter table farmacia add constraint apenas_uma_sede exclude using gist (tipo with =) where (tipo = 'sede');

-- 3
create type tipo_funcionario as enum ('farmaceutico', 'vendedor', 'entregador', 'caixa', 'administrador');
create table funcionario (tipo tipo_funcionario);
alter table funcionario add lotado int;
alter table funcionario add foreign key (lotado) references farmacia(id);
alter table funcionario add constraint lotado_em_unica_farmacia exclude using gist (lotado with =) where (lotado is not null);
alter table funcionario add id int not null;
alter table funcionario add constraint funcionario_id_unique unique(id);

-- 4
alter table farmacia add gerente int;
alter table farmacia add foreign key (gerente) references funcionario(id);
alter table farmacia add constraint unico_gerente exclude using gist (gerente with =);

-- 6
create table cliente (nome varchar(30), endereço varchar(30));

-- 7 
alter table cliente add constraint enderecos_validos check(endereço = 'residência' or endereço = 'trabalho' or  endereço = 'outro');

-- 8
create table medicamento (id int not null, receita_necessaria varchar(1));
alter table medicamento add constraint id_unico unique(id);
alter table medicamento add constraint receita_valida check(receita_necessaria =  'S' or receita_necessaria = 'N');

-- 9
create table entrega (id int not null, cliente_id int);
alter table entrega add constraint unique_id_entrega unique(id);
alter table cliente add column id int not null;
alter table cliente add constraint id_unico_cliente unique(id);
alter table entrega add foreign key (cliente_id) references cliente(id);

-- 10
create table venda(id int not null, cliente_id int);
alter table venda add constraint id_unico_venda unique(id);


-- 11
alter table venda add column id_funcionario int;
alter table venda add foreign key (id_funcionario) references funcionario(id);

-- 12
alter table venda add column id_medicamento int;
alter table venda add foreign key (id_medicamento) references medicamento(id);

-- 13


-- 14
alter table farmacia add constraint bairro_unico unique(bairro);

-- 15


-- 16 
alter table farmacia add tipo_gerente varchar(30);
alter table farmacia add constraint tipo_gerente_valido check(tipo_gerente = 'administrador' or tipo_gerente = 'farmaceutico');
