declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('Table1');
   if c = 1 then
      execute immediate 'drop table Table1';
   end if;
end;
