verzia 2

declare
  sRIDOut varchar2(16);
begin
  d_cen_ponuka_l.SetStav_NaSchvalenie(psRID=>'22418000141', psRIDOut=>sRIDOut );
  dbms_output.put_line('sRIDOut '||sRIDOut);
end;
/
select * from cen_ponuky_l l where l.rid ='4781800099';

select * from t_dokl_l l where l.rid = '22418000141';
select o.rid_v, l.rid_v from obch_pripady_l l, obch_pripady_o o where l.rid = c_rid.getbackrid('48818000118!3') and l.rid = o.rid_o and id_r = c_rid.getbackid_r('48818000118!3');
select * from ser_z_tasks szt where szt.rid = '51218000467' ;
select * from ser_z_l where rid = '49317000-167';

declare
  sRID_SZ varchar2(16); sRID_TASK varchar2(16); sRID_V_OP varchar2(22);
begin
  d_cen_ponuka_l.GetVazbyFromOP(psRID=>'22418000141', psRID_V_L=>sRID_SZ, psRID_V_O=>sRID_TASK, psRID_V_OP=>sRID_V_OP);
  dbms_output.put_line('sRID_SZ '||sRID_SZ||' sRID_TASK '||sRID_TASK||' sRID_V_OP '||sRID_V_OP);
end;
/

-- menu 1312
-- Na schvalenie - PKV;(%PK%);RID_O;(%PK%);STAV;000-150;aiOk;X;action;R;
-- Na schvalenie - PKV;(%PK%);RID_O;(%PK%);STAV;000-150;aiOk;D;outPK;RidOut;action;CX;

