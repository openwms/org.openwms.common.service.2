delete from com_unit_error;
delete from com_transport_unit_log;
delete from com_srv_revision;
delete from com_type_placing_rule;
delete from com_type_stacking_rule;
delete from com_transport_unit;
delete from com_transport_unit_type;
delete from com_location;
delete from com_location_group;
delete from com_location_type;
delete from com_account;

-- Accounts
insert into com_account (c_pk,c_pid,c_identifier,c_name,c_default,c_ol,c_created) values (1000,'1000','D','Default',true,0,now());
insert into com_account (c_pk,c_pid,c_identifier,c_name,c_default,c_ol,c_created) values (1001,'1001','A1','Cost Center FIN',false,0,now());

-- LocationTypes
insert into com_location_type (c_pk,c_pid,c_type,c_description,c_height,c_length,c_width,c_ol,c_created,c_updated) values (1000,326981811784,'FG','Flat Good Location',20,30,50,0,now(),now());
insert into com_location_type (c_pk,c_pid,c_type,c_description,c_height,c_length,c_width,c_ol,c_created,c_updated) values (1001,404376159041,'PG','Pallet Good Location',250,120,120,1,now(),now());

-- LocationGroups
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10000,'ZILE','D','AVAILABLE','AVAILABLE',80,null,'Company Zile.ch','1','INFEED_AND_OUTFEED',10000,412130127821);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10001,'Flatgood_AREA','D','AVAILABLE','AVAILABLE',80,10000,'Flat Goods in common','1','INFEED_AND_OUTFEED',10001,623275915496);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10002,'FGAUTOMATIC','D','AVAILABLE','AVAILABLE',80,10001,'Flat Goods automated area','1','INFEED_AND_OUTFEED',10002,709819670512);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10003,'FGRECEIVING','D','AVAILABLE','AVAILABLE',80,10002,'Receiving area','1','INFEED_AND_OUTFEED',10003,400335177633);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10004,'FGCONV','D','AVAILABLE','AVAILABLE',80,10002,'Flat goods conveyor system','1','INFEED_AND_OUTFEED',10004,811754978035);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10005,'FGSTOCK','D','AVAILABLE','AVAILABLE',80,10002,'Highbay area for flat goods','1','INFEED_AND_OUTFEED',10005,212290962584);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10006,'FGAISLE1','D','AVAILABLE','AVAILABLE',80,10005,'Aisle 1 of the flat goods highbay','1','INFEED_AND_OUTFEED',10006,53242834266);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10007,'FGAISLE1LIFT','D','AVAILABLE','AVAILABLE',80,10006,'Lift position of craine 1 in the flat goods highbay','1','INFEED_AND_OUTFEED',10007,688238147532);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10008,'FGAISLE1LEFT','D','AVAILABLE','AVAILABLE',80,10006,'Highbay flat good locations on the left side in aisle 1','1','INFEED_AND_OUTFEED',10008,154549927614);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10009,'FGAISLE1RIGHT','D','AVAILABLE','AVAILABLE',80,10006,'Highbay flat good locations on the right side in aisle 1','1','INFEED_AND_OUTFEED',10009,108758840458);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10010,'FGAISLE2','D','AVAILABLE','AVAILABLE',80,10005,'Aisle 2 of the flat goods highbay','1','INFEED_AND_OUTFEED',10010,101671979671);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10011,'FGAISLE2LIFT','D','AVAILABLE','AVAILABLE',80,10010,'Lift position of craine 2 in the flat goods highbay','1','INFEED_AND_OUTFEED',10011,730288310794);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10012,'FGAISLE2LEFT','D','AVAILABLE','AVAILABLE',80,10010,'Highbay flat good locations on the left side in aisle 2','1','INFEED_AND_OUTFEED',10012,379640903941);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10013,'FGAISLE2RIGHT','D','AVAILABLE','AVAILABLE',80,10010,'Highbay flat good locations on the right side in aisle 2','1','INFEED_AND_OUTFEED',10013,209483120518);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10014,'FGSHIPPING','D','AVAILABLE','AVAILABLE',80,10002,'Flat Goods Shipping area','1','INFEED_AND_OUTFEED',10014,585607846471);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10015,'FGSHIPPING1','D','AVAILABLE','AVAILABLE',80,10014,'Flat Goods Commissioning area 1','1','INFEED_AND_OUTFEED',10015,881973001220);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10016,'FGWORKPLACE1','D','AVAILABLE','AVAILABLE',80,10015,'Commissioning workplace 1','1','INFEED_AND_OUTFEED',10016,18642707784);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10017,'FGWORKPLACE2','D','AVAILABLE','AVAILABLE',80,10015,'Commissioning workplace 2','1','INFEED_AND_OUTFEED',10017,925145263549);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10018,'FGWORKPLACE3','D','AVAILABLE','AVAILABLE',80,10015,'Commissioning workplace 3','1','INFEED_AND_OUTFEED',10018,346661868774);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10019,'FGSHIPPING2','D','AVAILABLE','AVAILABLE',80,10014,'Flat Goods Commissioning area 2','1','INFEED_AND_OUTFEED',10019,753422186594);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10020,'FGWORKPLACE4','D','AVAILABLE','AVAILABLE',80,10019,'Commissioning workplace 5','1','INFEED_AND_OUTFEED',10020,258953718288);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10021,'FGWORKPLACE5','D','AVAILABLE','AVAILABLE',80,10019,'Commissioning workplace 6','1','INFEED_AND_OUTFEED',10021,424924693864);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10022,'FGWORKPLACE6','D','AVAILABLE','AVAILABLE',80,10019,'Commissioning workplace 7','1','INFEED_AND_OUTFEED',10022,909419439040);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10023,'FGWORKPLACE7','D','AVAILABLE','AVAILABLE',80,10019,'Commissioning workplace 8','1','INFEED_AND_OUTFEED',10023,687300567810);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10024,'FGWORKPLACE8','D','AVAILABLE','AVAILABLE',80,10019,'Commissioning workplace 9','1','INFEED_AND_OUTFEED',10024,860334844801);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10025,'FGWORKPLACE9','D','AVAILABLE','AVAILABLE',80,10019,'Commissioning workplace 10','1','INFEED_AND_OUTFEED',10025,224868263942);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10026,'FGMANUAL','D','AVAILABLE','AVAILABLE',80,10001,'Flat Goods manual area','1','INFEED_AND_OUTFEED',10026,264924505336);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10027,'FGCANBAN','D','AVAILABLE','AVAILABLE',80,10001,'Flat Goods canban storage','1','INFEED_AND_OUTFEED',10027,281343921750);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10028,'IPOINT','D','AVAILABLE','AVAILABLE',80,10000,'I-Point group','1','INFEED_AND_OUTFEED',10028,166982377557);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10029,'IPOINT1','D','AVAILABLE','AVAILABLE',80,10028,'I-Point 1','1','INFEED_AND_OUTFEED',10029,782120388022);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10030,'IPOINT2','D','AVAILABLE','AVAILABLE',80,10028,'I-Point 2','1','INFEED_AND_OUTFEED',10030,24417670340);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10031,'PALLET_AREA','D','AVAILABLE','AVAILABLE',80,10000,'Pallet area','1','INFEED_AND_OUTFEED',10031,878177817968);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10032,'PPICKING','D','AVAILABLE','AVAILABLE',80,10031,'Pallet picking area','1','INFEED_AND_OUTFEED',10032,306784420810);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10033,'PHIGHBAY','D','AVAILABLE','AVAILABLE',80,10031,'Pallet highbay','1','INFEED_AND_OUTFEED',10033,43608343999);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10034,'PAISLE1','D','AVAILABLE','AVAILABLE',80,10033,'Aisle 1 of the pallet highbay','1','INFEED_AND_OUTFEED',10034,500576747031);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10035,'PAISLE1LIFT','D','AVAILABLE','AVAILABLE',80,10034,'Lift position of craine 1 in the pallet highbay','1','INFEED_AND_OUTFEED',10035,483875811636);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10036,'PAISLE1LEFT','D','AVAILABLE','AVAILABLE',80,10034,'Highbay pallet locations on the left side in aisle 1','1','INFEED_AND_OUTFEED',10036,443011357014);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10037,'PAISLE1RIGHT','D','AVAILABLE','AVAILABLE',80,10034,'Highbay pallet locations on the right side in aisle 1','1','INFEED_AND_OUTFEED',10037,332530824417);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10038,'PAISLE2','D','AVAILABLE','AVAILABLE',80,10033,'Aisle 2 of the pallet highbay','1','INFEED_AND_OUTFEED',10038,999057994469);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10039,'PAISLE2LIFT','D','AVAILABLE','AVAILABLE',80,10038,'Lift position of craine 2 in the pallet highbay','1','INFEED_AND_OUTFEED',10039,995126472754);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10040,'PAISLE2LEFT','D','AVAILABLE','AVAILABLE',80,10038,'Highbay pallet locations on the left side in aisle 2','1','INFEED_AND_OUTFEED',10040,48562833846);
insert into com_location_group (c_pk,c_name,c_account,c_group_state_in,c_group_state_out,c_max_fill_level,c_parent,c_description,c_group_counting_active,c_op_mode,c_ol,c_pid) values (10041,'PAISLE2RIGHT','D','AVAILABLE','AVAILABLE',80,10038,'Highbay pallet locations on the right side in aisle 2','1','INFEED_AND_OUTFEED',10041,673781181265);

