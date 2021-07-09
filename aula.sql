create or replace function func_somar(integer, integer)
returns integer
security definer
--returns null on null input
called on null input
language sql
as $$	
	select coalesce ($1, 0) + coalesce ($2, 0);
$$;

select func_somar(1, null);

select coalesce(null, 'daniel');