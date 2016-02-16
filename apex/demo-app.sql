set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.2.00.07'
,p_default_workspace_id=>10471405853222555
,p_default_application_id=>73792
,p_default_owner=>'APEX_TEST'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 73792 - Bootstrap 4 Theme
--
-- Application Export:
--   Application:     73792
--   Name:            Bootstrap 4 Theme
--   Date and Time:   17:18 Tuesday February 16, 2016
--   Exported By:     VMORNEAU
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     69409115742119
--

-- Application Statistics:
--   Pages:                     29
--     Items:                   56
--     Regions:                239
--     Buttons:                 59
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--       Items:                  1
--       Processes:              2
--       Build Options:          1
--     Navigation:
--       Lists:                 12
--       Breadcrumbs:            1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 2
--         Region:               8
--         Label:                5
--         List:                 5
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               1
--         Report:               3
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,73792)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX_VMORNEAU')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Bootstrap 4 Theme')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'73792')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt=>'2EF51444DD573C61805687582DBA41A50C9B6F3E0E729BBA5361E6D3771F386B'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(18663152450585564498)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Bootstrap 4 Theme'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'0.1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_IN_NOTIFICATION'
,p_substitution_string_01=>'PATH'
,p_substitution_value_01=>'https://localhost:3000/'
,p_last_updated_by=>'APEX_TEST'
,p_last_upd_yyyymmddhh24miss=>'20160216171432'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>526
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(11141243263470543)
,p_name=>'Dropdown button'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11141438423470565)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Action'
,p_list_item_link_target=>'#'
,p_list_text_02=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11141838813470568)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Another action'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11142296694470569)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Something else here'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(13221686466049916)
,p_name=>'Dropdown header'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13222662513049937)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Dropdown header'
,p_list_text_01=>'dropdown-header'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13221832889049935)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Action'
,p_list_item_link_target=>'#'
,p_list_text_02=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13222202923049937)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Another action'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(13231326952060412)
,p_name=>'Dropdown divider'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13231503801060427)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Action'
,p_list_item_link_target=>'#'
,p_list_text_02=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13231940185060428)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Another action'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13232359835060428)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Something else here'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13232764419060428)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Separation'
,p_list_item_icon=>'dropdown-divider'
,p_list_text_01=>'dropdown-divider'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13233193307060429)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Separated link'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(13273774722146327)
,p_name=>'Dropdown disabled'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13273918891146342)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Regular link'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13274386663146343)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Disabled link'
,p_list_item_link_target=>'#'
,p_list_text_01=>'disabled'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13274751111146343)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Action link'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(18663723279314051716)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18663723761466051724)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Option 1'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18663724056224051724)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Option 2'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18663724352764051725)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Option 3'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_api.id(18663724056224051724)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(18664321263163040772)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23489396642417289623)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Getting Started'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18664321466123040773)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Layout'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'PLSQL_EXPRESSION'
,p_list_item_current_for_pages=>':APP_PAGE_ID between 100 and 199'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18664321751253040776)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Content'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'PLSQL_EXPRESSION'
,p_list_item_current_for_pages=>':APP_PAGE_ID between 200 and 299'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18664322079907040776)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Components'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'PLSQL_EXPRESSION'
,p_list_item_current_for_pages=>':APP_PAGE_ID between 300 and 399'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23983395004855847638)
,p_name=>'Layout'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983395416183847639)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Overview'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983395850527847639)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:105:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983396291276847640)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Media object'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983396686451847640)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Responsive utilities'
,p_list_item_link_target=>'f?p=&APP_ID.:115:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23983421889342854522)
,p_name=>'Getting started'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983422092443854523)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Introduction'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983422494824854524)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Download'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983422887265854524)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Browsers & devices'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983423222037854524)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Theme Roller'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983423677312854525)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Flexbox'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983932350227921772)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Build tool'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983932762672921772)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Best practices'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23983425056898856211)
,p_name=>'Content'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983425231316856212)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Reboot'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983425624794856212)
,p_list_item_display_sequence=>205
,p_list_item_link_text=>'Typography'
,p_list_item_link_target=>'f?p=&APP_ID.:205:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983426063168856213)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Code'
,p_list_item_link_target=>'f?p=&APP_ID.:210:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983426454579856213)
,p_list_item_display_sequence=>215
,p_list_item_link_text=>'Images'
,p_list_item_link_target=>'f?p=&APP_ID.:215:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983426820294856214)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Tables'
,p_list_item_link_target=>'f?p=&APP_ID.:220:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983857000474909849)
,p_list_item_display_sequence=>225
,p_list_item_link_text=>'Figures'
,p_list_item_link_target=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23983537517278860030)
,p_name=>'Components'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983537797785860031)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Buttons'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983538148689860031)
,p_list_item_display_sequence=>305
,p_list_item_link_text=>'Button group'
,p_list_item_link_target=>'f?p=&APP_ID.:305:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983538512628860032)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Button dropdown'
,p_list_item_link_target=>'f?p=&APP_ID.:310:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983538932687860032)
,p_list_item_display_sequence=>315
,p_list_item_link_text=>'Forms'
,p_list_item_link_target=>'f?p=&APP_ID.:315:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983539356594860032)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'Input group'
,p_list_item_link_target=>'f?p=&APP_ID.:320:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983845788799900462)
,p_list_item_display_sequence=>325
,p_list_item_link_text=>'Dropdowns'
,p_list_item_link_target=>'f?p=&APP_ID.:325:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983846100716900463)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'Jumbotron'
,p_list_item_link_target=>'f?p=&APP_ID.:330:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983846503921900463)
,p_list_item_display_sequence=>335
,p_list_item_link_text=>'Label'
,p_list_item_link_target=>'f?p=&APP_ID.:335:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983846954158900464)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Alerts'
,p_list_item_link_target=>'f?p=&APP_ID.:340:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983847375178900464)
,p_list_item_display_sequence=>345
,p_list_item_link_text=>'Card'
,p_list_item_link_target=>'f?p=&APP_ID.:345:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983847790584900465)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Navs'
,p_list_item_link_target=>'f?p=&APP_ID.:350:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983848178791900465)
,p_list_item_display_sequence=>355
,p_list_item_link_text=>'Navbar'
,p_list_item_link_target=>'f?p=&APP_ID.:355:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983848585619900466)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'Breadcrumb'
,p_list_item_link_target=>'f?p=&APP_ID.:360:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983848977570900466)
,p_list_item_display_sequence=>365
,p_list_item_link_text=>'Pagination'
,p_list_item_link_target=>'f?p=&APP_ID.:365:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983849371847900467)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'Progress'
,p_list_item_link_target=>'f?p=&APP_ID.:370:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983849763373900467)
,p_list_item_display_sequence=>372
,p_list_item_link_text=>'List group'
,p_list_item_link_target=>'f?p=&APP_ID.:372:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983850154641900470)
,p_list_item_display_sequence=>374
,p_list_item_link_text=>'Modal'
,p_list_item_link_target=>'f?p=&APP_ID.:374:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983850562301900471)
,p_list_item_display_sequence=>376
,p_list_item_link_text=>'Scrollspy'
,p_list_item_link_target=>'f?p=&APP_ID.:376:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983850952526900471)
,p_list_item_display_sequence=>378
,p_list_item_link_text=>'Tooltips'
,p_list_item_link_target=>'f?p=&APP_ID.:378:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983851342163900472)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'Popovers'
,p_list_item_link_target=>'f?p=&APP_ID.:380:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983851704584900472)
,p_list_item_display_sequence=>382
,p_list_item_link_text=>'Collapse'
,p_list_item_link_target=>'f?p=&APP_ID.:382:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983852139762900478)
,p_list_item_display_sequence=>384
,p_list_item_link_text=>'Carousel'
,p_list_item_link_target=>'f?p=&APP_ID.:384:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983852569459900479)
,p_list_item_display_sequence=>386
,p_list_item_link_text=>'Utilities'
,p_list_item_link_target=>'f?p=&APP_ID.:386:&SESSION.:'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(24128692995346500629)
,p_name=>'Footer Links'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24128693199895500630)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Github'
,p_list_item_link_target=>'https://github.com/vincentmorneau'
,p_list_item_icon=>'fa-github'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24128693506780500630)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Twitter'
,p_list_item_link_target=>'https://twitter.com/vincentmorneau'
,p_list_item_icon=>'fa-twitter'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24128693992144500631)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Blog'
,p_list_item_link_target=>'http://vmorneau.me/'
,p_list_item_icon=>'fa-globe'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(24236980523314424955)
,p_name=>'Media List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24236980758979424956)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Media heading'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-android'
,p_list_item_icon_alt_attribute=>'Test'
,p_list_text_01=>'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24236981195980424957)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Nested media heading'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-angellist'
,p_parent_list_item_id=>wwv_flow_api.id(24236980758979424956)
,p_list_text_01=>'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24236981544587424957)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Nested media heading'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-anchor'
,p_parent_list_item_id=>wwv_flow_api.id(24236981195980424957)
,p_list_text_01=>'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24236981980498424958)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Media heading'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-automobile'
,p_list_text_01=>'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18503053490566201640)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18503053563146201640)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18663141356015564468)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(21592058867553451464)
,p_process_sequence=>-999
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_app_images_dev'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_cookie owa_cookie.cookie;',
'begin',
'    l_cookie := owa_cookie.get(''oos-apex-frontend-boost-app-images'');',
'    if l_cookie.vals.count > 0 then',
'        :G_APP_IMAGES := l_cookie.vals(1);',
'    else',
'        :G_APP_IMAGES := :APP_IMAGES;',
'    end if;',
'end;'))
,p_required_patch=>wwv_flow_api.id(23429897160371117909)
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(23430012783699130492)
,p_process_sequence=>-999
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_app_images_prod'
,p_process_sql_clob=>':G_APP_IMAGES := :APP_IMAGES;'
,p_process_when=>'G_APP_IMAGES'
,p_process_when_type=>'ITEM_IS_NULL'
,p_required_patch=>-wwv_flow_api.id(23429897160371117909)
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(21592058595646448647)
,p_name=>'G_APP_IMAGES'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(18663153564646564503)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(13552126408703123857)
,p_theme_id=>102
,p_name=>'Modal'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="APEX Theme Boilerplate">',
'    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>',
'    ',
'    <!-- Mandatory APEX CSS Stuff -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Your CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #TEMPLATE_CSS#',
'    #APPLICATION_CSS#',
'    ',
'    <!-- Additionnal CSS (that needs a good reason to use) -->',
'    #PAGE_CSS#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<div class="modal #PAGE_CSS_CLASSES#">',
'    <div class="modal-content">',
'        #SUCCESS_MESSAGE#',
'        #NOTIFICATION_MESSAGE#',
'        #BODY#',
'    </div>',
'    <div class="modal-footer">',
'        #REGION_POSITION_08#',
'    </div>',
'</div>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS Stuff -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'    ',
'<!-- Additionnal JS (that needs a good reason to use) -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div>#MESSAGE#</div>'
,p_notification_message=>'<div>#MESSAGE#</div>'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'    #CONTENT#',
'</div>'))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(13552126829282123864)
,p_page_template_id=>wwv_flow_api.id(13552126408703123857)
,p_name=>'Modal Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(13552127774043124085)
,p_theme_id=>102
,p_name=>'Standard'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'    <head>',
'        <title>#TITLE#</title>',
'        ',
'        <!-- Meta -->',
'        <meta charset="utf-8">',
'        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">',
'        <meta http-equiv="x-ua-compatible" content="ie=edge">',
'        <meta name="author" content="Vincent Morneau">',
'        <meta name="description" content="Bootstrap 4 APEX Theme">',
'',
'        <!-- Mandatory APEX CSS -->',
'        #HEAD#',
'        #APEX_CSS#',
'',
'        <!-- Your CSS -->',
'        #THEME_CSS#',
'        #THEME_STYLE_CSS#',
'        #TEMPLATE_CSS#',
'        #APPLICATION_CSS#',
'',
'        <!-- Additionnal CSS -->',
'        #PAGE_CSS#',
'    </head>',
'    <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'',
'<!-- Header -->',
'<nav class="navbar navbar-dark bg-inverse">',
'    <button class="navbar-toggler hidden-sm-up" type="button" data-toggle="collapse" data-target="#collapsingNavbar">&#9776;</button>',
'    <div class="collapse navbar-toggleable-xs" id="collapsingNavbar">',
'    <a class="navbar-brand" href="#HOME_LINK#">#LOGO#</a>',
'    #NAVIGATION_BAR#',
'  </div>',
'</nav>',
'',
'#TOP_GLOBAL_NAVIGATION_LIST#',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'',
'<!-- Main Content -->',
'<div class="main-container">',
'    <!-- Header -->',
'    #REGION_POSITION_02#',
'    <!-- Breadcrumbs -->',
'    #REGION_POSITION_03#',
'    <!-- Messages -->',
'    #GLOBAL_NOTIFICATION#',
'    #SUCCESS_MESSAGE#',
'    #NOTIFICATION_MESSAGE#',
'    ',
'    #BODY#    ',
'</div>',
'',
'<!-- Footer -->',
'<footer class="ab-footer bg-faded m-t-3">',
'    #REGION_POSITION_08#',
'</footer>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX Javascript -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Your Javascript -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'    ',
'<!-- Additionnal Javascript -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Code -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div>#MESSAGE#</div>'
,p_notification_message=>'<div>#MESSAGE#</div>'
,p_theme_class_id=>8
,p_default_template_options=>'ab-navbar-fixed-top'
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="container">#ROWS#</div>'
,p_grid_row_template=>'<div class="row">#COLUMNS#</div>'
,p_grid_column_template=>'<div class="col-xs-12 col-md-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(13552128194304124086)
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(13552130213406124087)
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23440357921675057755)
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23440368410337057757)
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(13552300091472216698)
,p_template_name=>'Standard'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button type="button" id="#BUTTON_ID#" class="btn #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#><i class="#ICON_CSS_CLASSES#"></i>#LABEL#</button>',
''))
,p_theme_class_id=>6
,p_theme_id=>102
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11021203984187638)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ab-region #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="ab-region-title">#TITLE#</div>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group-vertical" role="group" aria-label="Button Group">#EDIT#</div>',
'        <div class="btn-group-vertical" role="group" aria-label="Button Group">#EXPAND#</div>',
'        <div class="btn-group-vertical" role="group" aria-label="Button Group">#CREATE#</div>',
'        <div class="btn-group-vertical" role="group" aria-label="Button Group">#CREATE2#</div>',
'    </div>',
'    <div class="region-body">#BODY#</div>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group-vertical" role="group" aria-label="Button Group">#CLOSE#</div>',
'        <div class="btn-group-vertical" role="group" aria-label="Button Group">#COPY#</div>',
'        <div class="btn-group-vertical" role="group" aria-label="Button Group">#DELETE#</div>',
'        <div class="btn-group-vertical" role="group" aria-label="Button Group">#CHANGE#</div>',
'    </div>',
'</div>'))
,p_page_plug_template_name=>'Standard - Vertical Button Group'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'ab-h3'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(13068521232743705)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="alert #REGION_CSS_CLASSES#" role="alert" #REGION_ATTRIBUTES#>  ',
'    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>',
'    <strong>#TITLE#</strong>',
'    #BODY#',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group" role="group" aria-label="Button Group">#EDIT#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#EXPAND#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE2#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CLOSE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#COPY#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#DELETE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CHANGE#</div>',
'    </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_default_template_options=>'alert-dismissible fade in'
,p_preset_template_options=>'ab-h3:alert-success'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(13103249077859732)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ab-region #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="ab-region-title">#TITLE#</div>',
'    <div class="input-group">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'input-group'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'ab-h3'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(13552122302985116178)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ab-region #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="ab-region-title">#TITLE#</div>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group" role="group" aria-label="Button Group">#EDIT#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#EXPAND#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE2#</div>',
'    </div>',
'    <div class="region-body">#BODY#</div>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group" role="group" aria-label="Button Group">#CLOSE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#COPY#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#DELETE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CHANGE#</div>',
'    </div>',
'</div>'))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'ab-h3'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23440519442971713102)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ab-region jumbotron jumbotron-fluid #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="container">',
'        <div class="ab-region-title">#TITLE#</div>',
'        <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'            <div class="btn-group" role="group" aria-label="Button Group">#EDIT#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#EXPAND#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#CREATE#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#CREATE2#</div>',
'        </div>',
'        <div class="region-body">#BODY#</div>',
'        <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'            <div class="btn-group" role="group" aria-label="Button Group">#CLOSE#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#COPY#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#DELETE#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#CHANGE#</div>',
'        </div>',
'    </div>',
'</div>'))
,p_page_plug_template_name=>'Jumbotron'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'title-h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(24059933965978325173)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="#REGION_STATIC_ID#" class="ab-footer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group" role="group" aria-label="Button Group">#EDIT#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#EXPAND#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE2#</div>',
'    </div>',
'    <div class="region-body">#BODY#</div>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group" role="group" aria-label="Button Group">#CLOSE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#COPY#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#DELETE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CHANGE#</div>',
'    </div>',
'</footer>'))
,p_page_plug_template_name=>'Footer'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'title-h3'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(24202268772490861045)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#"><code class="#REGION_CSS_CLASSES#">',
'#BODY#',
'</code></pre>'))
,p_page_plug_template_name=>'Code'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'language-markup'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(24203478387538954820)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="card card-block #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="ab-region-title">#TITLE#</div>',
'    <blockquote class="card-blockquote">',
'        #BODY#',
'    </blockquote>',
'</div>'))
,p_page_plug_template_name=>'Card'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11171271978514127)
,p_list_template_current=>'<a class="dropdown-item #A01#" href="#LINK#">#TEXT#</a>'
,p_list_template_noncurrent=>'<a class="dropdown-item #A01#" href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Split Button Dropdown'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ID#" class="btn-group #COMPONENT_CSS_CLASSES#">',
'    <button type="button" class="btn" onclick="#A02#">#REGION_TITLE#</button>',
'    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">',
'        <span class="sr-only">Toggle Dropdown</span>',
'    </button>',
'    <div class="dropdown-menu">'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11655412505130867307)
,p_list_template_current=>'<li class="nav-item active"><a class="nav-link" href="#LINK#">#TEXT#<span class="sr-only">(current)</span></a></li>'
,p_list_template_noncurrent=>'<li class="nav-item"><a class="nav-link" href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Navbar'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul id="#LIST_ID#" class="nav navbar-nav #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</nav>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11675635619991185939)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_list_template_name=>'Media'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div id="#LIST_ID#" class="media-list #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</div>'
,p_sub_list_item_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_sub_list_item_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'        <li class="hidden-bullet"></li>',
'    </div>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'        <li class="hidden-bullet"></li>',
'    </div>',
'</div>'))
,p_sub_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_a01_label=>'Description'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(13552191103003150175)
,p_list_template_current=>'<li class="nav-item active"><a href="#LINK#" class="active"><i class="#ICON_CSS_CLASSES#"></i>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="nav-item"><a href="#LINK#"><i class="#ICON_CSS_CLASSES#"></i>#TEXT#</a></li>'
,p_list_template_name=>'Standard'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>' <ul id="#LIST_ID#" class="nav #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21625926247228069129)
,p_list_template_current=>'<a class="dropdown-item #A01#" href="#LINK#">#TEXT#</a>'
,p_list_template_noncurrent=>'<a class="dropdown-item	#A01#" href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Single Button Dropdown'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ID#" class="btn-group #COMPONENT_CSS_CLASSES#">',
'    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">#REGION_TITLE#</button>',
'    <div class="dropdown-menu">'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(13552141119189127708)
,p_row_template_name=>'Standard - Column'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="report-#REGION_STATIC_ID#" class="table #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>',
'<table class="report-pagination report-pagination-top" role="presentation">#TOP_PAGINATION#</table>',
'<table class="table">',
'    '))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'<tfoot>',
'    <div class="report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'</tfoot>',
'</table>    ',
'<table class="report-pagination report-pagination-bottom" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="pagination-text">#TEXT#</span>'
,p_next_page_template=>'<a class="pagination-next" href="#LINK#">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a class="pagination-previous" href="#LINK#">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a class="pagination-next-set" href="#LINK#">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a class="pagination-previous-set" href="#LINK#">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>102
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(13552141119189127708)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(13552167309376140850)
,p_row_template_name=>'Standard - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#COMPONENT_CSS_CLASSES#">',
'    #1##2##3##4##5#',
'</div>'))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>102
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(21640155195235038826)
,p_row_template_name=>'Media'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="media #COMPONENT_CSS_CLASSES#">',
'    <a class="media-left" href="#MEDIA_LINK#">',
'        <img class="media-object" src="#MEDIA_IMG_SOURCE#">',
'    </a>',
'    <div class="media-body">',
'        <h4 class="media-heading">#MEDIA_TITLE#</h4>',
'        #MEDIA_DESCRIPTION#',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="media-list">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>102
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(11841495345346291)
,p_template_name=>'Addons'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="form-group #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="input-group">'
,p_after_element=>'</div><small class="text-muted">#HELP_TEMPLATE#</small>'
,p_help_link=>'#CURRENT_ITEM_HELP_TEXT#'
,p_theme_id=>102
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(13552189433666145531)
,p_template_name=>'Standard'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="form-group #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_after_element=>'<small class="text-muted">#HELP_TEMPLATE#</small>'
,p_help_link=>'#CURRENT_ITEM_HELP_TEXT#'
,p_theme_id=>102
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21666197619017591379)
,p_template_name=>'Blockquote (Display only)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="hidden-xs-up">'
,p_template_body2=>'</label>'
,p_before_item=>'<blockquote class="blockquote #ITEM_CSS_CLASSES#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer class="blockquote-footer">#CURRENT_ITEM_HELP_TEXT#</footer>',
'</blockquote>'))
,p_before_element=>'<p class="m-b-0">'
,p_after_element=>'</p>'
,p_theme_id=>102
,p_theme_class_id=>5
,p_default_template_options=>'hide-blockquote-footer'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21666767277169746701)
,p_template_name=>'Image (Display image)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="hidden-xs-up">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ab-image #ITEM_CSS_CLASSES#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<figcaption class="figure-caption">#CURRENT_ITEM_HELP_TEXT#</figcaption>',
'</div>'))
,p_theme_id=>102
,p_theme_class_id=>5
,p_default_template_options=>'ab-image-fluid'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(24675583319893454849)
,p_template_name=>'Figure (Display image)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="hidden-xs-up">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ab-image #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>102
,p_theme_class_id=>5
,p_default_template_options=>'ab-image-fluid'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(13552303088456225354)
,p_name=>'Standard'
,p_before_first=>'<div class="#COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'#NAME#'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'&nbsp;&gt;&nbsp;'
,p_after_last=>'</div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>102
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(13552304218748229372)
,p_page_name=>'Popup - Standard'
,p_theme_id=>102
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(13552266426206240627)
,p_cal_template_name=>'Standard'
,p_day_of_week_format=>'<th>#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="">',
' <tr>',
'   <td align="center" style="font-weight:bold;">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="1" cellpadding="1" cellspacing="1" summary="0">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div>#DD#</div><br />'
,p_day_open_format=>'<td valign="top">'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" bgcolor="#d3d3d3">'
,p_weekend_title_format=>'<div>#DD#</div>'
,p_weekend_open_format=>'<td valign="top">'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div>#DD#</div>'
,p_nonday_open_format=>'<td valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_theme_id=>102
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(13552050620237054546)
,p_theme_id=>102
,p_theme_name=>'Bootstrap 4'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(13552127774043124085)
,p_default_dialog_template=>wwv_flow_api.id(13552126408703123857)
,p_default_button_template=>wwv_flow_api.id(13552300091472216698)
,p_default_region_template=>wwv_flow_api.id(13552122302985116178)
,p_default_chart_template=>wwv_flow_api.id(13552122302985116178)
,p_default_form_template=>wwv_flow_api.id(13552122302985116178)
,p_default_reportr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_tabform_template=>wwv_flow_api.id(13552122302985116178)
,p_default_wizard_template=>wwv_flow_api.id(13552122302985116178)
,p_default_menur_template=>wwv_flow_api.id(13552122302985116178)
,p_default_listr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_irr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_report_template=>wwv_flow_api.id(13552141119189127708)
,p_default_label_template=>wwv_flow_api.id(13552189433666145531)
,p_default_menu_template=>wwv_flow_api.id(13552303088456225354)
,p_default_calendar_template=>wwv_flow_api.id(13552266426206240627)
,p_default_list_template=>wwv_flow_api.id(13552191103003150175)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_dialogr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_option_label=>wwv_flow_api.id(13552189433666145531)
,p_default_required_label=>wwv_flow_api.id(13552189433666145531)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(102),'')
,p_files_version=>23
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'&G_APP_IMAGES.lib/tether/dist/js/tether#MIN#.js',
'&G_APP_IMAGES.lib/bootstrap/js/bootstrap#MIN#.js',
'&G_APP_IMAGES.js/app#MIN#.js'))
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(24470518311035027269)
,p_theme_id=>102
,p_name=>'Default'
,p_css_file_urls=>'http://localhost:3000/css/app#MIN#.css'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'http://localhost:3000/less/bootstrap.less'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(24512902506843607578)
,p_theme_id=>102
,p_name=>'Flexbox'
,p_css_file_urls=>'http://localhost:3000/css/app-flex#MIN#.css'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'http://localhost:3000/less/bootstrap.less'
,p_theme_roller_read_only=>true
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(11102011560411455)
,p_theme_id=>102
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(11231329973660127)
,p_theme_id=>102
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12071675215786692)
,p_theme_id=>102
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12211553895955129)
,p_theme_id=>102
,p_name=>'VALIDATION'
,p_display_name=>'Validation'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12611211583185663)
,p_theme_id=>102
,p_name=>'REGION_MARGIN_BOTTOM'
,p_display_name=>'Margin bottom'
,p_display_sequence=>901
,p_template_types=>'REGION'
,p_help_text=>'Apply "Margin bottom" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12611368058185667)
,p_theme_id=>102
,p_name=>'REGION_MARGIN_RIGHT'
,p_display_name=>'Margin right'
,p_display_sequence=>902
,p_template_types=>'REGION'
,p_help_text=>'Apply "Margin right" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12611494448185669)
,p_theme_id=>102
,p_name=>'REGION_MARGIN_LEFT'
,p_display_name=>'Margin left'
,p_display_sequence=>903
,p_template_types=>'REGION'
,p_help_text=>'Apply "Margin left" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12622498924202572)
,p_theme_id=>102
,p_name=>'REGION_PADDING_TOP'
,p_display_name=>'Padding top'
,p_display_sequence=>910
,p_template_types=>'REGION'
,p_help_text=>'Apply "Padding top" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12622546189202574)
,p_theme_id=>102
,p_name=>'REGION_PADDING_BOTTOM'
,p_display_name=>'Padding bottom'
,p_display_sequence=>911
,p_template_types=>'REGION'
,p_help_text=>'Apply "Padding bottom" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12622654959202575)
,p_theme_id=>102
,p_name=>'REGION_PADDING_RIGHT'
,p_display_name=>'Padding right'
,p_display_sequence=>912
,p_template_types=>'REGION'
,p_help_text=>'Apply "Padding right" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12622776933202576)
,p_theme_id=>102
,p_name=>'REGION_PADDING_LEFT'
,p_display_name=>'Padding left'
,p_display_sequence=>913
,p_template_types=>'REGION'
,p_help_text=>'Apply "Padding left" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12861313185343108)
,p_theme_id=>102
,p_name=>'ADDON'
,p_display_name=>'Addon'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13084708729799164)
,p_theme_id=>102
,p_name=>'BUTTON_ADDON'
,p_display_name=>'Button addon'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_help_text=>'If the input has a button addon on the right, left or both'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13103007714859088)
,p_theme_id=>102
,p_name=>'ALERT_STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Specify the alert style.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206000644033231)
,p_theme_id=>102
,p_name=>'FIELD_MARGIN_TOP'
,p_display_name=>'Margin top'
,p_display_sequence=>900
,p_template_types=>'FIELD'
,p_help_text=>'Apply "Margin top" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206144645033251)
,p_theme_id=>102
,p_name=>'FIELD_MARGIN_BOTTOM'
,p_display_name=>'Margin bottom'
,p_display_sequence=>901
,p_template_types=>'FIELD'
,p_help_text=>'Apply "Margin bottom" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206215072033252)
,p_theme_id=>102
,p_name=>'FIELD_MARGIN_RIGHT'
,p_display_name=>'Margin right'
,p_display_sequence=>902
,p_template_types=>'FIELD'
,p_help_text=>'Apply "Margin right" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206391870033252)
,p_theme_id=>102
,p_name=>'FIELD_MARGIN_LEFT'
,p_display_name=>'Margin left'
,p_display_sequence=>903
,p_template_types=>'FIELD'
,p_help_text=>'Apply "Margin left" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206457838033253)
,p_theme_id=>102
,p_name=>'FIELD_PADDING_TOP'
,p_display_name=>'Padding top'
,p_display_sequence=>910
,p_template_types=>'FIELD'
,p_help_text=>'Apply "Padding top" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206553947033254)
,p_theme_id=>102
,p_name=>'FIELD_PADDING_BOTTOM'
,p_display_name=>'Padding bottom'
,p_display_sequence=>911
,p_template_types=>'FIELD'
,p_help_text=>'Apply "Padding bottom" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206641489033255)
,p_theme_id=>102
,p_name=>'FIELD_PADDING_RIGHT'
,p_display_name=>'Padding right'
,p_display_sequence=>912
,p_template_types=>'FIELD'
,p_help_text=>'Apply "Padding right" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206728136033255)
,p_theme_id=>102
,p_name=>'FIELD_PADDING_LEFT'
,p_display_name=>'Padding left'
,p_display_sequence=>913
,p_template_types=>'FIELD'
,p_help_text=>'Apply "Padding left" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206851273033256)
,p_theme_id=>102
,p_name=>'BUTTON_MARGIN_TOP'
,p_display_name=>'Margin top'
,p_display_sequence=>900
,p_template_types=>'BUTTON'
,p_help_text=>'Apply "Margin top" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13206999546033257)
,p_theme_id=>102
,p_name=>'BUTTON_MARGIN_BOTTOM'
,p_display_name=>'Margin bottom'
,p_display_sequence=>901
,p_template_types=>'BUTTON'
,p_help_text=>'Apply "Margin bottom" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13207073015033258)
,p_theme_id=>102
,p_name=>'BUTTON_MARGIN_RIGHT'
,p_display_name=>'Margin right'
,p_display_sequence=>902
,p_template_types=>'BUTTON'
,p_help_text=>'Apply "Margin right" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13207159374033259)
,p_theme_id=>102
,p_name=>'BUTTON_MARGIN_LEFT'
,p_display_name=>'Margin left'
,p_display_sequence=>903
,p_template_types=>'BUTTON'
,p_help_text=>'Apply "Margin left" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13207224137033259)
,p_theme_id=>102
,p_name=>'BUTTON_PADDING_TOP'
,p_display_name=>'Padding top'
,p_display_sequence=>910
,p_template_types=>'BUTTON'
,p_help_text=>'Apply "Padding top" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13207331889033260)
,p_theme_id=>102
,p_name=>'BUTTON_PADDING_BOTTOM'
,p_display_name=>'Padding bottom'
,p_display_sequence=>911
,p_template_types=>'BUTTON'
,p_help_text=>'Apply "Padding bottom" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13207412487033261)
,p_theme_id=>102
,p_name=>'BUTTON_PADDING_RIGHT'
,p_display_name=>'Padding right'
,p_display_sequence=>912
,p_template_types=>'BUTTON'
,p_help_text=>'Apply "Padding right" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13207517266033262)
,p_theme_id=>102
,p_name=>'BUTTON_PADDING_LEFT'
,p_display_name=>'Padding left'
,p_display_sequence=>913
,p_template_types=>'BUTTON'
,p_help_text=>'Apply "Padding left" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(11710808157153927160)
,p_theme_id=>102
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_help_text=>'Media vertical alignment'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21625697731164856632)
,p_theme_id=>102
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21625758199483748056)
,p_theme_id=>102
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21640024097869932393)
,p_theme_id=>102
,p_name=>'HIDE_CONTENT_DOWN_FROM'
,p_display_name=>'Hide Content Down From'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'The "Hide Content Down From" template option hides the element when the viewport is at the given breakpoint or smaller. For example, choosing "Medium" hides an element on extra-small, small, and medium viewports.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21640024792861937988)
,p_theme_id=>102
,p_name=>'HIDE_CONTENT_UP_TO'
,p_display_name=>'Hide Content Up To'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'The "Hide Content Up To" template option hides the element when the viewport is at the given breakpoint or wider. For example, choosing "Medium" hides an element on medium, large, and extra-large viewports.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21640111269589797934)
,p_theme_id=>102
,p_name=>'PRINT_UTILITIES'
,p_display_name=>'Print Utilities'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Use these for toggling content for print.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21666050145955709488)
,p_theme_id=>102
,p_name=>'HEADING_SIZE'
,p_display_name=>'Heading Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Specify the region''s header size.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21666849568988941560)
,p_theme_id=>102
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24059115783141614200)
,p_theme_id=>102
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Nasily set the background of an element to any contextual class. Anchor components will darken on hover, just like the text classes.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24059131998901617081)
,p_theme_id=>102
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Convey meaning through color with a handful of emphasis utility classes. These may also be applied to links and will darken on hover just like our default link styles.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24128555486626837813)
,p_theme_id=>102
,p_name=>'TEXT_ALIGNMENT'
,p_display_name=>'Text Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Align the content of your region''s body.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24129625400640113232)
,p_theme_id=>102
,p_name=>'TEXT_TRANSFORM'
,p_display_name=>'Text Transform'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Transform text in components with text capitalization classes.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24202269104436861053)
,p_theme_id=>102
,p_name=>'LANGUAGE_TYPE'
,p_display_name=>'Language Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Specify the code snippet''s language.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24360378903801962759)
,p_theme_id=>102
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24400284124319075630)
,p_theme_id=>102
,p_name=>'REGION_MARGIN_TOP'
,p_display_name=>'Margin top'
,p_display_sequence=>900
,p_template_types=>'REGION'
,p_help_text=>'Apply "Margin top" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24638563454136000092)
,p_theme_id=>102
,p_name=>'REPORT_THEAD_STYLE'
,p_display_name=>'Report thead style'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'None'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11102343349415538)
,p_theme_id=>102
,p_name=>'SECONDARY'
,p_display_name=>'Secondary'
,p_display_sequence=>1
,p_css_classes=>'btn-secondary'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11121394358439094)
,p_theme_id=>102
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_css_classes=>'btn-primary'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11121657028440236)
,p_theme_id=>102
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_css_classes=>'btn-success'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11121939823441149)
,p_theme_id=>102
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_css_classes=>'btn-info'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11122225534442238)
,p_theme_id=>102
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_css_classes=>'btn-warning'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11122545021443225)
,p_theme_id=>102
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_css_classes=>'btn-danger'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11171694315514150)
,p_theme_id=>102
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_css_classes=>'btn-danger'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11172088443514151)
,p_theme_id=>102
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_css_classes=>'btn-info'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11172431014514151)
,p_theme_id=>102
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_css_classes=>'btn-primary'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11172855995514151)
,p_theme_id=>102
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_css_classes=>'btn-success'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11173297080514151)
,p_theme_id=>102
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_css_classes=>'btn-warning'
,p_group_id=>wwv_flow_api.id(11102011560411455)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11251315870665638)
,p_theme_id=>102
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_css_classes=>'btn-lg'
,p_group_id=>wwv_flow_api.id(11231329973660127)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11251642431666991)
,p_theme_id=>102
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_css_classes=>'btn-sm'
,p_group_id=>wwv_flow_api.id(11231329973660127)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11261359685669641)
,p_theme_id=>102
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_css_classes=>'btn-lg'
,p_group_id=>wwv_flow_api.id(11231329973660127)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11261608217670563)
,p_theme_id=>102
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_css_classes=>'btn-sm'
,p_group_id=>wwv_flow_api.id(11231329973660127)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11431385627164312)
,p_theme_id=>102
,p_name=>'DROPUP'
,p_display_name=>'Dropup'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_css_classes=>'dropup'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11671373179682466)
,p_theme_id=>102
,p_name=>'DROPUP'
,p_display_name=>'Dropup'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_css_classes=>'dropup'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11751337858158580)
,p_theme_id=>102
,p_name=>'INLINE_FORM'
,p_display_name=>'Inline form'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(13552122302985116178)
,p_css_classes=>'form-inline'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11781322367236480)
,p_theme_id=>102
,p_name=>'HIDDEN_LABEL'
,p_display_name=>'Hidden label'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(13552189433666145531)
,p_css_classes=>'sr-only'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11841743281346309)
,p_theme_id=>102
,p_name=>'HIDDEN_LABEL'
,p_display_name=>'Hidden label'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(11841495345346291)
,p_css_classes=>'sr-only'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12081324369790305)
,p_theme_id=>102
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(13552189433666145531)
,p_css_classes=>'form-control-lg'
,p_group_id=>wwv_flow_api.id(12071675215786692)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12081695368791578)
,p_theme_id=>102
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(13552189433666145531)
,p_css_classes=>'form-control-sm'
,p_group_id=>wwv_flow_api.id(12071675215786692)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12221396253958424)
,p_theme_id=>102
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(13552189433666145531)
,p_css_classes=>'has-success'
,p_group_id=>wwv_flow_api.id(12211553895955129)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12221635498959902)
,p_theme_id=>102
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(13552189433666145531)
,p_css_classes=>'has-warning'
,p_group_id=>wwv_flow_api.id(12211553895955129)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12221935335960901)
,p_theme_id=>102
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(13552189433666145531)
,p_css_classes=>'has-danger'
,p_group_id=>wwv_flow_api.id(12211553895955129)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12381353921096413)
,p_theme_id=>102
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(11841495345346291)
,p_css_classes=>'form-control-lg'
,p_group_id=>wwv_flow_api.id(12071675215786692)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12391319677097653)
,p_theme_id=>102
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(11841495345346291)
,p_css_classes=>'form-control-sm'
,p_group_id=>wwv_flow_api.id(12071675215786692)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12851393761338621)
,p_theme_id=>102
,p_name=>'LEFT-ADDON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_css_classes=>'btn-left-addon'
,p_group_id=>wwv_flow_api.id(12861313185343108)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12851695322340367)
,p_theme_id=>102
,p_name=>'RIGHT-ADDON'
,p_display_name=>'Right'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_css_classes=>'btn-right-addon'
,p_group_id=>wwv_flow_api.id(12861313185343108)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12891239517448462)
,p_theme_id=>102
,p_name=>'REGION_MARGINBOT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'m-b-0'
,p_group_id=>wwv_flow_api.id(12611211583185663)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12891352554448482)
,p_theme_id=>102
,p_name=>'REGION_MARGINBOT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'m-b-1'
,p_group_id=>wwv_flow_api.id(12611211583185663)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12891420084448483)
,p_theme_id=>102
,p_name=>'REGION_MARGINBOT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'m-b-2'
,p_group_id=>wwv_flow_api.id(12611211583185663)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12891547180448484)
,p_theme_id=>102
,p_name=>'REGION_MARGINBOT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'m-b-3'
,p_group_id=>wwv_flow_api.id(12611211583185663)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12891666931448485)
,p_theme_id=>102
,p_name=>'REGION_MARGINRIGHT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'m-r-0'
,p_group_id=>wwv_flow_api.id(12611368058185667)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12891776353448486)
,p_theme_id=>102
,p_name=>'REGION_MARGINRIGHT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'m-r-1'
,p_group_id=>wwv_flow_api.id(12611368058185667)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12891847444448487)
,p_theme_id=>102
,p_name=>'REGION_MARGINRIGHT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'m-r-2'
,p_group_id=>wwv_flow_api.id(12611368058185667)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12891960727448488)
,p_theme_id=>102
,p_name=>'REGION_MARGINRIGHT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'m-r-3'
,p_group_id=>wwv_flow_api.id(12611368058185667)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892099277448489)
,p_theme_id=>102
,p_name=>'REGION_MARGINLEFT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'m-l-0'
,p_group_id=>wwv_flow_api.id(12611494448185669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892192071448489)
,p_theme_id=>102
,p_name=>'REGION_MARGINLEFT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'m-l-1'
,p_group_id=>wwv_flow_api.id(12611494448185669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892209070448492)
,p_theme_id=>102
,p_name=>'REGION_MARGINLEFT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'m-l-2'
,p_group_id=>wwv_flow_api.id(12611494448185669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892373385448494)
,p_theme_id=>102
,p_name=>'REGION_MARGINLEFT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'m-l-3'
,p_group_id=>wwv_flow_api.id(12611494448185669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892430461448495)
,p_theme_id=>102
,p_name=>'REGION_PADDINGTOP0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'p-t-0'
,p_group_id=>wwv_flow_api.id(12622498924202572)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892522350448496)
,p_theme_id=>102
,p_name=>'REGION_PADDINGTOP1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'p-t-1'
,p_group_id=>wwv_flow_api.id(12622498924202572)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892695558448496)
,p_theme_id=>102
,p_name=>'REGION_PADDINGTOP2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'p-t-2'
,p_group_id=>wwv_flow_api.id(12622498924202572)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892738650448497)
,p_theme_id=>102
,p_name=>'REGION_PADDINGTOP3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'p-t-3'
,p_group_id=>wwv_flow_api.id(12622498924202572)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892816233448498)
,p_theme_id=>102
,p_name=>'REGION_PADDINGBOT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'p-b-0'
,p_group_id=>wwv_flow_api.id(12622546189202574)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12892964791448499)
,p_theme_id=>102
,p_name=>'REGION_PADDINGBOT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'p-b-1'
,p_group_id=>wwv_flow_api.id(12622546189202574)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893032189448501)
,p_theme_id=>102
,p_name=>'REGION_PADDINGBOT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'p-b-2'
,p_group_id=>wwv_flow_api.id(12622546189202574)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893159718448502)
,p_theme_id=>102
,p_name=>'REGION_PADDINGBOT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'p-b-3'
,p_group_id=>wwv_flow_api.id(12622546189202574)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893293513448503)
,p_theme_id=>102
,p_name=>'REGION_PADDINGRIGHT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'p-r-0'
,p_group_id=>wwv_flow_api.id(12622654959202575)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893350868448504)
,p_theme_id=>102
,p_name=>'REGION_PADDINGRIGHT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'p-r-1'
,p_group_id=>wwv_flow_api.id(12622654959202575)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893466938448505)
,p_theme_id=>102
,p_name=>'REGION_PADDINGRIGHT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'p-r-2'
,p_group_id=>wwv_flow_api.id(12622654959202575)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893594174448506)
,p_theme_id=>102
,p_name=>'REGION_PADDINGRIGHT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'p-r-3'
,p_group_id=>wwv_flow_api.id(12622654959202575)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893617827448507)
,p_theme_id=>102
,p_name=>'REGION_PADDINGLEFT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'p-l-0'
,p_group_id=>wwv_flow_api.id(12622776933202576)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893781061448508)
,p_theme_id=>102
,p_name=>'REGION_PADDINGLEFT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'p-l-1'
,p_group_id=>wwv_flow_api.id(12622776933202576)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893859019448509)
,p_theme_id=>102
,p_name=>'REGION_PADDINGLEFT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'p-l-2'
,p_group_id=>wwv_flow_api.id(12622776933202576)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12893943002448509)
,p_theme_id=>102
,p_name=>'REGION_PADDINGLEFT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'p-l-3'
,p_group_id=>wwv_flow_api.id(12622776933202576)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13068909754743728)
,p_theme_id=>102
,p_name=>'INLINE_FORM'
,p_display_name=>'Inline form'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(13068521232743705)
,p_css_classes=>'form-inline'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13091342196804878)
,p_theme_id=>102
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(13552189433666145531)
,p_css_classes=>'input-btn-left-addon'
,p_group_id=>wwv_flow_api.id(13084708729799164)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13091689389806701)
,p_theme_id=>102
,p_name=>'RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(13552189433666145531)
,p_css_classes=>'input-btn-right-addon'
,p_group_id=>wwv_flow_api.id(13084708729799164)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13091991233807931)
,p_theme_id=>102
,p_name=>'BOTH'
,p_display_name=>'Both'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(13552189433666145531)
,p_css_classes=>'input-btn-addon'
,p_group_id=>wwv_flow_api.id(13084708729799164)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13103668806859737)
,p_theme_id=>102
,p_name=>'INLINE_FORM'
,p_display_name=>'Inline form'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(13103249077859732)
,p_css_classes=>'form-inline'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13104518299864522)
,p_theme_id=>102
,p_name=>'ALERT_SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(13068521232743705)
,p_css_classes=>'alert-success'
,p_group_id=>wwv_flow_api.id(13103007714859088)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13111301218866293)
,p_theme_id=>102
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(13068521232743705)
,p_css_classes=>'alert-info'
,p_group_id=>wwv_flow_api.id(13103007714859088)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13112190025867925)
,p_theme_id=>102
,p_name=>'ALERT_WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(13068521232743705)
,p_css_classes=>'alert-warning'
,p_group_id=>wwv_flow_api.id(13103007714859088)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13112939633869507)
,p_theme_id=>102
,p_name=>'ALERT_DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(13068521232743705)
,p_css_classes=>'alert-danger'
,p_group_id=>wwv_flow_api.id(13103007714859088)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13131385728881762)
,p_theme_id=>102
,p_name=>'ALERT_DISMISSIBLE'
,p_display_name=>'Dismissible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(13068521232743705)
,p_css_classes=>'alert-dismissible fade in'
,p_template_types=>'REGION'
,p_help_text=>'It’s possible to dismiss any alert inline'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13261392731116656)
,p_theme_id=>102
,p_name=>'ALWAYS_OPEN'
,p_display_name=>'Always open'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_css_classes=>'open'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13295187727275096)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINBOT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'m-b-0'
,p_group_id=>wwv_flow_api.id(13206999546033257)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13295208911275116)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINBOT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'m-b-1'
,p_group_id=>wwv_flow_api.id(13206999546033257)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13295328968275117)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINBOT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'m-b-2'
,p_group_id=>wwv_flow_api.id(13206999546033257)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13295474353275118)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINBOT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'m-b-3'
,p_group_id=>wwv_flow_api.id(13206999546033257)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13295509264275119)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINRIGHT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'m-r-0'
,p_group_id=>wwv_flow_api.id(13207073015033258)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13295678630275119)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINRIGHT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'m-r-1'
,p_group_id=>wwv_flow_api.id(13207073015033258)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13295708255275120)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINRIGHT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'m-r-2'
,p_group_id=>wwv_flow_api.id(13207073015033258)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13295864800275121)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINRIGHT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'m-r-3'
,p_group_id=>wwv_flow_api.id(13207073015033258)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13295990524275122)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINLEFT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'m-l-0'
,p_group_id=>wwv_flow_api.id(13207159374033259)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296048092275123)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINLEFT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'m-l-1'
,p_group_id=>wwv_flow_api.id(13207159374033259)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296175118275124)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINLEFT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'m-l-2'
,p_group_id=>wwv_flow_api.id(13207159374033259)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296290670275124)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINLEFT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'m-l-3'
,p_group_id=>wwv_flow_api.id(13207159374033259)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296316498275125)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGTOP0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'p-t-0'
,p_group_id=>wwv_flow_api.id(13207224137033259)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296425227275126)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGTOP1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'p-t-1'
,p_group_id=>wwv_flow_api.id(13207224137033259)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296598177275127)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGTOP2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'p-t-2'
,p_group_id=>wwv_flow_api.id(13207224137033259)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296662063275127)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGTOP3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'p-t-3'
,p_group_id=>wwv_flow_api.id(13207224137033259)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296745002275128)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGBOT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'p-b-0'
,p_group_id=>wwv_flow_api.id(13207331889033260)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296881258275129)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGBOT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'p-b-1'
,p_group_id=>wwv_flow_api.id(13207331889033260)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13296930924275130)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGBOT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'p-b-2'
,p_group_id=>wwv_flow_api.id(13207331889033260)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297061794275131)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGBOT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'p-b-3'
,p_group_id=>wwv_flow_api.id(13207331889033260)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297197072275132)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGRIGHT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'p-r-0'
,p_group_id=>wwv_flow_api.id(13207412487033261)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297298579275133)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGRIGHT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'p-r-1'
,p_group_id=>wwv_flow_api.id(13207412487033261)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297348356275133)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGRIGHT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'p-r-2'
,p_group_id=>wwv_flow_api.id(13207412487033261)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297401022275134)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGRIGHT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'p-r-3'
,p_group_id=>wwv_flow_api.id(13207412487033261)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297531182275135)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGLEFT0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'p-l-0'
,p_group_id=>wwv_flow_api.id(13207517266033262)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297687397275136)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGLEFT1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'p-l-1'
,p_group_id=>wwv_flow_api.id(13207517266033262)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297711776275137)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGLEFT2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'p-l-2'
,p_group_id=>wwv_flow_api.id(13207517266033262)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297898924275138)
,p_theme_id=>102
,p_name=>'BUTTON_PADDINGLEFT3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'p-l-3'
,p_group_id=>wwv_flow_api.id(13207517266033262)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13297959477275138)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINTOP0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'m-t-0'
,p_group_id=>wwv_flow_api.id(13206851273033256)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13298038038275139)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINTOP1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'m-t-1'
,p_group_id=>wwv_flow_api.id(13206851273033256)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13298193963275140)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINTOP2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'m-t-2'
,p_group_id=>wwv_flow_api.id(13206851273033256)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13298236625275141)
,p_theme_id=>102
,p_name=>'BUTTON_MARGINTOP3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'m-t-3'
,p_group_id=>wwv_flow_api.id(13206851273033256)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625719983708694492)
,p_theme_id=>102
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'btn-primary'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
,p_help_text=>'Provides extra visual weight and identifies the primary action in a set of buttons.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625720610311698986)
,p_theme_id=>102
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'btn-success'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625721104857702584)
,p_theme_id=>102
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_css_classes=>'btn-info'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625722390622708850)
,p_theme_id=>102
,p_name=>'LINK'
,p_display_name=>'Link'
,p_display_sequence=>1
,p_css_classes=>'btn-link'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625725313197730703)
,p_theme_id=>102
,p_name=>'PRIMARY_OUTLINE'
,p_display_name=>'Primary Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-primary-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625725891619738640)
,p_theme_id=>102
,p_name=>'SECONDARY_OUTLINE'
,p_display_name=>'Secondary Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-secondary-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625726725607743946)
,p_theme_id=>102
,p_name=>'WARNING_OUTLINE'
,p_display_name=>'Warning Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-warning-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625727641740745075)
,p_theme_id=>102
,p_name=>'DANGER_OUTLINE'
,p_display_name=>'Danger Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-danger-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625728619490862983)
,p_theme_id=>102
,p_name=>'SECONDARY'
,p_display_name=>'Secondary'
,p_display_sequence=>1
,p_css_classes=>'btn-secondary'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625729565526870441)
,p_theme_id=>102
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'btn-warning'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625729879538873669)
,p_theme_id=>102
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'btn-danger'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625751624982906980)
,p_theme_id=>102
,p_name=>'SUCCESS_OUTLINE'
,p_display_name=>'Success Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-success-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625752550344909027)
,p_theme_id=>102
,p_name=>'INFO_OUTLINE'
,p_display_name=>'Info Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-info-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625759477913763290)
,p_theme_id=>102
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'btn-lg'
,p_group_id=>wwv_flow_api.id(21625758199483748056)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625759757428765096)
,p_theme_id=>102
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'btn-sm'
,p_group_id=>wwv_flow_api.id(21625758199483748056)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625773598184788498)
,p_theme_id=>102
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>1
,p_css_classes=>'btn-block'
,p_template_types=>'BUTTON'
,p_help_text=>'Create block level buttons—those that span the full width of a parent'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625836112864099334)
,p_theme_id=>102
,p_name=>'FIXED_HEADER'
,p_display_name=>'Fixed Header'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_css_classes=>'ab-navbar-fixed-top'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640112739818804832)
,p_theme_id=>102
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>2
,p_css_classes=>'hidden-sm-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640113299861805977)
,p_theme_id=>102
,p_name=>'MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>3
,p_css_classes=>'hidden-md-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640113812122807741)
,p_theme_id=>102
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>4
,p_css_classes=>'hidden-lg-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640119408359968948)
,p_theme_id=>102
,p_name=>'XS'
,p_display_name=>'X-Small'
,p_display_sequence=>1
,p_css_classes=>'hidden-xs-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640121325350979905)
,p_theme_id=>102
,p_name=>'XLARGE'
,p_display_name=>'X-Large'
,p_display_sequence=>5
,p_css_classes=>'hidden-xl-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640122675546989037)
,p_theme_id=>102
,p_name=>'X-SMALL'
,p_display_name=>'X-Small'
,p_display_sequence=>1
,p_css_classes=>'hidden-xs-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640135397168002790)
,p_theme_id=>102
,p_name=>'HIDDEN-MD-UP'
,p_display_name=>'Medium'
,p_display_sequence=>3
,p_css_classes=>'hidden-md-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640136286041008367)
,p_theme_id=>102
,p_name=>'HIDDEN-LG-UP'
,p_display_name=>'Large'
,p_display_sequence=>4
,p_css_classes=>'hidden-lg-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640136550714010098)
,p_theme_id=>102
,p_name=>'HIDDEN-XL-UP'
,p_display_name=>'X-Large'
,p_display_sequence=>5
,p_css_classes=>'hidden-xl-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640137091290013228)
,p_theme_id=>102
,p_name=>'VISIBLE-PRINT-BLOCK'
,p_display_name=>'Visible Print Block'
,p_display_sequence=>1
,p_css_classes=>'visible-print-block'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640137692683015022)
,p_theme_id=>102
,p_name=>'VISIBLE-PRINT-INLINE'
,p_display_name=>'Visible Print Inline'
,p_display_sequence=>2
,p_css_classes=>'visible-print-inline'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640141858219834672)
,p_theme_id=>102
,p_name=>'HIDDEN-SM-UP'
,p_display_name=>'Small'
,p_display_sequence=>2
,p_css_classes=>'hidden-sm-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640148564556017807)
,p_theme_id=>102
,p_name=>'VISIBLE-PRINT-INLINE-BLOCK'
,p_display_name=>'Visible Inline Block'
,p_display_sequence=>3
,p_css_classes=>'visible-print-inline-block'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640153484008019352)
,p_theme_id=>102
,p_name=>'HIDDEN-PRINT'
,p_display_name=>'Hidden'
,p_display_sequence=>4
,p_css_classes=>'hidden-print'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666041001108550098)
,p_theme_id=>102
,p_name=>'H1'
,p_display_name=>'H1'
,p_display_sequence=>1
,p_css_classes=>'ab-h1'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666042407878558530)
,p_theme_id=>102
,p_name=>'H6'
,p_display_name=>'H6'
,p_display_sequence=>6
,p_css_classes=>'ab-h6'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666071554068718145)
,p_theme_id=>102
,p_name=>'H2'
,p_display_name=>'H2'
,p_display_sequence=>2
,p_css_classes=>'ab-h2'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666072048037719568)
,p_theme_id=>102
,p_name=>'H3'
,p_display_name=>'H3'
,p_display_sequence=>3
,p_css_classes=>'ab-h3'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666072581706722086)
,p_theme_id=>102
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>4
,p_css_classes=>'ab-h4'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666073176443723498)
,p_theme_id=>102
,p_name=>'H5'
,p_display_name=>'H5'
,p_display_sequence=>5
,p_css_classes=>'ab-h5'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666095879490732266)
,p_theme_id=>102
,p_name=>'LEAD_TEXT'
,p_display_name=>'Lead Text'
,p_display_sequence=>2
,p_css_classes=>'region-lead'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666282125105664607)
,p_theme_id=>102
,p_name=>'HIDE_BLOCKQUOTE_FOOTER'
,p_display_name=>'Hide Blockquote Footer'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666197619017591379)
,p_css_classes=>'hide-blockquote-footer'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666356972662859423)
,p_theme_id=>102
,p_name=>'REVERSED_RIGHT_ALIGNED'
,p_display_name=>'Reversed (Right Aligned)'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666197619017591379)
,p_css_classes=>'blockquote-reverse'
,p_template_types=>'FIELD'
,p_help_text=>'Add this for a blockquote with right-aligned content.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666840404398767217)
,p_theme_id=>102
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-image-fluid'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666843144947779255)
,p_theme_id=>102
,p_name=>'ROUNDED'
,p_display_name=>'Rounded'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-img-rounded'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666843434561782613)
,p_theme_id=>102
,p_name=>'CIRCLE'
,p_display_name=>'Circle'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-img-circle'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666870540953951179)
,p_theme_id=>102
,p_name=>'THUMBNAIL'
,p_display_name=>'Thumbnail'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-img-thumbnail'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23984310613062130330)
,p_theme_id=>102
,p_name=>'REGION_HEADING_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>0
,p_css_classes=>'ab-region-title-hidden'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059139373492013660)
,p_theme_id=>102
,p_name=>'REGION_TEXT_PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'text-primary'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059140822186020128)
,p_theme_id=>102
,p_name=>'REGION_TEXT_INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_css_classes=>'text-info'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059141266729022189)
,p_theme_id=>102
,p_name=>'REGION_TEXT_WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'text-warning'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059141923465023750)
,p_theme_id=>102
,p_name=>'REGION_TEXT_DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'text-danger'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059164367752622390)
,p_theme_id=>102
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'bg-primary'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059165404281624143)
,p_theme_id=>102
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'bg-success'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059166042593626850)
,p_theme_id=>102
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_css_classes=>'bg-info'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059166361121627983)
,p_theme_id=>102
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'bg-warning'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059166788431628913)
,p_theme_id=>102
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'bg-danger'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059167566968629938)
,p_theme_id=>102
,p_name=>'INVERSE'
,p_display_name=>'Inverse'
,p_display_sequence=>1
,p_css_classes=>'bg-inverse'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059173144624632820)
,p_theme_id=>102
,p_name=>'MUTED'
,p_display_name=>'Muted'
,p_display_sequence=>1
,p_css_classes=>'text-muted'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059191752019643216)
,p_theme_id=>102
,p_name=>'REGION_TEXT_SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'text-success'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059521481597336821)
,p_theme_id=>102
,p_name=>'MASTER_JUMBOTRON'
,p_display_name=>'Master Jumbotron'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23440519442971713102)
,p_css_classes=>'master-jumbotron'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24128544476563473535)
,p_theme_id=>102
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'text-xs-left'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24128570676742476205)
,p_theme_id=>102
,p_name=>'TEXT_XS_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>1
,p_css_classes=>'text-xs-center'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24128599573734478423)
,p_theme_id=>102
,p_name=>'TEXT_XS_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>3
,p_css_classes=>'text-xs-right'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129332538610683267)
,p_theme_id=>102
,p_name=>'TEXT_XS_JUSTIFY'
,p_display_name=>'Justified'
,p_display_sequence=>1
,p_css_classes=>'text-justify'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129820066815118660)
,p_theme_id=>102
,p_name=>'TEXT_LOWERCASE'
,p_display_name=>'Lowercase'
,p_display_sequence=>1
,p_css_classes=>'text-lowercase'
,p_group_id=>wwv_flow_api.id(24129625400640113232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129821301439121649)
,p_theme_id=>102
,p_name=>'TEXT_UPPERCASE'
,p_display_name=>'Uppercase'
,p_display_sequence=>1
,p_css_classes=>'text-uppercase'
,p_group_id=>wwv_flow_api.id(24129625400640113232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129822219309124426)
,p_theme_id=>102
,p_name=>'TEXT_CAPITALIZE'
,p_display_name=>'Capitalize'
,p_display_sequence=>1
,p_css_classes=>'text-capitalize'
,p_group_id=>wwv_flow_api.id(24129625400640113232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24201296342862684778)
,p_theme_id=>102
,p_name=>'CONTAINER_FLUID'
,p_display_name=>'Container Fluid'
,p_display_sequence=>1
,p_css_classes=>'ab-container-fluid'
,p_template_types=>'PAGE'
,p_help_text=>'Use .this for a full width container, spanning the entire width of the viewport.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202269591009861054)
,p_theme_id=>102
,p_name=>'CSS'
,p_display_name=>'CSS'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-css'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202269912945861054)
,p_theme_id=>102
,p_name=>'HTML'
,p_display_name=>'HTML'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-markup'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202270332163861055)
,p_theme_id=>102
,p_name=>'JAVASCRIPT'
,p_display_name=>'JavaScript'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-javascript'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202270765332861055)
,p_theme_id=>102
,p_name=>'SCSS'
,p_display_name=>'SCSS'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-scss'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202271139436861055)
,p_theme_id=>102
,p_name=>'SQL'
,p_display_name=>'SQL'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-sql'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24360382034750968666)
,p_theme_id=>102
,p_name=>'BUTTON_XS_FLOAT_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'pull-xs-left'
,p_group_id=>wwv_flow_api.id(24360378903801962759)
,p_template_types=>'BUTTON'
,p_help_text=>'Float left on all viewport sizes'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24361086981300985957)
,p_theme_id=>102
,p_name=>'BUTTON_XS_FLOAT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>1
,p_css_classes=>'center-block'
,p_group_id=>wwv_flow_api.id(24360378903801962759)
,p_template_types=>'BUTTON'
,p_help_text=>'Float center on all viewport sizes'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24363125803048989807)
,p_theme_id=>102
,p_name=>'BUTTON_XS_FLOAT_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>3
,p_css_classes=>'pull-xs-right'
,p_group_id=>wwv_flow_api.id(24360378903801962759)
,p_template_types=>'BUTTON'
,p_help_text=>'Float right on all viewport sizes'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24363128931678994255)
,p_theme_id=>102
,p_name=>'BUTTON_XS_FLOAT_NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_css_classes=>'pull-xs-none'
,p_group_id=>wwv_flow_api.id(24360378903801962759)
,p_template_types=>'BUTTON'
,p_help_text=>'Don''t float on all viewport sizes'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24400284488712075631)
,p_theme_id=>102
,p_name=>'REGION_MARGINTOP0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'m-t-0'
,p_group_id=>wwv_flow_api.id(24400284124319075630)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24400284873394075632)
,p_theme_id=>102
,p_name=>'REGION_MARGINTOP1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'m-t-1'
,p_group_id=>wwv_flow_api.id(24400284124319075630)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24400285240721075632)
,p_theme_id=>102
,p_name=>'REGION_MARGINTOP2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'m-t-2'
,p_group_id=>wwv_flow_api.id(24400284124319075630)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24400285600509075634)
,p_theme_id=>102
,p_name=>'REGION_MARGINTOP3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'m-t-3'
,p_group_id=>wwv_flow_api.id(24400284124319075630)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24555926452462430250)
,p_theme_id=>102
,p_name=>'REGIONHEADINGSIZESUPER1'
,p_display_name=>'Super size 1'
,p_display_sequence=>7
,p_css_classes=>'ab-display-1'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24555927557071431908)
,p_theme_id=>102
,p_name=>'REGIONHEADINGSIZESUPER2'
,p_display_name=>'Super size 2'
,p_display_sequence=>8
,p_css_classes=>'ab-display-2'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24555928381262434258)
,p_theme_id=>102
,p_name=>'REGIONHEADINGSIZESUPER3'
,p_display_name=>'Super size 3'
,p_display_sequence=>9
,p_css_classes=>'ab-display-3'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24555973809276435852)
,p_theme_id=>102
,p_name=>'REGIONHEADINGSIZESUPER4'
,p_display_name=>'Super size 4'
,p_display_sequence=>10
,p_css_classes=>'ab-display-4'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24638517463110990773)
,p_theme_id=>102
,p_name=>'TABLE_INVERSE'
,p_display_name=>'Table inverse'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-inverse'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24638818495987042562)
,p_theme_id=>102
,p_name=>'THEAD_INVERSE'
,p_display_name=>'Inverse'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-thead-inverse'
,p_group_id=>wwv_flow_api.id(24638563454136000092)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24638868108048044818)
,p_theme_id=>102
,p_name=>'THEAD_DEFAULT'
,p_display_name=>'Default'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-thead-default'
,p_group_id=>wwv_flow_api.id(24638563454136000092)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666957512989616847)
,p_theme_id=>102
,p_name=>'TABLE_STRIPED'
,p_display_name=>'Table striped'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-striped'
,p_template_types=>'REPORT'
,p_help_text=>'Use this to add zebra-striping to any table row within the <tbody>.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666967360255004826)
,p_theme_id=>102
,p_name=>'TABLE_RESPONSIVE'
,p_display_name=>'Table responsive'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'table-responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Create responsive tables by making them scroll horizontally on small devices (under 768px). When viewing on anything larger than 768px wide, you will not see any difference in these tables.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666969862666619210)
,p_theme_id=>102
,p_name=>'TABLE_BORDERED'
,p_display_name=>'Table bordered'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-bordered'
,p_template_types=>'REPORT'
,p_help_text=>'Add this for borders on all sides of the table and cells.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666971488961621593)
,p_theme_id=>102
,p_name=>'TABLE_HOVER'
,p_display_name=>'Table hover'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-hover'
,p_template_types=>'REPORT'
,p_help_text=>'Add this to enable a hover state on table rows within a <tbody>.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666983108175624062)
,p_theme_id=>102
,p_name=>'TABLE_SMALL'
,p_display_name=>'Table small'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-sm'
,p_template_types=>'REPORT'
,p_help_text=>'Add this to make tables more compact by cutting cell padding in half.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666999550614007775)
,p_theme_id=>102
,p_name=>'TABLE_REFLOW'
,p_display_name=>'Table reflow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-reflow'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675583671135454855)
,p_theme_id=>102
,p_name=>'CIRCLE'
,p_display_name=>'Circle'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(24675583319893454849)
,p_css_classes=>'ab-img-circle'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675584090474454856)
,p_theme_id=>102
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(24675583319893454849)
,p_css_classes=>'ab-image-fluid'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675584422731454856)
,p_theme_id=>102
,p_name=>'ROUNDED'
,p_display_name=>'Rounded'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(24675583319893454849)
,p_css_classes=>'ab-img-rounded'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675584844990454856)
,p_theme_id=>102
,p_name=>'THUMBNAIL'
,p_display_name=>'Thumbnail'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(24675583319893454849)
,p_css_classes=>'ab-img-thumbnail'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675998799033483446)
,p_theme_id=>102
,p_name=>'ITEM_FIGURE'
,p_display_name=>'Figure'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-figure'
,p_template_types=>'FIELD'
,p_help_text=>'Anytime you need to display a piece of content—like an image—with an optional caption, consider using a figure.'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(23429897160371117909)
,p_build_option_name=>'DEV_ONLY'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(18663152450585564498)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/me_vmorneau_template_documentation
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(23497853128915578247)
,p_plugin_type=>'REGION TYPE'
,p_name=>'ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_display_name=>'APEX Theme Documentation'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','ME.VMORNEAU.TEMPLATE.DOCUMENTATION'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render_theme_documentation(',
'    p_region in apex_plugin.t_region',
'    ,p_plugin in apex_plugin.t_plugin',
'    ,p_is_printer_friendly in boolean )',
'return apex_plugin.t_region_render_result',
'as',
'    subtype plugin_attr is varchar2(32767);',
'',
'    /* Variables */',
'    l_result apex_plugin.t_region_render_result;',
'    l_html varchar2(32767);',
'',
'    /* Component attributes */',
'    l_component_type         plugin_attr := p_region.attribute_01;',
'    l_documentation_type     plugin_attr := p_region.attribute_02;',
'    l_component_id           plugin_attr := p_region.attribute_03;',
'    l_displayed_info         plugin_attr := p_region.attribute_04;',
'    l_template_option_group  plugin_attr := p_region.attribute_05;',
'    l_template_option_single plugin_attr := p_region.attribute_06;',
'    l_include_globals        plugin_attr := p_region.attribute_07;',
'',
'    /* cursors */',
'    /* c_template_option_groups */',
'    cursor  c_template_option_groups is',
'    select  ato.display_name',
'            ,ato.help_text',
'    from    apex_appl_template_opt_groups atog',
'    join    apex_appl_template_options ato',
'    on      ato.application_id  = atog.application_id',
'    and     ato.theme_number    = atog.theme_number',
'    and     ato.group_id        = atog.template_opt_group_id',
'    where   atog.application_id = :APP_ID',
'    and     atog.name           = l_template_option_group',
'    and     atog.template_types = l_component_type;',
'',
'    /* c_template_option_single */',
'    cursor  c_template_option_single is',
'    select  ato.display_name',
'            ,ato.help_text',
'    from    apex_appl_template_options ato',
'    where   ato.application_id        = :APP_ID',
'    and     ato.name                  = l_template_option_single;',
'',
'    /* c_global_template_options */',
'    cursor  c_global_template_options is',
'    select  atog.display_name group_name',
'            ,ato.display_name',
'            ,ato.help_text',
'    from    apex_appl_template_options ato',
'    left join apex_appl_template_opt_groups atog',
'    on      atog.application_id       = ato.application_id',
'    and     atog.theme_number         = ato.theme_number',
'    and     atog.template_opt_group_id= ato.group_id',
'    where   ato.application_id        = :APP_ID',
'    and     ato.virtual_template_type = l_component_type',
'    and     l_include_globals         = ''Y'';',
'',
'    /* c_button_all_template_options */',
'    cursor  c_button_all_template_options is',
'    select  atog.display_name group_name',
'            ,ato.display_name',
'            ,ato.help_text',
'    from    apex_application_page_buttons apb',
'    join    apex_appl_template_options ato',
'    on      ato.application_id               = apb.application_id',
'    and     ato.button_template_id           = apb.button_template_id',
'    left join apex_appl_template_opt_groups atog',
'    on      atog.application_id       = ato.application_id',
'    and     atog.theme_number         = ato.theme_number',
'    and     atog.template_opt_group_id= ato.group_id',
'    where   apb.application_id               = :APP_ID',
'    and     apb.page_id                      = :APP_PAGE_ID',
'    and     ltrim(apb.button_static_id,''#'') = ltrim(l_component_id,''#'');',
'',
'    /* c_button_grid_attributes */',
'    cursor  c_button_grid_attributes is',
'    select attribute, value',
'    from (select to_char(new_grid) as new_grid',
'                ,to_char(new_grid_row) as new_grid_row',
'                ,to_char(new_grid_column) as new_grid_column',
'                ,to_char(grid_column) as grid_column',
'                ,to_char(grid_column_span) as grid_column_span',
'                ,to_char(grid_column_css_classes) as grid_column_css_classes',
'                ,to_char(grid_column_attributes) as grid_column_attributes',
'            from apex_application_page_buttons',
'            where application_id            = :APP_ID',
'            and page_id                     = :APP_PAGE_ID',
'            and ltrim(button_static_id,''#'') = ltrim(l_component_id,''#'')',
'    )',
'    unpivot exclude nulls (value for attribute in (',
'        new_grid',
'        ,new_grid_row',
'        ,new_grid_column',
'        ,grid_column',
'        ,grid_column_span',
'        ,grid_column_css_classes',
'        ,grid_column_attributes',
'    ));',
'',
'    /* c_button_custom_attributes */',
'    cursor  c_button_custom_attributes is',
'    select attribute, value',
'    from (select to_char(button_template) as button_template',
'                ,to_char(image_name) as image_name',
'                ,to_char(alignment) as alignment',
'                ,to_char(image_attributes) as image_attributes',
'                ,to_char(button_css_classes) as button_css_classes',
'                ,to_char(icon_css_classes) as icon_css_classes',
'                ,to_char(button_attributes) as button_attributes',
'                ,to_char(pre_element_text) as pre_element_text',
'                ,to_char(post_element_text) as post_element_text',
'            from apex_application_page_buttons',
'            where application_id            = :APP_ID',
'            and page_id                     = :APP_PAGE_ID',
'            and ltrim(button_static_id,''#'') = ltrim(l_component_id,''#'')',
'    )',
'    unpivot exclude nulls (value for attribute in (',
'         button_template',
'        ,image_name',
'        ,alignment',
'        ,image_attributes',
'        ,button_css_classes',
'        ,icon_css_classes',
'        ,button_attributes',
'        ,pre_element_text',
'        ,post_element_text',
'    ));',
'',
'    /* c_item_all_template_options */',
'    cursor  c_item_all_template_options is',
'    select  atog.display_name group_name',
'            ,ato.display_name',
'            ,ato.help_text',
'    from    apex_application_page_items api',
'    join    apex_appl_template_options ato',
'    on      ato.application_id               = api.application_id',
'    and     ato.field_template_id            = api.item_label_template_id',
'    left join apex_appl_template_opt_groups atog',
'    on      atog.application_id              = ato.application_id',
'    and     atog.theme_number                = ato.theme_number',
'    and     atog.template_opt_group_id       = ato.group_id',
'    where   api.application_id               = :APP_ID',
'    and     api.page_id                      = :APP_PAGE_ID',
'    and     ltrim(api.item_name,''#'')        = ltrim(l_component_id,''#'');',
'',
'    /* c_item_grid_attributes */',
'    cursor  c_item_grid_attributes is',
'    select attribute, value',
'    from (select to_char(new_grid) as new_grid',
'                ,to_char(new_grid_row) as new_grid_row',
'                ,to_char(new_grid_column) as new_grid_column',
'                ,to_char(grid_column) as grid_column',
'                ,to_char(grid_column_span) as grid_column_span',
'                ,to_char(grid_column_css_classes) as grid_column_css_classes',
'                ,to_char(grid_column_attributes) as grid_column_attributes',
'        from    apex_application_page_items',
'        where   application_id       = :APP_ID',
'        and     page_id              = :APP_PAGE_ID',
'        and     ltrim(item_name,''#'') = ltrim(l_component_id,''#'')',
'    )',
'    unpivot exclude nulls (value for attribute in (',
'        new_grid',
'        ,new_grid_row',
'        ,new_grid_column',
'        ,grid_column',
'        ,grid_column_span',
'        ,grid_column_css_classes',
'        ,grid_column_attributes',
'    ));',
'',
'    /* c_item_custom_attributes */',
'    cursor  c_item_custom_attributes is',
'    select attribute, value',
'    from (select',
'            to_char(item_name) as item_name',
'            ,to_char(display_as) as display_as',
'            ,to_char(item_data_type) as item_data_type',
'            ,to_char(placeholder) as placeholder',
'            ,to_char(pre_element_text) as pre_element_text',
'            ,to_char(post_element_text) as post_element_text',
'            ,to_char(format_mask) as format_mask',
'            ,to_char(item_label_template) as item_label_template',
'            ,to_char(item_element_width) as item_element_width',
'            ,to_char(item_element_max_length) as item_element_max_length',
'            ,to_char(item_element_height) as item_element_height',
'            ,to_char(html_table_cell_attr_label) as html_table_cell_attr_label',
'            ,to_char(html_table_cell_attr_element) as html_table_cell_attr_element',
'            ,to_char(html_form_element_css_classes) as html_form_element_css_classes',
'            ,to_char(html_form_element_attributes) as html_form_element_attributes',
'            ,to_char(form_element_option_attributes) as form_element_option_attributes',
'            ,to_char(item_button_image) as item_button_image',
'            ,to_char(item_button_image_attributes) as item_button_image_attributes',
'            ,to_char(label_alignment) as label_alignment',
'            ,to_char(item_alignment) as item_alignment',
'            ,to_char(item_help_text) as item_help_text',
'        from    apex_application_page_items api',
'        where   api.application_id               = :APP_ID',
'        and     api.page_id                      = :APP_PAGE_ID',
'        and     ltrim(api.item_name,''#'')        = ltrim(l_component_id,''#'')',
'    )',
'    unpivot exclude nulls (value for attribute in (',
'        item_name',
'        ,display_as',
'        ,item_data_type',
'        ,placeholder',
'        ,pre_element_text',
'        ,post_element_text',
'        ,format_mask',
'        ,item_label_template',
'        ,item_element_width',
'        ,item_element_max_length',
'        ,item_element_height',
'        ,html_table_cell_attr_label',
'        ,html_table_cell_attr_element',
'        ,html_form_element_css_classes',
'        ,html_form_element_attributes',
'        ,form_element_option_attributes',
'        ,item_button_image',
'        ,item_button_image_attributes',
'        ,label_alignment',
'        ,item_alignment',
'        ,item_help_text',
'    ));',
'',
'    /* c_region_all_template_options */',
'    cursor  c_region_all_template_options is',
'    select  atog.display_name group_name',
'            ,ato.display_name',
'            ,ato.help_text',
'    from    apex_application_page_regions apr',
'    join    apex_appl_template_options ato',
'    on      ato.application_id        = apr.application_id',
'    and     ato.region_template_id    = apr.template_id',
'    left join apex_appl_template_opt_groups atog',
'    on      atog.application_id       = ato.application_id',
'    and     atog.theme_number         = ato.theme_number',
'    and     atog.template_opt_group_id= ato.group_id',
'    where   apr.application_id        = :APP_ID',
'    and     apr.page_id               = :APP_PAGE_ID',
'    and     ltrim(apr.static_id,''#'') = ltrim(l_component_id,''#'');',
'',
'    /* c_region_grid_attributes */',
'    cursor  c_region_grid_attributes is',
'    select attribute, value',
'    from (select to_char(new_grid) as new_grid',
'                ,to_char(new_grid_row) as new_grid_row',
'                ,to_char(new_grid_column) as new_grid_column',
'                ,to_char(grid_column) as grid_column',
'                ,to_char(grid_column_span) as grid_column_span',
'                ,to_char(grid_column_css_classes) as grid_column_css_classes',
'                ,to_char(grid_column_attributes) as grid_column_attributes',
'        from    apex_application_page_regions',
'        where   application_id       = :APP_ID',
'        and     page_id              = :APP_PAGE_ID',
'        and     ltrim(static_id,''#'') = ltrim(l_component_id,''#'')',
'    )',
'    unpivot exclude nulls (value for attribute in (',
'        new_grid',
'        ,new_grid_row',
'        ,new_grid_column',
'        ,grid_column',
'        ,grid_column_span',
'        ,grid_column_css_classes',
'        ,grid_column_attributes',
'    ));',
'',
'    /* c_region_custom_attributes */',
'    cursor  c_region_custom_attributes is',
'    select attribute, value',
'    from (select to_char(template) as template',
'                ,to_char(display_region_selector) as display_region_selector',
'                ,to_char(region_css_classes) as region_css_classes',
'                ,to_char(icon_css_classes) as icon_css_classes',
'                ,to_char(region_sub_css_classes) as region_sub_css_classes',
'                ,to_char(region_attributes_substitution) as region_attributes_substitution',
'                ,to_char(report_template) as report_template',
'                ,to_char(report_column_headings) as report_column_headings',
'                ,to_char(maximum_rows_to_query) as maximum_rows_to_query',
'                ,to_char(pagination_scheme) as pagination_scheme',
'                ,to_char(pagination_display_position) as pagination_display_position',
'                ,to_char(number_of_rows_item) as number_of_rows_item',
'                ,to_char(maximum_row_count) as maximum_row_count',
'                ,to_char(report_null_values_as) as report_null_values_as',
'                ,to_char(breaks) as breaks',
'                ,to_char(strip_html) as strip_html',
'                ,to_char(max_dynamic_report_cols) as max_dynamic_report_cols',
'                ,to_char(fixed_header) as fixed_header',
'                ,to_char(fixed_header_max_height) as fixed_header_max_height',
'                ,to_char(enable_csv_output) as enable_csv_output',
'                ,to_char(repeat_heading_break_format) as repeat_heading_break_format',
'        from    apex_application_page_regions',
'        where   application_id       = :APP_ID',
'        and     page_id              = :APP_PAGE_ID',
'        and     ltrim(static_id,''#'') = ltrim(l_component_id,''#'')',
'    )',
'    unpivot exclude nulls (value for attribute in (',
'        template',
'        ,display_region_selector',
'        ,region_css_classes',
'        ,icon_css_classes',
'        ,region_sub_css_classes',
'        ,region_attributes_substitution',
'        ,report_template',
'        ,report_column_headings',
'        ,maximum_rows_to_query',
'        ,pagination_scheme',
'        ,pagination_display_position',
'        ,number_of_rows_item',
'        ,maximum_row_count',
'        ,report_null_values_as',
'        ,breaks',
'        ,strip_html',
'        ,max_dynamic_report_cols',
'        ,fixed_header',
'        ,fixed_header_max_height',
'        ,enable_csv_output',
'        ,repeat_heading_break_format',
'    ));',
'',
'    /* c_list_all_template_options */',
'    cursor  c_list_all_template_options is',
'    select  atog.display_name group_name',
'            ,ato.display_name',
'            ,ato.help_text',
'    from    apex_application_page_regions apr',
'    join    apex_application_temp_list atl',
'    on      atl.application_id         = apr.application_id',
'    and     atl.list_template_id       = apr.list_template_override_id',
'    join    apex_appl_template_options ato',
'    on      ato.application_id         = apr.application_id',
'    and     ato.list_template_id       = apr.template_id',
'    left join apex_appl_template_opt_groups atog',
'    on      atog.application_id        = ato.application_id',
'    and     atog.theme_number          = ato.theme_number',
'    and     atog.template_opt_group_id = ato.group_id',
'    where   apr.application_id         = :APP_ID',
'    and     apr.page_id                = :APP_PAGE_ID',
'    and     ltrim(apr.static_id,''#'')  = ltrim(l_component_id,''#'');',
'',
'    /* c_list_custom_attributes */',
'    cursor c_list_custom_attributes is',
'    select attribute, value',
'    from (select to_char(atl.a01_label) as a01_label',
'                ,to_char(atl.a02_label) as a02_label',
'                ,to_char(atl.a03_label) as a03_label',
'                ,to_char(atl.a04_label) as a04_label',
'                ,to_char(atl.a05_label) as a05_label',
'                ,to_char(atl.a06_label) as a06_label',
'                ,to_char(atl.a07_label) as a07_label',
'                ,to_char(atl.a08_label) as a08_label',
'                ,to_char(atl.a09_label) as a09_label',
'                ,to_char(atl.a10_label) as a10_label',
'                ,to_char(atl.a11_label) as a11_label',
'                ,to_char(atl.a12_label) as a12_label',
'                ,to_char(atl.a13_label) as a13_label',
'                ,to_char(atl.a14_label) as a14_label',
'                ,to_char(atl.a15_label) as a15_label',
'                ,to_char(atl.a16_label) as a16_label',
'                ,to_char(atl.a17_label) as a17_label',
'                ,to_char(atl.a18_label) as a18_label',
'                ,to_char(atl.a19_label) as a19_label',
'                ,to_char(atl.a20_label) as a20_label',
'        from    apex_application_page_regions apr',
'        join    apex_application_temp_list atl',
'        on      atl.application_id         = apr.application_id',
'        and     atl.list_template_id       = apr.list_template_override_id',
'        where   apr.application_id        = :APP_ID',
'        and     apr.page_id               = :APP_PAGE_ID',
'        and     ltrim(apr.static_id,''#'') = ltrim(l_component_id,''#'')',
'    )',
'    unpivot exclude nulls (value for attribute in (',
'        a01_label',
'        ,a02_label',
'        ,a03_label',
'        ,a04_label',
'        ,a05_label',
'        ,a06_label',
'        ,a07_label',
'        ,a08_label',
'        ,a09_label',
'        ,a10_label',
'        ,a11_label',
'        ,a12_label',
'        ,a13_label',
'        ,a14_label',
'        ,a15_label',
'        ,a16_label',
'        ,a17_label',
'        ,a18_label',
'        ,a19_label',
'        ,a20_label',
'    ));',
'',
'    /* helper functions */',
'    function open_table(',
'        p_th1 in varchar2',
'        ,p_th2 in varchar2',
'        ,p_th3 in varchar2 default ''-1''',
'    ) return varchar2 is',
'    begin',
'        return ''<table class="table table-striped table-sm">''',
'            || ''<thead class="thead-inverse">''',
'            || ''<tr>''',
'            || ''<th class="text-nowrap">'' || p_th1 || ''</th>''',
'            || ''<th class="text-nowrap">'' || p_th2 || ''</th>''',
'            || case when p_th3 = ''-1'' then null else ''<th class="text-nowrap">'' || p_th3 || ''</th>'' end',
'            || ''</tr>''',
'            || ''</thead>''',
'            || ''<tbody>'';',
'    end open_table;',
'',
'    function print_row(',
'        p_td1 in varchar2',
'        ,p_td2 in varchar2',
'        ,p_td3 in varchar2 default ''-1''',
'    ) return varchar2 is',
'    begin',
'        return ''<tr>''',
'            || ''<td>'' || p_td1 || ''</td>''',
'            || ''<td>'' || p_td2 || ''</td>''',
'            || case when p_td3 = ''-1'' then null else ''<td>'' || p_td3 || ''</td>'' end',
'            || ''</tr>'';',
'    end print_row;',
'',
'    function close_table',
'    return varchar2 is',
'    begin',
'        return ''</tbody>''',
'            || ''</table>'';',
'    end close_table;',
'begin',
'    /* debug information will be included */',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_region(',
'            p_plugin=>p_plugin,',
'            p_region=>p_region,',
'            p_is_printer_friendly=>p_is_printer_friendly);',
'    end if;',
'',
'    case l_documentation_type',
'        when ''GROUP'' then',
'            l_html := l_html || open_table(',
'                p_th1=>''Template Option(<code>'' || l_template_option_group || ''</code>)''',
'                ,p_th2=>''Comment''',
'            );',
'',
'            for i in c_template_option_groups loop',
'                l_html := l_html || print_row(',
'                    p_td1=>i.display_name',
'                    ,p_td2=>i.help_text',
'                );',
'            end loop;',
'',
'            l_html := l_html || close_table;',
'        when ''SINGLE'' then',
'            l_html := l_html || open_table(',
'                p_th1=>''Template Option''',
'                ,p_th2=>''Comment''',
'            );',
'',
'            for i in c_template_option_single loop',
'                l_html := l_html || print_row(',
'                    p_td1=>i.display_name',
'                    ,p_td2=>i.help_text',
'                );',
'            end loop;',
'',
'            l_html := l_html || close_table;',
'        when ''COMPONENT'' then',
'            case l_component_type',
'                when ''BUTTON'' then',
'                    if l_displayed_info like ''%ALL_TEMPLATE_OPTIONS%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Group''',
'                            ,p_th2=>''Template Option''',
'                            ,p_th3=>''Comment''',
'                        );',
'',
'                        for i in c_button_all_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        for i in c_global_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%GRID_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_button_grid_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%CUSTOM_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_button_custom_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'                when ''BREADCRUMB'' then',
'                    null;',
'                when ''FIELD'' then',
'                    if l_displayed_info like ''%ALL_TEMPLATE_OPTIONS%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Group''',
'                            ,p_th2=>''Template Option''',
'                            ,p_th3=>''Comment''',
'                        );',
'',
'                        for i in c_item_all_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        for i in c_global_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%GRID_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_item_grid_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%CUSTOM_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_item_custom_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'                when ''LIST'' then',
'                    if l_displayed_info like ''%ALL_TEMPLATE_OPTIONS%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Group''',
'                            ,p_th2=>''Template Option''',
'                            ,p_th3=>''Comment''',
'                        );',
'',
'                        for i in c_list_all_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        for i in c_global_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%GRID_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_region_grid_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%CUSTOM_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_list_custom_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'                when ''PAGE'' then',
'                    null;',
'                when ''REGION'' then',
'                    if l_displayed_info like ''%ALL_TEMPLATE_OPTIONS%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Group''',
'                            ,p_th2=>''Template Option''',
'                            ,p_th3=>''Comment''',
'                        );',
'',
'                        for i in c_region_all_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        for i in c_global_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%GRID_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_region_grid_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%CUSTOM_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_region_custom_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'                when ''REPORT'' then',
'                    if l_displayed_info like ''%ALL_TEMPLATE_OPTIONS%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Group''',
'                            ,p_th2=>''Template Option''',
'                            ,p_th3=>''Comment''',
'                        );',
'',
'                        for i in c_region_all_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        for i in c_global_template_options loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.group_name',
'                                ,p_td2=>i.display_name',
'                                ,p_td3=>i.help_text',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%GRID_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_region_grid_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'',
'                    if l_displayed_info like ''%CUSTOM_ATTRIBUTES%'' then',
'                        l_html := l_html || open_table(',
'                            p_th1=>''Attribute''',
'                            ,p_th2=>''Value''',
'                        );',
'',
'                        for i in c_region_custom_attributes loop',
'                            l_html := l_html || print_row(',
'                                p_td1=>i.attribute',
'                                ,p_td2=>i.value',
'                            );',
'                        end loop;',
'',
'                        l_html := l_html || close_table;',
'                    end if;',
'            end case;',
'    end case;',
'',
'    htp.prn(l_html);',
'',
'    return l_result;',
'end render_theme_documentation;',
''))
,p_render_function=>'render_theme_documentation'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(23497876084433961183)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>25
,p_prompt=>'Component Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'REGION'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'COMPONENT,GROUP'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497923872883965003)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>10
,p_display_value=>'Breadcrumb'
,p_return_value=>'BREADCRUMB'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497902109662590821)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>20
,p_display_value=>'Button'
,p_return_value=>'BUTTON'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497903430447593396)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>40
,p_display_value=>'List'
,p_return_value=>'LIST'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497904084360594275)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>50
,p_display_value=>'Page'
,p_return_value=>'PAGE'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497904876944595863)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>60
,p_display_value=>'Region'
,p_return_value=>'REGION'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497905472795597049)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>70
,p_display_value=>'Report'
,p_return_value=>'REPORT'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24637994143298842225)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>80
,p_display_value=>'Field'
,p_return_value=>'FIELD'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032433508109914740)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Documentation Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'COMPONENT'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032436437687917659)
,p_plugin_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_display_sequence=>10
,p_display_value=>'By Component'
,p_return_value=>'COMPONENT'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032468962305919846)
,p_plugin_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_display_sequence=>20
,p_display_value=>'By Template Option Group'
,p_return_value=>'GROUP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032471507551922417)
,p_plugin_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_display_sequence=>30
,p_display_value=>'By Single Template Option'
,p_return_value=>'SINGLE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032610101734933013)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Region, Item or Button ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COMPONENT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032484874728316484)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Displayed Information'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>true
,p_default_value=>'CUSTOM_ATTRIBUTES'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COMPONENT'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032486838949319358)
,p_plugin_attribute_id=>wwv_flow_api.id(24032484874728316484)
,p_display_sequence=>10
,p_display_value=>'All Associated Template Options'
,p_return_value=>'ALL_TEMPLATE_OPTIONS'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032487628279320764)
,p_plugin_attribute_id=>wwv_flow_api.id(24032484874728316484)
,p_display_sequence=>20
,p_display_value=>'Grid Attributes'
,p_return_value=>'GRID_ATTRIBUTES'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032755827157946910)
,p_plugin_attribute_id=>wwv_flow_api.id(24032484874728316484)
,p_display_sequence=>30
,p_display_value=>'Custom Attributes'
,p_return_value=>'CUSTOM_ATTRIBUTES'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032778629742330272)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Template Option Group Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'GROUP'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032813305642960103)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Single Template Option Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SINGLE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24142734279811848998)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>45
,p_prompt=>'Include Global Template Options'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032484874728316484)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ALL_TEMPLATE_OPTIONS'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(18663152251353564495)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Responsive'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>102
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_position=>'SIDE'
,p_content_delivery_network=>'GOOGLE'
,p_css_file_urls=>'&G_APP_IMAGES.lib/prism/css/prism.css'
,p_javascript_file_urls=>'&G_APP_IMAGES.lib/prism/js/prism.js'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(18664321263163040772)
,p_nav_bar_list_template_id=>wwv_flow_api.id(11655412505130867307)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Global Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(13552127774043124085)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22741030333992885421)
,p_plug_name=>'Getting Started'
,p_region_template_options=>'#DEFAULT#:region-lead:bg-info:ab-display-3'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<p>An overview of Bootstrap, including how to download and use it, some basic templates and examples, and more.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 2 and 99'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22741030452316885422)
,p_plug_name=>'Components'
,p_region_template_options=>'#DEFAULT#:region-lead:bg-info:ab-display-3'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<p>Over a dozen reusable components built to provide buttons, dropdowns, input groups, navigation, alerts, and much more.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 300 and 399'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22741030522216885423)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#:region-lead:bg-info:ab-display-3'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<p>Styles for displaying content with some of the most commonly used HTML elements, including normalization, typography, images, tables, and more.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 200 and 299'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420421014283010)
,p_plug_name=>'Layout'
,p_region_template_options=>'#DEFAULT#:region-lead:bg-info:ab-display-3'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<p>Options for structuring your pages with Bootstrap, including global styles, required scaffolding, grid system, and more.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 100 and 199'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420895422283014)
,p_plug_name=>'{sidebar}'
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'col-md-push-9'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420221656283008)
,p_plug_name=>'Getting started'
,p_parent_plug_id=>wwv_flow_api.id(23576420895422283014)
,p_region_template_options=>'#DEFAULT#:ab-h4'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(23983421889342854522)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 2 and 99'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420578694283011)
,p_plug_name=>'Layout'
,p_parent_plug_id=>wwv_flow_api.id(23576420895422283014)
,p_region_template_options=>'#DEFAULT#:ab-h4'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(23983395004855847638)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 100 and 199'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420635130283012)
,p_plug_name=>'Content'
,p_parent_plug_id=>wwv_flow_api.id(23576420895422283014)
,p_region_template_options=>'#DEFAULT#:ab-h4'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(23983425056898856211)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 200 and 299'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420728604283013)
,p_plug_name=>'Components'
,p_parent_plug_id=>wwv_flow_api.id(23576420895422283014)
,p_region_template_options=>'#DEFAULT#:ab-h4'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(23983537517278860030)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 300 and 399'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24128614977927482267)
,p_plug_name=>'{footer links}'
,p_icon_css_classes=>'fa-adjust'
,p_region_template_options=>'#DEFAULT#:ab-region-title-hidden'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_list_id=>wwv_flow_api.id(24128692995346500629)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24128616095581483658)
,p_plug_name=>'{footer license}'
,p_region_template_options=>'#DEFAULT#:ab-region-title-hidden:text-xs-right'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>APEX Bootstrap 4 Theme</p>',
'<p><a href="http://insum.ca/">Insum Solutions</a></p>',
'<p><a href="https://twitter.com/vincentmorneau">Vincent Morneau</a></p>',
'<p><a href="https://opensource.org/licenses/MIT">MIT License</a></p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'APEX Bootstrap 4'
,p_page_mode=>'NORMAL'
,p_step_title=>'APEX Bootstrap 4'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(13552127774043124085)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VMORNEAU'
,p_last_upd_yyyymmddhh24miss=>'20160210160414'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24059517910592321181)
,p_plug_name=>'APEX Bootstrap 4'
,p_region_template_options=>'#DEFAULT#:master-jumbotron:region-lead:bg-info:ab-h1:text-xs-center'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Bootstrap 4 is currently v4.0.0-alpha.2.</p><p>Let''s see what it looks like in Oracle APEX.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24203420752152927429)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24059517910592321181)
,p_button_name=>'GET_STARTED'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-danger'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Get Started'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Introduction'
,p_page_mode=>'NORMAL'
,p_step_title=>'Introduction'
,p_step_sub_title=>'Introduction'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24358978327292735548)
,p_plug_name=>'Introduction'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Bootstrap is the world’s most popular framework for building responsive, mobile-first sites and applications. Inside you’ll find high quality HTML, CSS, and JavaScript to make starting any project easier than ever.</p>',
'',
'<p>This project is the integration of Bootstrap 4 in an APEX theme.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203421442806927436)
,p_plug_name=>'Quick start'
,p_parent_plug_id=>wwv_flow_api.id(24358978327292735548)
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>This application contains all necessary templates, template options and documentation to build a pure Bootstrap 4 app.</p>',
'',
'<p>Use it to kick start your project by simply importing it into your workspace and deleting all pages.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24203421583814927437)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24203421442806927436)
,p_button_name=>'DOWNLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-danger-outline:center-block'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Download the app'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Download'
,p_page_mode=>'NORMAL'
,p_step_title=>'Download'
,p_step_sub_title=>'Download'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24432022129828795914)
,p_plug_name=>'Download'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>APEX Bootstrap 4 is available for download in several ways. Choose from the options below to snag just what you need.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24432022523320795918)
,p_plug_name=>'Theme Export'
,p_parent_plug_id=>wwv_flow_api.id(24432022129828795914)
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>This method is better for existing projects.</p>',
'<p>You can also download the theme export alone and import it into your own application.</p>',
'<p>Note that you''re going to have to map the template yourself from the old theme to APEX Bootstrap 4.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24432023371080795921)
,p_plug_name=>'Github'
,p_parent_plug_id=>wwv_flow_api.id(24432022129828795914)
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>41
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>This is the source code. This gives you as much power as possible. From there you can do whatever you want to enhance APEX Bootstrap 4.</p>',
'<p>We suggest you use a build tool like <a href="https://github.com/OraOpenSource/apex-frontend-boost">APEX Front-End Boost</a> to generate your files.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24432024172210795922)
,p_plug_name=>'Application Export'
,p_parent_plug_id=>wwv_flow_api.id(24432022129828795914)
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>The easiest way to get started is to download and import this whole application. Simply delete all pages and you''re good to go.</p>',
'<p>This method is better for new projects.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24432022937537795919)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24432022523320795918)
,p_button_name=>'DOWNLOAD_THEME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-danger-outline:center-block'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Download the theme'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24432023771488795922)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24432023371080795921)
,p_button_name=>'GITHUB'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-danger-outline:center-block'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Get the source code'
,p_button_position=>'BODY'
,p_button_redirect_url=>'https://github.com/vincentmorneau/apex-bootstrap4'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24432024573233795923)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24432024172210795922)
,p_button_name=>'DOWNLOAD_APP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-danger-outline:center-block'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Download the app'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Browsers and devices'
,p_page_mode=>'NORMAL'
,p_step_title=>'Browsers and devices'
,p_step_sub_title=>'Browsers and devices'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24431585008971322179)
,p_plug_name=>'Browsers & devices'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Bootstrap supports the latest, stable releases of all major browsers and platforms. On Windows, we support Internet Explorer 9-11 / Microsoft Edge. More specific support information is provided below.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24431585459120322182)
,p_plug_name=>'Mobile devices'
,p_parent_plug_id=>wwv_flow_api.id(24431585008971322179)
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="table-responsive">',
'  <table class="table table-bordered table-striped">',
'    <thead>',
'      <tr>',
'        <td></td>',
'        <th>Chrome</th>',
'        <th>Firefox</th>',
'        <th>Opera</th>',
'        <th>Safari</th>',
'        <th>Android Browser &amp; WebView</th>',
'      </tr>',
'    </thead>',
'    <tbody>',
'      <tr>',
'        <th scope="row">Android</th>',
'        <td class="text-success">Supported</td>',
'        <td class="text-success">Supported</td>',
'        <td class="text-danger">Not supported</td>',
'        <td class="text-muted">N/A</td>',
'        <td class="text-success">Android v5.0+ supported</td>',
'      </tr>',
'      <tr>',
'        <th scope="row">iOS</th>',
'        <td class="text-success">Supported</td>',
'        <td class="text-muted">N/A</td>',
'        <td class="text-danger">Not supported</td>',
'        <td class="text-success">Supported</td>',
'        <td class="text-muted">N/A</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24431585787564322183)
,p_plug_name=>'Desktop browsers'
,p_parent_plug_id=>wwv_flow_api.id(24431585008971322179)
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="table-responsive">',
'  <table class="table table-bordered table-striped">',
'    <thead>',
'      <tr>',
'        <td></td>',
'        <th>Chrome</th>',
'        <th>Firefox</th>',
'        <th>Internet Explorer</th>',
'        <th>Microsoft Edge</th>',
'        <th>Opera</th>',
'        <th>Safari</th>',
'      </tr>',
'    </thead>',
'    <tbody>',
'      <tr>',
'        <th scope="row">Mac</th>',
'        <td class="text-success">Supported</td>',
'        <td class="text-success">Supported</td>',
'        <td class="text-muted">N/A</td>',
'        <td class="text-muted">N/A</td>',
'        <td class="text-success">Supported</td>',
'        <td class="text-success">Supported</td>',
'      </tr>',
'      <tr>',
'        <th scope="row">Windows</th>',
'        <td class="text-success">Supported</td>',
'        <td class="text-success">Supported</td>',
'        <td class="text-success">Supported</td>',
'        <td class="text-success">Supported</td>',
'        <td class="text-success">Supported</td>',
'        <td class="text-danger">Not supported</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Theme Roller'
,p_page_mode=>'NORMAL'
,p_step_title=>'Theme Roller'
,p_step_sub_title=>'Options'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24432480055246460053)
,p_plug_name=>'Theme Roller'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>With APEX Bootstrap 4, we’ve added a handful of theme roller options for easily customizing all the components in your project.</p>',
'<p>These settings are originally from the bootstrap Sass variables.</p>',
'<p>They''ve been ported to the APEX Theme Roller for better flexibility. Use them wisely.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24509131840804644401)
,p_plug_name=>'{more info}'
,p_parent_plug_id=>wwv_flow_api.id(24432480055246460053)
,p_region_template_options=>'#DEFAULT#:ab-region-title-hidden'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>If you''re a CSS expert you can also download the project <a href="https://github.com/vincentmorneau/apex-bootstrap4">source code</a> and modify the Sass variables yourself, but Theme Roller should do just fine.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24509131938200644402)
,p_plug_name=>'Available attributes'
,p_parent_plug_id=>wwv_flow_api.id(24432480055246460053)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24432480468508460055)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(24509131938200644402)
,p_region_template_options=>'#DEFAULT#:language-scss'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'// Group: Colors',
'// Description: Grayscale and brand colors for use across Bootstrap.',
'',
'$brand-primary:             #0275d8;',
'$brand-success:             #5cb85c;',
'$brand-info:                #5bc0de;',
'$brand-warning:             #f0ad4e;',
'$brand-danger:              #d9534f;'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Flexbox'
,p_page_mode=>'NORMAL'
,p_step_title=>'Flexbox'
,p_step_sub_title=>'Flexbox'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24553903809837067792)
,p_plug_name=>'Flexbox'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Flexbox support has finally come to Bootstrap. Opt-in to the new CSS layout styles with the swap of a theme style.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203422249008927444)
,p_plug_name=>'What is it?'
,p_parent_plug_id=>wwv_flow_api.id(24553903809837067792)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>In a nutshell, it changes the whole Grid Layout to enable the CSS Flexbox specifications.</p>',
'<ul>',
'  <li>The entire grid system (mixins and predefined classes), which switch from <code class="highlighter-rouge">float</code>s to <code class="highlighter-rouge">display: flex;</code>.</li>',
'  <li>Input groups, which move from <code class="highlighter-rouge">display: table;</code> to <code class="highlighter-rouge">display: flex;</code>.</li>',
'  <li>The media component moves from <code class="highlighter-rouge">display: table;</code> and a number of hacky styles to a simple <code class="highlighter-rouge">display: flex;</code>.</li>',
'</ul>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203422392581927445)
,p_plug_name=>'How it works'
,p_parent_plug_id=>wwv_flow_api.id(24553903809837067792)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ol>',
'    <li>Open up Theme Roller.</li>',
'    <li>Change Theme Style to Flexbox.</li>',
'</ol>',
'',
'<p>That''s all!</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203422450568927446)
,p_plug_name=>'Why?'
,p_parent_plug_id=>wwv_flow_api.id(24553903809837067792)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>It provides simpler and more flexible layout options in CSS. More specifically, it provides:</p>',
'<ul>',
'<li>Easy vertical alignment of content within a parent element.</li>',
'<li>Easy reordering of content across devices and screen resolutions with the help of media queries.</li>',
'<li>Easy CSS-only equal height columns for your grid-based layouts.</li>',
'<li>All these things are possible outside flexbox, but typically require extra hacks and workarounds to do right.</li>',
'<ul>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203422611805927448)
,p_plug_name=>'Browser support'
,p_parent_plug_id=>wwv_flow_api.id(24553903809837067792)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Some things to consider:</p>',
'<ul>',
'  <li>Internet Explorer 9 and below do not support flexbox.</li>',
'  <li>Internet Explorer 10 has a few known quirks.</li>',
'</ul>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Build tool'
,p_page_mode=>'NORMAL'
,p_step_title=>'Build tool'
,p_step_sub_title=>'Build tool'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555616014509517628)
,p_plug_name=>'Build tool'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>APEX Bootstrap 4 uses <a href="https://github.com/OraOpenSource/apex-frontend-boost">APEX Front-End Boost</a> for its CSS and JavaScript build system a custom APEX plugin for it''s documentation. We suggest you use the same build tool if you do wan'
||'t to modify the source code yourself.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203422707569927449)
,p_plug_name=>'Build command'
,p_parent_plug_id=>wwv_flow_api.id(24555616014509517628)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<code>npm start -- --project=bootstrap4</code>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555616878348517635)
,p_plug_name=>'APEX Front-End Boost <code>config.json</code>'
,p_parent_plug_id=>wwv_flow_api.id(24555616014509517628)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203422836985927450)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(24555616878348517635)
,p_region_template_options=>'#DEFAULT#:language-javascript'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'{',
'    "bootstrap4": {',
'        "appURL": "https://apex.oracle.com/pls/apex/f?p=73792",',
'        "srcFolder": "../apex-bootstrap4/src",',
'        "distFolder": "../apex-bootstrap4/dist",',
'        "cssConcat": {',
'            "enabled": false',
'        },',
'        "sass": {',
'            "enabled": true,',
'            "includePath": "../apex-bootstrap4/node_modules/bootstrap/scss"',
'        },',
'        "browsersync": {',
'            "notify": false',
'        },',
'        "themeroller":{',
'            "enabled": true,',
'            "files": [',
'                "../apex-bootstrap4/src/scss/_apex_variables.scss",',
'                "../apex-bootstrap4/src/scss/mixins/_apex_utilities.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/_mixins.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_hover.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_image.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_label.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_reset-filter.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_resize.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_screen-reader.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_size.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_tab-focus.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_reset-text.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_text-emphasis.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_text-hide.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_text-truncate.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_alert.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_buttons.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_cards.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_pagination.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_lists.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_nav-divider.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_forms.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_table-row.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_background-variant.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_border-radius.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/mixins/_gradients.scss",',
'                "../apex-bootstrap4/node_modules/bootstrap/scss/_buttons.scss",',
'                "../apex-bootstrap4/src/scss/_apex_buttons.scss"',
'            ]',
'        }',
'    }',
'}',
''))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Best practices'
,p_page_mode=>'NORMAL'
,p_step_title=>'Best practices'
,p_step_sub_title=>'Best practices'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555683020404585777)
,p_plug_name=>'Best practices'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555685154005588001)
,p_plug_name=>'Heads up!'
,p_parent_plug_id=>wwv_flow_api.id(24555683020404585777)
,p_region_template_options=>'#DEFAULT#:bg-warning:ab-h3'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This is work in progress.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_api.create_page(
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Overview'
,p_page_mode=>'NORMAL'
,p_step_title=>'Overview'
,p_step_sub_title=>'Overview'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24130653514909011910)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Bootstrap includes several components and options for laying out your project, including wrapping containers, a powerful grid system, a flexible media object, and responsive utility classes.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576421741188283023)
,p_plug_name=>'Containers'
,p_parent_plug_id=>wwv_flow_api.id(24130653514909011910)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576421985643283025)
,p_plug_name=>'Responsive Breakpoints'
,p_region_name=>'responsive-breakpoints'
,p_parent_plug_id=>wwv_flow_api.id(24130653514909011910)
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Bootstrap primarily uses the following media query ranges—or breakpoints—in our source Sass files for our layout, grid system, and components.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422761259283033)
,p_plug_name=>'{media queries}'
,p_parent_plug_id=>wwv_flow_api.id(23576421985643283025)
,p_region_template_options=>'#DEFAULT#:language-scss'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'// Extra small devices (portrait phones, less than 34em)',
'// No media query since this is the default in Bootstrap',
'',
'// Small devices (landscape phones, 34em and up)',
'@media (min-width: 34em) { ... }',
'',
'// Medium devices (tablets, 48em and up)',
'@media (min-width: 48em) { ... }',
'',
'// Large devices (desktops, 62em and up)',
'@media (min-width: 62em) { ... }',
'',
'// Extra large devices (large desktops, 75em and up)',
'@media (min-width: 75em) { ... }',
'',
'// All our media queries are available via Sass mixins:',
'@include media-breakpoint-up(xs) { ... }',
'@include media-breakpoint-up(sm) { ... }',
'@include media-breakpoint-up(md) { ... }',
'@include media-breakpoint-up(lg) { ... }',
'@include media-breakpoint-up(xl) { ... }',
'',
'// Example usage:',
'@include media-breakpoint-up(sm) {',
'  .some-class {',
'    display: block;',
'  }',
'}',
'',
'// We occasionally use media queries that go in the other direction:',
'',
'// Extra small devices (portrait phones, less than 34em)',
'@media (max-width: 33.9em) { ... }',
'',
'// Small devices (landscape phones, less than 48em)',
'@media (max-width: 47.9em) { ... }',
'',
'// Medium devices (tablets, less than 62em)',
'@media (max-width: 61.9em) { ... }',
'',
'// Large devices (desktops, less than 75em)',
'@media (max-width: 74.9em) { ... }',
'',
'// Extra large devices (large desktops)',
'// No media query since the extra-large breakpoint has no upper bound on its width',
'',
'// Once again, these media queries are also available via Sass mixins:',
'@include media-breakpoint-down(xs) { ... }',
'@include media-breakpoint-down(sm) { ... }',
'@include media-breakpoint-down(md) { ... }',
'@include media-breakpoint-down(lg) { ... }',
'@include media-breakpoint-down(xl) { ... }'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422362590283029)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24130653514909011910)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'PAGE'
,p_attribute_02=>'SINGLE'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_06=>'CONTAINER_FLUID'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23576422461217283030)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23576421741188283023)
,p_button_name=>'TOGGLE_PAGE_CONTAINER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:btn-block:btn-primary-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Toggle page container'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23576422540081283031)
,p_name=>'onClick TOGGLE_PAGE_CONTAINER'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(23576422461217283030)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23576422638380283032)
,p_event_id=>wwv_flow_api.id(23576422540081283031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").toggleClass("ab-container-fluid");'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00105
begin
wwv_flow_api.create_page(
 p_id=>105
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Grid'
,p_page_mode=>'NORMAL'
,p_step_title=>'Grid'
,p_step_sub_title=>'Grid'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24202772872538960993)
,p_plug_name=>'Grid'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Bootstrap includes a powerful mobile-first grid system for building layouts of all shapes and sizes. It’s based on a 12 column layout and has multiple tiers, one for each <a href="f?p=&APP_ID.:100:#responsive-breakpoints">media query range</a>. Yo'
||'u can use it with Sass mixins or our predefined classes.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422806682283034)
,p_plug_name=>'Options'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="table-responsive">',
'  <table class="table table-bordered table-striped">',
'    <thead>',
'      <tr>',
'        <th></th>',
'        <th class="text-xs-center">',
'          Extra small<br>',
'          <small>&lt;544px</small>',
'        </th>',
'        <th class="text-xs-center">',
'          Small<br>',
'          <small>≥544px</small>',
'        </th>',
'        <th class="text-xs-center">',
'          Medium<br>',
'          <small>≥768px</small>',
'        </th>',
'        <th class="text-xs-center">',
'          Large<br>',
'          <small>≥992px</small>',
'        </th>',
'        <th class="text-xs-center">',
'          Extra large<br>',
'          <small>≥1200px</small>',
'        </th>',
'      </tr>',
'    </thead>',
'    <tbody>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Grid behavior</th>',
'        <td>Horizontal at all times</td>',
'        <td colspan="4">Collapsed to start, horizontal above breakpoints</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Container width</th>',
'        <td>None (auto)</td>',
'        <td>576px</td>',
'        <td>720px</td>',
'        <td>940px</td>',
'        <td>1140px</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Class prefix</th>',
'        <td><code>.col-xs-</code></td>',
'        <td><code>.col-sm-</code></td>',
'        <td><code>.col-md-</code></td>',
'        <td><code>.col-lg-</code></td>',
'        <td><code>.col-xl-</code></td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"># of columns</th>',
'        <td colspan="5">12</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Gutter width</th>',
'        <td colspan="5">1.875rem / 30px (15px on each side of a column)</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Nestable</th>',
'        <td colspan="5">Yes</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Offsets</th>',
'        <td colspan="5">Yes</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Column ordering</th>',
'        <td colspan="5">Yes</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422918160283035)
,p_plug_name=>'Example: Stacked-to-horizontal'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423004568283036)
,p_plug_name=>'1'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423178593283037)
,p_plug_name=>'2'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423235762283038)
,p_plug_name=>'6'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423394942283039)
,p_plug_name=>'4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423446076283040)
,p_plug_name=>'9'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423518096283041)
,p_plug_name=>'3'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423640347283042)
,p_plug_name=>'5'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423706273283043)
,p_plug_name=>'7'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423847350283044)
,p_plug_name=>'11'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423908542283045)
,p_plug_name=>'8'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424070860283046)
,p_plug_name=>'10'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424102749283047)
,p_plug_name=>'12'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424268773283048)
,p_plug_name=>'col-md-8'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424378201283049)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424485127283050)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203417947284927401)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418027414927402)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418114417927403)
,p_plug_name=>'col-md-6'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418213411927404)
,p_plug_name=>'col-md-6'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418486774927406)
,p_plug_name=>'Example: Mobile, tablet, desktop'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418560400927407)
,p_plug_name=>'col-xs-12 col-sm-6 col-md-8'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-6'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418652320927408)
,p_plug_name=>'col-xs-6 col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_grid_column_css_classes=>'col-xs-6'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418786386927409)
,p_plug_name=>'col-xs-6 col-sm-4'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xs-6 col-sm-4'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418859029927410)
,p_plug_name=>'col-xs-6 col-sm-4'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'col-xs-6 col-sm-4'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418942203927411)
,p_plug_name=>'col-xs-6 col-sm-4'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xs-6 col-sm-4'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419045706927412)
,p_plug_name=>'Example: Offsetting columns'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419364817927415)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419417909927416)
,p_plug_name=>'col-md-3 col-md-offset-3'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>3
,p_plug_display_column=>4
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419542274927417)
,p_plug_name=>'col-md-4 col-md-offset-4'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>9
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419640012927418)
,p_plug_name=>'.col-md-3 .col-md-offset-3'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_column=>10
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419742383927419)
,p_plug_name=>'col-md-6 col-md-offset-3'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419197642927413)
,p_plug_name=>'Example: Nesting columns'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419877788927420)
,p_plug_name=>'col-sm-9'
,p_parent_plug_id=>wwv_flow_api.id(24203419197642927413)
,p_region_template_options=>'#DEFAULT#:bg-info:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'col-sm-9'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419919952927421)
,p_plug_name=>'col-xs-4 col-sm-6'
,p_parent_plug_id=>wwv_flow_api.id(24203419877788927420)
,p_region_template_options=>'#DEFAULT#:bg-warning:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xs-4 col-sm-6'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420077133927422)
,p_plug_name=>'col-xs-8 col-sm-6'
,p_parent_plug_id=>wwv_flow_api.id(24203419877788927420)
,p_region_template_options=>'#DEFAULT#:bg-warning:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'col-xs-8 col-sm-6'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419218385927414)
,p_plug_name=>'Example: Column ordering'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420142694927423)
,p_plug_name=>'col-md-9 col-md-push-3'
,p_parent_plug_id=>wwv_flow_api.id(24203419218385927414)
,p_region_template_options=>'#DEFAULT#:bg-danger:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>9
,p_plug_grid_column_css_classes=>'col-md-push-3'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420232995927424)
,p_plug_name=>'col-md-3 col-md-pull-9'
,p_parent_plug_id=>wwv_flow_api.id(24203419218385927414)
,p_region_template_options=>'#DEFAULT#:bg-danger:ab-h6'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'col-md-pull-9'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00110
begin
wwv_flow_api.create_page(
 p_id=>110
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Media objects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Media objects'
,p_step_sub_title=>'Media objects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(13552127774043124085)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420349417927425)
,p_plug_name=>'Media object'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>The media object is an abstract element used as the basis for building more complex and repetitive components (like blog comments, Tweets, etc). Included is support for left and right aligned content, content alignment options, nesting, and more.<'
||'/p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24059366123367859445)
,p_name=>'Report'
,p_region_name=>'media-component'
,p_parent_plug_id=>wwv_flow_api.id(24203420349417927425)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(21640155195235038826)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24059366546805859451)
,p_query_column_id=>1
,p_column_alias=>'MEDIA_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Media title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24059366994606859453)
,p_query_column_id=>2
,p_column_alias=>'MEDIA_DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Media description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24059367390996859453)
,p_query_column_id=>3
,p_column_alias=>'MEDIA_IMG_SOURCE'
,p_column_display_sequence=>3
,p_column_heading=>'Media img source'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24059367743108859454)
,p_query_column_id=>4
,p_column_alias=>'MEDIA_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Media link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420448544927426)
,p_plug_name=>'Report SQL'
,p_parent_plug_id=>wwv_flow_api.id(24203420349417927425)
,p_region_template_options=>'#DEFAULT#:ab-h3:language-sql'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla...'' media_description',
'    , ''...'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla...'' media_description',
'    , ''...'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla...'' media_description',
'    , ''...'' media_img_source',
'    , ''#'' media_link',
'from dual'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420505541927427)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24203420349417927425)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REPORT'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'media-component'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420629163927428)
,p_plug_name=>'List'
,p_region_name=>'media-list'
,p_parent_plug_id=>wwv_flow_api.id(24203420349417927425)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(24236980523314424955)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(11675635619991185939)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420813578927430)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24203420349417927425)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LIST'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'media-list'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_07=>'N'
);
end;
/
prompt --application/pages/page_00115
begin
wwv_flow_api.create_page(
 p_id=>115
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Responsive utilities'
,p_page_mode=>'NORMAL'
,p_step_title=>'Responsive utilities'
,p_step_sub_title=>'Responsive utilities'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24204624288683406866)
,p_plug_name=>'Responsive utilities'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>For faster mobile-friendly development, use these global template options for showing and hiding content by device. Also included are global template options for toggling content when printed.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420961058927431)
,p_plug_name=>'Visibility template options'
,p_parent_plug_id=>wwv_flow_api.id(24204624288683406866)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="table-responsive">',
'  <table class="table table-bordered table-striped responsive-utilities">',
'    <thead>',
'      <tr>',
'        <th></th>',
'        <th>',
'          Extra small devices',
'          <small>Portrait phones (&lt;34em)</small>',
'        </th>',
'        <th>',
'          Small devices',
'          <small>Landscape phones (≥34em)</small>',
'        </th>',
'        <th>',
'          Medium devices',
'          <small>Tablets (≥48em)</small>',
'        </th>',
'        <th>',
'          Large devices',
'          <small>Desktops (≥62em)</small>',
'        </th>',
'        <th>',
'          Extra large devices',
'          <small>Desktops (≥75em)</small>',
'        </th>',
'      </tr>',
'    </thead>',
'    <tbody>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden xs down</code></th>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden sm down</code></th>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden md down</code></th>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden lg down</code></th>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-success">Visible</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden xl down</code></th>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden xs up</code></th>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden sm up</code></th>',
'        <td class="table-success">Visible</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden md up</code></th>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden lg up</code></th>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-active">Hidden</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"><code>Hidden xl up</code></th>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-success">Visible</td>',
'        <td class="table-active">Hidden</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203421005684927432)
,p_plug_name=>'Print template options'
,p_parent_plug_id=>wwv_flow_api.id(24204624288683406866)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="table-responsive">',
'  <table class="table table-bordered table-striped responsive-utilities">',
'    <thead>',
'      <tr>',
'        <th>Template Option</th>',
'        <th>Browser</th>',
'        <th>Print</th>',
'      </tr>',
'    </thead>',
'    <tbody>',
'      <tr>',
'        <th><code>Visible print block</code></th>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-success">Visible<br>(as <code>display: block</code>)</td>',
'      </tr>',
'      <tr>',
'        <th><code>Visible print inline</code></th>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-success">Visible<br>(as <code>display: inline</code>)</td>',
'      </tr>',
'      <tr>',
'        <th><code>Visible print inline block</code></th>',
'        <td class="table-active">Hidden</td>',
'        <td class="table-success">Visible<br>(as <code>display: inline-block</code>)</td>',
'      </tr>',
'      <tr>',
'        <th><code>Hidden print</code></th>',
'        <td class="table-success">Visible</td>',
'        <td class="table-active">Hidden</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203421121843927433)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24204624288683406866)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'GROUP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_05=>'HIDE_CONTENT_DOWN_FROM'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203421252071927434)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24204624288683406866)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'GROUP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_05=>'HIDE_CONTENT_UP_TO'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203421383788927435)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24204624288683406866)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'GROUP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_05=>'PRINT_UTILITIES'
,p_attribute_07=>'N'
);
end;
/
prompt --application/pages/page_00200
begin
wwv_flow_api.create_page(
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Reboot'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reboot'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576421682313283022)
,p_plug_name=>'Reboot'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Part of Bootstrap’s job is to provide an elegant, consistent, and simple baseline to build upon. We use Reboot, a collection of element-specific CSS changes in a single file, to kickstart that.</p>',
'',
'<p>Because of Reboot, some of the core APEX CSS styles may be overwritten. This is to ensure that we get a pure Bootstrap experience.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00205
begin
wwv_flow_api.create_page(
 p_id=>205
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Typography'
,p_page_mode=>'NORMAL'
,p_step_title=>'Typography'
,p_step_sub_title=>'Typography'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24566608606885351264)
,p_plug_name=>'Typography'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Bootstrap includes simple and easily customized typography for headings, body text, lists, and more. For even more control, check out the <a href="f?p=73792:386">textual utility</a> classes.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555685237547588002)
,p_plug_name=>'Headings'
,p_parent_plug_id=>wwv_flow_api.id(24566608606885351264)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555685327387588003)
,p_plug_name=>'Super Size 1'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-display-1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555685441317588004)
,p_plug_name=>'Super Size 2'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-display-2'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555685573490588005)
,p_plug_name=>'Super Size 3'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-display-3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555685615754588006)
,p_plug_name=>'Super Size 4'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-display-4'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555685863256588008)
,p_plug_name=>'H1'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555685962872588009)
,p_plug_name=>'H2'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-h2'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555686089633588010)
,p_plug_name=>'H3'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555686112254588011)
,p_plug_name=>'H4'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-h4'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555686212599588012)
,p_plug_name=>'H5'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555686371265588013)
,p_plug_name=>'H6'
,p_parent_plug_id=>wwv_flow_api.id(24555685237547588002)
,p_region_template_options=>'#DEFAULT#:ab-h6'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555685712172588007)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24566608606885351264)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'GROUP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_05=>'HEADING_SIZE'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555686418306588014)
,p_plug_name=>'Lead'
,p_parent_plug_id=>wwv_flow_api.id(24566608606885351264)
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Make a paragraph stand out by adding the "Lead" template option.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555686596174588015)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24566608606885351264)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'SINGLE'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_06=>'LEAD_TEXT'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555686864130588018)
,p_plug_name=>'Inline text elements'
,p_parent_plug_id=>wwv_flow_api.id(24566608606885351264)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>You can use the mark tag to <mark>highlight</mark> text.</p>',
'<p><del>This line of text is meant to be treated as deleted text.</del></p>',
'<p><s>This line of text is meant to be treated as no longer accurate.</s></p>',
'<p><ins>This line of text is meant to be treated as an addition to the document.</ins></p>',
'<p><u>This line of text will render as underlined</u></p>',
'<p><small>This line of text is meant to be treated as fine print.</small></p>',
'<p><strong>This line rendered as bold text.</strong></p>',
'<p><em>This line rendered as italicized text.</em></p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555686912347588019)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(24555686864130588018)
,p_region_template_options=>'#DEFAULT#:language-markup'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'&lt;p&gt;You can use the mark tag to &lt;mark&gt;highlight&lt;/mark&gt; text.&lt;/p&gt;',
'&lt;p&gt;&lt;del&gt;This line of text is meant to be treated as deleted text.&lt;/del&gt;&lt;/p&gt;',
'&lt;p&gt;&lt;s&gt;This line of text is meant to be treated as no longer accurate.&lt;/s&gt;&lt;/p&gt;',
'&lt;p&gt;&lt;ins&gt;This line of text is meant to be treated as an addition to the document.&lt;/ins&gt;&lt;/p&gt;',
'&lt;p&gt;&lt;u&gt;This line of text will render as underlined&lt;/u&gt;&lt;/p&gt;',
'&lt;p&gt;&lt;small&gt;This line of text is meant to be treated as fine print.&lt;/small&gt;&lt;/p&gt;',
'&lt;p&gt;&lt;strong&gt;This line rendered as bold text.&lt;/strong&gt;&lt;/p&gt;',
'&lt;p&gt;&lt;em&gt;This line rendered as italicized text.&lt;/em&gt;&lt;/p&gt;'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555687071947588020)
,p_plug_name=>'Abbreviations'
,p_parent_plug_id=>wwv_flow_api.id(24566608606885351264)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p><abbr title="attribute">attr</abbr></p>',
'<p><abbr title="HyperText Markup Language" class="initialism">HTML</abbr></p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555687148349588021)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(24555687071947588020)
,p_region_template_options=>'#DEFAULT#:language-markup'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'&lt;p&gt;&lt;abbr title="attribute"&gt;attr&lt;/abbr&gt;&lt;/p&gt;',
'&lt;p&gt;&lt;abbr title="HyperText Markup Language" class="initialism"&gt;HTML&lt;/abbr&gt;&lt;/p&gt;'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555687221744588022)
,p_plug_name=>'Blockquotes'
,p_parent_plug_id=>wwv_flow_api.id(24566608606885351264)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555687635837588026)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24566608606885351264)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'P205_BLOCKQUOTE_1'
,p_attribute_04=>'ALL_TEMPLATE_OPTIONS:CUSTOM_ATTRIBUTES'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24555687305715588023)
,p_name=>'P205_BLOCKQUOTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24555687221744588022)
,p_prompt=>'Blockquote'
,p_source=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(21666197619017591379)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24555687453191588024)
,p_name=>'P205_BLOCKQUOTE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24555687221744588022)
,p_prompt=>'Blockquote'
,p_source=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(21666197619017591379)
,p_help_text=>'Someone famous in Source Title'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24555687559882588025)
,p_name=>'P205_BLOCKQUOTE_1_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24555687221744588022)
,p_prompt=>'Blockquote'
,p_source=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(21666197619017591379)
,p_item_template_options=>'blockquote-reverse'
,p_help_text=>'Someone famous in Source Title'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00210
begin
wwv_flow_api.create_page(
 p_id=>210
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Code'
,p_page_mode=>'NORMAL'
,p_step_title=>'Code'
,p_step_sub_title=>'Code'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24631362206504126830)
,p_plug_name=>'Code'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Styles for inline code snippets and longer, multiline blocks of code.</p>',
'<p>APEX Bootstrap 4 uses Prism.js to display code snippets. You can either use a region template or an item template to display code across your application.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555708898639588038)
,p_plug_name=>'Regions'
,p_parent_plug_id=>wwv_flow_api.id(24631362206504126830)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555708441132588034)
,p_plug_name=>'HTML'
,p_parent_plug_id=>wwv_flow_api.id(24555708898639588038)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555687742645588027)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(24555708441132588034)
,p_region_template_options=>'#DEFAULT#:language-markup'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'&lt;div class="container"&gt;',
'  &lt;div class="row"&gt;',
'    &lt;div class="col-sm-4"&gt;',
'      One of three columns',
'    &lt;/div&gt;',
'    &lt;div class="col-sm-4"&gt;',
'      One of three columns',
'    &lt;/div&gt;',
'    &lt;div class="col-sm-4"&gt;',
'      One of three columns',
'    &lt;/div&gt;',
'  &lt;/div&gt;',
'&lt;/div&gt;'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555708524281588035)
,p_plug_name=>'SQL'
,p_parent_plug_id=>wwv_flow_api.id(24555708898639588038)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555687970784588029)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(24555708524281588035)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT * ',
'FROM users ',
'WHERE clue > 0;'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555708655010588036)
,p_plug_name=>'Javascript'
,p_parent_plug_id=>wwv_flow_api.id(24555708898639588038)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555708012964588030)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(24555708655010588036)
,p_region_template_options=>'#DEFAULT#:language-javascript'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function doSomething() {',
'    alert("I''m doing something...");',
'}'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555708721618588037)
,p_plug_name=>'CSS'
,p_parent_plug_id=>wwv_flow_api.id(24555708898639588038)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555708191831588031)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(24555708721618588037)
,p_region_template_options=>'#DEFAULT#:language-css'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.navbar-search {',
'  position: relative;',
'  float: left;',
'  margin-top: 5px;',
'  margin-bottom: 0;',
'}'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555708936516588039)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24631362206504126830)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'GROUP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_05=>'LANGUAGE_TYPE'
,p_attribute_07=>'N'
);
end;
/
prompt --application/pages/page_00215
begin
wwv_flow_api.create_page(
 p_id=>215
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Images'
,p_page_mode=>'NORMAL'
,p_step_title=>'Images'
,p_step_sub_title=>'Images'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24635107881405533887)
,p_plug_name=>'Images'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Opt your images into responsive behavior (so they never become larger than their parent elements) and add lightweight styles to them—all via classes.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555709030642588040)
,p_plug_name=>'Responsive images'
,p_parent_plug_id=>wwv_flow_api.id(24635107881405533887)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555709224440588042)
,p_plug_name=>'Image shapes'
,p_parent_plug_id=>wwv_flow_api.id(24635107881405533887)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555709769275588047)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24635107881405533887)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'GROUP'
,p_attribute_05=>'STYLE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24555709827960588048)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24635107881405533887)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'SINGLE'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_06=>'RESPONSIVE'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24555709129847588041)
,p_name=>'P215_RESPONSIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24555709030642588040)
,p_prompt=>'Responsive'
,p_source=>'https://dl.dropboxusercontent.com/u/13765392/img-responsive0.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(21666767277169746701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24555709321575588043)
,p_name=>'P215_SHAPE1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24555709224440588042)
,p_prompt=>'New'
,p_source=>'https://dl.dropboxusercontent.com/u/13765392/img-responsive1.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(21666767277169746701)
,p_item_template_options=>'#DEFAULT#:ab-img-rounded'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24555709402435588044)
,p_name=>'P215_SHAPE2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24555709224440588042)
,p_prompt=>'New'
,p_source=>'https://dl.dropboxusercontent.com/u/13765392/img-responsive2.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21666767277169746701)
,p_item_template_options=>'#DEFAULT#:ab-img-circle'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24555709502140588045)
,p_name=>'P215_SHAPE3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24555709224440588042)
,p_prompt=>'New'
,p_source=>'https://dl.dropboxusercontent.com/u/13765392/img-responsive3.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21666767277169746701)
,p_item_template_options=>'#DEFAULT#:ab-img-thumbnail'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00220
begin
wwv_flow_api.create_page(
 p_id=>220
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Tables'
,p_page_mode=>'NORMAL'
,p_step_title=>'Tables'
,p_step_sub_title=>'Tables'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24638102269408874457)
,p_plug_name=>'Tables'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Here are the available options to classic reports.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24555709967512588049)
,p_name=>'Basic'
,p_region_name=>'basic-table'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638195813930553301)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638195940189553302)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638196007966553303)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24638196135365553304)
,p_name=>'Inverse'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:ab-table-inverse'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638196268867553305)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638196344723553306)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638196450579553307)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24638196537961553308)
,p_name=>'Hoverable'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:ab-table-hover'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638196658858553309)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638196733841553310)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638196864492553311)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24638196992062553312)
,p_name=>'Striped'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:ab-table-striped'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638197060429553313)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638197164814553314)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638197261547553315)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24638197348083553316)
,p_name=>'Small'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:ab-table-sm'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638197498358553317)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638197523276553318)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638197672296553319)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24638197725077553320)
,p_name=>'Thead default'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:ab-thead-default'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638197895195553321)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638197961983553322)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638198070068553323)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24638198102671553324)
,p_name=>'Thead inverse'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:ab-thead-inverse'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638198211298553325)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638198384317553326)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638198497969553327)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24638198550780553328)
,p_name=>'Bordered'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:ab-table-bordered'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638198622621553329)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638198732192553330)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638198874923553331)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24638198919130553332)
,p_name=>'Responsive'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:table-responsive'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638199016459553333)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638199157094553334)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638199294049553335)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24638199340018553336)
,p_name=>'Reflow'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:ab-table-reflow'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, sal ',
'from emp',
'where rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13552141119189127708)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638199400220553337)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638199546468553338)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24638199655983553339)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24638199755766553340)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24638102269408874457)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REPORT'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'basic-table'
,p_attribute_04=>'ALL_TEMPLATE_OPTIONS'
,p_attribute_07=>'Y'
);
end;
/
prompt --application/pages/page_00225
begin
wwv_flow_api.create_page(
 p_id=>225
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Figures'
,p_page_mode=>'NORMAL'
,p_step_title=>'Figures'
,p_step_sub_title=>'Figures'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24674544056003430307)
,p_plug_name=>'Figures'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Anytime you need to display a piece of content—like an image—with an optional caption, consider using a figure.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24676034643119505741)
,p_name=>'P225_SHAPE1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24674544056003430307)
,p_prompt=>'New'
,p_source=>'https://dl.dropboxusercontent.com/u/13765392/img-responsive1.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(21666767277169746701)
,p_item_template_options=>'#DEFAULT#:ab-figure:ab-img-rounded'
,p_help_text=>'Here''s a caption.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24676035037636505744)
,p_name=>'P225_SHAPE2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24674544056003430307)
,p_prompt=>'New'
,p_source=>'https://dl.dropboxusercontent.com/u/13765392/img-responsive3.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(21666767277169746701)
,p_item_template_options=>'#DEFAULT#:ab-figure:ab-img-rounded'
,p_help_text=>'Here''s another caption.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00250
begin
wwv_flow_api.create_page(
 p_id=>250
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Tables'
,p_page_mode=>'NORMAL'
,p_step_title=>'Tables'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(13552127774043124085)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22741030222193885420)
,p_plug_name=>'Tables'
,p_region_template_options=>'#DEFAULT#:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Due to the widespread use of tables across third-party widgets like calendars and date pickers, we’ve designed our tables to be <strong>opt-in</strong>. Just add the base class <code>.table</code> to any <code>&lt;table&gt;</code>.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(23440232480333619766)
,p_name=>'{media}'
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(21640155195235038826)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23440232899226619769)
,p_query_column_id=>1
,p_column_alias=>'MEDIA_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Media title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23440233253994619770)
,p_query_column_id=>2
,p_column_alias=>'MEDIA_DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Media description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23440233699633619771)
,p_query_column_id=>3
,p_column_alias=>'MEDIA_IMG_SOURCE'
,p_column_display_sequence=>3
,p_column_heading=>'Media img source'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23440234054827619771)
,p_query_column_id=>4
,p_column_alias=>'MEDIA_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Media link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00300
begin
wwv_flow_api.create_page(
 p_id=>300
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Buttons'
,p_page_mode=>'NORMAL'
,p_step_title=>'Buttons'
,p_step_sub_title=>'Buttons'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988399027769411789)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Use Bootstrap’s custom button styles for actions in forms, dialogs, and more. Includes support for a handful of contextual variations, sizes, states, and more.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576421159101283017)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:ab-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'BUTTON'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'disabled-button'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988399482993411795)
,p_plug_name=>'Styles'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988399862801411795)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(23988399482993411795)
,p_region_template_options=>'#DEFAULT#:ab-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'BUTTON'
,p_attribute_02=>'GROUP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_05=>'STYLE'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988400211725411796)
,p_plug_name=>'Outline'
,p_parent_plug_id=>wwv_flow_api.id(23988399482993411795)
,p_region_template_options=>'#DEFAULT#:ab-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988403058217411800)
,p_plug_name=>'Standard'
,p_parent_plug_id=>wwv_flow_api.id(23988399482993411795)
,p_region_template_options=>'#DEFAULT#:ab-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988406227327411802)
,p_plug_name=>'Sizes'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988418273694411806)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:ab-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'BUTTON'
,p_attribute_02=>'GROUP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_05=>'SIZE'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988418615063411806)
,p_plug_name=>'Disabled'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988419846617411807)
,p_plug_name=>'Block'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988421058113411808)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:ab-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'BUTTON'
,p_attribute_02=>'SINGLE'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_06=>'FULL_WIDTH'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988400624170411797)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'PRIMARY_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-primary-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Primary'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988403811558411800)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'PRIMARY'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Primary'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988406672801411803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988406227327411802)
,p_button_name=>'Large1'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Large'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988419014170411807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988418615063411806)
,p_button_name=>'DISABLED_BUTTON'
,p_button_static_id=>'disabled-button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Disabled'
,p_button_position=>'BODY'
,p_button_cattributes=>'disabled'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988420207089411808)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988419846617411807)
,p_button_name=>'BLOCK_BUTTON'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-block:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Block'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988401025242411798)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'SECONDARY_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Secondary'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988419401945411807)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23988418615063411806)
,p_button_name=>'DISABLED_BUTTON_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Disabled'
,p_button_position=>'BODY'
,p_button_cattributes=>'disabled'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988420618034411808)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23988419846617411807)
,p_button_name=>'BLOCK_BUTTON_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-block:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Block'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988401843962411799)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'SUCCESS_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-success-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Success'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988404208631411801)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'SECONDARY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Secondary'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988407056505411803)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23988406227327411802)
,p_button_name=>'Large2'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Large'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988402682143411799)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'INFO_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-info-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Info'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988405042535411801)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'SUCCESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-success'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Success'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988407408609411805)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23988406227327411802)
,p_button_name=>'Small1'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-sm:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Small'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988401457948411798)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'WARNING_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-warning-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Warning'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988405829634411802)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'INFO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-info'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Info'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988407849305411805)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(23988406227327411802)
,p_button_name=>'Small2'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-sm:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Small'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988402299687411799)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'DANGER_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-danger-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Danger'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988404680139411801)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'WARNING'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-warning'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Warning'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988405424427411801)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'DANGER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-danger'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Danger'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988403499300411800)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'LINK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-link'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Link'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00305
begin
wwv_flow_api.create_page(
 p_id=>305
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Button group'
,p_page_mode=>'NORMAL'
,p_step_title=>'Button group'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10701218114848601)
,p_plug_name=>'Group Buttons'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Group a series of buttons together on a single line with the button group. Add on optional JavaScript radio and checkbox style behavior with our buttons plugin.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10701388582848602)
,p_plug_name=>'Basic exemple'
,p_region_name=>'btn-group-basic'
,p_parent_plug_id=>wwv_flow_api.id(10701218114848601)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Wrap a series of buttons in the same button region.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10701788996848606)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(10701218114848601)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'btn-group-basic'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10701849962848607)
,p_plug_name=>'Button Toolbar'
,p_region_name=>'btn-toolbar'
,p_parent_plug_id=>wwv_flow_api.id(10701218114848601)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Combine sets of button groups into button toolbars for more complex components. Just wrap series of buttons in different button region.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10702743496848616)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(10701218114848601)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'btn-toolbar'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10702826680848617)
,p_plug_name=>'Sizing'
,p_parent_plug_id=>wwv_flow_api.id(10701218114848601)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10703884703848627)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(10701218114848601)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'BUTTON'
,p_attribute_02=>'GROUP'
,p_attribute_05=>'SIZE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10704398610848632)
,p_plug_name=>'Vertical variation'
,p_region_name=>'vertical-btn-group'
,p_parent_plug_id=>wwv_flow_api.id(10701218114848601)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(11021203984187638)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11212551139623814)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(10701218114848601)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'vertical-btn-group'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10701604474848605)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10701388582848602)
,p_button_name=>'LEFT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Left'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10701582962848604)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(10701388582848602)
,p_button_name=>'MIDDLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Middle'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10703590657848624)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(10702826680848617)
,p_button_name=>'LEFT_SM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-sm:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Left'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10701486248848603)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(10701388582848602)
,p_button_name=>'RIGHT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Right'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10701988134848608)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(10701849962848607)
,p_button_name=>'1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'1'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10702063193848609)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(10701849962848607)
,p_button_name=>'2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'2'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10703679424848625)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(10702826680848617)
,p_button_name=>'MIDDLE_SM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-sm:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Middle'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10702183774848610)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(10701849962848607)
,p_button_name=>'3'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'3'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10702245516848611)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(10701849962848607)
,p_button_name=>'4'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'4'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10703760368848626)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(10702826680848617)
,p_button_name=>'RIGHT_SM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-sm:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Right'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10702384528848612)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(10701849962848607)
,p_button_name=>'5'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'5'
,p_button_position=>'REGION_TEMPLATE_COPY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10702419256848613)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(10701849962848607)
,p_button_name=>'6'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'6'
,p_button_position=>'REGION_TEMPLATE_COPY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10702541348848614)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(10701849962848607)
,p_button_name=>'7'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'7'
,p_button_position=>'REGION_TEMPLATE_COPY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10703267189848621)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(10702826680848617)
,p_button_name=>'LEFT_MD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Left'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10703304674848622)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(10702826680848617)
,p_button_name=>'MIDDLE_MD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Middle'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10703411750848623)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(10702826680848617)
,p_button_name=>'RIGHT_MD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Right'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10702653504848615)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10701849962848607)
,p_button_name=>'8'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'8'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10704468949848633)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10704398610848632)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'New'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10702959057848618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(10702826680848617)
,p_button_name=>'LEFT_LG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Left'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10704520423848634)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(10704398610848632)
,p_button_name=>'New_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'New 1'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10704658338848635)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(10704398610848632)
,p_button_name=>'New_2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'New 2'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10704771231848636)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(10704398610848632)
,p_button_name=>'New_3'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'New 3'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10703047130848619)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(10702826680848617)
,p_button_name=>'MIDDLE_LG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Middle'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10704809396848637)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(10704398610848632)
,p_button_name=>'New_4'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'New 4'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10704906449848638)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(10704398610848632)
,p_button_name=>'New_5'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'New 5'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10703131371848620)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(10702826680848617)
,p_button_name=>'RIGHT_LG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Right'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
end;
/
prompt --application/pages/page_00310
begin
wwv_flow_api.create_page(
 p_id=>310
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Button Dropdown'
,p_page_mode=>'NORMAL'
,p_step_title=>'Button Dropdown'
,p_step_sub_title=>'Button Dropdown'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216162620'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11051668734281380)
,p_plug_name=>'Button Dropdown'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10705348310848642)
,p_plug_name=>'Single button dropdwns'
,p_parent_plug_id=>wwv_flow_api.id(11051668734281380)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'List type region with Single Button Dropdown list template. '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10705106691848640)
,p_plug_name=>'Default'
,p_region_name=>'single-btn-dropdown'
,p_parent_plug_id=>wwv_flow_api.id(10705348310848642)
,p_component_template_options=>'#DEFAULT#:btn-secondary'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10705419199848643)
,p_plug_name=>'Primary'
,p_parent_plug_id=>wwv_flow_api.id(10705348310848642)
,p_component_template_options=>'#DEFAULT#:btn-primary'
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10705546366848644)
,p_plug_name=>'Success'
,p_parent_plug_id=>wwv_flow_api.id(10705348310848642)
,p_component_template_options=>'#DEFAULT#:btn-success'
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10705666642848645)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_api.id(10705348310848642)
,p_component_template_options=>'#DEFAULT#:btn-info'
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10705726560848646)
,p_plug_name=>'Warning'
,p_parent_plug_id=>wwv_flow_api.id(10705348310848642)
,p_component_template_options=>'#DEFAULT#:btn-warning'
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10705872240848647)
,p_plug_name=>'Danger'
,p_parent_plug_id=>wwv_flow_api.id(10705348310848642)
,p_component_template_options=>'#DEFAULT#:btn-danger'
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10706014526848649)
,p_plug_name=>'Split button dropdowns'
,p_parent_plug_id=>wwv_flow_api.id(11051668734281380)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Similary, create a list type region with Split Button Dropdown list template.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10706127654848650)
,p_plug_name=>'Info'
,p_region_name=>'single-btn-dropdown'
,p_parent_plug_id=>wwv_flow_api.id(10706014526848649)
,p_component_template_options=>'#DEFAULT#:btn-info'
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11211460440623803)
,p_plug_name=>'Default'
,p_region_name=>'single-btn-dropdown'
,p_parent_plug_id=>wwv_flow_api.id(10706014526848649)
,p_component_template_options=>'#DEFAULT#:btn-secondary'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11211568980623804)
,p_plug_name=>'Primary'
,p_parent_plug_id=>wwv_flow_api.id(10706014526848649)
,p_component_template_options=>'#DEFAULT#:btn-primary'
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11211690138623805)
,p_plug_name=>'Success'
,p_parent_plug_id=>wwv_flow_api.id(10706014526848649)
,p_component_template_options=>'#DEFAULT#:btn-success'
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(11171271978514127)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11211703695623806)
,p_plug_name=>'Sizing'
,p_parent_plug_id=>wwv_flow_api.id(11051668734281380)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11211921267623808)
,p_plug_name=>'Large button'
,p_region_name=>'single-btn-dropdown'
,p_parent_plug_id=>wwv_flow_api.id(11211703695623806)
,p_component_template_options=>'#DEFAULT#:btn-lg:btn-secondary'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11212098229623809)
,p_plug_name=>'Small button'
,p_region_name=>'single-btn-dropdown'
,p_parent_plug_id=>wwv_flow_api.id(11211703695623806)
,p_component_template_options=>'#DEFAULT#:btn-sm:btn-secondary'
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11212170734623810)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11051668734281380)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LIST'
,p_attribute_02=>'GROUP'
,p_attribute_05=>'SIZE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11212491009623813)
,p_plug_name=>'Dropup'
,p_parent_plug_id=>wwv_flow_api.id(11051668734281380)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_component_template_options=>'#DEFAULT#:dropup:btn-secondary'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11213562334623824)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11051668734281380)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'SINGLE'
,p_attribute_06=>'DROPUP'
);
end;
/
prompt --application/pages/page_00315
begin
wwv_flow_api.create_page(
 p_id=>315
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Forms'
,p_page_mode=>'NORMAL'
,p_step_title=>'Forms'
,p_step_sub_title=>'Forms'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216153949'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11481657097477531)
,p_plug_name=>'Forms'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11212687628623815)
,p_plug_name=>'Form controls'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11213627268623825)
,p_plug_name=>'Inline Forms'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:form-inline:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11214174458623830)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'SINGLE'
,p_attribute_06=>'INLINE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11214215531623831)
,p_plug_name=>'Hidden labels'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:form-inline:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11214751557623836)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'SINGLE'
,p_attribute_06=>'HIDDEN_LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11214863408623837)
,p_plug_name=>'Addons'
,p_region_name=>'addons'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11215033434623839)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'P315_AMOUNT'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11215191517623840)
,p_plug_name=>'Inline'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'To display the checkboxes or radio buttons inline you only have to increase the number of columns.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11215505677623844)
,p_plug_name=>'Static controls'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11215744472623846)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'P315_EMAIL_STATIC'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11215887877623847)
,p_plug_name=>'Disabled states'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11216133551623850)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'P315_DISABLED_INPUT'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12047934085658702)
,p_plug_name=>'Control sizing'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12048385338658706)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'GROUP'
,p_attribute_05=>'SIZE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12048766140658710)
,p_plug_name=>'Column sizing'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12049149540658714)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'P315_COL_3'
,p_attribute_04=>'GRID_ATTRIBUTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12049319901658716)
,p_plug_name=>'Help text'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12049534645658718)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'P315_HELP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12049610419658719)
,p_plug_name=>'Validation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12050038192658723)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'GROUP'
,p_attribute_05=>'VALIDATION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12050155149658724)
,p_plug_name=>'Custom forms'
,p_parent_plug_id=>wwv_flow_api.id(11481657097477531)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>210
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'For even more customization and cross browser consistency, use our completely custom form elements to replace the browser defaults. They’re built on top of semantic and accessible markup, so they’re solid replacements for any default form control.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12050270652658725)
,p_plug_name=>'Checkboxes'
,p_parent_plug_id=>wwv_flow_api.id(12050155149658724)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11214099833623829)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11212687628623815)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11212729950623816)
,p_name=>'P315_EMAIL_ADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11212687628623815)
,p_prompt=>'Email address'
,p_placeholder=>'Enter email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'We''ll never share your email with anyone else.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11212895546623817)
,p_name=>'P315_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11212687628623815)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11212983484623818)
,p_name=>'P315_EXAMPLE_SELECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11212687628623815)
,p_prompt=>'Example select'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2,3;3,4;4,5;5,6;6'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11213070720623819)
,p_name=>'P315_EXAMPLE_MULTIPLE_SELECT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11212687628623815)
,p_prompt=>'Example multiple select'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2,3;3,4;4,5;5,6;6'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11213114160623820)
,p_name=>'P315_EXAMPLE_TEXTAREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11212687628623815)
,p_prompt=>'Example textarea'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11213298833623821)
,p_name=>'P315_FILE_INPUT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11212687628623815)
,p_prompt=>'File input'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is some placeholder block-level help text for the above input. It''s a bit lighter and easily wraps to a new line.'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11213321405623822)
,p_name=>'P315_RADIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11212687628623815)
,p_prompt=>'Radio'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Option one is this and that—be sure to include why it''s great;1,Option two can be something else and selecting it will deselect option one;2'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11213419361623823)
,p_name=>'P315_CHECKBOX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11212687628623815)
,p_prompt=>'Checkbox'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Check me out;1'
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11213754866623826)
,p_name=>'P315_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11213627268623825)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11213805962623827)
,p_name=>'P315_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11213627268623825)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11214419258623833)
,p_name=>'P315_EMAIL_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11214215531623831)
,p_prompt=>'Email'
,p_placeholder=>'Enter email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11214553119623834)
,p_name=>'P315_PASSWORD_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11214215531623831)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11214660027623835)
,p_name=>'P315_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11214215531623831)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Remember me;1'
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11214965453623838)
,p_name=>'P315_AMOUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11214863408623837)
,p_prompt=>'Amount'
,p_placeholder=>'Amount'
,p_pre_element_text=>'<div class="input-group-addon">$</div>'
,p_post_element_text=>'<div class="input-group-addon">.00</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11841495345346291)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11215219464623841)
,p_name=>'P315_CHECKBOX_INLINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11215191517623840)
,p_prompt=>'Checkbox inline'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:1;1,2;2,3;3'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11215333536623842)
,p_name=>'P315_RADIO_INLINE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11215191517623840)
,p_prompt=>'Radio inline'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:1;1,2;2,3;3'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11215442644623843)
,p_name=>'P315_EMAIL_STATIC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11215505677623844)
,p_prompt=>'Email'
,p_source=>'email@example.com'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11215636989623845)
,p_name=>'P315_PASSWORD_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11215505677623844)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11215989023623848)
,p_name=>'P315_DISABLED_INPUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11215887877623847)
,p_prompt=>'Disabled input'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'disabled'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11216062534623849)
,p_name=>'P315_DISABLED_SELECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11215887877623847)
,p_prompt=>'Disabled select'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Disabled select;Return1,Display2;Return2'
,p_cHeight=>1
,p_tag_attributes=>'disabled'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12047880116658701)
,p_name=>'P315_DISABLED_CHECK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11215887877623847)
,p_prompt=>'Disabled check'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Can''t check this;1'
,p_lov_display_null=>'YES'
,p_tag_attributes=>'disabled'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12048045199658703)
,p_name=>'P315_LARGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12047934085658702)
,p_prompt=>'Large'
,p_placeholder=>'Large input'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only:form-control-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12048135662658704)
,p_name=>'P315_DEFAULT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12047934085658702)
,p_prompt=>'Default'
,p_placeholder=>'Default input'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12048222282658705)
,p_name=>'P315_SMALL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12047934085658702)
,p_prompt=>'Small'
,p_placeholder=>'Small input'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only:form-control-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12048474849658707)
,p_name=>'P315_SELECT_LARGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12047934085658702)
,p_prompt=>'Select large'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only:form-control-lg'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12048521402658708)
,p_name=>'P315_SELECT_DEFAULT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12047934085658702)
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12048667473658709)
,p_name=>'P315_SELECT_SMALL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12047934085658702)
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only:form-control-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12048828503658711)
,p_name=>'P315_COL_4'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12048766140658710)
,p_prompt=>'Col 4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12048925452658712)
,p_name=>'P315_COL_3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12048766140658710)
,p_prompt=>'Col 3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12049207400658715)
,p_name=>'P315_COL_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12048766140658710)
,p_prompt=>'Col2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12049488857658717)
,p_name=>'P315_HELP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12049319901658716)
,p_prompt=>'Help'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_help_text=>'Some inline help text looks like this. You can add this help text under any items.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12049774590658720)
,p_name=>'P315_INPUT_SUCCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12049610419658719)
,p_prompt=>'Input with success'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:has-success'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12049858493658721)
,p_name=>'P315_INPUT_WARNING'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12049610419658719)
,p_prompt=>'Input with warning'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:has-warning'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12049973147658722)
,p_name=>'P315_INPUT_DANGER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12049610419658719)
,p_prompt=>'Input with danger'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:has-danger'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12050331784658726)
,p_name=>'P315_CUSTOM_CHECK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12050270652658725)
,p_prompt=>'Custom check'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Check this custom checkbox;1'
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
end;
/
prompt --application/pages/page_00320
begin
wwv_flow_api.create_page(
 p_id=>320
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Input group'
,p_page_mode=>'NORMAL'
,p_step_title=>'Input group'
,p_step_sub_title=>'Input group'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216160513'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12291676374777514)
,p_plug_name=>'Input group'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12050967267658732)
,p_plug_name=>'Sizing'
,p_parent_plug_id=>wwv_flow_api.id(12291676374777514)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12051006308658733)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(12291676374777514)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'P320_USERNAME'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12051408482658737)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(12291676374777514)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'FIELD'
,p_attribute_02=>'GROUP'
,p_attribute_05=>'SIZE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12051594148658738)
,p_plug_name=>'Checkboxes and radio addons'
,p_parent_plug_id=>wwv_flow_api.id(12291676374777514)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13061922378731804)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(12051594148658738)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13103249077859732)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12581477494164606)
,p_plug_name=>'Basic example'
,p_parent_plug_id=>wwv_flow_api.id(12291676374777514)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13062179286731806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13061922378731804)
,p_button_name=>'New_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'New 1'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12051826728658741)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12051594148658738)
,p_button_name=>'Go!'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'btn-left-addon:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Go!'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13061737388731802)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(12051594148658738)
,p_button_name=>'Go!2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-right-addon:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Go!'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13062227881731807)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(12051594148658738)
,p_button_name=>'Hate_it'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-left-addon:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'it'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13062391764731808)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(12051594148658738)
,p_button_name=>'Love_it'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-right-addon:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Love it'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12051104875658734)
,p_name=>'P320_LARGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12050967267658732)
,p_prompt=>'Large'
,p_placeholder=>'Username'
,p_pre_element_text=>'<span class="input-group-addon" id="basic-addon1">@</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11841495345346291)
,p_item_template_options=>'#DEFAULT#:sr-only:form-control-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12051249189658735)
,p_name=>'P320_DEFAULT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12050967267658732)
,p_prompt=>'New'
,p_placeholder=>'Username'
,p_pre_element_text=>'<span class="input-group-addon" id="basic-addon1">@</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11841495345346291)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12051335144658736)
,p_name=>'P320_SMALL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12050967267658732)
,p_prompt=>'New'
,p_placeholder=>'Username'
,p_pre_element_text=>'<span class="input-group-addon" id="basic-addon1">@</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11841495345346291)
,p_item_template_options=>'#DEFAULT#:sr-only:form-control-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12051752567658740)
,p_name=>'P320_ADDONS_CHECK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12051594148658738)
,p_prompt=>'Addons check'
,p_pre_element_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="input-group-addon">',
'    <input type="checkbox">',
'</span>'))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11841495345346291)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12051993673658742)
,p_name=>'P320_NEW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12051594148658738)
,p_prompt=>'New'
,p_placeholder=>'Search for...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only:input-btn-left-addon'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12581799559164635)
,p_name=>'P320_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12581477494164606)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_pre_element_text=>'<span class="input-group-addon" id="basic-addon1">@</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11841495345346291)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12582127526164638)
,p_name=>'P320_RECIPIENT_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12581477494164606)
,p_prompt=>'Username'
,p_placeholder=>'Recipient''s username'
,p_post_element_text=>'<span class="input-group-addon" id="basic-addon2">@example.com</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11841495345346291)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12582578730164639)
,p_name=>'P320_VANITY_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12581477494164606)
,p_prompt=>'Your vanity URL'
,p_pre_element_text=>'<span class="input-group-addon" id="basic-addon3">https://example.com/users/</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11841495345346291)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12582951039164639)
,p_name=>'P320_MONEY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12581477494164606)
,p_prompt=>'New'
,p_pre_element_text=>'<span class="input-group-addon">$</span>'
,p_post_element_text=>'<span class="input-group-addon">.00</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(11841495345346291)
,p_item_template_options=>'#DEFAULT#:sr-only'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13061864081731803)
,p_name=>'P320_NEW_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12051594148658738)
,p_prompt=>'New'
,p_placeholder=>'Search for...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only:input-btn-right-addon'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13062093260731805)
,p_name=>'P320_NEW_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13061922378731804)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13062484586731809)
,p_name=>'P320_NEW_3'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12051594148658738)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(13552189433666145531)
,p_item_template_options=>'#DEFAULT#:sr-only:input-btn-addon'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00325
begin
wwv_flow_api.create_page(
 p_id=>325
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Dropdowns'
,p_page_mode=>'NORMAL'
,p_step_title=>'Dropdowns'
,p_step_sub_title=>'Dropdowns'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216164209'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12301666006785408)
,p_plug_name=>'Dropdowns'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13062507638731810)
,p_plug_name=>'Button elements'
,p_parent_plug_id=>wwv_flow_api.id(12301666006785408)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'List type region with Single Button Dropdown list template. '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13062609732731811)
,p_plug_name=>'Dropdown button'
,p_region_name=>'dropdown'
,p_parent_plug_id=>wwv_flow_api.id(13062507638731810)
,p_component_template_options=>'#DEFAULT#:btn-secondary'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11141243263470543)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13062850018731813)
,p_plug_name=>'Menu headers'
,p_parent_plug_id=>wwv_flow_api.id(12301666006785408)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'To create a menu header line create a new list entry and add the class ''dropdown-header'' to the A01 region.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13062907403731814)
,p_plug_name=>'Menu headers'
,p_parent_plug_id=>wwv_flow_api.id(13062850018731813)
,p_component_template_options=>'#DEFAULT#:btn-secondary'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(13221686466049916)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13063045872731815)
,p_plug_name=>'Menu dividers'
,p_parent_plug_id=>wwv_flow_api.id(12301666006785408)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'To create a separation line, create a new list entry and add the class ''dropdown-divider'' to the A01 region.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13063190891731816)
,p_plug_name=>'Divider'
,p_parent_plug_id=>wwv_flow_api.id(13063045872731815)
,p_component_template_options=>'#DEFAULT#:btn-secondary'
,p_region_attributes=>'class="open"'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(13231326952060412)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13063268109731817)
,p_plug_name=>'Disabled menu items'
,p_parent_plug_id=>wwv_flow_api.id(12301666006785408)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'To create a disabled menu item, create a new list entry and add the class ''disabled'' to the A01 region.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13063316032731818)
,p_plug_name=>'Disabled'
,p_parent_plug_id=>wwv_flow_api.id(13063268109731817)
,p_component_template_options=>'#DEFAULT#:btn-secondary'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(13273774722146327)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(21625926247228069129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00330
begin
wwv_flow_api.create_page(
 p_id=>330
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Jumbotron'
,p_page_mode=>'NORMAL'
,p_step_title=>'Jumbotron'
,p_step_sub_title=>'Jumbotron'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24132252861766146105)
,p_plug_name=>'Jumbotron'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24132253284661146108)
,p_plug_name=>'Hello world!'
,p_region_name=>'jumbotron-example'
,p_parent_plug_id=>wwv_flow_api.id(24132252861766146105)
,p_region_template_options=>'#DEFAULT#:ab-h1'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24132253643735146109)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24132252861766146105)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'jumbotron-example'
,p_attribute_04=>'ALL_TEMPLATE_OPTIONS:CUSTOM_ATTRIBUTES'
,p_attribute_07=>'N'
);
end;
/
prompt --application/pages/page_00335
begin
wwv_flow_api.create_page(
 p_id=>335
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Label'
,p_page_mode=>'NORMAL'
,p_step_title=>'Label'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMIGNAULT'
,p_last_upd_yyyymmddhh24miss=>'20160216135003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422097698283026)
,p_plug_name=>'Label'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00340
begin
wwv_flow_api.create_page(
 p_id=>340
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Alerts'
,p_page_mode=>'NORMAL'
,p_step_title=>'Alerts'
,p_step_sub_title=>'Alerts'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VMORNEAU'
,p_last_upd_yyyymmddhh24miss=>'20160216161424'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12991654582599088)
,p_plug_name=>'Alerts'
,p_region_template_options=>'#DEFAULT#:region-lead:ab-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10631572707645602)
,p_plug_name=>'Examples'
,p_parent_plug_id=>wwv_flow_api.id(12991654582599088)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10631624742645603)
,p_plug_name=>'Well done!'
,p_parent_plug_id=>wwv_flow_api.id(10631572707645602)
,p_region_template_options=>'ab-h3:alert-success'
,p_plug_template=>wwv_flow_api.id(13068521232743705)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'You successfully read this important alert message.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10631719296645604)
,p_plug_name=>'Heads up!'
,p_parent_plug_id=>wwv_flow_api.id(10631572707645602)
,p_region_template_options=>'ab-h3:alert-info'
,p_plug_template=>wwv_flow_api.id(13068521232743705)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This alert needs your attention, but it''s not super important.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10631834494645605)
,p_plug_name=>'Warning!'
,p_parent_plug_id=>wwv_flow_api.id(10631572707645602)
,p_region_template_options=>'ab-h3:alert-warning'
,p_plug_template=>wwv_flow_api.id(13068521232743705)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Better check yourself, you''re not looking too good.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10631933079645606)
,p_plug_name=>'Oh snap!'
,p_parent_plug_id=>wwv_flow_api.id(10631572707645602)
,p_region_template_options=>'ab-h3:alert-danger'
,p_plug_template=>wwv_flow_api.id(13068521232743705)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Change a few things up and try submitting again.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10632049205645607)
,p_plug_name=>'Dismissible'
,p_parent_plug_id=>wwv_flow_api.id(12991654582599088)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10632181038645608)
,p_plug_name=>'Well done!'
,p_parent_plug_id=>wwv_flow_api.id(10632049205645607)
,p_region_template_options=>'#DEFAULT#:ab-h3:alert-success'
,p_plug_template=>wwv_flow_api.id(13068521232743705)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'You successfully read this important alert message.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10632215675645609)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(12991654582599088)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'GROUP'
,p_attribute_05=>'ALERT_STYLE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10632375202645610)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(12991654582599088)
,p_region_template_options=>'#DEFAULT#:ab-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'SINGLE'
,p_attribute_06=>'ALERT_DISMISSIBLE'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