-- Locations
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1000,'FGIN','CONV','0001','0000','0000','D','Flatgood conveyor system'           ,1000,1,10004,0, '0','1000',true,true,true,true,'PLC_0001','ERP_0001',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1001,'FGIN','CONV','0002','0000','0000','D','Flatgood conveyor loop'             ,1000,1,10014,0, '1','164200710058',true,true,true,true,'PLC_0002','ERP_0002',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1002,'FGIN','CONV','IN__','0001','0000','D','Flatgood inbound position'          ,1000,1,10003,0, '2','917262708951',true,true,true,true,'PLC_0003','ERP_0003',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1003,'FGIN','VONV','OUT_','0001','0000','D','Flatgood outbound position'         ,1000,1,10004,0, '3','919183566441',true,true,true,true,'PLC_0004','ERP_0004',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1004,'FGIN','ERR_','0001','0000','0000','D','Flatgood error position'            ,1000,1,10002,0, '4','599656474784',true,true,true,true,'PLC_0005','ERP_0005',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1005,'FGIN','CONV','STCK','0001','IN__','D','Flatgood aisle 1 infeed'            ,1000,1,10005,0, '5','266569815226',true,true,true,true,'PLC_0006','ERP_0006',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1006,'FGIN','CONV','STCK','0001','OUT_','D','Flatgood aisle 1 outfeed'           ,1000,1,10005,0, '6','657531231826',true,true,true,true,'PLC_0007','ERP_0007',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1007,'FGIN','CONV','STCK','0002','IN__','D','Flatgood aisle 2 infeed'            ,1000,1,10005,0, '7','628639035538',true,true,true,true,'PLC_0008','ERP_0008',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1008,'FGIN','CONV','STCK','0002','OUT_','D','Flatgood aisle 2 outfeed'           ,1000,1,10005,0, '8','758665040613',true,true,true,true,'PLC_0009','ERP_0009',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1009,'FGIN','0001','0000','0000','0000','D','Flatgood aisle 1'                   ,1000,1,10006,0, '9','537361305039',true,true,true,true,'PLC_0010','ERP_0010',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1010,'FGIN','0002','0000','0000','0000','D','Flatgood aisle 2'                   ,1000,1,10010,0,'10','801445454453',true,true,true,true,'PLC_0011','ERP_0011',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1011,'FGIN','0001','LIFT','0000','0000','D','Flatgood aisle 1 lift'              ,1000,1,10007,0,'11','798136030917',true,true,true,true,'PLC_0012','ERP_0012',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1012,'FGIN','0001','LEFT','0000','0000','D','Flatgood aisle 1 left rack'         ,1000,1,10008,0,'12','896384899357',true,true,true,true,'PLC_0013','ERP_0013',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1013,'FGIN','0001','RGHT','0000','0000','D','Flatgood aisle 1 right rack'        ,1000,1,10009,0,'13','111988110139',true,true,true,true,'PLC_0014','ERP_0014',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1014,'FGIN','0002','LIFT','0000','0000','D','Flatgood aisle 2 lift'              ,1000,1,10011,0,'14','852306856430',true,true,true,true,'PLC_0015','ERP_0015',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1015,'FGIN','0002','LEFT','0000','0000','D','Flatgood aisle 2 left rack'         ,1000,1,10012,0,'15','477193820405',true,true,true,true,'PLC_0016','ERP_0016',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1016,'FGIN','0002','RGHT','0000','0000','D','Flatgood aisle 2 right rack'        ,1000,1,10013,0,'16','367699098275',true,true,true,true,'PLC_0017','ERP_0017',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1017,'FGIN','PICK','WORK','0001','0000','D','Picking place 1'                    ,1000,1,10016,0,'17','819666829504',true,true,true,true,'PLC_0018','ERP_0018',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1018,'FGIN','PICK','WORK','0002','0000','D','Picking place 2'                    ,1000,1,10017,0,'18','234175848538',true,true,true,true,'PLC_0019','ERP_0019',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1019,'FGIN','PICK','WORK','0003','0000','D','Picking place 3'                    ,1000,1,10018,0,'19','716281042988',true,true,true,true,'PLC_0020','ERP_0020',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1020,'FGIN','PICK','WORK','0004','0000','D','Picking place 4'                    ,1000,1,10020,0,'20','918615490790',true,true,true,true,'PLC_0021','ERP_0021',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1021,'FGIN','PICK','WORK','0005','0000','D','Picking place 5'                    ,1000,1,10021,0,'21','722685883984',true,true,true,true,'PLC_0022','ERP_0022',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1022,'FGIN','PICK','WORK','0006','0000','D','Picking place 6'                    ,1000,1,10022,0,'22','262863398986',true,true,true,true,'PLC_0023','ERP_0023',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1023,'FGIN','PICK','WORK','0007','0000','D','Picking place 7'                    ,1000,1,10023,0,'23','984186159596',true,true,true,true,'PLC_0024','ERP_0024',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1024,'FGIN','PICK','WORK','0008','0000','D','Picking place 8'                    ,1000,1,10024,0,'24','258022307027',true,true,true,true,'PLC_0025','ERP_0025',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1025,'FGIN','PICK','WORK','0009','0000','D','Picking place 9'                    ,1000,1,10025,0,'25','542937844858',true,true,true,true,'PLC_0026','ERP_0026',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1026,'KANB','0000','0000','0000','0000','D','Kanban area'                        ,1000,1,10027,0,'26','991930755563',true,true,true,true,'PLC_0027','ERP_0027',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1027,'MANU','0000','0000','0000','0000','D','Manual area'                        ,1000,1,10026,0,'27','408042025047',true,true,true,true,'PLC_0028','ERP_0028',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1028,'INIT','0000','0000','0000','0000','D','Virtual location for initialization',1000,1,10000,0,'28','171919359409',true,true,true,true,'PLC_0029','ERP_0029',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1029,'EXT_','0000','0000','0000','0000','D','Virtual location for lost and found',1000,1,10000,0,'29','113646454019',true,true,true,true,'PLC_0030','ERP_0030',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1030,'FGIN','IPNT','0001','0000','0000','D','I-Point 1'                          ,1000,1,10029,0,'30','439649733836',true,true,true,true,'PLC_0031','ERP_0031',0,now());
insert into com_location (c_pk,c_area,c_aisle,c_x,c_y,c_z,c_account,c_description,c_location_type,c_no_max_transport_units,c_location_group,c_plc_state,c_ol,c_pid,c_considered_in_allocation,c_incoming_active,c_outgoing_active,c_lg_counting_active,c_plc_code,c_erp_code,c_sort,c_created) values (1031,'FGIN','IPNT','0002','0000','0000','D','I-Point 2'                          ,1000,1,10030,0,'31','227916500906',true,true,true,true,'PLC_0032','ERP_0032',0,now());

