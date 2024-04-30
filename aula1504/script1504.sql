/*Extração com SubQuery*/
use empregados_db;
select * from empregado where cod_depto in(
	select cod_depto from departamento where cod_depto < 5
);

/*Calculo com Datas*/

select *, floor(datediff(now(), dt_nascimento) / 365) as idade from dependente; 

/*Empregados que tem Dependentes menores de 10 anos*/
select * from empregado where  cod_emp in(
select cod_emp from dependente where 
	floor(datediff(now(), dt_nascimento) / 365) < 10
);

/*Empregados que tem Dependentes menores de 18 anos*/
select * from empregado where  cod_emp in(
select cod_emp from dependente where 
	floor(datediff(now(), dt_nascimento) / 365) < 18
);

