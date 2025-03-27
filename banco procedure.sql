/*criação da tabela*/
Create table cliente(
id int auto_increment primary key,
nome varchar(100) not null,
senha varchar(100) not null
);
Create table usuario(
id int auto_increment primary key,
nome varchar(100) not null,
senha varchar(100) not null
);
/*criação da procedure que insere algo na tabela*/
Delimiter $$
create procedure InsertCliente(
	in p_nome varchar(100),
    in p_senha varchar(100)
)
begin
	insert into cliente (nome, senha)values (p_nome, p_senha);
end $$
Delimiter ;
Delimiter $$
create procedure InsertUsuario(
	in p_nome varchar(100),
    in p_senha varchar(100)
)
begin
	insert into Usuario (nome, senha)values (p_nome, p_senha);
end $$
Delimiter ;

/*procedure que seleciona tabela*/

Delimiter $$
create procedure SelectUsuario(in p_id int)
begin
	select * from Usuario where id = p_id;
end $$
Delimiter ;

Delimiter $$
create procedure SelectCliente(in p_id int)
begin
	select * from Cliente where id = p_id;
end $$
Delimiter ;

call SelectCliente(1)

/* procedure que deleta */

Delimiter $$
create procedure DeleteCliente(in p_id int)
begin
	delete from cliente where id = p_id;
end $$
Delimiter ;

Delimiter $$
create procedure DeleteUsuario(in p_id int)
begin
	delete from Usuario where id = p_id;
end $$
Delimiter ;

call DeleteCliente(1);

select * from cliente;

call InsertCliente("Danilo","12345")