-- TransportUnitTypes
insert into com_transport_unit_type (c_pk,c_pid,c_type,c_description,c_height,c_length,c_width,c_weight_tare,c_weight_max,c_ol,c_created) values (1000,'1000','PALLET','Euro pallet',102,120,80,25,1000,0,now());
insert into com_transport_unit_type (c_pk,c_pid,c_type,c_description,c_height,c_length,c_width,c_weight_tare,c_weight_max,c_ol,c_created) values (1001,'1001','BIN','Plastic bins',102,120,80,25,1000,0,now());

-- Rules
INSERT INTO com_type_placing_rule(c_pk,c_privilege_level,c_allowed_location_type,c_tut_id,c_ol,c_created) VALUES (1000, 0, 1000, 1000, 0, now());
INSERT INTO com_type_placing_rule(c_pk,c_privilege_level,c_allowed_location_type,c_tut_id,c_ol,c_created) VALUES (1001, 1, 1001, 1000, 0, now());
INSERT INTO com_type_placing_rule(c_pk,c_privilege_level,c_allowed_location_type,c_tut_id,c_ol,c_created) VALUES (1002, 0, 1000, 1001, 0, now());
INSERT INTO com_type_stacking_rule(c_pk,c_no_transport_units,c_allowed_transport_unit_type,c_transport_unit_type,c_ol,c_created) VALUES (1003, 3, 1001, 1000, 0, now());

-- TransportUnit
insert into com_transport_unit (c_pk,c_pid,c_barcode,c_state,c_actual_location,c_transport_unit_type,c_actual_location_date,c_ol,c_created) values (1000,'1','00000000000000004711','AVAILABLE',1029,1000,now(),1,now());
insert into com_transport_unit (c_pk,c_pid,c_barcode,c_state,c_actual_location,c_transport_unit_type,c_actual_location_date,c_ol,c_created) values (1001,'2','00000000000000004712','AVAILABLE',1030,1000,now(),1,now());
