use apartmentV2;

delimiter $$ ;

create trigger on_add_recident_table_1 after update on resident_table FOR EACH ROW BEGIN 

if(New.flat_id= Old.flat_id &&New.person_id=Old.person_id)
then
SET
  @deposits=Old.flat_id;
 elseif(!(New.flat_id is NULL) && (Old.flat_id is null)) then insert into resident_history set move_in_time=now(),flat_id=New.flat_id,person_id=New.person_id; 

elseif ((New.flat_id is NULL) && !(Old.flat_id is null))

then
 update resident_history set move_out_time = now() where flat_id=Old.flat_id and person_id=Old.person_id and move_out_time is null;

elseif (!(New.flat_id is NULL) && !(Old.flat_id is null))

then
 update resident_history set move_out_time = now() where flat_id=Old.flat_id and person_id=Old.person_id and move_out_time is null;
 insert into resident_history set move_in_time=now(),flat_id=New.flat_id,person_id=New.person_id; 



end if ; end $$


create trigger on_delete_trigger after delete on resident_table 

FOR EACH ROW BEGIN 

update resident_history set move_out_time = now() where flat_id=Old.flat_id and person_id=Old.person_id and move_out_time is null;

 end $$


create trigger on_delete_owner_trigger after delete on person_owns_flat_table FOR EACH ROW BEGIN

update owner_history set move_out_time = now() ,sold_date =now() where flat_id=Old.flat_table_flat_id and person_id=Old.person_table_person_id and move_out_time is null;

 end $$


create trigger on_add_owner_table_1 after update on person_owns_flat_table FOR EACH ROW BEGIN 

if(New.flat_table_flat_id= Old.flat_table_flat_id &&New.person_table_person_id=Old.person_table_person_id)
then
SET
  @deposits=Old.flat_table_flat_id;
 elseif(!(New.flat_table_flat_id is NULL) && (Old.flat_table_flat_id is null)) then insert into owner_history set move_in_time=now(),flat_id=New.flat_table_flat_id,person_id=New.person_table_person_id ,purchase_date =now(); 

elseif ((New.flat_table_flat_id is NULL) && !(Old.flat_table_flat_id is null))

then
 update owner_history set move_out_time = now() ,sold_date =now() where flat_id=Old.flat_table_flat_id and person_id=Old.person_table_person_id and move_out_time is null;

elseif (!(New.flat_table_flat_id is NULL) && !(Old.flat_table_flat_id is null))

then
 update owner_history set move_out_time = now() ,sold_date =now() where flat_id=Old.flat_table_flat_id and person_id=Old.person_table_person_id and move_out_time is null;
 insert into owner_history set move_in_time=now(),flat_id=New.flat_table_flat_id,person_id=New.person_table_person_id ,purchase_date =now(); 



end if ; end $$



create trigger on_add_owner_table_insert after insert on person_owns_flat_table FOR EACH ROW BEGIN 
insert into owner_history set move_in_time=now(),flat_id=New.flat_table_flat_id,person_id=New.person_table_person_id ,purchase_date =now(); 


 end $$




create trigger insert_into_trigger after insert on resident_table FOR EACH ROW BEGIN 

insert into resident_history set move_in_time=now(),flat_id=New.flat_id,person_id=New.person_id; 

end $$


delimiter ; $$ 
