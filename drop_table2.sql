declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('Table2');
   if c = 1 then
      execute immediate 'drop table Table2';
   end if;
end;
