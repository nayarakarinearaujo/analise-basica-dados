/*Ecadeamento de chaves relacionais*/

select 
	emp.nome as empregado,
    emp.cod_depto as codigo_departamento,
	depto.nome as departamento 
    depto.cod_depto as departamento_numero
from 
	empregado emp, 
	departamento depto 
where 
	depto.cod_depto = emp.cod_depto;
    
    /*Join Inner e Left*/
    
    select
		emp.nome as empregado,
        count(depto.cod_dep) as dependentes
    from
		empregado emp
    inner join
		dependente dep
	where
		emp.cod_emp = dep.cod_emp;
	group by 
		emp.nome;