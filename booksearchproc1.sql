create or replace procedure proc1
	(v_name in VARCHAR2)
	IS
	
	v_bid book.b_id%type;
	v_pid book.p_id%type;
	v_availability book.availability%type;

begin
SELECT b_id,p_id,availability into v_bid,v_pid,v_availability FROM book@site_link WHERE name=v_name;

dbms_output.put_line(v_bid || ' ' || v_name || ' ' ||v_pid || ' ' || v_availability);

end;
/