prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.3'
,p_default_workspace_id=>29669901933057813451
,p_default_application_id=>154152
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXRELURU'
);
end;
/
 
prompt APPLICATION 154152 - Employee Expense Tracker
--
-- Application Export:
--   Application:     154152
--   Name:            Employee Expense Tracker
--   Date and Time:   00:21 Saturday October 3, 2026
--   Exported By:     RAKESH.ELURU@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     16
--       Items:                   39
--       Validations:              1
--       Processes:               19
--       Regions:                 42
--       Buttons:                 25
--       Dynamic Actions:          6
--     Shared Components:
--       Logic:
--         App Settings:           1
--         Build Options:          3
--       Navigation:
--         Lists:                  4
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   7
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.3
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_APEXRELURU')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Employee Expense Tracker')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'EMPLOYEE-EXPENSE-TRACKER')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'0EFD2451AA9E2AEFFDB315976F9C34B0D67D78409A8FD3E8B3B4D5018466B2C6'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(41825606172969701942)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Employee Expense Tracker'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(41825612337096701969)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Employee Expense Tracker'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261002232713Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461310181414
,p_version_scn=>'15840453373209'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(41825607076328701943)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(41825607814903701949)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825601743479701935)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825602062838701936)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825602389047701936)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825602608922701937)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825602978076701937)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825603285942701938)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825603589301701938)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825603888337701938)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825604143813701939)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825604461491701939)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825604747669701940)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825605048636701940)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825605391184701940)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41825605676503701941)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(41825665077867702178)
,p_name=>'Access Control'
,p_static_id=>'access-control'
,p_required_patch=>wwv_flow_imp.id(41825610398137701966)
,p_version_scn=>'SH256:2nBPsvmvFJg5f1d7LwnGEEpfhgWMDPEN1q_L4jF6D6g'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41825666008676702179)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_static_id=>'access-control'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41825665589783702178)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_static_id=>'users'
,p_list_item_link_target=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(41825607814903701949)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41825661396059702173)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41825661944702702173)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(41825661396059702173)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41825662484037702174)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(41825661396059702173)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(41825607076328701943)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:CMf4tFCUqy1fZsUDrI3QdLRG4P0-v_bA8cPKgzD-Hk0'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232420Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41825663033425702175)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(41825612208070701969)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43097411302206036890)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Expense Approval Queue'
,p_static_id=>'expense-approval-queue'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
,p_created_on=>wwv_flow_imp.dz('20261001015644Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015644Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43497047455690561386)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Expense Dashboard'
,p_static_id=>'expense-dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
,p_created_on=>wwv_flow_imp.dz('20261002013728Z')
,p_updated_on=>wwv_flow_imp.dz('20261002013728Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41830899570312818045)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Expense Entry'
,p_static_id=>'expense-entry'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20260926184058Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184058Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43796611556229402568)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Expense Explorer'
,p_static_id=>'expense-explorer'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
,p_created_on=>wwv_flow_imp.dz('20261002232420Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232420Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(42690818222348214979)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Expense Search'
,p_static_id=>'expense-search'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
,p_created_on=>wwv_flow_imp.dz('20260930012624Z')
,p_updated_on=>wwv_flow_imp.dz('20260930012624Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41825620203192701983)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(42330370981901674033)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'My Expenses'
,p_static_id=>'my-expenses'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20260929014255Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014255Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(41825664253590702177)
,p_name=>'User Interface'
,p_static_id=>'user-interface'
,p_required_patch=>wwv_flow_imp.id(41825611193101701966)
,p_version_scn=>'SH256:TEHQI3W-evOu5t7srXTUWfuXODpW2jafK7fobqw9eKU'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41825664716282702177)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_static_id=>'theme-style-selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(41825611193101701966)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5C097C54D5B9FFDF99EC0B49082124610918905DC43081802C56D1AA80A8D1E4598D12D4A2D6677D7DCFD6675BEDABB67DE2FAB33EF11116';
wwv_flow_imp.g_varchar2_table(2) := '7DAF107003AA96A5822C21994444624D8000812440482024933D33737BBE938C02492073EF9DE54ECEFCEE779773CFF996FFF7CF9973CEBD1303C44720A00201412015E089A680209060812A04048154C1271A0B02090EA842401048157CA2B12090E080';
wwv_flow_imp.g_varchar2_table(3) := '2A041413489555D1D867101004F299547A26104120CFE0EE335605817C26959E094410C833B8FB8C5541209F49A567021104F20CEE3E63D5FD04EA0574BBE767879BD3560E2ABC77D555F9F7665F634E5F915A90B1F22673C6F2797D410A28561633C54E';
wwv_flow_imp.g_varchar2_table(4) := '18101684492FA0737B158F1248862C1566AC1C9D9FB13CD39CBEFC6DF3BD2B0ACDE9D96D0121A887D17ECA2ED94A2509FB01798F2CDBB7B0EA1BFB82F05859CC143B6140581026840DC7E8DEEC3F1366841D61080F7EDC4AA07D692B620AD2B3E7E7A767';
wwv_flow_imp.g_varchar2_table(5) := 'BF68CEC8DE5A90BEA2D62EDB8B25595A05484B20C9D701F06722B6EE11F0E71849788C3023EC08438E65C6F2DF9B590F9D9BB6BC7FF74D5D536A708DDAAE5AE92FC56640AA0C3C2301CF42C68DAC560413B1A9432082B09465E93F214BCF180D0686B1CC';
wwv_flow_imp.g_varchar2_table(6) := '2056A7B4B7AD5D4EA0C24796F99BD3B31F2E485F51224BF227CCB1542662730D02D32549DE5490B1A298F5F25984BD6BCCFCA0D5A504CA4D5B9D60AFF3DFCBCCBDCB641413B1B903011957B32E68B9BDDE2F97860DAE34E93202E5A5AD18EB67B4E6F3EF';
wwv_flow_imp.g_varchar2_table(7) := '6C574620745F0E8164ABD1BED79CF1EEB8CB555273CF25042ACCC89E6130CAB9CCB104261A6D428D3204A4AB201BF7983356CC52D6FEF2AD342710F53C76199B99593140662078C9C606DAF267AEE889342550E1BC6521063F793D032D8489D8BC0B8110';
wwv_flow_imp.g_varchar2_table(8) := 'C87E3994232DDDD29440F650FFB72163AC960E0A5D5A22208FE339D250A5660432A7673FC8568C3335F44DA8720902325BF5A75C69A35C1302E5A6AD0B9620BDAA8D4B428B1B107845ABAF324D0864345A32D94A73941B021726B441A0BF2DD4EF012D54';
wwv_flow_imp.g_varchar2_table(9) := 'A92610238E2449780ADEFB119E7583004BFC9394BB6E6E3955C4F43855BF4BE5828CEC9BD9C0F9EA2E374481572320036378EE547AA99A40B04BA2F75199048F35D72077AA08B4FDC19541907093C7001086D521C072471320354A541128ACC53A951957';
wwv_flow_imp.g_varchar2_table(10) := 'A583B5179BE71030F81BEB52D49857957C59361081D4D8176D3D8C80DA1CAA2390240B027998006ACDCB2A73A8984034059420CD501B8037B7EF0BBEB11CAAEA041413A8206D552C03389A89D8F48D406CFE03AB15E7513181E0272936AA6FBC7DCF7BA9';
wwv_flow_imp.g_varchar2_table(11) := '5D1EA4342AE504B2CBE2950DA5A87B5B3B15B9544E20832090B7F140B13F2A72A99C40B0072B765834F42E0464BB9F528794134845B7A7D459D1CE450848F057AA5939818C06D103F584BADECA557406CA096457CE5A6FC4B7C9DA8AFAB6469C6BA94775';
wwv_flow_imp.g_varchar2_table(12) := '732D4E35D6A0BCE10C173AA732BA4775A8AE37C6A0D827159D817202499255B1C35ED0D02ECBB0B435E12423CAA1DA1338517F1A271B6A70A6A916679BEB51D7DA88C6B6662E744E65748FEA505D6A43C4221DA4CB0B42F2880BCA09E41177D51BA5DEA3';
wwv_flow_imp.g_varchar2_table(13) := '82F52C87CF97A3B2A11AF58C28FD87C462D2BCE9F8D1AFD231EFB547B170D9CF90F6FE2FF02F9F3CC785CEA96CDEAB8FF03AD7DC9E8AA8210339C948874317E956EFA1BE34F41902B5D9DA516EA9E23D4D537B0B6287C561E6E377206DD5D398FBE6628C';
wwv_flow_imp.g_varchar2_table(14) := 'CD9A83D89424840F8F41706C04FCC383BECF249D5359F88881BCCEB8C537E0E6371FE66D673EB680EB6A686FE6BAE96BAFD5D6F67D5B5F3FF17902B5DBADA0AFA9A37527413DC4841B4DB8FDE58771C3EB8B30F8A6F1F08F54BE1E4A6D07CF9DC075CD63';
wwv_flow_imp.g_varchar2_table(15) := '3A493791F358DD293E8622DBF0F18F4F1388C62747EA2AF9E07854EA442C7CFB094C78622EC292066A9E56D249BAEF78EB7124A58C431D1B90936DF24173635EA4D0270924434655D3393EC619342C1EB7BDB808C9FF311F4171112E873E382112A65F2D';
wwv_flow_imp.g_varchar2_table(16) := 'C46DBF7F08B143E34163241A7CF7CEB0FE6AF91C816CB21D27D858A7B6C58209B39331FBE54C448C8D579499D3E6529028691C312E0173966662FCACEBF8D200F96467BE29D1E5CD6D7C8A4034503EC6C63ACDD6364C5F742B263C750B0CFE4645F87FF7';
wwv_flow_imp.g_varchar2_table(17) := '7F3BF1C54B6BB994ACD9AD4807D99EF8F31F2335F3163EFE3A567F0AE4A322655EDAC86708E4E879ACB20D3FFAB7340C9B3F5915E47515D5DFB73F5FFEC3F9F7854E9C242E4CC69C7FBD0B34A8A69EC8E6433D91CF1088A6E856BB0DB31EBB03B1334639';
wwv_flow_imp.g_varchar2_table(18) := '91DEEEAB8EB92315D1C3076140523CC6DC31ADFB4A4E94C6CD1E8D993F5D00F291D6A19C68EAD5557D824034506D615F5BD316DF8A043635D702F1C8D171B8F9B5C598BB74112246297EDFEA225706DF3C01299973D1DCDECAA7F917DDD4E985EE0944CF';
wwv_flow_imp.g_varchar2_table(19) := 'A768AA3C72CE240CBF5DDDD7963B7278D5421346A4B2693E5B01AF65CFDDDC61D39536744DA036B64878863DF80C8B8EC0E447E6768B53DBB9466CFFE5FBD8F99B3568AB6DEAB68E2B0A9B4F9DEF51ED949FDD86B0E87EA862BE530C3D56ECFD0D8FD5D4';
wwv_flow_imp.g_varchar2_table(20) := '358168AD87909BF5F49D300607D06917297A6F3B4E951C47C58123F8F6FD1D5DEEBBA260EF4B1FE2E3256FC1525AD5AD7AF275E65377F27BD5ECE12D3FD1E94EB7046AB6B6F227E593E6CD00ADB9780BFE797FF808C7CCC5187A0D7BAE9614DBA35B9113';
wwv_flow_imp.g_varchar2_table(21) := '0663E2ADD3F81B012D3A7E76A65B0251EF630CF4C7D519A93D26896E4CC8BC0171570F45FCD8448CBF7F3615B94CF2FEF8118EE67F87C113AF42EA73775FD1CE98FBAE8731C00F14CB152B7B69055D12A89E3D67A259D7981BAFEBF1ABCB8177405408E6';
wwv_flow_imp.g_varchar2_table(22) := 'FCE901CC7EE927A07347B99647D966C7DE173FC0D13C469E092330E3D7696C01F3CAAF191B430270F50D93F9ACCCD2E6BEF19996B1EB9240B5AD168EC1C8DB92F9D1933BD96E07F53CC70A4A3098C8F39B7B7A451E87CFA3E64FE1A78E98F8858E76BA23';
wwv_flow_imp.g_varchar2_table(23) := '10ADE2D23A0A252B383ED2E350172CDD08A5E421E743E2A390307E38E83510BB0E57A87547A086CEAE7E58EA58C2DF63423D8FF9BF3F4169EEB78A7A9E0B1D4F9CD6110BBD947661B93BCED5DAD01D812CED1D63854153AE521BBBE2F6441EEA79B4200F';
wwv_flow_imp.g_varchar2_table(24) := '393170F2703AF019193FD1D14E5704A2F77C1ADB5B103978000207847B04E60BC913376618663839E6E9CEE9E0B84884C546817A208AB1BB3ADE5AA62B02B5DADA21CB32E2C775FCC5BA1BD44BC933EBF90CA706CC97F397C674149BDE5EF7D01581DA6D';
wwv_flow_imp.g_varchar2_table(25) := '1DBF24A25F445C2E19AEB8D72D7902AF3C55EFAD2F51836378D576BB8D1FF5B2D31581AC7207B86171512EC7D772B41AE55B0EE0F4EE8368AF6B46E16B7FE503E604D6FBCD7A81F53C1A928782098FEF4F07FEBA073FD1C94E5F04620F4F09D7103666A0';
wwv_flow_imp.g_varchar2_table(26) := 'A3ABA4E87FFF8E4D4F2FC3AEB737E28BA5EBB13EF3151CDE7500F1631371FD6FEF8581AD1E6B6D9BC641A4B3BD33463AD783E88A40ED9DDDBB5F5860176C6D2DED38F4611E0ADFFA0C96B29A2EF77B5B50F355198A3EDD8BF0984824DF3D8B0B9D53FB49';
wwv_flow_imp.g_varchar2_table(27) := 'F7CD514C1E4B5935F7EDD04779B0B7757C15934E87F877C664D50B813A1DD71581AC9D049224A9D3FD1F0E153BFE81C2F7B7E1D0B67DD8FBE6861F6E387976EE70256F317AF624F44F1CC485CEA9B0BAE8041D14C99ED73EE1BE15BEB70D155F7ED75547';
wwv_flow_imp.g_varchar2_table(28) := '674C8E3F92AE15BCB3445704BA2C849D09B86C9D5EDCBCEC62B00AB424E902D2CB5D1DB9E06ED79B5E5CA20212F747E567E8F885054D772FB53E78D65824DF7F2346DD3819D39E5C70E9ED5E5F0F9C388CD72DD9B11FE7CA4E73A1732A8C1AA1FCD5D6D4';
wwv_flow_imp.g_varchar2_table(29) := 'A71670DFA63C7013C857D277A1B0D5097EE988915FE860A72F02491D046AB7B47481D618E48F51774D45F213B7223C714097FBBD29A0B1C9FEFFDFCEAB5AAACFA3F0832FB9D079DCE8611890AC7CFD293C3186FB36F2CE1418BA99C1B55B9AB95DBFCE18';
wwv_flow_imp.g_varchar2_table(30) := 'F9850E76FA2250670FD478AAD625D0E6FEE1439C2A3E8EA4E9E3B1E08D2530DD7F13A6DE3F17B37EBA0073FE78BF4B6C3A94365476C4247A2007222E383AC0B5549ED3543B2D12E6FED77A9CF8FA3012934763CAD3F3113A2C1A4977A560C45D2624DC32';
wwv_flow_imp.g_varchar2_table(31) := '41537BDD29B39C3CCB8B1D31F20B1DEC74D903D5A9FCA1DFA57929787513CABE3A8821D72461EA330B2119DD0F4B5D45C7D2839F41BBD5ED4BE374C5B5F348B9C28B5EEA0C32060012507DF424B4FAB49E6D40E9EE22BE4838FDB9BBD9B3AD8E719656FA';
wwv_flow_imp.g_varchar2_table(32) := '7BABE7CC51B67CC0620B322AFE7F97BD35A5693D5D11C8201910E217849AA3A74089D70289C0E8303EDE99F9423A238F67FEFA5B6A2CA83D7E06A12C368A518BB8DCA54357042250C20342E88093F987F8518B1D8D770CFE9E210FF95FB9B72396F08050';
wwv_flow_imp.g_varchar2_table(33) := 'BAD495E88F40FE1D043ABAFB5B5D017D39678FEE3EC06F8777FE71F00B9DEC7447209AA504F905A0AAB81C8D1ACFC63C91B346367DAF3E588960FF4018D957B4277C5063537704A260A3832200B6745BB27E2F5DEA5ABE5BBB8BFBDF3FB01F3FEA6DA74B';
wwv_flow_imp.g_varchar2_table(34) := '0251574FBDD0C11D5FA3F9749D62CCAD0D2D38B7FF048E7C5C80D20FF39D126A436DAD8DAD8AED37B1DE875E13A1582826C58A3CD8D08D04D236CA98E08E9FF47CBBAEE32FD819EDE59B0FE0B3C7DFC1BA9F2CC5DF9E7F0FF9AB37C3FCFE56A784DA50DB';
wwv_flow_imp.g_varchar2_table(35) := '75F7BD8CCF1F5F868AAD45CEB8C0EB1675FAEE888517EA6CA75B0285FA0723C43F0887B77F83DA12B686D20BE0E9CDC2DCDFADC3AEFFD988F3953508090FC5A02171183E2E0923C68D744AA80DB5251DB595D5D8F9E70DFCD7A964A317AEE0FCC19338B2';
wwv_flow_imp.g_varchar2_table(36) := 'B388C740B1F4A68D37D6D12D8108CC8121517C2CB473E947B035B551518F42AFA86E7CFC6D94ED3B84FE03A361FAF1F5983C771A924CE390303A11F1EC61A933426DA82DE9205D9131FDF90F0CFFFAE43B683856DDA31F74C3D6DC861D7F5ACF7DE73150';
wwv_flow_imp.g_varchar2_table(37) := 'A14E45D704A295E9E8E00834D6D421FF8D4D3DA6A0F1F8596CF9F56AB4363463D4B56330F6FA6B111012D8637D676F90AEF1332773DDCD758DD8FCDC6A90CD9EF4E4BDB6114DE72C20DF29869EEAE9A15CD70422806382231116108CB2FC6294ACDB4345';
wwv_flow_imp.g_varchar2_table(38) := '170925F26FCFAE446B732BC6A55C838123122EBAAFE505E9261B648B6C92ED4BF5D3FF283A6E2E41784008C877E8FCA37B0211FEF1A131A099CCBEBF6CC7B1CFBFA6222E4D15E74089A4848E4F9904C74F67F84D17EDC806D9229B649B7C70982AFDD88C';
wwv_flow_imp.g_varchar2_table(39) := '031FEE46A09F3FE2C394BDB3E4D0E52D479F2090419230386C20689171EFB24F51BEAD0894B8CDCFAE421BEB7928A191F1D16EC39C6C91CDB6A656900FE4CB0936F333AFDEC27D1C1216CB9E09B327A76EF3C87586F440A05E454FE41912DE41A25D6F6D';
wwv_flow_imp.g_varchar2_table(40) := 'C0E7CFAC408BA519E3A74F0625B4574A34AC4436C74FBF96FBF0F92F5762379BF9918F43C36339893434E551553E43204231D01880E111F1FCB1406B630B42C2C310141A4CB73C22C16C9980A6F93478A74715E45B80CE5ED7B812703E45200AD6C89E27';
wwv_flow_imp.g_varchar2_table(41) := 'D15F794460281AEB2DF86AEB5E5495B275A26E7E0941F55D22CC565569390AB7E4321F1A40BE904FE49B4BEC7950A9CF1188B094D808232E74006243FBC36EB7E1F037C528DAF915DAD8A30BBAEF4A69655F9B07B617309B07B96DF2817C219F5C69D753';
wwv_flow_imp.g_varchar2_table(42) := 'BA7D92400E30A302C331A25F3C9FE6D7D5D4A260EB1E1C36FF030D6C0DC65147AB63E3D97A29517DFB000004FB49444154AEBB605B2EEA6BEBF8347D444402C807AD6C78A31E9F2610014E630E9AA12546C421C41888AAF253D8BF3D1FFBB7E6F1AFB6A6';
wwv_flow_imp.g_varchar2_table(43) := 'F30D544D9134D55A70BAB402FBB6E4E1EB1D66AE9BDE2A1CCE6C2584C5204067EF372B01C1E709E40085567C87B019D0D07EB1BC476AB434B2AF9962ECFB7B1E72376C47F1EEFDA8282E43CD892A58CED4B2D95313EC563B131B5AD80A36959D3D5EC5EB';
wwv_flow_imp.g_varchar2_table(44) := '50DD5CD666DF17EC09FE3725686E68E43DCED07E8330842D2704B2C1BCC3AEAF1F7D9A40DD258FDEA9A61E6964E410502FD18F0DB661B3E36C550DCABE2B45494111BED9F5151F00E76EF88293AB70F31E5E565C58C4EB505D6A436D49874357889F768F';
wwv_flow_imp.g_varchar2_table(45) := '47BAF3DD1BCBFA1C811C4930B0C5477A9C10CF06DBA3A286827A265A1D1EC81ED04607F7E333A750F68884846651D1EC991BDDA33AD4D3501B6A4B3A4897436F5F3B2A2790DDD6F1DF2E7D0431EA99FA0584A27F503FC4044781664EF4754442E731C191';
wwv_flow_imp.g_varchar2_table(46) := 'FC1ED5F1B99EC6666F569A4683D28630483E4520C538F8424315B9544E201814B3D61730F7AD1894E7523981ECA207F21912A9C8A57202A9E8F67C06785F0944452E15134892940FBCBC1EF73EE6A09A5C2A2690DC2EBEC27C85676A72A9984086A836FA';
wwv_flow_imp.g_varchar2_table(47) := '87365DFF5598AFA0DA77E268E9CCA5A288151328F9DD47DB99C57C2662D33702F99DB95414856202913519D801F1D135026A73A88A4006D80581744D1F406D0E5511A821C82F8FE127C6410C049D6E2D9D3954ECBE2A02CD59F510238FACFCDFC22B76DB';
wwv_flow_imp.g_varchar2_table(48) := '5B1BEACD2F7943470E95FBAD8A4064D62ECBAFD35188FE10D02277AA093435E7E13C1910B3319DF1877246B953EBB66A02910306D10B110CBA12AD72A609811AAA2A3E60E85530119B3E10A8ECCC996A6F3521D09C1DCF5B25597A42B53742817B1090E4';
wwv_flow_imp.g_varchar2_table(49) := '2594332D8C69422072644ACEA20D90A437E85C881723C072645AB37893561E6A462072C810DEFEEFEC58C0446CCE21E0A6DAD28ECE1C41AB8FA604A2672A3618EE818CF3101F6F43A0CA2ED9D229475A3AA62981C8B1696B1F2A9324F906765EC6446C5E';
wwv_flow_imp.g_varchar2_table(50) := '80009BB21F9765DC3C75CDC3555ABBA33981C8C1296B177F2D07F82543C236BA16E25104BE4080DF75293959DFB8C20B9710881C4D792FF36C9935FC16097887AE8578000119AF94D9C2E7522E5C65DD65042287EF597F8F6DCADAAC25AC0B5DC2AEDB98';
wwv_flow_imp.g_varchar2_table(51) := '88CD3D08340352BA2927EB179403B8F0E3520239FC4E599BF58ED5E63702B2F45B5656CE446CAE41A082F5F8CF33AC479AD62ECA718D898BB5BA85406432757D66A52967D1EF58973A9CF5487742C66656CE4ED95E6C8A11600D6D90A54D32E4DB19B689';
wwv_flow_imp.g_varchar2_table(52) := 'ACC77F81B066E56ED9DC46204734D4A5B21EE963534ED62D069B350A76791664F929405A0D194500AC4CC4D63D0256C24892F01E939F439266B73521CA94B3687ECADAC59F12B6DD37735DA9DB09746128C9EB1FAD33AD5BBCD394B3F80DD6E53E68CAC9';
wwv_flow_imp.g_varchar2_table(53) := '9A685A9BE5CF40E9079B21CE201B936419930069BA2419E64292E7F705E1B1B2982976C280B0204C081BC268CA9AAC4C26AF9BD62CFA72C6C62C0B3CF8F128817A8A9B4031AD7FE87472CE834768FA695ABB2877CA9A87B69AD8127C5F101E2B8B996227';
wwv_flow_imp.g_varchar2_table(54) := '0C080BC2A427BC3C59EE9504F22420C2B673080802398797A87D090282409700222E9D434010C839BC7CA7B6469108026904645F552308D45733AF51DC82401A01D957D50802F5D5CC6B14B720904640F6553582407D35F31AC52D08A411907D47CDC591';
wwv_flow_imp.g_varchar2_table(55) := '0A025D8C87B87212014120270113D52F46E09F000000FFFF7FBEEB3F000000064944415403004DBEFB996E472B020000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41825609290757701953)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D099415D599FE5EEFAFF7051A9A666B4056D94114046547D0A06634EE89F1C460CCE04CCC494E8C99133399CCC46532498E71CC49229A89';
wwv_flow_imp.g_varchar2_table(2) := '33D110C12422A0A0119045F65D1A1A9AA569A0A1F7BD5FCFFDAABBEA55D3DBEBE6BDD7B5FC7DFABEBAFBFDFFEFBF5FD5AD7B6F55456CBFEFB78DE20403B7F68108C89F20E0620484002E36BEA80E0801A417B81A012180ABCD2FCABB9800627C41408640';
wwv_flow_imp.g_varchar2_table(3) := 'D2075C8E805C015CDE01DCAEBE10C0ED3DC0E5FA0B015CDE01DCAEBE10C08D3D407436101002185088C78D080801DC6875D1D94040086040211E3722200470A3D5456703012180018578DC80C0D53A0A01AE4644C2AE424008E02A738BB257232004B81A';
wwv_flow_imp.g_varchar2_table(4) := '1109BB0A012180ABCC2DCA5E8D8010E06A4424EC2A045C440057D955940D10012140804049366722200470A65D45AB0011100204089464732602420067DA55B40A100121408040D93A9B08DF2E02428076A191043720200470839545C776111002B40B8D';
wwv_flow_imp.g_varchar2_table(5) := '24B8010121801BAC2C3AB68B8010A05D6824C1090874A68310A0338424DDD10808011C6D5E51AE330484009D2124E98E464008E068F38A729D212004E80C21497734020E2680A3ED26CA05090121409080946AEC898010C09E7613A9838480102048404A';
wwv_flow_imp.g_varchar2_table(6) := '35F6444008604FBB89D4414240081024202D558D08133002428080A1928C4E444008E044AB8A4E0123200408182AC9E8440484004EB4AAE8143002428080A1928C7640A0AB320A01BA8A5817F2D7FAEA51565B89A2EA1214545CC2A9B2F3C82B3D87DCE2';
wwv_flow_imp.g_varchar2_table(7) := '3338567C1A472E9FD21CFD8C631AF3302FCB94D755817574A149C9DA450484005D04ACBDEC0D8D3EADB35FACBA82FCB2421CBD928F13C56771B6FC222E5616A3A4A602557535A8A9AF43BDAF010D3E9F5115FDF52A8E69CCC3BC2C73A6EC825607EB629D';
wwv_flow_imp.g_varchar2_table(8) := 'AC9B84625B4661F15C130242806B80CFD7D8A83A76B976663F76E5B4D6D98BAA4A5159578D4695760D55B728CABA5827EB26A1D816AF142535E5A00C2D324BA04B080801BA045753E69A865A35A429D28631051545DA99BD29A5E56F4ABF748C98370937';
wwv_flow_imp.g_varchar2_table(9) := '7C65216E79EA6E2CFCC143B8FD3F1EC39D2F3F897B5EFF161E58F5ACE6EE59F12D2D8E690B9F7D50CBCB32C3E74C44529FB49695368778A560DB1C3EF148999A93E4D0050484005D00ABB2BE1AA7D5F026AFA4403BF3F3CCAC17F74445206BD4204CFCE2';
wwv_flow_imp.g_varchar2_table(10) := '2CCCFFFE03AA833F8D25BFFA06267F733186DD3915D9B3472363F260248FCC427C761AA253E2F5A2884E8DD7E29896312547CBCB3253962FC11DAF2AB22882CC7FE6014CBC7B26B2460C04DB42F31F65E09580329D2EBF80CAFA9AE61439048280830810';
wwv_flow_imp.g_varchar2_table(11) := '88BADDCBC371F7C9D202E49716A2420D6FCCB5F4C9C9C6AC2797E2DEDF7F1BB3FFFD618C7A78167A4F1DA23AB8D79CED9AFCD18A20BD6F1882518FDC82D93F7D04F7BEF16DCC7C6229D8364C7F15B5554AC6F3DA908C37D0A624F1B6838010A01D60185D';
wwv_flow_imp.g_varchar2_table(12) := 'DB5007767C8EBBABEB6B19A5B9D8B8584C58321D4B7FB60C737FF628FACF1F8B486F8C96168E9FC8F8180C5838566BFB0B2F7D1DE36FBB0994496F9BC323DE40F33E813AE8F1726C8D8010A03526DA8D6561E5659C505396E68E1F1313832977DF8A3B7F';
wwv_flow_imp.g_varchar2_table(13) := 'BB1CA3BF36070939BDDA281DDEA8C4A1BD31E6EB73B1F437CB31F9CE59888E8A82FE47225007CE1EC9CDB28E4ACBA310A0251EA85263E813256771A5BA0C686C4A8C8A88C4F53327E18E5F2CC3F0476E4664426C5382857EA3126331E22BB370C72F9FC0';
wwv_flow_imp.g_varchar2_table(14) := '98E9131119D16C5AA503678FB8C650AD6EDE2D24B225446946C912B2F4B8105C7CE2B08173F29A301E60C0D04158FCFC6318F7F462C4F64DD6A2ADFC13979582F1DF5982DB7EFC28060C1B6C885AD750AF0DE7AE54971A71E2018400AA177061495B6852';
wwv_flow_imp.g_varchar2_table(15) := '0B56FA593F253D15F3FEF91ECC7CF121240ECB54B92CFCDF8668C9A3B330F3850731E7A97F40525A3371D5D5A0B0F20A3893E5530B776D14735D94EB09C09BC4BC9273DAE2956EFDEBA68CC6A2971F47E6AC1180C703DBFE29D9FBCE1E89C5BF5A06EAA4';
wwv_flow_imp.g_varchar2_table(16) := 'EBC199AC134A67EAAEC7B9F5E86A0254AA79FD3C35BDA90F79225487B9E9FEF998FAECDD219DD5A92FA9C2DE5FADC5AAAFFE5C73F4332E549D903354D4E9C62FCD537C6E223475E60C17310855BB76A8D7B504E0E211873D5C48A2A1BC5E2FE63FF32072';
wwv_flow_imp.g_varchar2_table(17) := 'BE348DC190BAFD2B36E2E0BA1DA8BC5CA639FA1917D24655E543EEBF110B948E71DE38158236DB450C4A6B2BB4B01B7F5C4980E29A726D2B833EDECFC8EA8D452F3E868CA9FE9BC6507686E35B0FB6AA3E6FE7915671A188A08E8B9EFF2AD2FA643455AF';
wwv_flow_imp.g_varchar2_table(18) := 'EE0BCE955FD256B69B22DCF5EB3A027085F47C459161E55EFD3331F7F92FC39B9D6AC485DA13111D19EA263AAC3F7E403AE6FDF4CB48CFEA65E42BA82C52ABDC5546D82E9E6B95D35504A85473FC5C21D5414BEFD30BB73EF700A2929A86047A7CA88F83';
wwv_flow_imp.g_varchar2_table(19) := '278D6CD544CEE4D671AD320531223A351EB37FF410527B356FB653578233E517B57510B8E8CF3504E06EC9336585866993529370EB0FEF474C46A211172ECFB8476763F4BC29F0A62622213D0963164CC5D847E784AB79A39DD8DE8998F3A30791909CA4';
wwv_flow_imp.g_varchar2_table(20) := 'C5F17E8853A46E9A1D72050138E77DBAEC8276D3474BC7257831F75F1F06178D180EB78B4AF162C23717E1AE15FF84A5BF7B0AE3BFB11051C9E1BD0AE93AC7F553EB1DCF3D68EC25F2353682BB4A79D4F338F9E80A0270BF3CA7FD68C8E8D868CC7FEE61';
wwv_flow_imp.g_varchar2_table(21) := '701CCCB0382021A717E6FFF021444637ED23E2AA71A1BA277003368E2700A73BCB6A2B0D5BCE78FC0E24D97065D75020441E3E8B70F3D79618B597D454688F781A110EF5D898009D5B845B1C0A2B2F1B19874C1E857E73471BE1CE3C55E74B90BF660FAE';
wwv_flow_imp.g_varchar2_table(22) := '1C38D3595647A4672F188B9CF1C30D5D0A2A2E81181A110EF4389A00ECFCFA58D69B188F494F2E0AD884E7361EC23BCB7E894DAFFE156B9E5D81ED2FAE0EB8AC5532161F3CDB65F24E5EBE04B1A685B20BA6138855F40AA61C8E2500A73C4BD5655C034B';
wwv_flow_imp.g_varchar2_table(23) := 'ADFECF78FC76C4A42768C1CE7E2A4E15E1A39FFFB945B6DC4DFB91BB725B8B382B070EBEB611EF7DFF358DBC17B6E6062C6A4C460288955E8043216E11D7C34E3B3A92008D688479B16BF8B4B1C89C353C60DB5DDC9FDF66DEB3BB03EF486D5610A6C803';
wwv_flow_imp.g_varchar2_table(24) := 'BFDB88BDAB371BAD79F467038C988E3D7D678FC4B029FEA1E27975434C4C3B2E65CF54471280672D7D2E3B36D18BF14F2CE89275920764B4993F7D50DF36E3AD14C9CEBFEF5D7FE79F78F72CF079E2AECA38F11F172136BE696A96EF2B32AEA65DADC8E2';
wwv_flow_imp.g_varchar2_table(25) := 'F91D4980CBD5FE873E267F6936A2D5BC7B57EC903E7E2046CE99D4A24872661A46DD3FA3455C8F05DA69F8C06F36C0DCF9272CBD19A31E99D54EEE8EA3A353E231F1DE5B8C4C45264C8D4807781C47004E79EA677FDEF80E5C30AE5B669AB47C316E597E';
wwv_flow_imp.g_varchar2_table(26) := '1786DC340653148916FFF2714425369D11BB5561880BEDFBF507D8F7D72D462BE397CEC0E8476F35C2DDF10C5A381E71CD5701625A51E7BCBD428E23001F6BD48D3DEEF6E988886D5ADCD1E3BA72CC9E3306377EF72E0C5767FE88D8E8AE140D6BDE3D2F';
wwv_flow_imp.g_varchar2_table(27) := 'BF8F03EF6D35DA1C77C7748C7974B611EEAE87CF118C5D729351DC8957014711A0AABE06FA5B1CA2D4AAE6A025130CE339D5C3CE7F68FD67867AECFCD73F36C7085FAB67F0E289888C6ADABDCAD733563BECC17A4711A0B8A6CCB0373798857B97A7D178';
wwv_flow_imp.g_varchar2_table(28) := '983CA1EEFC54233A2D1EA3E74EA157737C9642F338E4C73104E08257A9BEE5C1E3C1B0BBA739C4446DABB1EB17EF2194677E73ABD7DD7503A03085FA2BAD29474F4E892A1182FAEF1802F0068DDB79894EFF313988ED816DCE6C3B1C8E9DFFC8865D4653';
wwv_flow_imp.g_varchar2_table(29) := 'C11EF61815377BE2FAA6809832C8134D79AD736E861D4380E2DA72DA477303A78DD48E8EFB696C44B83BBF8EE1C01B46E85E943AE8196247108097645E01740BF5993C44F73AE7A83AFFF697DE85F9CC3F66D13404F386B723B0CC98F2B15262DE517EBB';
wwv_flow_imp.g_varchar2_table(30) := 'A43982009C9D5003530DF38C7EBDE1ED17BEE77BB54643FDD3DCF9B91F496F8A9D7FFCB2F97A30E4476F761A5233D3B57638D4AC32BD2C588BB4E98F3308505F6DC03F68DA28C3EF088F053ABF8E638E5A14D4FDDA49470FD8F8682302B48F32DF74A6A7';
wwv_flow_imp.g_varchar2_table(31) := '9A2FD57A9C5D8F8D3E1F38ECE9C933BF193B33B695A6938E398FDDFCB627006725F4C5AF48B55A9B363ADB6E3668535E76FE6DCFAF82553A3F8524B6C4987E1280D8D36F67677B02985726FB0C1F004478EC6C0F4D76BDF39FD87A480BF327DC637EB679';
wwv_flow_imp.g_varchar2_table(32) := 'B5E3A7997A0FEDD714DD08F04D1B4D01FBFEDA9E00750D7506FA69591986DFAE9EC6061F78E6B75AE7D7F14CEBEBC7B8CE57AF47DBF6687B02983F249DD427CDB686A0E0ECFC9FFE6425ACDAF92963525F3FC6B50D420062D2A3CE7C168ACF4CE9515902';
wwv_flow_imp.g_varchar2_table(33) := '6DBC70F3E7E033C6EF3EF60BACFACACFB0F9B9B7707AED3E6C7B71354EEE3C6A54337AFE1468539D464CCF7BBC19C98610753EFFD5D788B499C7F65700FD7D3FC4DDDBDB6F1C86ADE6EA4AABB4CEFEE10B6F6937B7E545A5A82CAEC0A9DD9FE39357DEC5';
wwv_flow_imp.g_varchar2_table(34) := '894F0F1A227333DF842E3CC46F140CB127A1AF7F8DA5CED710E2D6425FBDED09E0337DE9C49B696D026C79E11DADB37766D6517327A3AB8F71765667B0D2E37A37BD4691F599B167D88ECEF60430BFB726D2DBF9432BFC10053F48B12A4C1FA7D03B055F';
wwv_flow_imp.g_varchar2_table(35) := 'B37276FF092DC88FEE4D587823E63EF545CDD1CF382D51FDF49B3C0CFAEE4B84E8AFBB384479FD9F83F5A945BA108917B66A6D4F009FE90A009F9A9BEB04BAFD3DF4718A535B0E1B928D9D3F0D99630781AF22A4A39F717A86DCF5BB756FC88EDDC58153';
wwv_flow_imp.g_varchar2_table(36) := 'B4BA502DB0D7236D76B43D011AD46AA98E79630004E8A98F539C3B94A78B898C51CD73E9460C5AC45DCC3B6B4A098DB7BB3898CF37E6AB6F68A404425DAFED096006281002F4D4C7293C5D58A08B88ECFE73CC663C3AF2771B07D3B0879BE23A6AC30E69';
wwv_flow_imp.g_varchar2_table(37) := 'B6274064845F05CEA377067A4F7D9C22637096215AD1E173865FF75C3AEC3FEB675E17FAED1CDDC5C18C7164841F7B5D0FBB1D6DAF81071E03F340AE003DF5718A110B261B72EE5FBF0D17F6E7C357DF8086BA7AE53F05C6E919862FF23F83ABC705FBD8';
wwv_flow_imp.g_varchar2_table(38) := '5D1CCC187B4CD8075BBE70D5677B024478FC2A349AEE07DA03302AC58BB07F9C420D1B0AF634CD0051AE7A357FBE67EDA7F8E0BFFE840F7FBE127BD66E4543B3ECC3665C8FF40903992DA4AEBB38C81520A466E97AE511CD0F6BB3644DB1FF3B000C5BC5';
wwv_flow_imp.g_varchar2_table(39) := 'ED79792D0E7FB8B35371064F198149CB16759AAF2733D4A8853BBD7DB902E84884E41858A5E6F9F3F2FC4B81150A63AEBDAFACC3A10FFCEFED1936632CA6DC371B51B14DF3E97CE5E2B09BC762DE77EFC3F467EF81D55FE55276DAFFBD85E888D0DFAC87';
wwv_flow_imp.g_varchar2_table(40) := 'DA54FEF143A85B0A51FDB191FEC5AFD2D345216AA57BD5EEFDEFF538B876BB51981D7DEAD37760F87D3370EF1FBF8307563D8BDB7FFD246EF8F65264DEA416BF8C9CD6F5949EBE68081713290430C0E8294F74849F0045A7CEF79418ADDAD53AFFFBFEEF';
wwv_flow_imp.g_varchar2_table(41) := '09F065BB373CFD05786C3E735294E7C738C6847D2B006C1261FB2B408CE90A70E944EBE9C59EB0C381DF6EC04153E7E7AECE49CB17031E0FECFE57987BC650C18CBD1169338FED091017D9349626EE95A515A8EBE11BE1DCB7B762DF5FFC6F69BEFEB61B';
wwv_flow_imp.g_varchar2_table(42) := '61C55D9DC4ABABAEA6A81C7535B54DC51497634DD83745DAEFD7F604E02C505C949F04E5F9D7E07B1400000B5D494441543D7B1FB0EBCF7F377AC1B82FCCC0B8AFCF33C2017B2C9AD18CAD372A16C4DEA2A2062C96ED09404D13A2FDEFED3FBFCB3FDFCE';
wwv_flow_imp.g_varchar2_table(43) := 'B470BBC9F736BD969C5F66B9FEAB4DFE70CB10AAF62EECF1EF678A570408553BE1ACD71104F046F9097062F38170E2D7AAADA1774DD56677BAFB659656155A28E2D8A67D8634F126CC8D481B7A1C4100F3D9A8E4E215941DBF604353585BE4B26385E013';
wwv_flow_imp.g_varchar2_table(44) := '6CBA94E6938E1E67C7A32308C0ED10F1A66150C1D66376B485A5653EB7F573433E0E399D30FEA7428E200015498949E04173C737EDD78EF2133C048E7DB4D7A82C2536D1F007DB13EEFA1C43802445008F47CDCD2904AF145C42F929EB6D8B50A2D9F29F';
wwv_flow_imp.g_varchar2_table(45) := '43CAD2A2624D768FC783C4E878CDEF841FC7108097E4A418BF618EBFEFFF8084130CD5933AE4AEF16399AC4E34C4BA27E50966DB8E210041498BF5BFB1E0D0BACF505B54C16871D78040F585521C31ED644D75D0F087B0388A005C9CD16F861B1B7C38F6';
wwv_flow_imp.g_varchar2_table(46) := '67FFA743A9ACB8AE23706CE536E88F3E125B62DCF55AAC5BC2510420CC1971FE7703ED5FBB5D5D05FC9F4E62BAB8C011A8B9508683EB771805CCD81A9136F7588800C1413221DA0B7D6B041F393CBA3274578186AA5A5CDC7102077EB7111BBFF77BFCED';
wwv_flow_imp.g_varchar2_table(47) := '8957F0F6FD2FE0CD3B7F1C12C7BAD9C646D5D6C1D736E2D2677968A80EDDEB098FFC690B7CCD4FAA1153621B1C2B59A716C71180D066C4A5F0A0B903EBB6839BB8B440907E7C75F538F6C72D78FB9197B0FEDFDEC4BE7737A3E0F029941414A1AEAA2648';
wwv_flow_imp.g_varchar2_table(48) := 'ADB4AE867597A836D8D6DED59BB1EEC77FC0CA47FE13C7DEDA0ACAD4BA44F7636A2F97E3D006FF536C664CBB5FABF54A3A92009C0DE2198B7037D6FBB0EBD5B5F406C55D3970067F5DF60A76FCEF06D5E97AFEDD98F5B575D8F1E60778EFC95751D2C6DB';
wwv_flow_imp.g_varchar2_table(49) := '26BAABF48E97D780D8B13CB124A6F43BCD39920034525682FF3DF679DB0FE3CCFA6BDF2354F0C951BCFF2F6FA0BCA8844D682E222A12D9430660ECF44998BA6006A62F9D8D9BBF382F248E75B30DB69535381B6C5B1342FD945EB882353F781D859BFD2B';
wwv_flow_imp.g_varchar2_table(50) := 'B62ABA5BFFA7DFDF8753A6B7549BB1EC5685162EE45802C446C6202D2EC9807ECB6FFE86EAF3FE8E6B2404E8C955B3211B5F7A1B8DCD63E2A8E8280C193B02372EB90539134720252B1DB149DE169D32C0AA03CEC60ECF36D8D6D0C9A3B4B6875E3F1C94';
wwv_flow_imp.g_varchar2_table(51) := '8595F8EA1BC0374F1F7FC77FE3CAF8AEB8AA73C5D8F4EA5F8C22E96A5281581A110EF3389600B4536F6F2AF487E6EB6BEAC0B733EB1D98E981BA23FFB309DB7FBFDEC89E96998EA9B7CD44BFE10354870F028446CD5DF3444445206BC4404D96B4DEE946';
wwv_flow_imp.g_varchar2_table(52) := 'E16DAFAF0565362202F470EA78CB4BEF409FF62476BD14860116B765B69EB35E18E0E22639F3E5FBFCF133C8FDE3D62EB57CF40F9BB0EB4F1F1965B2D57067CCCC49888C8E34E27ADA4359C6CC9AA40DC57459283365D7C3811C3F7F73330A8FFBDF50D7';
wwv_flow_imp.g_varchar2_table(53) := '2FB197231E7AE948774713808A73EA2EC3EB9F15DAF1D646140778B3C8B3E8CEB74D9D7FE8406DB8C37AADE83814EB97D3DF108DB2530723A2034FF19102EC5CF9B19183677EA7ECF937946AC3E3780250670E85BCD1B1F4425DDFF1E14FFE0F1CEB3645';
wwv_flow_imp.g_varchar2_table(54) := 'B4FDCB8EC3B3A89E9ACDCE3F61B81EB4EC71C8A4913093803A50978E04AE2A28C6076A3A57CFC315DF5EA693861EEFC4A32B0840C3F54FCC34EE076ACA2AB1F69915A82E2C65522BC70EC38EA327D8A5F3EBF2920494590F5317EAA487CD4776FEB5DF5B';
wwv_flow_imp.g_varchar2_table(55) := '81DAB22A2D3A3A320AFD137B6B7E37FCB88600919E080C4CEE6B8C692B8BCBB1EE99D75173A9AC859DD951D861F44876A41C1B9CF97579F52365A6EC7A983A51373DCC63F58552B0F3130B86233C1E0C4CEAA3300A5FB760BB3DE9DCA3A9423926429DDD';
wwv_flow_imp.g_varchar2_table(56) := '923281A6C706B4F9FCF5CFBC81DACB4DBB46D941D851D0FC37F0BAC160476A0EDAEE40D9DB230157C7D7A933BFDEF989C900D5F9A31546B653F41A0476150188136FECB2E2FD8B645C40FAE0FB6FE0D06B1FB598ED19A43AFFC071C358C4D68E2418306C';
wwv_flow_imp.g_varchar2_table(57) := '90A103097E78C5C758FFBDD7D509C03F04EC97D00B4EDBE96928DD81C7750420167CA4AFAF69A5B8B8A0087B566F6292E6D8F90738A0F36BCAA89F41E3AF839904BB577D02125F2569FFC4820FBA680197FDB89200B4716A6C22B2DBB8D98B4F4A84933A';
wwv_flow_imp.g_varchar2_table(58) := '3F75A52309E29313E86DE1FAAB2121B16811E9A240848B746DA52A3778996F8C99A1B2AC1CBBD66D45C5959637C74CB3ABA32E3BD76E015F1DA9EBC01BDE416A522031DAAB47B9F2D88304B006DE7CA7D0E0947E888DF2BF659A24D8BD713BF2F7E5C2D7';
wwv_flow_imp.g_varchar2_table(59) := 'E0B386A0DD90C257EFC3C9FDB9D8BD611BAACAFD1F0FA1AE394A67378EF9AF86D1F50420209C1D1A9C9C05DE1B30ACB9C646E41F3B89DDEB3F454591FF66514BB3C14FB99279D7FA2D38F3F9C916D2A6C62581BABA6DB6A70508A68010A0190C8F9A07CC';
wwv_flow_imp.g_varchar2_table(60) := '5237C6BC2FF0783CCDB140554515767FB41D27761DB5C4FE7F43B0763CFCE8DE895D47B047C95C5D596DE4F2783CDA3D4FDFF874A5A95F3F23834B3D4280AB0CCFFB82216A789018D3726C7C2EEF34B6AFF904A70F9C404D85BF635D55BCC782B54AA6FC';
wwv_flow_imp.g_varchar2_table(61) := '03C7B1E3BD4F702EEF4C0B399262E23134251B3CB648900084006D74020E0FB8756260721F4447461939EAEBEA71EAE809EC787F138E6CDAA33D02A96F1D363285D1D3E86BD46438AC64D9AE64CA3F9A87FA7AFF536A949D3AF0AAC6ADCD6114CD364D09';
wwv_flow_imp.g_varchar2_table(62) := '013A301517CD78E6E4D028C6F4251A16B9547809FBB7ECC6676B36E3EC91936A51A90B0FDBB0826B70E545255A9B9FADD9A4C950A4643157C79B5CCA4CD9A983394DFC2D111002B4C4A3CD106F8E392C1AA0E6CC134C2FE165E69AAA6AE41DCC5563EE1D';
wwv_flow_imp.g_varchar2_table(63) := 'D8FCCE8738F8C92E9C3D7C1265178B833283C4991CD6C53A5937DBD8F3D10EADCD9AEA960FE05336CA9893DCAFE50D3D0515D7260242803661693B3241CD990F48EA839C942CF051C1AB87151C925CB97019798772B1F7EF9F61CBAA0DD8FFF14E1CDB71';
wwv_flow_imp.g_varchar2_table(64) := '10F96A3AF27CEE695C3E7B519B55AA29AF023BB74F0D59E8AF50B3364C631EE6651996DDB27A835617EB64DD6CC32C1D65C8F0266B325136CA684E177FC70808013AC6A7CDD4D8C81864C6A761586A7F70318964E078BBADCC2597AEA030BF00F96A3A32';
wwv_flow_imp.g_varchar2_table(65) := '77EF511CDABA579B55DAB17633D8B9B7ACDE08FA39D3C434E6615E9661D9B6EA8C51C331B6C9B629436F6F1A62954C6DE595B88E111002748C4FA7A95C4C221938DE1E929A8D3E09E9485433485C69EDB47080195817EB64DD43551B1C8EB14DB61D6015';
wwv_flow_imp.g_varchar2_table(66) := '92AD1D048400ED00D39DE8988828F005BD9C411A9E36102404F7DAF48E4F5563F204F0A934DEA072D81219E1873E3222427B588769CC93129B00966159D6C1BA5827EBE60C156CFC6735D1FD56B09A640E908784E05E1BBE552D2BA1170625F5056F5039';
wwv_flow_imp.g_varchar2_table(67) := '6CB92E750046A60FD21CFD8C631AF3302FCBB02CEB700014965541086059D38860E1404008100E94A50DCB222004B0AC6944B0702020040807CAD28665110823012C8B8108E6620484002E36BEA80ED90D2A9DC0DD08C815C0DDF677BDF64200D7770177';
wwv_flow_imp.g_varchar2_table(68) := '0320040887FDA50DCB222004B0AC6944B0702020040807CAD2866511100258D63422583810100284036569C3B20808012C6B1A670866752D840056B790C817520484002185572AB73A024200AB5B48E40B2902428090C22B955B1D012180D52D24F28514';
wwv_flow_imp.g_varchar2_table(69) := '81101220A4724BE5824050101002040546A9C4AE080801EC6A39913B280808018202A354625704840076B59CC81D140484004181F1AA4A24681B048400B63195081A0A048400A14055EAB40D024200DB984A040D0502428050A02A75DA060121806D4C65';
wwv_flow_imp.g_varchar2_table(70) := '0F41ED26A510C06E161379838A801020A8704A657643400860378B89BC41454008105438A532BB212004B09BC544DEA02210440204552EA94C10080B024280B0C02C8D5815012180552D2372850501214058609646AC8A8010C0AA9611B9C28280102018';
wwv_flow_imp.g_varchar2_table(71) := '304B1DB6454008605BD389E0C1404008100C14A50EDB222004B0ADE944F06020200408068A52876D111002D8D674D610DCEE52FC3F000000FFFFBC50FF0F000000064944415403005150DA97BCD3066B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41825609585343701964)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC7D099C14D5B5FE57D5B3AFEC300CC3BE28187606904531CF05773428101FCA165E16A32FC62C460D2E4934BE7FE27B79669345E353061125';
wwv_flow_imp.g_varchar2_table(2) := '31897107916D00914D919D19861D86D9D7AEFADF5333555DDD3303BD5657779DFEF5EDBA75B773CE77EEFDEAD6ADA565F0871160041C8B001380635DCF863302001300F70246C0C108300138D8F96CBAB31120EB990008050E8C804311600270A8E3D96C';
wwv_flow_imp.g_varchar2_table(3) := '468010600220143830020E458009C0A18E67B39D8D806E3D13808E046F19010722C004E040A7B3C98C808E0013808E046F19010722C004E040A7B3C9CE46C06C3D1380190D8E33020E438009C0610E6773190133024C00663438CE08380C01260087399C';
wwv_flow_imp.g_varchar2_table(4) := 'CD753602BED63301F822C2FB8C80831060027090B3D95446C0170126005F44789F117010024C000E72369BEA6C045AB39E09A03554388D117008024C000E71349BC908B4860013406BA8701A23E0100498001CE26836D3D908B4653D13405BC8703A23E0';
wwv_flow_imp.g_varchar2_table(5) := '000498007C9CBC7FEAFF246FBF7D59BBC2E9CBBA15CE589AB7E3DFFFD267FBAC6503364D5F3A78D3CC17876EBC7BE9C84DB35E1CC5C17E1868BE113E225F91CFC877E443F225F9947CEBE36EC7EF3A9200B6DEFD52BFC2BB5FBCA370E6E22736CF58BCBA';
wwv_flow_imp.g_varchar2_table(6) := 'F0EEC5DB0B672C2911412DCD4EAF6D48514AE1524E006A515D43C3A10645D927BBD43DB22AEF7049EA365991B772B01F069A6F848FC857E433F21DF9907C493E25DF16CE58A28A50423ED77C2FFA00F5852DB396F675221B3882000A672D1B2E9CFE58E1';
wwv_flow_imp.g_varchar2_table(7) := 'CC256BC5B65291DC0720C9ABA04A8F4B906E83240D17CEEF2E027F9D814077F2B944BE177D80FA82AAA807A96F88B0A670C6E24737DFBD6458BC4071313BE29200F64C7F3D69CBAC65370A47FEBE70C6922228CA7601C2935031596CD345E02F23D01A02';
wwv_flow_imp.g_varchar2_table(8) := 'D437AE02A4A724099F8BBE73A870E6D2E70B672CFE3AF529C4E127AE0860DBF4C5FDC539DF2FAB5C15875445F907207D1B409E08FC65048241A00F54F50140FA80FAD4E6194B7E417D0C71F4897902D833FD858C2D3316CF15CE59E77649FBC539DF4F85';
wwv_flow_imp.g_varchar2_table(9) := '7F7245E02F23104E047225E011EA636246F049E18C25F751DF0BA78068B415D3042006FDB42A57EA2615D212E19C89D10090653A11016992B07A59959CBA66F3ACA5D78BB86DBF97522C260960CB8C17AF2E9CB174A318F46F8A23FE904B19C9F98C4044';
wwv_flow_imp.g_varchar2_table(10) := '1090D45192A2FE8BFA22F5C988C88870A331450034E5122BF9CB55C81F8B813F2EC2D870F38C809F08A8E3A84F16CE58FC0AF5513F2BD9A258CC108060D92BAB5C293BC44AFE0C5B20C74A30022D1090EEA972257FBE69D68BA35A64D934212608405C93';
wwv_flow_imp.g_varchar2_table(11) := '9D2D8EF8E2A80F47DEAC61D3BEC36AB58A80D44F56E40D4D7DB6D5029625FA23C8D604A04295C442DF2FC435D99785314922F0971188050492A8CF8A59EB537657D6B60440375E6C99B1EC0DB1D0F788DD4164FD1881D611501FDD3273C9CBD4975BCF8F';
wwv_flow_imp.g_varchar2_table(12) := '7EAA2D09E0E3AB172554B92A568969FF1DD1878835600482474055315BF4E595D4A7836F2572356D490069DDF2FE224CBE5904FE3202F180C0ADE9DD7A2CB3D2107F65D98E00B6CC58FA8C98F6CFF4D7002EC708C40602D23DD4B7EDA6ABAD08409C2F3D';
wwv_flow_imp.g_varchar2_table(13) := '2816FE7E6C3790581F46201C0850DFA63E1E8EB6C2D5866D0860CB5D8B2788F3A5FF172EC3B81D46C08E08883EFE5F5B672EB1CD6DEBB620005A255565D0A53E5BE863C78EC33AC50D022EB78A65D4E723655120EDDA62C055BB2A9F04A47EE00F23E000';
wwv_flow_imp.g_varchar2_table(14) := '04C41A57FFA63E1F7D63A34E005BEE5E7C853837FA61F4A1600D1801EB10A03EBFF59BCBBE669DC4D625459D0014094F0BD55C22F097117012022EB7DB1DF53B05A34A008533965E29D17BD99CE476B69511684680FA7EB817049B9BF67B13550200D4E7';
wwv_flow_imp.g_varchar2_table(15) := 'FCD6940B3202718880A26A33E0A859163502D83C73F1EDC2EA2B45E02F23E06404AE2A9CB9F88668011035029054E9C16819CD7219015B21A04A3F89963E512180CF662DEE250CA657748B0D7F1901C7233079F3F417FB848A4230F5A342000D8A344728';
wwv_flow_imp.g_varchar2_table(16) := '2B89C05F4680110024B8E47B11858FE50420AE7FD2C0BF2F0AB6B24846C0B608884131BB796C58AAA3E504B0F9EEC56385B1740A60A9A12C8C11B039027D686C58ADA3E504E0925CB4FA6FB59D2C8F11B03D029224077D352058E32C270031CDB1DCC860';
wwv_flow_imp.g_varchar2_table(17) := 'C1E17A8C80C508583E362C2580CF662CE92E001D2A027F190146C00701716A9CBF75FA9FB27D9223BA6B29013402D7096B849DE297BF8C0023E08B80A4CAAEA9BE8991DCB794005455E27FF389A437B9ED984740817C75A04684525E0EA572C075257578';
wwv_flow_imp.g_varchar2_table(18) := 'C075B80223E024042C1E23961180BA68912CE6FE7CFEEFA4CECCB6068C8018235FA3B11270C5202B5846005BF6F5A2C19F1AA49E5C8D11700A0269DBBEEA35D02A632D23005551F8FCDF2AAFB29C98464055DC7E9F2A876AA865040055B2CCA85041E1FA';
wwv_flow_imp.g_varchar2_table(19) := '8C4054119064CBC68A6C95A112D4DE56C962398C402C23A040B9CC2AFD2D230048E86695512C87118865042448961D2CAD23003001C472A764DD2D45C0AF83653834B28400162D5A44723A8643616E83117000021DACBA14480333E278FEDB6779E94248';
wwv_flow_imp.g_varchar2_table(20) := '8208FC650418814B2390B86D5B4ECAA58B855EC2120248976557E8AA720B8C80731070B99292ACB0D6120290335D96186305602C8311B002814B8D9970E960090134A812CF00C2E5316EC711085835662C2100A5B181CFFF1DD16DD9C8702160D598B184';
wwv_flow_imp.g_varchar2_table(21) := '00DCE01940B83A06B7E30C04AC1A33961040229F0238A3D7B2956143E06263266C42444396108004991701618F8F5B5550AF34A2CE5D8FEAC63A2D509CD228CF1E5AB21671350300EAD8A31622D0200678457D35CED694E144D5591C293F817DA545D87B';
wwv_flow_imp.g_varchar2_table(22) := 'FE28F69716E3D085121C2E3B81A2F2935AA038A5511E95A1B2472B4E6A75CFD59681DAA2362D34C1F1A2044D5BB2706EC90CC0F1DE8C300074E42EAFAF1203F61C0E9695E0A018E025956704015C40595D156A1BEBA1A8AADF5A50D99A863AADEE99EA0B';
wwv_flow_imp.g_varchar2_table(23) := 'A0B6A84D6AFB44D5398D1048A6DF0D7241DB22C004605BD75C5C31454CE52FD455828ED474E43E5E79560CD84A34B81B2F5E31845C6ABB4CC82C11E442328B2A4E69329500C82504F15C1540B84160020837A2116EAFAAA1463B22EF1353F993E2684C47';
wwv_flow_imp.g_varchar2_table(24) := 'EAD644BA9213D163447F0CFFC6644CF88F9B71CD0FA7E38645B371CB730B30ED0FDFC3F4971FC2ACD58F6A81E294467937FC7CB656F6CA85376B757B0CEF076AAB3519D50DB5DAAC639F38BD205220DD5A2BC769F6458009C0BEBE313453A182A6F887CB';
wwv_flow_imp.g_varchar2_table(25) := '8FA3B8E2B43605373245449224B4EBD305974F1D83C90F4CC36DFFFB1DDC5DF0234CFEF90C0CBE67327ADD301CDD260E4287E13D9139A02B5273DA21313B55D46CFA529CD228AFC3889E5AD9DE53876B75272F9AA9B575DBEFBE8349DFBF1D83AE1F85EC';
wwv_flow_imp.g_varchar2_table(26) := '5E9D012113A64F85587320DD48478A9BB2386A6304641BEBC6AA09044A6BCBB573FAE3628A5FD7D820523CDFB48E59183DFBDF70E74BFF891B7FFB2D8C58783D7A4C1982F41E1DE03B4011CA470CF6F4BC0EC8BBE60A8CFAF654DCF4DF0B71E7B20731EA';
wwv_flow_imp.g_varchar2_table(27) := '9B5F476A874CAF9649C712718A40EB05A575155E79BC633F049800ECE7134D233A8A1EB8700CA7AA4BD1A8B8B534FDA7EFE8CB71DDA3DFC4ED8BEFC7C03BC621293B4DCFB26C9BDC2E1D83A68FD774B8F69159E8337290976C5A2F3855751E6443A5386D';
wwv_flow_imp.g_varchar2_table(28) := 'F1CAE49DA01088442539128D729BC1234097DB8AC4E21A1D45CD033F292D05C36F9F883BFE783FC63D7A273A8DEE83B01EE511DC47926574CEEF8BF18F4FD7D61686DD36018969C9466364C33171DA72ACF234C836238323B6408009C0166E685282A6CC';
wwv_flow_imp.g_varchar2_table(29) := '87CA8E8316D79A5200590CB0E1B74DC4B425DFC7E0FBAE464A374BFF3A4E57C3AF2DAD230C993305D35EFC3E86DD7C25881CF48A95F53520DBE82A829EC6DBE823C004107D1F401197F48AC51192A6CCAAE9925ADE657D70EB6F1762F09CABE14A4DB281';
wwv_flow_imp.g_varchar2_table(30) := 'A6FEA990909E8C21F3AFC16D42F71E037B1995C836BA8F80660364B391C191A821C0041035E89B045737D66A47C62A71846C4A0152D35331E5FB7762D2AF6621AD57473D39E6B6A4FBE467EFC1D5DFBD1DA9196986FEFA6CA0BA91EF103540B9442452D9';
wwv_flow_imp.g_varchar2_table(31) := '4C009142D68F76CF8B15FEA2F2535E8B7C83260DC32D7FFA1E72AEB91C7638C747A81F4942F76BAFC02D7FFC2E064CF89AD11AAD0D14959F04DDCC642472C4720498002C87BC49204D854F8B15FEA63D88B12E61C2BD5331EAA15B9090E1594443843E35';
wwv_flow_imp.g_varchar2_table(32) := '25A528797FB7166A8E5F8890144FB364D398876FC395F7DEA0D9AAE79CAC3A07330E7A3A6FAD418009C01A9C0D298A38C72F16ABFCE6C5B0F4AC0CDCF8F47DE8356D94512E929123ABB662F5F77E8FB52FACD6C2EAEFBE80A36F6D8BA448A3EDDED34663';
wwv_flow_imp.g_varchar2_table(33) := 'EA13F7222D23DD48A39910AD8128021B2391239620C0046009CC4D4268DA7BB4E204AA1A6A9B12C46FB77E3D30F537F3913D2457EC45FEABD437A2F0D5F7410B72BA348A6F7EE53D7D37E2DB764385CDBF9D8F2E7DBA1BB2680DA4A8E224F82123031223';
wwv_flow_imp.g_varchar2_table(34) := '12C908134024D135B5AD682BFDA74077CAE9C9FD270DC5D5BFBA07499D32F4A4886F6BCF5678AD39E802899C6A4E96E9BB11DF2677CEC435CFCC46DFF1430C59F4D42291006165247224A20830014414DEA6C61531B52D12D37EF3E01F346504F21FBA15';
wwv_flow_imp.g_varchar2_table(35) := '72524253218B7E1352DABE9C9860F1A546393901E37E3C0D977D7DA4613D6144A7032AFC7F7CD9A8CC91801160020818B2C02B94549DD19EC9D76B0E9C3014A31EB849DFB5749BD4211D39BD5B9E6E74EFD7D3EB01212B951A79FF8DE83FCE3313A0271C';
wwv_flow_imp.g_varchar2_table(36) := '8F579EB55205C7CA620288B0EB69859BCE6F75313D870DC0A807A333F8751DC6FFE40ED0E5C6E4CC34ED619E41938763FC8F6ED7B3A3B21D2D66433DAEE86BC8A66721CED444FEEA8421D0A69148ABC5041041842B1B6A402BDCBA88AEFD7BE0CA47EE80';
wwv_flow_imp.g_varchar2_table(37) := '9468C9DB9E74B12DB6743BF12871B9F1CE577E80694B1FC0A81FDC8CE4AE592DCA5999200B4C263E361D9DFBE61862CFD594A1BAD1B3606A6470246C083001840D4AEF86E8C19792CA334662764E475CF5C44CC8C989461A47BC11206CAE5E340BEDBA7B';
wwv_flow_imp.g_varchar2_table(38) := 'EE7E240C6981D2BB24EF850B0126807021696A47150B5874BF3B5D5EA3643ABA5DF3F84CD03DF2B4CFA16D0412B35231E5D19990129ABAA65B51A06129306DBB16E7048B4013CAC1D6E67AAD2240CFF0D36AB69E396EF6F5DA5B78F47D7FB6F5E7AB5073';
wwv_flow_imp.g_varchar2_table(39) := 'BCD49FA2715726B57B3B8CFDE6B5865D7479905E4E6A2438246285994C006146B9BAB10E176A3D6FC2E931A42F7ADF32D26F29EEEA7A143EB71A6FCCFD2DDEFACE0BF8F0E197506BE1F579BF150DA060EDE9F2004A3715ED3B6D0C722EF33C49486B2935';
wwv_flow_imp.g_varchar2_table(40) := '02DBA65CFE0D17024C00E14252B443537FBAB75D44B56F92B8E63EF6815BB4B8BF3FDB5E780707D6EF368A9FDA7F0C6B7EF1BAB11F4B11A5A1119B9E79136F7EEB7FF0D18F5E0E58F5F10FDE0A59928C7AA7AACF1B718E8407012680F0E0A8B5424FB6D5';
wwv_flow_imp.g_varchar2_table(41) := 'BB3DEFED1B3F772A92BB646A79FEFCD09D7807D6EF6A51F47CF1299CDAB0BF45BA9D1368F06F78FA0D1CDAF485A6E6C97DC5A82E0E6C00D3D58A090B6ED6EAD30F9D0A989FA1A0340EA121C004101A7E466D455570C6F4745FDEF0FEC8BDCEF3F8AB51F0';
wwv_flow_imp.g_varchar2_table(42) := '2211A5BEED77FAD380BA48555B6591AE34F88B761C30F41A306928D2F23A18FBFE46F26E1CFB92B89B000010004944415486DC2BFA18C54FD7946A2F503112E2346295594C006142FA5C6DB9E8989EDB57472DB83EE096D37B7644F7C1BD5BD4CBE89885';
wwv_flow_imp.g_varchar2_table(43) := 'CE233D83A045011B25D0E05F2F8EFCE6C1DF77DC608C79E8D6A0B51CBDE006A32E5D15A057A719091C090901268090E06BAAACA82AE8F5DD4D7B40FFF157202DB7BDBE1BD076E2CFA67B3D20D36D401EAEFDC5BD48C84C09A89D6814D6077FB1E9C84F83';
wwv_flow_imp.g_varchar2_table(44) := '7FDC4FEE08499DF45E1DD177CCE5461BA5629195D65B8C048E048D801C744DAE682050565FE939FA8B35ABC1DF9860E4051AA17B05E801999B9F5B806B7F360BD73C772F526DFC2250B37D74E40FF7E0D7DB1F7CA7C054604BFB8D8A1BE5755514E51022';
wwv_flow_imp.g_varchar2_table(45) := '024C00210248D5E912156D29F41B7E1932FA75A66848216B4057741ED337A436ACAAAC34B8B1FE89D7611EFC7DC65C86B10F87EFF982ACCBBAA1D7E5FD0C93E894CBD889B38895E63001848836DDEF4F7F82A1373368DA383DEA882D0DFE8DBF5C85A3DB';
wwv_flow_imp.g_varchar2_table(46) := 'F719F6D2E0A769BFE40A6FF71A3C5DCC029AA5D0D516FE2FC2663042D884D743212812AB55CD97A5BAF5CD05BDED26566D09546F2B073FE9D67E444F74E9E97958A8AC9E4F0308975002134008E8D1E25F4543B5D1C215D32719F1788F583DF8753CBF76';
wwv_flow_imp.g_varchar2_table(47) := '9707637A64987CA0E7F1367004980002C7CCA8514E47A0E62B7F29E929E832BEBF9117EF11DF697FDFB18331FE67DF40B8A7FDBE38769D381049CD7F3D460F5B559A08D8B76C2CEE5BAD33134008886B04D05CBFF798C1CDB1F8DED0919F16FC7CCFF9C7';
wwv_flow_imp.g_varchar2_table(48) := 'FE287C0B7E9742B08FE992A0F914EC52F538BF25024C002D31F12B455115AFFFF0EB913FC0AF7AB15C8806BFEF91BF8F58ED8FC482DFC570EA3166A0915DD558EBB9046BA472C45F049800FC45CAA79CF9D5DEB22CA3E3C89677F0F95489E95DBB0C7E02';
wwv_flow_imp.g_varchar2_table(49) := 'B1E3B09E9004E614A7D704D40812D0E2FC1330024C000143D654A1DAD4E9F2AEE807574AFCBEE9C74E839FD0A7BB22F32EF7DC1A6D2663CA8FD5100DBD99008244DD4C00E6296990CDD9B69ADD06BF0E941973B32FF47CDEFA870013807F387995A2F3FF';
wwv_flow_imp.g_varchar2_table(50) := 'BA46CF63BF9DE374FA6FD7C14FCE30634E8F092B6AF3E518CAE4E037024C007E43E52958637A334D425262D00FFEC0C61F3B0F7E828D9E9C74995EB05AEBAEA3640E0122C004102060549C6E43A52D854EBDBAD126AE82DD07BF0E76879C4E7A1475A617';
wwv_flow_imp.g_varchar2_table(51) := 'B1188931148996AA4C0041205FA7785EDC41AFFB0EA209DB568995C14F00B6CFF510809994298F837F083001F8879357297367CBEC16DC73FF5E0D4661A7F2C859947CB807C5FFDA81B22F8F6B1A280D8DD8F82BEF077BACBAC34F5320C09F8CAE1EECEB';
wwv_flow_imp.g_varchar2_table(52) := '4DA41C60338E2ECE041084FBEB4DD3CD8C1823800B62B0BF3DFF77F8DB837FC4DADFBD85757F7C1BFFF8E952BC7BFF8B58F7E4EB38FAD93E0311ED651E3F0DED651E4663118864E49808C0E49308888ADB26990082702DBD9042AF96D62D5B8FDA7E7BF4';
wwv_flow_imp.g_varchar2_table(53) := '9F9FE39F62B0579C6DF937E0E78A4FA164D721C3063AF2D31D7E46820D23E95DDB195A997D6224C648249A6A32010488BEEFE5A6D4AE8111004DBDE94F3F02141B72F18A83A7B1FECF7FF76A27BB4B7B50F04A143B79C3FA639CC547FEBA7395206C8478';
wwv_flow_imp.g_varchar2_table(54) := 'BFBFE63725D183417E57E48206024C000614FE457CDF45979096E457C5E27FECC0AA19CF69536FFAD38F353F781935C7ACFBE79F4F7FF396A167A76E9D3069F68D183BFB3A2D50BCA348D30BD4965BF79C7D4DF1797CFCE032AC9AF7BC860D6174EC9D9D';
wwv_flow_imp.g_varchar2_table(55) := 'BA2A17DDFA62AFA8CA45CB73664B0498005A6272D114B74F2753954BDF8042FFECF3E9E2BFA3AED673ADFAF8A162EC58FAE14565852BB374F731949678FEA874F075F94835FD5F01C5294D9777E6F00954159DD37723BADDB1EC239C385262C8208CD6FD';
wwv_flow_imp.g_varchar2_table(56) := 'F96DD49DF1FCBB9291E91351DDDED8FBFAC6A738EFB6820013402BA05C2CA9C551C60F02283F7A06AD4D514BF61FBD98A8B0E5D597795E5A92D5B91D524C835F17422490D9C9733A536DD1DF911DDB7B4457C1D81256E547CF1AFB6D457CC9B7856FDAAA';
wwv_flow_imp.g_varchar2_table(57) := '68A3F468ABC20410A0079A5F4C6BD452DD7E4C3BBD0F54465DAB22FEBEA443923CD6C9492E6BD4F388F496A7F881AB1FE4EBDD28EFF922C004E08BC825F625C91B32DFA3506BD5B37A758624B5ECE9B9033C7F7ED95ABD70A5A599162ACBCF5C40EDE996';
wwv_flow_imp.g_varchar2_table(58) := 'D3EB1A914679BACCACDE9DF56844B7B9FD5B622049123205669712EC4BBEB28F6F2E559FF301EFDECC885C1201974F27F3ED84AD359092938D89F36E42724AB291DDBD6F1E86CDFB37633F92918C3E9DD1D174CBF217EF158206BC2E93E294A6EFD34B3E';
wwv_flow_imp.g_varchar2_table(59) := '12DBA5C18ACFF0F95F474EEF5C43146134E95BB720A56B9691D656C4177B2680B6906A3B9D09A06D6C5ACD912079A52BFE9C02881A79370FC79D050FE3D6E7FF03DF58FA9FB8FA37F72235D7731D5B1489E83725CB33A0CF9E3C8B757FF92736FFE53D6C';
wwv_flow_imp.g_varchar2_table(60) := '7EF93D2D7E4EA4E90A8CFCD6F57A34E2DBD4BC0E98F2FC1CDCB9E4410D1BC2A8C7D4A17EC9F5C55E163307BF2ADAA4901DD4600208D00BBE9DCCBCC0E64F5319BD3B21A943BA3F45C35666FD93AF7BDDE4A3375C76BA146567BC2F454EFAF6AD48EE9CA9';
wwv_flow_imp.g_varchar2_table(61) := '17B16C9BDC3103844D2002EBCB3D8B9B544FF221674AE370710498002E8E4FABB909B26781ACEAD8F956CBD821516970E3D3275678DDDEDB63683FB4CF6D797E9FD1311B373D330F79D7FB77F4B5837D9526ECCD3EB1836EB1A2031340109E4A72795EFF';
wwv_flow_imp.g_varchar2_table(62) := '555E6CCDF5F240D5A4C1BFFEE99528DABEDFA8DA7BD4204C7CEC2E4C7D61216EFCE51C4C5C780BAE7EE00E6DEA7DEB92FB917D598E5136162215C59E4B85C9269FC482EE76D1910920084F24CA0946ADB2639E4E68244639A2343462DD13055EFFD54783';
wwv_flow_imp.g_varchar2_table(63) := '7FFC2377424E6C9ABDB41B9C8B9E5387A1FB94C1014FBDA36C9E21FE429107FB449787948D02368ED845352680203C916CEA6CE78E9C08A285C85551EA68F0AF40C9EEC386107AAA8F06BFBFF70318156D1E3977D4837DB289946DAEB6ADD4630208C21D';
wwv_flow_imp.g_varchar2_table(64) := 'E619C08573A5A04117443361AF427AAC7DFCB516839FFEB423DE067F63790DCA2F941B18F20CC08022A0081340407035154E4DF05CCFA7F7D257FA71DB6A53CDC8FE7EB572234E7C556408A123BF36F8E5F8737395CF835469669F180870E45208C45FCF';
wwv_flow_imp.g_varchar2_table(65) := 'B894C561C84F105701125DA6758043A7C3D06AE84D94169D321A19387918E8797E290E073F195976C483392DCAC6D24D40A4BF5D021340909E484B48316A1E2BDC67C4A3191939FF3AF4183500C36E9B80D13FB8259AAA445CB619F3B4448F2F222E38CE';
wwv_flow_imp.g_varchar2_table(66) := '04300104E9D07453A72BDAB11F8D559E477D836C32E46A295DB230F9B1BB3164CE9490DBB273036E81F5D19D070C15D34D646C2472C42F049800FC82A96521F30CC0ED76E3EC56CFAA7BCBD29C124E044E171E826A7A5AD04CC6E194E384B6980082F432';
wwv_flow_imp.g_varchar2_table(67) := 'AD03A4242419B58B37EE35E21C892C0245EBBF3404A426262396CEFF0DC56D12610208C111D9C91946EDC35BBF84BBD6F37761460647C28A8052D78023DBBF32DACC4EF2F8C048E488DF083001F80D55CB82D949E9D09F3F696C74E3CCD643E04F641138';
wwv_flow_imp.g_varchar2_table(68) := 'B5E920E8944B93220159E4036D877F824180092018D49AEBD0D4332331B5790FD8FBCE5623CE91C820B0E7EF9B8C863313D3C4F45FB08091C291401160020814319FF2ED923D8FCE1EDF731817F6785E70E95394774344A07467314EEF3F66B4D2CE740A';
wwv_flow_imp.g_varchar2_table(69) := '6624DA386247D5980042F44A869801D08D287A33BB0BD6E951DE8619819DAFAE315A4C4E4844BAC01EFC090901268090E06BAADC31C5F3FAAAA25D078CFFDA6BCAE5DF7020706177094ABEF2BC45B9638AE70DC6E168DFA96D300184C1F37435802E0BEA';
wwv_flow_imp.g_varchar2_table(70) := '4DED2CF8448F467C4BABE2F4DEFF531BF7A3F8DD9D38B06A73C4C2C155859A0C924532957ACFBF2447DAD01DCB3D477FC29A17FFC28338134078704447D32CA0788798057CE57954354C22BC9A39BDE900363DFB160AEE7E16EF3CFA123E7C7605D6FDE1';
wwv_flow_imp.g_varchar2_table(71) := '6F287CE5FD8885CDAFBCA7C9205924B3E0AE67B0F9D7AB7166F3412FDDC2BD43645322D657F4763BA6C6DED15FD7DD6E5B26803079A45D4A26CC0F08ED28581BA696BD9B39FBD911BCF3DD3FE183670A7068E31EEFCC28EC1DDCB01BEFFF6A39FE75FF8B';
wwv_flow_imp.g_varchar2_table(72) := '38F7B9678A1E4E55B6BFFAB1D11C61CC8B7F061C214798004286B0A9010912BAA57568DA11BFC7B61FC0C90DE17B48A8A1BC061B9E7C1DEF3DF97F5E7FF3254421232B035DF2729037A037FA0C1980BE110AD436C9E8DCA31BD2854C92AD87F3C5A7F0EE';
wwv_flow_imp.g_varchar2_table(73) := 'A257B0F1E937D05056A32787BC3DFEC95E9CFCD2432C39E91D05D252C8ED72034D08300134E110965F5A95CE48F2DC17F0C9EF56A3FE7C65C86D9FDB7E147FFBCEEF71E4330FA124A724A3DF150331E68689187EED380CCC1F825E43FB23F7B25EE81EA1';
wwv_flow_imp.g_varchar2_table(74) := '406D938C4163AFC0082173CC7513341D9252920C1B0F6FDD8BB7BFF7FBB0CC06EACE5662DD0B7F35DACE4C4A83F9190C2383234123C004103474AD57EC6A9A0534D6D463FD736F793DB8D27AADB6538FBDBF0BEF3EF10AEA2A9B8EAA922C63E0C8C11873';
wwv_flow_imp.g_varchar2_table(75) := 'D324E40CEA89E4F4E83D0A9B9C99AAE9907FD3644D27DD8ADA8A1AD06CE0D807BBF5A480B7AAA2E0D36757C25DD7A0D59524095DD2DA6BF158FBB1B3BE4C0061F60EBD2EACABA9A39E10D3D7032B3707258506D027A62360627222465C33165DFA740FAA';
wwv_flow_imp.g_varchar2_table(76) := 'BD4856229D465C330E09899E17A57CF2BFAB717CED974189DD57B011A7F67B6EAAA2C14FD806D518576A1301268036A1093EA3BDB822906E3A15D852F011CAF606765580060E0D205D0B9A660FBF2A1F69D9E97A92EDB6E9ED333482225D75E5D63CFF66';
wwv_flow_imp.g_varchar2_table(77) := 'C02450BAA704DB56AED19B4086C0B2BDE98E4B2383232123C004103284AD37909BDE0974BD5ACB55557CFCEBD7D158EDDF4B434E6DD80F1A385A5DF143036AD8E431A029B7D8B5F537392315A42BCD56344585ED640BD9A4ED5FE2A7B1B256C30AA21E15';
wwv_flow_imp.g_varchar2_table(78) := '250CBB0B2C29CE21FC083001841F53AD457A50A87B86E71F78AACF5760CD9305977C83300D948F9E7B1DFA00A08144032A1606BF66B8F8215D874D1E0DD25DEC6AB6904D670A0F69BB6DFD28758DF868D16BA82DAB328AE40A0C094B2321C62276579709';
wwv_flow_imp.g_varchar2_table(79) := '20821EA237D59AD7034EEF2DC6DA279683FEB8A335B1344068A0A8CD473F1A4034906840B556DECE692959E9622630DA5813209B3E78B600741F436B7AD3E05F2B06FFD903C78DEC6EE2929FD71B988D1C8E840B0126807021D9463BB41ED02E25D3C83D';
wwv_flow_imp.g_varchar2_table(80) := 'F1C5517CFAD4EB8204DC461A456860D000A18142FBB49846839F0612EDC76220DD875D652201B782F77FF95A0B1220425CBB68394E7CE979A57907B18ED22E995FF61169BF3301441A61D13EDD20949EE8B95C776CE7216C786695410234F86960A86280';
wwv_flow_imp.g_varchar2_table(81) := '88E2DA5193060E0D20DA8FE5909A9D01B2C5D57C75406D6C22017AB497EC521ADC58F7C40A31F83D37FBD0022AADFA533E87C822C00410597C8DD67333BA203921D1D82FDAB60F9B9E7D537B9928DDDD4703833269A0D080A18143FBF110C896A1934641';
wwv_flow_imp.g_varchar2_table(82) := '4E68FA5F42B2F59DC75FC6D96D47B0E1976F78FD93514A421272D33BC783D988052398002CF2922C49C8CBE8EA450247B67E85F79E7ED5D08006080D141A3046629C44D2DB6762E8440F099059EF3DF57F28DABE9FA25A2082CCCBEC0AC24A4BE09F8823';
wwv_flow_imp.g_varchar2_table(83) := 'C0041071883D02E89256AFCC6EA037D97A529B62DAE0170384064A534AFCFD6674CC6A220157D34CC06C211DF9AABDF39500000BBF49444154091B97C45DD28C4BA4E38C76A411F6699F2E69F51447393ACF3567D1ADAFE5672F40555473725CC5C9B60A';
wwv_flow_imp.g_varchar2_table(84) := 'B25155BCEC222C7A657513477EEE8E5EC058B0C3885B00B2AF0809743AD005D9C9E946160D8E43BBF761E7C785A82DAF36D2E3255223AEED7FFE61210E0A1BC956DD2E7A994A9E581F214CF4B478D8C68A0D4C0051F4544E7A27744DEF0049920C2D2A2E';
wwv_flow_imp.g_varchar2_table(85) := '5460DB871B71EC8BC36236E07DA4340AC55044551414EF398C6D1F6D42557985A1B924499AED39E91D8D348E588F001380F5987B49A47BDC7B8BE92F2D80E919AA380D38F2E5416CFFA01055A59E41A3E7C7CA9674FFECFD4D38BAF720206CD2F5265BFB';
wwv_flow_imp.g_varchar2_table(86) := '64E5806CD7D3781B1D049800A283BB97D46457127A8B0161BE61880A54575462FB479BF1D5A65DA83C1F3B445079AE4CD39974AFA9F43E9D699F92A9D99AE4F25C12255B394407012680E8E0DE42AA040974C3504F9FD900153C53720A9F7FBC19BB3EDE';
wwv_flow_imp.g_varchar2_table(87) := '82B2E3E7003BAE130A9D2E949CC5CE8FB6E0F3355B403A93EE7AA0A33E2DF4754D13A73CC2563D3D1EB7B164131380CDBC45CF0FF4C9EAAE9D1FBB646FF7949D2FC3AE8DDBB1EDBD0D387DF83894E63B07A36902E970FAD0714DA7DD9B3E47796999973A';
wwv_flow_imp.g_varchar2_table(88) := '2E59D66C219BF8BE7E2F686CB1E3DDC36CA1122B4108D0F971BFEC1EDA5B70E8FE014AD3034DABF77DF6050AFFB90E2562B190A6DC7A9E555B9249B249877DDBBF00E964964D3A77496B0FB2816C017F6C890013802DDDD2A4942C56CAE9A1987EED7291';
wwv_flow_imp.g_varchar2_table(89) := '2356CB691ADD94D3F4DB58DF80C362B190A6DC1BFEFA31F6AEDF8153074AC46544CFE3B44D2543FC15D3FB9AB24AD1F631ECDDB003248B64926CD2C1DC3AE948BA92CEA43BD960CEE7B8BD106002B0973F5AD586D607E87A394DA3F332BB20CB74FF805E';
wwv_flow_imp.g_varchar2_table(90) := '416974E3ECC933D8BFE34B6C7D7F2336BDBD16FB0B77E3C4BE229C397202A5C7CEA0FCF4057155A112F595B5686C7ED71E3D794C714AAB2AADD4CA50D9D3A20ED5DD27DAD8F4F61A6CFB6093687B2FCE9E380392A5CBD5B7A413E9463A92AEA4B39EE7A4';
wwv_flow_imp.g_varchar2_table(91) := '6DACD9CA0410631E4B4F4C45F7F44E18D8BE27BA8959416BB715934974643E557C120777EDC357DBF660CFE61DD8B96EABB8AAB00985EF7E8A4D7F5F8B4F577D80F56F7EA0C5296DBBB8564F65A8EC3E5187EA9E166D3436B4FE0F40698929201D4817D2';
wwv_flow_imp.g_varchar2_table(92) := '897423D91C6207012680D8F19597A634B5A6E7E5E9FEF901EDF3D03DA313E8C89BE84AF02A17CE1D6A9B64D05B7A4826DDD24C3A902EE194C36D59870013807558474C924B9241FF9597236604FDB27341E7DF34483BA7B513A4908E948424C8623DC15F';
wwv_flow_imp.g_varchar2_table(93) := '05A82CD5A15B953BA5B603B5456D52DB242333290D2E21D3DFF6B89C7D116002B0AF6F82D68C5E9F4D83B4634A36E876E3DE5939A069FA651D7A818EDC7DDBE5A24F760EE89E030A14A734CAA3325496EA50DD4EA9D9C814039EDA0C5A2187548C45332D';
wwv_flow_imp.g_varchar2_table(94) := '2180462479BFFF2A16918A139DE9C89D242720D99504BAE78002C5298DF2E2C4CC9837231189F55618610901B8A0320158E14D961137083448D68C194B08C02A63E2C6FB6C88E311B0EAA069090158658CE37B0D03103504C22D584E486CFDDA6B980559';
wwv_flow_imp.g_varchar2_table(95) := '4200561913666CB83946206A0824C6D32980ABB2B1266A48B26046200611502ADCF1B308989498EEFD50780C3A84556604AC44C0AA3163C929C0909577119BF9F7CF9856A2CCB218813020108126EA9AC74C049AF66ED2120220912A7092B61C180146E0';
wwv_flow_imp.g_varchar2_table(96) := 'E2085839562C2300613213800081BF8CC0A510908023B0E8632101A84C00163995C5C43A02D68D15CB084086BC37D6DDC2FA3302BE0844625F821C87330055F91CFC610418814B2360E158912FAD4D784A48B28B09203C50722B718E809563C532021835';
wwv_flow_imp.g_varchar2_table(97) := 'E8E83EE1374504FE32028C40DB0854378F95B64B8431C7320290162D5220C1F35FD06134829B6204A281402464AAC02E6DAC44A2F156DAB48C0034D9AACAA7011A10FCC308B481802A593A462C250015D29A36CCE664468011200424358E09C0A5FC5DD8';
wwv_flow_imp.g_varchar2_table(98) := 'A88AC05F4680116889809A08FCAD6572E4522C9D018C7B75C13161CA4E11F8CB08C4340211527EE7C88279C723D476ABCD5A4A00A48104E95FB4E5C0083002DE0844636C584E00809B09C0DBEFBCC7086808B855F76A2D62E18FE504206529EBC522C051';
wwv_flow_imp.g_varchar2_table(99) := '0B6D64518C400C202015D59C2AD96AB5A29613C0E83F2F6C1046BE24027F1981984420124AAB50974D59B3C892F7009AF5B79C004878A2AC2E135B311110BFFC650418814697BB71693460880A018C7C6DFE51A8782F1A06B34C46C06E0888A3FF3F46AF';
wwv_flow_imp.g_varchar2_table(100) := '5C58140DBDA2420064A82429CFD0960323E0740464A8CF470B83A811C09882056BC42CE0DD6819CE7219816010087B1D15EF6A6321EC0DFBD760D40880D453811FD3960323E05404E404F9E168DA1E550218BB62DE0E71FEF3D76802C0B219816821407D';
wwv_flow_imp.g_varchar2_table(101) := '7FF4AB7376454B3EC98D2A019002096EFC50CC042A29CE8111701002552E35E1A168DB1B750218B572FE0159C263D10682E533029742209CF9E2A0F7C3D12BEE3B18CE3683692BEA04404A1F6ECCFC9D00E4538A7360041C80C0FAB105F3FE68073B6D41';
wwv_flow_imp.g_varchar2_table(102) := '0077ADBCCB9DE056E70812E053013BF40AD621920854C9AAEBDE480A08A46D5B100029DC7C2A709F882B22F09711884704147190FB773B4CFD75706D4300A4D098E5F35641C5CF28CE8111B01302E1D04592F09098FABF158EB6C2D586AD08808CCA5F31';
wwv_flow_imp.g_varchar2_table(103) := 'EF1948A0670568970323101F0848D27F8B035CD4EEF86B0B44DB1100292A67362E04A4F7C11F46203E10786BCCA0A21FD8D1145B12003D322C5735DC0E486F823F8C400C234037FBC8558DF758F9AAEF40E0B225019001A3DF5E583DA660CE3700E969F0';
wwv_flow_imp.g_varchar2_table(104) := '8711882202C18B967E955F306F1AF5E5E0DB886C4DDB1200992D4152F30BE63EA6AAA0CB266E4AE3C008C40002F550718FE8BB8F501FB6B3BEB626001DB8B12BE6FD458634412C0E7EA5A7F19611B025022A76894B7D13C462F6ABB6D4CF4729D967DFB6';
wwv_flow_imp.g_varchar2_table(105) := 'BBA30BE66EAE4A96870B709F104A3688C05F46C04E08509F7C4ACE6E1C252EF559FE6EBF60818819022003A7BC34A75680BB4855DD574095DEA6340E8C402411F0A36D551C94DE70B9D5C1F905F31EA7056C3FEAD8A6484C11808EDAD815DFDA97BF62EE';
wwv_flow_imp.g_varchar2_table(106) := 'AD92A24E1469EB45E02F23100504A43512543AE24F1FB572FE81282810B2C8982400DDEA31AFCF5F2F5877A2A22AE3050BBF22D2EB44E02F23104904EAC45AD4AB74F0C92F983B654CC1FCED911416E9B6639A007470C6AD58B0499C1ACC96A5C61E80FA';
wwv_flow_imp.g_varchar2_table(107) := 'B008517FCC52D78DB77183C02155927E4C7D2C7FF9BC7BE8E0130F96C50501E88E18BD7CE1D9FC82F9FF25427F55966E808ADF8BBC6211F8CB08048C80A820FA8EFA074952AECB2F98D76FECF2B9BFA63E26D2E3E61B570460F6CAD8D7E6BE9BBF62DE77';
wwv_flow_imp.g_varchar2_table(108) := '85E37A8A559AE16256F09898BA7D22CA5489C05F46A03504AA9AFBC8E390E511D477C4C1E43B63962F88DBDBD2E39600CCDE1DBB62DE0EE1C8A7F397CFBB4A38354392A57E50953B21A94FD2AD9A50D5CF45794BFF9555C8E36FF410384E3ED77C2FFA00';
wwv_flow_imp.g_varchar2_table(109) := '445F9055577FEA1BCD7DE4A9FCD7E6509F889E861649760401F86239E6B5B987F2572C78337FF9FC9F8F2D987F7BFE8AF9C4F6B9A20348EDCBAA52126BE5F670CB3980D4333931B16FA22C0F54DCD210455286B9556994222BA339D80F03CD37C247E42B';
wwv_flow_imp.g_varchar2_table(110) := 'F219F98E7C48BE249F926FC9C722E492CF35DF8B3E902FFAC2681BBC9E0B51F83892002E86F38077BE5F3762F59C0BF92BE79CCC2F985B3CEC95D98747BC3667FFB89573BF18B77CC1CEF12BE67E36EEB505DB38D80F03CD37C247E42BF219F98E7C48BE';
wwv_flow_imp.g_varchar2_table(111) := '249F926F2FE67B739E53E24C004EF134DBC908B4820013402BA0701223E0140498009CE269B6931168050126805640E1246723E024EB99009CE46DB69511F0418009C00710DE65049C8400138093BCCDB632023E083001F800C2BBCE46C069D6330138CD';
wwv_flow_imp.g_varchar2_table(112) := 'E36C2F2360428009C00406471901A721C004E0348FB3BD8C800901260013181C7536024EB49E09C0895E679B1981660498009A81E00D23E0440498009CE875B6991168468009A01908DE381B01A75ACF04E054CFB3DD8C804080094080C05F46C0A90830';
wwv_flow_imp.g_varchar2_table(113) := '0138D5F36C3723201060021020F0D7D90838D97A2600277B9F6D773C024C008EEF020C809311600270B2F7D976C723C004E0F82EE06C009C6EFDFF070000FFFF76DDE97200000006494441540300DC4CC0F1A2200C2F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41825609874042701964)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000002D5494441547801EC545D48145114FE666677D4DD36D7C9B542A19468950A1342FA5922D4A8DE7AD088B247DF2AE8A5C782F021B4E75EC25E7C8A8802DF8AA856';
wwv_flow_imp.g_varchar2_table(2) := '322B1334D272FDA974CB75C755DBFFDF69EF8DBB3A32EB8C4F42ECC0B9E7DC73BEEFCC37E73297FF70B147D94AE3B1C54F4140610285096C7A02D1541CD11D1C84860A589BAB616DAAA67144E2406AD8E46358800205113B07E78D169CE86E47FDB53370';
wwv_flow_imp.g_varchar2_table(3) := '5E76C1D9EEA2B1EB5E3BF65F6F42A41459A46258862101E4E5D19D261CED6C4379C3DE5C73AF7B1CC458C271A4268BB9808843302CC29080A098C2B15BAD5012698466FCEC7DA83C59478D2552E13878138FE3B7DB103427597A43AF2B20964E605F6B23';
wwv_flow_imp.g_varchar2_table(4) := '841211F14018216F40B3613A92C0C8831750320A048B4839F12C5713BC26A92B206C4EA0AAE520A56CAB716097CB49E3B54B2691C297DED7A8EF384D85921AE1044DFA53D01550565B45FAE5B54C328DB15E370E5C390593B56815C7712873EE5EDDE789';
wwv_flow_imp.g_varchar2_table(5) := '740548B59594EA1B9AA67EED3272FF3906BB9EA1EE928B8E9DD5189671595ECBEB0A102DFFBE2A26FF51F1C999479782B055D87363670086158B4596CAEB750584E7972979CFD9C3D4B365F4E14B34DE3C8F431DCD2C95F30CCBB8B98246A02B6061684A';
wwv_flow_imp.g_varchar2_table(6) := '8306345C3D07DE2C68D6685251E0FB384DC38D165D01E6401AF3EF3CAA1EF2A7194C3E79AF3279F8BB0AF36B60024541FD1B515780C89B30DEF30AE1D900C8B90F77F5C1FF761262445199BFDF83E1EE3E90CB28F443C6B79E37205C952A8D8DAE00C2D9';
wwv_flow_imp.g_varchar2_table(7) := '9E2946FF9D4718E87C0CC921C15A6623699559251BA4720983779F52EC7614ABEAF936860470E0E0485B91F486B038E7A7B7DDFA86E40694E71690F8B9820AC5966570EB219A7B43020893CBB6B40B16C43C32A6DCA358189FC3CAEF0096BD327C63B398';
wwv_flow_imp.g_varchar2_table(8) := '767F46DCB30882E1B258C231628605B06625A622D8150BF8F928925F17919A5882E08BA1542901A9319C51BF6901461B1BC515041426F0FF4F40EF6FF80B0000FFFFC975BACD00000006494441540300605554102453F8020000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41825608906703701952)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECBD079C1CC599FFFDCC6C98CD41AB9C500025248412920021040A0473C63881C1D8D8863BDFFDCFC745DF19A703639F7D878D3FEFDDD9E788';
wwv_flow_imp.g_varchar2_table(2) := '3136F611CC1913949184848422CA4239EDAEB439E7DDB77F2D09AD5633D5DD13BBBB7E7C186D4FD75355CFF37DAAA69EAAAEEE0EBE7BEFCF7BF82103B601B601B601B601B601BDDA4050F81F099000099000099080660444180068E7721A4C0224400224';
wwv_flow_imp.g_varchar2_table(3) := '40020C00D80648800448800448403B0230982B00A0C00F099000099000096846800180660EA7B9244002244002BA1338673F0380731CF82F09900009900009684580018056EEA6B1244002244002BA13B8603F03800B24F897044880044880043422C000';
wwv_flow_imp.g_varchar2_table(4) := '402367D354122001122001DD095CB49F01C045163C22011220011220016D083000D0C6D534940448800448407702BDED6700D09B068F498004488004484013020C00347134CD240112200112D09DC0A5F63300B89407BF91000990000990801604180068';
wwv_flow_imp.g_varchar2_table(5) := 'E1661A490224400224A03B81BEF63300E84B84DF498004488004484003020C003470324D240112200112D09DC0E5F63300B89C09CF9000099000099080EF093000F0BD8B6920099000099080EE04C2D9CF00201C159E23011220011220019F136000E073';
wwv_flow_imp.g_varchar2_table(6) := '07D33C122001122001DD0984B79F0140782E3C4B02244002244002BE26C000C0D7EEA571244002244002BA1388643F03804864789E044880044880047C4C8001808F9D4BD3488004488004742710D97E060091D93085044880044880047C4B8001806F5D';
wwv_flow_imp.g_varchar2_table(7) := '4BC34880044880047427A0B29F01808A0ED348800448800448C0A7041800F8D4B1348B04488004484077026AFB1900A8F93095044880044880047C498001802FDD4AA3488004488004742760653F03002B424C27011220011220011F126000E043A7D224';
wwv_flow_imp.g_varchar2_table(8) := '122001122001DD0958DBCF00C09A112548800448800448C077041800F8CEA53488044880044840770276EC67006087126548800448800448C067041800F8CCA134870448800448407702F6EC6700608F13A548800448800448C057041800F8CA9D348604';
wwv_flow_imp.g_varchar2_table(9) := '4880044840770276ED6700609714E548800448800448C047041800F8C89934850448800448407702F6ED6700609F152549800448800448C037041800F8C695348404488004484077024EEC6700E084166549800448800448C027041800F8C49134830448';
wwv_flow_imp.g_varchar2_table(10) := '800448407702CEEC6700E08C17A549800448800448C017041800F8C28D348204488004484077024EED6700E09418E549800448800448C007041800F8C08934810448800448407702CEED6700E09C19739000099000099080E7093000F0BC0B6900099000';
wwv_flow_imp.g_varchar2_table(11) := '099080EE04A2B19F014034D49887044880044880043C4E800180C71D48F54980044880047427109DFD0C00A2E3C65C24400224400224E069020C003CED3E2A4F0224400224A03B8168ED6700102D39E623011220011220010F136000E061E75175122001';
wwv_flow_imp.g_varchar2_table(12) := '122001DD09446F3F0380E8D93127099000099000097896000300CFBA8E8A930009900009E84E2016FB1900C4428F7949800448800448C0A304180078D471549B0448800448407702B1D9CF0020367ECC4D022440022440029E24C000C0936EA3D2244002';
wwv_flow_imp.g_varchar2_table(13) := '244002BA1388D57E0600B112647E12200112200112F0200106001E741A55260112200112D09D40ECF63300889D214B2001122001122001CF116000E039975161122001122001DD09C4C37E0600F1A0C83248800448800448C06304180078CC6154970448';
wwv_flow_imp.g_varchar2_table(14) := '800448407702F1B19F01407C38B21412200112200112F0140106009E721795250112200112D09D40BCEC6700102F922C87044880044880043C44800180879C45554980044880047427103FFB1900C48F254B2201122001122001CF106000E01957515112';
wwv_flow_imp.g_varchar2_table(15) := '2001122001DD09C4D37E0600F1A4C9B248800448800448C02304180078C45154930448800448407702F1B59F01407C79B23412200112200112F0040106009E701395240112200112D09D40BCED6700106FA22C8F044880044880043C40800180079C4415';
wwv_flow_imp.g_varchar2_table(16) := '4980044880047427107FFB1900C49F294B2401122001122001D7136000E07A175141122001122001DD0924C27E060089A0CA3249800448800448C0E5041800B8DC41548F044880044840770289B19F014062B8B254122001122001127035010600AE760F';
wwv_flow_imp.g_varchar2_table(17) := '95230112200112D09D40A2EC67009028B22C97044880044880045C4C8001808B9D43D548800448800474279038FB1900248E2D4B2601122001122001D7126000E05AD75031122001122001DD0924D27E060089A4CBB249800448800448C0A5041800B8D4';
wwv_flow_imp.g_varchar2_table(18) := '31548B044880044840770289B59F014062F9B274122001122001127025010600AE740B95220112200112D09D40A2ED67009068C22C9F044880044880045C488001800B9D429548800448800474279078FB1900249E316B2001122001122001D7116000E0';
wwv_flow_imp.g_varchar2_table(19) := '3A975021122001122001DD0924C37E0600C9A0CC3A48800448800448C065041800B8CC2154870448800448407702C9B19F01407238B316122001122001127015010600AE720795210112200112D09D40B2EC6700902CD2AC87044880044880045C448001';
wwv_flow_imp.g_varchar2_table(20) := '808B9C41554880044880047427903CFB1900248F356B2201122001122001D7106000E01A575011122001122001DD0924D37E0600C9A4CDBA48800448800448C025041800B8C41154830448800448407702C9B59F01407279B33612200112200112700501';
wwv_flow_imp.g_varchar2_table(21) := '0600AE700395200112200112D09D40B2ED6700906CE2AC8F044880044880045C408001800B9C40154880044880047427907CFB1900249F396B2401122001122081941360009072175001122001122001DD09A4C27E0600A9A0CE3A4980044880044820C5';
wwv_flow_imp.g_varchar2_table(22) := '041800A4D801AC9E0448800448407702A9B19F01406AB8B35612200112200112482901060029C5CFCA4980044880047427902AFB1900A48A3CEB2501122001122081141260009042F8AC9A0448800448407702A9B39F0140EAD8B3661220011220011248';
wwv_flow_imp.g_varchar2_table(23) := '190106002943CF8A4980044880047427904AFB1900A4923EEB2601122001122081141160009022F0AC960448800448407702A9B59F01406AF9B37612200112200112480901060029C1CE4A4980044880047427906AFB1900A4DA03AC9F046220D0233DD2';
wwv_flow_imp.g_varchar2_table(24) := 'D6D52E0DEDCD52D1522B679B6BA4BCB95ACA9A2AE57463859C6C3C2B271ACEC8B1FA32395A5F2A87EB4ECBA1DA53F27ECD09D95F735C0E187FF1FD485DA92973D29045BEB2A62AB3ACCA963AA969AD97BAB646B38EE6CE56E9E8EE8C416366250112700B';
wwv_flow_imp.g_varchar2_table(25) := '0106006EF104F520010581EE9E6E69E96C3307620CF218D831981FA83E2147EBCACCC1BECA18ACAB8DC1BAB6B5C1906B3207ECA6F61669EE6895D6CE7669EBEC908EAE4EE9ECEE92EE9E1E316207E931FEE27B7B578729D364C82298C0808FB22A8DA0E2';
wwv_flow_imp.g_varchar2_table(26) := '8C11542020406070A2FE8C1CAE3D6D060E08284E190106F4A9696B90A68E16696770A0F0229348A03781D41F330048BD0FA801095C420083280660CCE4317BC70CFDFD9A9372BCBEDC98D9570906660CEC18CC2FC998C42F081C1050341A0106F439D354';
wwv_flow_imp.g_varchar2_table(27) := '2D271BCECA112338D86FAC2C60450141CA19633502B670D52089CE61552460930003009BA0284602892280257CCCA031C3C6608F4114336ECCE4317BC70C3D517527A45C6371012B0A08526A8CD508D8825503D856665C9A404080F484D4CD4249C02304';
wwv_flow_imp.g_varchar2_table(28) := 'DCA02603003778813A6845004BF998355F18F0B1848F193496DE3D37D83BF01C6CAB6B6B325731B04270212040F0D3DAD5EEA0248A920009C4830003807850641924A02080E5EF1AE3DAFC85011F4BF9B86EEEF7015F81C44CBA101020F8395657666E4E';
wwv_flow_imp.g_varchar2_table(29) := '0423B002335388FF90802F09B8C3280600EEF003B5F019016CB2AB6F6F3237E761B67BA6B9C6DC948741CF67A6C6CD1CB069686F16B002330403F50643B08C5B252C880448E003020C003E40C10312889D0076C263F3DE91BAD352DA58690EFAD830177B';
wwv_flow_imp.g_varchar2_table(30) := 'C931961010090602921E4C938CF474C90E65496171A1F9C9CDCD35CF210D32129094FF07660D463000866009A6609B72C5A80009C481805B8A6000E0164F500FCF12C0357DDC838FDBE2B0131E9BF7309B4D944181B4A0E4F42F90FC61253278FC081935';
wwv_flow_imp.g_varchar2_table(31) := '7DBC4C9C374DA6DE3C4B66DE394FE67E62A1DCF4D93BE596BFBC4796FCC3BD72C7371E94BBBEF305B9F33B9F970F7DFF11B9F33F1E963B7EF8882CFCCE67CCCF6D4F7DDE3C67A61932777EFD33B2E41FEF935BFFEA1EB30C9485325136EA405DA8137543';
wwv_flow_imp.g_varchar2_table(32) := '07E8029D12652F588229D88231588379A2EA63B924A00B010600BA789A76C69500AE516323DF898633826BFAB8071FB7C5C5B5925E856585423264D43073A09F7BFF62B9E92F3F2C8BBF76BFCCFFFABD32F7AB1F95697F7FA75CFDE81219F7F07C19FDA9';
wwv_flow_imp.g_varchar2_table(33) := '3932FCEE693278F12429B9F14A299A3652F2270C363F39A34A049FD0E002E9FDC1397C2057386D8494DC3056062D9A649681B25026CA461DA80B75A26EE8005DE63D7C974CB96D8EA92374EDA57A5C0FC118ACC11CECE103040871AD848591404209B8A7';
wwv_flow_imp.g_varchar2_table(34) := '700600EEF10535F10001DCBE860D7C78B21EFEE236BD78AB9D9E962603870E9249B3AE3167F277FDDB17E4C3BFF8922C78FA2173A01F75CF4CE937FD0A73004FCB0D4920188CB70A96E5A14ED48D2002BA0CBF6D8A4CF98B85A68ED0153A63E560CAFC99';
wwv_flow_imp.g_varchar2_table(35) := '32C8B005365916EA5000ECE103F802AB0208CA1C16417112D09A40F27F39B4C64DE3BD4A004BCEB80E7DA4BED47C104F577777DC4CC1E058945F28574E1E2FB33F345F6EFDBB4FC8F5FF748F4C3166F4987D63568EC1366E1526B820E80A9DA1FBA44716';
wwv_flow_imp.g_varchar2_table(36) := 'C8755FBA4B6EFE8BBB4DDBC64D9E20FD0A8A0436C74B8DCEEE2EC1AAC0B940A0864F238C1758969310026E2A9401809BBC415D5C47001BCF4A9B2ACD657E5C87C6E3736355129BEDFAF5EB27E3674D969BBF78B7DCFEE443B2E4C78FC875DFFAB88CFDC2';
wwv_flow_imp.g_varchar2_table(37) := '3C73F91DCBF1184863AD2BD5F961038281818B269AB6CDFCD6C764D18F1E366D9EF7D93B64C2AC29528C80209816B3AA5D465056D5522FC7EA4ACDF71860B526E642590009F8980003001F3B97A6454F003BD0F128DB930D67A5BEAD29FA82CEE7CC32AE';
wwv_flow_imp.g_varchar2_table(38) := 'E18F1C3B4A66DD394F6EFDFB4FC84D5FFFA45CFBE8ED3274C964F3DA3C06CAF3A2BEFF035B11148CB87BBA4C7DF43699FFF87DB2E46B0FC8DC8F2F143002AB5820E0B641EC0D385A5F26679AAB054F5A8CA53CE62581F8117057490C00DCE50F6A936202';
wwv_flow_imp.g_varchar2_table(39) := '756D8D72BCA1DCBC7F1F8FB28D451D73A69F5B28D7DE7C9DDCFACFF7CA0DFFFE29B9EAE1F9BE9AE1C7C20779110CE48C2A91C2692364F4FD734C46603565F6B5529C9D2F6008B9683EB895B0A6B5411008E0F20D9F36180D45E6F1330106007EF62E6DB3';
wwv_flow_imp.g_varchar2_table(40) := '4DA0B1A3C51CF8CB9AAAA4A5A3CD76BEBE8269C1A014E5E4CB84299304CBFB0B9EFA8C4C7A74B139C061E35C5F797EBF940018211898FCE53B64FE771E90799F312E13182CC1342D18E5CF558F082EDF1CAB2B335F958C972D5D5A2BBF91407208B8AD96';
wwv_flow_imp.g_varchar2_table(41) := '287B94DBCCA03E24101D010C0618F44F194BFD510FFC0191BCCC6C195A3040662C982BB3FFEA4372EDD7FE4C70DD1BBBE4A3D34CEF5C0804B03230E4C3534D9626D339334CC6601DEDC38A10089CA82F373772EA4D98D69380080300B6026D09E03A3106';
wwv_flow_imp.g_varchar2_table(42) := '032CFB470301CBD32539853265EA5499F3F01D72C30F3F2D57FEF50273893F98991E4D91CC339F1E5F000010004944415413860058E2B904E3FF6989C918ACAF9D3353C01E3E08934579AAB3BBCBDC2488BB06B0D74329CC4412881B01F715C400C07D3E';
wwv_flow_imp.g_varchar2_table(43) := 'A146092680E5FE130D67CC41008381D3EA30E80C2C2A916B664F97997F652C51FFCDADE66C3FA338C76951947748008CB1B232FEFF2D9039FF78B74CBB79B60C1E3028AABD02AD9DEDE65E0FDCE5C1FD010E1D41715F106000E00B37D2083B04F0A0186C';
wwv_flow_imp.g_varchar2_table(44) := '06C3723F1E2263274F6F99F4B434B96AE6D572CBDF7D5C16FCD7E764C2979798B37D0C4ABDE5789C7802D83C88BD02577DE91699FFF48372D35F7C58465F7D95C0474E6BC75D1E580DA868A991AE9EF83DDFC1A91E94F73701375AC700C08D5EA14E7127';
wwv_flow_imp.g_varchar2_table(45) := '50D35A2FC78D6BBFB806ECB4F08C8C0C73E0BFED5B9F9519FF7497F4BFF14AC100E4B41CCA2786007C3178F124B9EE2B770B7C84200D3E73545B8F089E2160B691B6464759294C025E25C000C0AB9EA3DEB6083477B6C94963B9FF4C738D385DEEC7523F';
wwv_flow_imp.g_varchar2_table(46) := '66954B1E7F50667DF52352307188E07AB4AD8A299474020804E023F80A3EC33305E043278AE0E141E54D55669B41DB719297B2241099803B531800B8D32FD42A0E0430EBC7E0DFD4D1EAA8B4B46050860D1F662EF5CFFEC647CD81DF5101144E39010402';
wwv_flow_imp.g_varchar2_table(47) := '731FFFB8796900BE4C0B3AFBA9439B41DB411B4AB9315480041244C059AF4890122C9604E249A0B3BB4BCA9A2A05B37E3C0CC649D98559B932F38E7972FD139F3497FA39E37742CF5DB25811C0A58139785BE2CDB3A53094EB4841B41DB421B425B42947';
wwv_flow_imp.g_varchar2_table(48) := '99294C02BD08B8F59001805B3D43BDA222801DFE271BCF489DC3C7F766A567CAD49B67C9827F7BD07C663D37F64585DF9599F02C86715FBA556EFAD7FB4C1FC3D74E14455B429B42DB72928FB224E076020C00DCEE21EA679B40654B9D60877F5B6787ED';
wwv_flow_imp.g_varchar2_table(49) := '3C814040860C182C37FEF95D32F12F6F153C7CC676660A7A8A00DE3F001FC3D7F0792010B0AD3FDA14DA16DA98ED4C14240193807BFF6100E05EDF50339B04F034BF538D67A5B2A5D6668E736205D97972E3676E979B9EFEB4791F3F97FBCF71F1F3BFF0';
wwv_flow_imp.g_varchar2_table(50) := '319E23009FCFF9F8AD8236E0C45EB431B435B43927F9284B026E24C000C08D5EA14EB609E0496E789A5F637B8BED3CA18C0C99327FA6DCF29D4FCB88BBA7F3963EDBE4FC2388FD01A33F3547E67FE35EB32D84D2336C1B87B6863687B6673B1305B525E0';
wwv_flow_imp.g_varchar2_table(51) := '66C31900B8D93BD44D49000F6E39DD58E1E8F6BE61C387CAADFF729F4CF9DBDBB8DCAFA4AB47222E0BA02DDCFCE84765F08081B68DC6A640B43DB441DB992848022E23C000C0650EA13AD604BA7B7A04CBB0552DF5D6C2E72542992199F3B15BE4FA27EE';
wwv_flow_imp.g_varchar2_table(52) := '95A2E923CF9FE51F123847A0E4C62B65DEF71E30DB08DACAB9B3D6FFA20DA22D76F30982D6B0B49470B7D10C00DCED1F6AD787001ED57ABAA942B00CDB2729E2D7A27EC572D397EE96310F5C2FDCDD1F1193F609681B6823682B68337681A02D9E6C3C2B';
wwv_flow_imp.g_varchar2_table(53) := '78D4B4DD3C94230137106000E0062F50075B04F0038BD9569383EBFD23C65C218B9E7A4806DC7895AD3A7412EA6EEF147C74B2D98EAD682B6833683B76E4218357499F6C382BED5DF6EF40413E7EFC4DC0EDD6310070BB87A89F4900BBAE4F349C11FCD0';
wwv_flow_imp.g_varchar2_table(54) := '9A272CFE09040272D5E40932E76B1FE5ACBF17ABAAADC764EFB36B64CD379E97655FF995F9C131CED5ED2BED25A9F7215603D07626CEBA4602017BB70B62F03FDE502E2D9D6D7AC3A3F59E21C000C033AED257D1B6AE763952775A3ABA3A6D41C0835E66';
wwv_flow_imp.g_varchar2_table(55) := '1BD7FB673E7E0F07FF5EC40EBEB851963EF19CEC78799D9C7EEFB0541F2A333F38C6B9D7BEF24B814CAF2C5A1F6614E7C8B5FFF2219971C78D82366507465777B7F9D2A9A60EFB77A5D82997325E24E07E9D1900B8DF475A6B88D9D4D1BA32911E7B188A';
wwv_flow_imp.g_varchar2_table(56) := 'F20B65F6038B65CCFD7325E0F0F9EFF66AF0A6D4B6FF7A4336FF66A55AF99E1ED9F2FC2AD9F5CC2AB59C46A96843E31E9E6FB629B42DBBA69F342E07F03641BBB428972A020C0052459EF55A12C02C0AAF67B5143C2F3078C02099F7D8C765D8DDD79E3F';
wwv_flow_imp.g_varchar2_table(57) := 'C33F2050BEF9B0EC5FBED508A2ACA3A89EAE6ED9F5CA06411EE4E5E71C01B4A91BFEEE6E411B3B77C6FA5FDC2658CB570B5B83F2A98417CC6200E0052F69A8237E38318BB265BA7189F69A9B67CA0D4F7C52705FB7AD3C9A08B594D5CAE6679639B676C7';
wwv_flow_imp.g_varchar2_table(58) := 'EFDF12E4759CD1C7190AA78D90398FDD2393AE9B6ADBCAF2A62AA96EADB72D4F41124826010600C9A4CDBA6C11A86CA913FC70DA110E040232F3F61B65E2C30B042F7DB19347279953EBF74BC3E92AC726637F00F23ACEE8F30C39A34A64CADF2C365F2A';
wwv_flow_imp.g_varchar2_table(59) := '24017BC69E6DAE918A16678FA9B65732A5DC4BC01B9A3100F0869FB4D112B3A54A9B3F9669694199FF171F96718FDCCCC7F9466821A5BB8E4648B13E1D4B5EEBD2BD2B81C7085FFDE812B3ED05D3D36C19526504B558D5B2254C211248120106004902CD';
wwv_flow_imp.g_varchar2_table(60) := '6AAC09E00712B3256B49919C825C59F4D8FD3274C9643BE2DACAD457453FF38C25AF0EC0872D9922B73DF119C9CACFB1652E56B5B0AFC59630853C4DC02BCA3300F08AA77CAE27764CE307D28E99FD460C943B9E7E44FA4DBFC28EB8D6325DADD13F98A6';
wwv_flow_imp.g_varchar2_table(61) := 'ADAE597ABABBB5E667657CD1C4A1F2A11FFEB9148DE86F256AA6635F0BEE6C31BFF01F124831010600297600AB17C1AC083BA6EDB0281931486E79FC7EC9EC976B475C7B99FC7E855133C82F2A10DC061775019A64445B5CF8F8A7A578C4005B16E3CE16';
wwv_flow_imp.g_varchar2_table(62) := '3CDBC29630853C48C03B2A3300F08EAF7CA92966439815D9316EC4B5579A8FF5CD2CE6E06F871764864C1E853F517D064FE20A8B5D7068934B9EFABC0CB86A98AD2C47EBCB044FB7B4254C211248100106000902CB62AD09E0D1A978B6BFB5A4C8E0F123';
wwv_flow_imp.g_varchar2_table(63) := 'E5FA7FFC880433D3ED8853E63C8191F32649665EF6F96FF6FFE4F42F90B1B74DB39F819266DBBCF92B9F14AC5259E2E81139D970862F10B204E53D012F69CC00C04BDEF291AEE75EEC53217874AA9559258307C8FCAF7F923BFDAD408549CF1B3D40667C';
wwv_flow_imp.g_varchar2_table(64) := 'EA963029EA5353EF9927C8AB96626A5F0219C539E625AA7E83ADF704E0D1D6A54D9582375CF62D87DF492019041800248332EBB88440774FB7E0870F2B00972484F982DDFE377FF33E0EFE61D8D83D35FA8E6932FD530B249066DDDD2133E5EEEB0579EC';
wwv_flow_imp.g_varchar2_table(65) := '964FB94B09200858F0CD4F497E51FEA50961BEE1E556E80BDD3DC6924098749EF21A016FE96BFD8BE02D7BA8AD0708E0070F3F7C56AAE2F6AAC58F3F287CC08F1529EBF4099FB841E67DE96EC1D23E06F9BE39702E7F58892933E5B3CE570CFA96A7FB77';
wwv_flow_imp.g_varchar2_table(66) := 'B4D9C5FFF6906417E458A2686A6F3102E20A4B390A9040BC09300088375196A72450D152238DC60F9E52C8484C0F65C8C2AFDC2739A34A8C6FFC3F1E0486CF9F2477FDF75FCA827FFEA45CB5709AE40F2F313F38C6B93B7EF0B040261E75B10C3103D785';
wwv_flow_imp.g_varchar2_table(67) := '5FF994AD9517F409F40D72F33601AF69CF00C06B1EF3B0BEB8D7BFAAC5FAB9E8988DDEFA4F9F948289433C6CAD3B554FCB4C97C1B3C6CA8C4796C8E2AFDE6F7E708C734873A7D6DED50AEFA658F2D8FDB68200F40DF411EF5A4BCDBD46800180D73CE651';
wwv_flow_imp.g_varchar2_table(68) := '7D71CBD399E66A6BED0301997DFF22299911FDED6BD6955002775360991A1F1C9348E208E08155373CB044C468DB62F11FFA08FA8A8518935D49C07B4A3100F09ECF3CA9F15963F0EFECEEB2D4FD8647EE9431F7CCB294A300097889C0C88FCC909BFEFC';
wwv_flow_imp.g_varchar2_table(69) := '2E4B95D147D0572C052940027120C000200E1059849A40654B9DADEBFE5396CC96914BAE5117C65412F02881618B27CBD4DBE65A6A8FFD00E8339682147015012F2AC300C08B5EF390CE8D1D2D5269E3ED7E572FB94EA67C7191F0D1B31E722E55754400';
wwv_flow_imp.g_varchar2_table(70) := '6D7BD2230B0481AE5546F419F41D2B39A693402C041800C4428F799504B09C696767F3A8E9E365D2BD372ACB622209F8818019043C78938C9E3EC1D21CF41DF4214B410AB8808037556000E04DBF79426BFC80B575AADF469757982FD31F592C19C5D6F7';
wwv_flow_imp.g_varchar2_table(71) := '4B7BC2682A49021604D2724332E3FFDD2E68FB2A51F41DF421950CD3482016020C0062A1C7BC1109D4B4D64B5D5B53C47433211090E9F7DD2259830BCDAFFC8704742190D92FD76CFB62F40195CDE843E84B2A19A6A59E8057356000E055CFB958EFE6CE';
wwv_flow_imp.g_varchar2_table(72) := '36396BE3BAFF94C5D7C9B0C557BBD812AA4602892380B63FE1C6A99615A02FA14F590A5280041C126000E01018C5AD095419837F8FC5B3CD0B8A0A6492712D14D744AD4B4C8C445B79BDD46E3B2165CB764BC5DB07A5617FB974D43427A632964A027D08';
wwv_flow_imp.g_varchar2_table(73) := 'A0ED4FFD8B45523C48FDB4CB1EA32FA14FF5C9CEAFAE21E05D45180078D777AED41CCB954D1DAD4ADDF0A43F2CFDE35AA8523041895D4D6D72F4F5EDB2EAC9E7E5F5277E2DABFFFB1559F1831764D57FBC20EBFEED45692EAB4D50CD2C96042E25803E30';
wwv_flow_imp.g_varchar2_table(74) := 'FD815B057DE2D2944BBFA14FD5B6355E7A92DF482046020C006204C8EC1709E015BF55C6B5FF8B67C21F4D59749D0C5934297C6282CF361EAD9065FFFC8CBCF393D7A4E664858831BB42953D5DDDD2545927E5074EC89F1EFD1F2340D886D3FC9040C209';
wwv_flow_imp.g_varchar2_table(75) := '0CBCE14A419FB0AAA8DAE85B7C75B015A5E4A77BB94606005EF69ECB74C7E06F75DB5251BF62B9EAEEEB04CB9FC956BFC598D96FFAC59BE7067E45E59D6D1DF2CE4FDF9043AF6D514831C9AB04BADB3BE5F06B5B65F5D77F234BFFE11772E2ADDD86293D';
wwv_flow_imp.g_varchar2_table(76) := 'C62735FFA32FA04F14E417281568EFEA90EAD63AA50C1349C0090106004E6851362281C68E16A96D6D88988E84B4B4A0CCFADC62F32D69F89EECCFB66757CA995DC7ED556BAC0C40FEEC9623F6E429E509022DE575F2DA5FFD583619015ED9CEA35275A8';
wwv_flow_imp.g_varchar2_table(77) := '54DE7EFA1579F5E1FF949EEEEE94D9807732CCF8F42D823EA2520241766B57BB4A84694925E0EDCA180078DB7FAED11ECB9356CA4C593C4706DC7895955842D21B4BABE5C4BB071C958D95804DBF5C9AD281C191C214561268AF6E92D54F3E2F0D1597EF';
wwv_flow_imp.g_varchar2_table(78) := 'F168A8A893936BF72AF3273A71C8E2C9823EA2ACC758A8B0D3D79465309104CE136000701E04FF444F003F48CD161BFF060D1D24577D624EF495C490139BFE36FDF835C1757EA7C5349CAE92EA7DA79D66A3BCCB08D4EF2B93D71EFD1FA93D591951B383';
wwv_flow_imp.g_varchar2_table(79) := 'AB76444C4B5602FA48FF12F55D01F56D4DC2D70627CB23EA7ABC9ECA00C0EB1E4CB1FEEDDD9DC675C97AA51669E96932ED0BA97BDA5FD3896A6928AD51EAA84AAC3F5EA14A669ACB09546F3B2E6BBEFFA2B4D4372B350D2853939398519C23D31E5A28C1';
wwv_flow_imp.g_varchar2_table(80) := 'A0FAA7B98A7B0192E3109FD7A26E653E379EE6C54EA0AAA54EAC36FE8D9B7B8DF49B7E45EC95455942674BBB74B6AA1F49AC2ABAF1ECE54BC62A79A6B98740BD31F35FF3F44BC6B2BFF5E6B9416387BB42715C261B3B7DA25297D6CE76CBC05B590013E3';
wwv_flow_imp.g_varchar2_table(81) := '40C0FB453000F0BE0F53660136FED559DC9B5C34A89F8CFF686A96FE2F80C9C809497A56C685AF8EFF8672B31DE76186D413C0CC7FE5779EB79CF943D3FC018532FE637371E88ACFD50FDC24E83B2A6570E90D2B702A19A691808A000300151DA62909D8';
wwv_flow_imp.g_varchar2_table(82) := '59869CF5F0ED92334A7D4D5359491C12B3061548D1D0FE5197543C7A50D47999313504EAF6950A66FE56CBFED00E83FFC2271E94F4DC10BEBAE2833E83BEA352062B6F080254324C4B1C013F94CC00C00F5E4C810D98F9B774B4296B9EB068860C98395A';
wwv_flow_imp.g_varchar2_table(83) := '29938C445C572D193324AAAAF084B6BC61FDA2CACB4CA9218099FFF27F7DCED6CC3F941D120CFED92E7C2115FA9F170ADC0000100049444154CED81B262B21E2D65BDE16A844C444050106000A384C8A4CA0B65DFD58D29CFE0532E19EB9910B4872CAC4';
wwv_flow_imp.g_varchar2_table(84) := '8F5F2F9979CE97F2AFBAE55AC91E5294646D595DB40430F37FEB072F497BABF5BDF2D90539B2E8EB0F881B07FF0BF64FFAD80D96ED968F08BE402B997FFD511703007FF831A956E01624ABD9FFA425D7498E8B064E2CEFCEF8D42D228180D8FDAF60787F';
wwv_flow_imp.g_varchar2_table(85) := 'B9E6BEF976C52997620218FC31F36F6D50EFF6879A98F9CF7FF4A352307108BEBAF6933F7A804C5C3453A95F6D5B83B4F1E1404A464C0C4F800140782E3CAB206035FBC76D7F23E6A977312B8A4F58D2E83BA6C9755FB84DD243D61B02F38795C82D8FDD';
wwv_flow_imp.g_varchar2_table(86) := '2B99FD7213A60F0B8E1F012CFBAFFCF6EF6CCFFC177EFDFE94DE99E2C4F2314BAE55DF16D823C2550027446397F54B090C00FCE2C924D9D1D4D1224DED2DCADA262D9CE5DA65D52BEF9C210BBF71BF945C3934AC0D080EAEFEF05C59F2C483AE5AC108AB';
wwv_flow_imp.g_varchar2_table(87) := '2C4F9A0430F3C7B2BF9D993F96FD6FFD97FBA470E25033AF17FEC1258AF1374C55AA8A0000EF0A500A319104FA106000D00708BFAA09D4B537290572727364EC6DD39432A94EEC3769B82CF98F87E4F66F3F24D73DB048A6DC7D83CCBCFF5659F8D54FC9';
wwv_flow_imp.g_varchar2_table(88) := '477EF13732F5A15B39F34FB5936CD68F99FFAAEFFC4EEC0EFEB77DEFF3AE5FF60F673A0257F4AD706938D7D3D3C355008048CAC73F953000F08F2F136E494B679BE031A4AA8AC6CC9C98F2DBFE54FA5D4C0B48F1A46172E5C766CB94CF2E90711F9F2B03';
wwv_flow_imp.g_varchar2_table(89) := '678E918CDCAC8B223C7235810B337F3BB7FA61E67FCBBFDCEBDA95292BD0F913060BFA964A0E7B01F85C001521A6F525C000A02F117E8F48C06AF69F1E4C93D1B7BB7BF61FD13826788A0066FE4E36FC61F0F7D2B27F3867A06FA18F854BC3B96E6315A0';
wwv_flow_imp.g_varchar2_table(90) := 'AE4DFD464EC8F1131B013FE56600E0276F26D0165C5FC40C4355C5E8E9E3256744B14A8469241033010CFEB8E6DF6EF3563F6CF8F3FAE00F68E85B23268EC661C40FF602747477464C670209F426C000A0370D1E4724801F16E989986C268CBD6386A4B9';
wwv_flow_imp.g_varchar2_table(91) := 'E8696AA652FCC7570430F82FFFF66FC5CE35FF0BB7FAF961F08713D1B7AEBC7D060E237EBABABBB91720229D7824F8AB0C0600FEF26742ACC18CA2CEE2C13F43470FF7CC6D550981C442134EA0E2ED8382997F576797655DB8E68F997F2A5F4265A96414';
wwv_flow_imp.g_varchar2_table(92) := '02FDAF1F2BE86BAAAC784A6767B7352355194CD3830003003DFC1C939578F04F9731B3501532FAA629AA64A691404C0430F35FF39F7FB035F3C7E08F87FCF865E6DF1B5C201814ABBED6690CFEF51677EBF42E93C7F609F84D920180DF3C9A007BF0D63F';
wwv_flow_imp.g_varchar2_table(93) := '55B103AF182A83E75EA512611A09444D0033FF55DFFBBDD8B9E68F657F6CF8F3DBCCBF373CF4B592C1037A9FBAECD8AACF5E968127B424C000404BB7DB371AB7FE3577B42A338CBF7DA68406172865984802D110C0CC7FDDFFBC6A6BF0C7CC1FCBFE7E9C';
wwv_flow_imp.g_varchar2_table(94) := 'F9F76687BE366EF1F4DEA72E3B469F45DFBD2C81276220E0BFAC0C00FCE7D3B85A643593C8CAC996A1F3C6C7B54E164602208099BFDD0D7F9959998299BFDF077F70C167E4926B047D0FC7913E567D37523E9ED7870003007D7C1D95A58D1DEA17AB5C75';
wwv_flow_imp.g_varchar2_table(95) := 'D354EEFC8F8A2C33A9085C98F9DBD9F097959F238BBEF180A71EEFABB2DD4E1AEE08183D638252D4AAEF2A3333F132027E3CC100C08F5E8D934D78EE7F5B6747C4D232F3B365CC6DD7464C67020944430083BFDD993F06FF9BFFF6A35A0DFE17985EB160';
wwv_flow_imp.g_varchar2_table(96) := 'B2A467457EB115FA2EFAF00579FE2581BE041800F425C2EF1F1068E850BFF467D8555748EEA8FE1FC8F38004622570D6C1AD7E79FD0BE5F67FFFBCB6B79F164D1E2623268D5522B7EAC3CACC4CEC45C09F870C00FCE9D798ADC263451BDBD5CBFFC3AF1B';
wwv_flow_imp.g_varchar2_table(97) := '17733D2C80042E10C0CC7FADCD5BFD30F39FFFF71FF5ECB3FD2FD81CCBDF6066BA58F541F461F4E558EA615EFF126000E05FDFC66419AE1FE27EE24885048341E9376158A4649E2701470430F3B77BAB5F6656A6DCFA957B45970D7F2A9003AEBD428281';
wwv_flow_imp.g_varchar2_table(98) := '404411F461F4E588024CB045C0AF420C00FCEAD918ED6AB098FD0F1A3944B28716C6580BB3938008067FCCFCEDDCE78F99BF6E1BFE546D24B35FAE940C1EA81211ABBEACCCCC445F1308FADA3A1A1715013CFAB7D1E2FAFFF019E3044B905155C04C2470';
wwv_flow_imp.g_varchar2_table(99) := '9E40D9B2DDB2EAFB2FD8BACF1F833F67FEE7C19DFF833E38EAFA49E7BF85FF83BE8C3E1D3E9567AD09F8578201807F7D1BB565B86ED8D313F9CD3FC1F4341934734CD4E5332309800066FEEB7FF1BA745B3C661AB2D8F0B7F88907B9EC0F187D3EFDAF1E';
wwv_flow_imp.g_varchar2_table(100) := '2119C665913EA73FF88ABE8C3EFDC1091E90C079020C00CE83E09F8B049A3BDB2E7E09733470F820C91B3B204C0A4F91803D0218FC9DCCFCB1E12F8F779C84855B307E907119407D378E559F0E5B304F9A04FCFC0F03003F7B374ADBAC1E213A64E2282E';
wwv_flow_imp.g_varchar2_table(101) := 'FF47C996D944B0EC8F6BFE7667FEB8D58F1BFE22B71C3C14087D32B28488559F56E5659A7F093000F0AF6FA3B2ACB5AB5DB0733862E68008961C23A6338104140430F35FFB137BCFF6CFED5F2898F9670FE66653055233A978F42011A36F4A84FFD0A719';
wwv_flow_imp.g_varchar2_table(102) := '044480A33CEDEF440600FEF6AF63EBAC7E240AF20A2477783FC7E53203095C98F9DB79BC6F283F476E7D8CB7FAD96D3505E3064B5E56AE52DCAA6F2B3333D197041800F8D2ADD11BD56A71FD7FE4F4AB248BB7FF450F58D39C98F963C39F9D5BFD30F35F';
wwv_flow_imp.g_varchar2_table(103) := 'F2F8A7256F34F799D86D2EA10179327CB27A632E0300BB342FCAF9FD28E87703699F33024D1DADCA0C03AE1EC9EBFF4A424CEC4B0083FFEAA75FB475ABDF85993F07FFBE14D5DFB10F60A0D13755520C005474F44C6300A0A7DFC35ADDDED5A1BCFE9F1D';
wwv_flow_imp.g_varchar2_table(104) := 'CA927ED78C089B972749201C010CFED8F06767D91F33FF3BBEF739CEFCC381B471AEDFB523252B148A28897D006D5DED11D399D09780FFBF3300F0BF8F6D5B68354328282992D0E002DBE551506F0218FCEDDEEA7761E69F3DA4486F6831589F3DB2580A';
wwv_flow_imp.g_varchar2_table(105) := '4BD4FC783B600C807D989501800F9D1AAD49CD9D16CBFF570E8DB668E6D38CC0850D7F766EF5E3CC3F3E8D23100C4AFF2BD5EFE768B6B8C4171F4DFC518A0E563000D0C1CB366D545DFF0FA40565D0AC2B6D9644319D0960E6EFE4563FECF6E7CC3F3E2D';
wwv_flow_imp.g_varchar2_table(106) := '067B74542559ADF2A9F232CD7F041800F8CFA75159846785E31A61A4CC79438A257F4449A4649E270193C0C957B60936FCD9BDE6BFF809EEF637C1C5E99FA2F14324333F3B6269E8E3EDDD9D11D3997081801E7F1900E8E1674B2BAD9606FB8F1C2C39A3';
wwv_flow_imp.g_varchar2_table(107) := '18005882D4580033FF4DBF5B214E067FCEFCE3DB60703BE0B02916B703F232407CA17BB83406001E765E3C556FB1D81D3C64F2A87856C7B27C46A074A9FDB7FAE19A3F66FE1CFCE3DF0882D91952327A88B2603CED5329C044D1050103005D3C6D61276E';
wwv_flow_imp.g_varchar2_table(108) := '015489E40E54EF2E56E5659ABF0960F05FFF4B7B6FF5E3E09FD8B6808D80C5A3072A2BE12500251EAD12190068E5EEC8C65A0500D9FDF32367668AB604CEAE7B5FD6FCCF1FA5A3D5FAFE720CFEDCF097F8A692DDBF4024109048FF7574710F402436E7CE';
wwv_flow_imp.g_varchar2_table(109) := 'EBF32F03007D7C1DD1D2EE9E6EE5038030AB0815E644CCCF043D0960E6BFE6BF5E919EEE6E4B0018FCB1ECCF27FC59A28A59007D3510881C00B47777C45C070BF007010600FEF0634C56B475A97F10B2334312CC4C8BA90E66F61701CCFCD7FEF455CEFC';
wwv_flow_imp.g_varchar2_table(110) := '5DE856F455F4D988AAF588F03240443AA2530A03009DBC1DC156ABE5FFA292620964300088804FBBD398F9AFFAE14BD2DDD965693B67FE9688E22E808D80F979EA4B761D16417FDC956281AE24C000C0956E49AE52562B0039C5F91248675349AE57DC59';
wwv_flow_imp.g_varchar2_table(111) := '1B66FEE6863F07833F77FB27D797B8649753A87E3530570022F944AFF3FC55D7CBDF61AD6DB3B82698DBBF40F0A31236334F6A430033FF953F78D1F6B23FAEF973F04F4DF3C829295056CC8D804A3CDA243200D0C6D5910DB5BA049033A0307266A6788E';
wwv_flow_imp.g_varchar2_table(112) := '40777BA774D4344BF3B12A69D85F6EFE6D2BAF97AEA6B688B660F0C7CCDFCE86BF82E1FDE5B6EF7D4E38F847C499F0849C01EA00801B01C3BB40B7B30C0074F3781F7B7BA44754B381F45086640FC8EF938B5FBD46000377C3D10A39F9D61ED9F59B35B2';
wwv_flow_imp.g_varchar2_table(113) := 'FE07AFC86BFFFC7379FDABBF9495DF7C4EDEFEB71765CBF7FF24A7DEDC2908067ADB87C17FED8FFFCFD6CC1F833F6EF50BF5532F41F72E9FC7F127907F457F65A178F4B75280895A106000A0859B231B6935FBC773C5B32D6613914B674AAA09B4D734C9';
wwv_flow_imp.g_varchar2_table(114) := 'BE67D7CA1F3EF3B4BCFA773F91754FFF41F6FCDF3B52BAF38839A0E3B1BD0DB50D72E658A91CDEBA4FD6FEF88FF2C7BFFE916C7DF21539F9FC66D9F7C3E582DDFEDD3D3D96A660F05FF4F8A739F3B7249578818CDC2CC10BBC22D5D4CE67018441A3DF29';
wwv_flow_imp.g_varchar2_table(115) := '0600FAF9FC128BAD7E0842D921C91AC24B009740F3C897EABDA764F593BF97ED2FAF95D68666111B83384CEBE8E890039B77CBDBFFBB4C76BCF5AEADDDFE18FC39F3073D777C324B72A56868E47777F4186D81AB00EEF0552AB56000904AFA2EA8BBD5E2';
wwv_flow_imp.g_varchar2_table(116) := '1D00A19C6CC91C98E7024DA9825D02EDC6AC7FDB7FBD216F3EF62BA93A546A37DB65723DC62081CF65097D4E60F05FF4F8039CF9F7E192CAAF99453982BEABD28101C0A57474FCC6004047AFF7B2D9EA073EAF7FA1F00E805EC05C7ED8525E27CBBEFC8C';
wwv_flow_imp.g_varchar2_table(117) := 'EC5FBED5F68C3F16932E0CFEA17E0C1263E118EFBC08DAD17755E576D97882A32A3FD3BC4F800180F77D189305DDA2BEB69B37882F018A097012336317FF5B4FFE4EEACFD624A5560EFE49C11C552508DAADFA6E778FF5239CA3AADC9399F4549A01809E';
wwv_flow_imp.g_varchar2_table(118) := '7EFFC0EA1E8B1F815CDE02F8012BB71F6C7F66A5D49CAC488A9AB9C6CAD0B96BFE9CF927057814958472B395B9180028F16891C800400B374736B2DBB8CE1B39552433374B95CC349710A8DE734ADE5FB13D29DA04020199F39925BCE69F14DAD15762F5';
wwv_flow_imp.g_varchar2_table(119) := '2C802E8BBE1F7DCDDECBA9ABC60C0074F5FC79BBAD2E01243B00683C5A21075FDC281BBEFBB2ACFCFAAFE5CD7FF8B9798C732D65B5E7B5E69FDE045A8DEBFE1B7EF4275BD7FC4B860F90A9B7CD91795FB85316FEDDC7CD0F8E710E69BDCB8D741C340280';
wwv_flow_imp.g_varchar2_table(120) := '40ABF57B0022E5F7F379B451B455B45FB45D7C708C7368DBC9B43DBBBFFA6140DD16AB7FC9D49575A586403035D5B256B710E871C92C000FAAC18FE48A279F97CDCFAD9063EFEC95333B8F4BF5A132F318E7567CEB7939FA7A7266B96EF18F1D3D8E2CDB';
wwv_flow_imp.g_varchar2_table(121) := '21F5A72AD5A201916B96CC9619F7DE2283265F21D94579120C06CD0F8E710E69D72CB94EC49015C57FD83C5675A44C21A16712DAE6D2AF3DFB41FB45DBC5076DD96CBF46DB461BC793189341283D3B43594D170380F37CF4FDC300405FDF9B96BB611680';
wwv_flow_imp.g_varchar2_table(122) := 'C17FC3132F983F9CCD95F5A65EE1FE69385D25EFFCE435C12D6EE1D2753C87C164EFB22D96A6CFFDC442193C6594A5DCE029A365EE276EB594DBB76AABF2D1C19605F84800ED77D733ABCCB6A96ABF484320B0EEEBCF0BF2241A41576B87B20A37F47DA5';
wwv_flow_imp.g_varchar2_table(123) := '824C4C380106000947ECEE0AF0286095868180C5745095D966DAA197DF95E3DB0FDA9416F31637CCA46C67F0B160D3E91A696F6A555A38C598D5E78F88FC5098BE99F347F417E4E97BBEF7F7D6B636693851D5FB94B6C768BFBB5ED960DBFED3FB8F0BF2';
wwv_flow_imp.g_varchar2_table(124) := 'D8CE9020410600E7C0EAFC6F5067E369BB48778A2F01341AD7FC37FF66A56357200FAEB73ACEE8B30C4D95754A8B705D7F8831AB57A464135300001000494441540A8549449E7EC3078449B978AA72CFC98B5F343D6AAB6E922DCFAF726C3DF2742A5EBE';
wwv_flow_imp.g_varchar2_table(125) := 'E4B8C03019BA5AD42B00BC0410069A66A7180068E6F0BEE6A67A0F40C5BE5322D10421469EF2ED47FB9AA3D5772C23571F2D57F21B31796CD44C465AE46D4CD2F306A2362009194B37BE2F3D5DDD8E6B429ECABD46DB779C337E19BA8D3E14BFD2BC5A92';
wwv_flow_imp.g_varchar2_table(126) := 'DE7A3300D0DBFFC60A80F31FAF7822AB3C12FDA36ACB761D155C038FA73E5E2AABDB98E19DDD7D42A9321ED6A3145024E60F57BF51AEE16CAD74D4342B4AF077121EBC7462D3FEA88D3C1943DEA82BED95B19B9B007BD1D0F39001809E7EFFC06AABDB00';
wwv_flow_imp.g_varchar2_table(127) := '13BD03A0A5B1E9035D9C1E549D3C231DD5FA0E406D158D525BAADEFD9F59A07E188C8A79C8226F4B53B374D4B5A88AF0755A67439BD49C8EFEC14BB1B47D3B60ADFA2E2F0188D8E1E8671906007EF66E5C6CB3FA1989AD928EE6B6A80BB0DAE51C75C11E';
wwv_flow_imp.g_varchar2_table(128) := 'CAD8DDD6A9D63696655E8BBC484ECB52DF6AA6568EA98925A0EEBB3D168F014FAC6E2CDD0D041800B8C10B29D4216871D37777737B42B5CBCECD8DBAFC81570D978C7E3951E7F77AC68CC26C193076A8D28CB686E867E8AD16798B470D92F4FC90B27E3F';
wwv_flow_imp.g_varchar2_table(129) := '27C2F6E26103A236313B2FFAB66FA752ABBE6BD5F7EDD4E16D196A1F2402BD090403564D403D8B88951E769B475B06F20633D3A3CDEEF97CC1CC34C91FA87E59535D0CEF06B0CA8BBAD372F50D0060FBC8D913A26E4768BF5167B69551DD77ADFBBEAD4A';
wwv_flow_imp.g_varchar2_table(130) := '28E4610256BFFE1E368DAADB211008A87F242C1608EC54A194193071B804D2A2688681800C9E365A59B6DF1383D9199237A85869E6895D878D85DE1EA54CB8442C0F9F34F2864BBB70AE78F4E00B87DAFE35DBA0D1169D02409B1F3C33FA3B346CD567D5';
wwv_flow_imp.g_varchar2_table(131) := 'B5A3D0DB56BD1E11A29A2251FCF2129B9F08E0B9EEA9B4276FF40099FAE11B1CAB70ED476ED4FE6534816050FA4F1AA164575B5A25B85B42291426B16CE75141DE3049E74E198347F1D841E78E35FE377B4891A02D3A4530F3BE5B243DC5AB27A9EEFB4E';
wwv_flow_imp.g_varchar2_table(132) := '99513EFE0482F12F92257A8940C0628ADF839D5E093668C2BD37C8B00957D8AE65EC0D9365E203F36CCBFB59B060EC40C9C955EF83D8BD74B3349C54DF2DD09B51BD21BB7BD9E6DEA72E3BCE0865486691BADECB32F9F404DA2FDAA45DF3065D3154C6FE';
wwv_flow_imp.g_varchar2_table(133) := 'D94CBBE251CB59F55DABBE1F75C59EC84825418001002868FCB1BA0E88A5E044E3C175FC798FDF27572FB94E32F322DFB696D3BF40663DB05066FFE3DD82D96FA2F5F242F96037FEA66B2D557DE77F574AF9AE639672E5BB8ECA4643D64AF0EA3B66D307';
wwv_flow_imp.g_varchar2_table(134) := 'E721C1076893689B68A3E74F5FF6076D1B6DFCE66FDF2FC87399409C4F58F55DABBE1F6775589C0B09300070A15392A9522010505667F59C7965660789F8419CFAC5C5B2E8B1FBE4DA7BE6C9B0A963257F7889F9C131CE2D34D2AEFAD81C07A5EA215A32';
wwv_flow_imp.g_varchar2_table(135) := '6688A4052DBA728FC8CEA59B64EBEF56C999DDC7A5A5B649BABBBBCD4F4B6DA3790E693B97BE2B62C8AAC8955C3954AEFC50E267B02A1DDC9886B689368AB68A368B60006D78D0B81166708BB68D368ECD83C9D0DFAAEF0602EABE9F0C1D535507EB3D47';
wwv_flow_imp.g_varchar2_table(136) := 'C0E257E39C10FFF52F81A0C52580EE245C02E84DB770E25099F4E07C99FFAFF7C95DFFF945F383639CC37E81DEB23C3E47A0F16CADD8F553D5A90A79EFCD8DB2EE677F9215DF7FC1FCACFBD96BE639A49D2B51F1AF3168CC7C689164F6CB5508E99B8436';
wwv_flow_imp.g_varchar2_table(137) := '8AB68A367BF7CFBE64B6DF5BBFF719C1C08FB69D4C32566DC2AAEF275357D6951A02C1D454CB5ADD42C06A2350371F17EA165785D5A36AEB31D9FAEA3AB1BADE1B36731427C72D9C262557AB371E46512CB324808055DFB5EAFB0950C92545528D0B0418';
wwv_flow_imp.g_varchar2_table(138) := '005C20A1E9DF80C57300AC7E4434C5E60AB331F82FFFCEF3D2D19AD887355D3036A72057AEF9D4FC0B5FF9D7E504ACFAAE55DF77B979542F0E041800C401A2978B088AFA3A60E359F5EB66BD6CBB9775C7E0FFD6D32F4B77675752CC2818582C8B1EFFB4';
wwv_flow_imp.g_varchar2_table(139) := '641673E93F29C0E3508955DFB5EAFB7150C1954550A98B0482170F79A4238140401D00B43545FF28591D7926C3660CFE98F9B73524E74548B8C56DF1773F2BB9A3FA27C33CD6112702567D371008C4A92616E355020C00BCEAB938E99D9596A92CA9F14C';
wwv_flow_imp.g_varchar2_table(140) := 'ADD6AFDC55C2494122067FBB337F5CE30D04A2FF912F1AD15F167DF57EB9EEEFFF8C33FF14F83A962AF1AAE29A6367944558F57D6566CF2652F1DE041800F4A6A1E171669AFA59FA0D5575D25ACACB006E681A75FB4A0583BF9D997F5EFF4273F0FED077';
wwv_flow_imp.g_varchar2_table(141) := '3E2F37FEF95D32E0AA61921ECAB065465A7A9A4C59325B6E79EC3E193073B4F0990BB6B0B94AA8F9648D34D5342875CA4C53F77D656626FA820003005FB8317A2332D3D483425B5DB3B45537465F0173C6850066FE2BBEFD3BB13BF82FF9DEE7A464C628';
wwv_flow_imp.g_varchar2_table(142) := 'C99F305846DE3E5516FDFB43F2673FFA2BB9E96FEF91098B67CAE0F12304037D303D4D8A470C90718BA6CB9C47EE90BB7EF0E7F2F1DFFEA34CF9E222C91A5C1817DD5948F209349DA892768BB739665AF4FDE46B9DF81A59C3A50418005CCA43BB6F0109';
wwv_flow_imp.g_varchar2_table(143) := '48465AE499407B638B341CAFD28E8B9B0CC6CCFFED1FBD6A6BF02F1C6E2CDB7FEB410985B94F3FAB5F9E0C9F3F49AEFDC242B9E16F3F22B73DF680DC6E7C30D39FFEF0621973C774C91F3D40F0502637D94F5D9C1368A96890CEB68E8819D1E7D1F7230A';
wwv_flow_imp.g_varchar2_table(144) := '30410B02412DACA4914A02563381BA636795F99998380218FC31F36FAAB4BE0C83C1FF96AFDE27D91633770CF0A1C10552386D84F9C131CE25CE0A969C6C02B5167DD6AACF275BDFE4D4C75AFA126000D0978886DF4341F56580868A1AE9E9EED6904C6A';
wwv_flow_imp.g_varchar2_table(145) := '4DC6E0BFE6A9976CCFFC173EFE69CBC13FB516B1F6641168A8AA555665D5E7959999E81B020C007CE3CAE80D09595C0BAC29AB949E4E0600D113769EB3F158A5AC34AEF9373A98F9875BF6775E3373789D0082F5DAB3D54A33ACFABC32B34713A9F6E504';
wwv_flow_imp.g_varchar2_table(146) := '18005CCE44BB3356CB81F5750DD2D5949CA7CD69073F8CC198F9AFFAD6F3D26AE33E7F2CFB2FF9EE439CF987E1A8EBA9CEBA56696A563F23C2AACFEBCA4E37BB1900E8E6F130F65ACD0630A36829B7BE061DA6689E7248009CD77EFF257132F34FCF0D39';
wwv_flow_imp.g_varchar2_table(147) := 'AC85E27E268036843EABB2D1AACFABF27A338D5A8723C000201C15CDCE050341490FA689EABFE68A7A5532D3E240A0D158F65FF1B567A5A1C23AD8C2CC1F8FE6B5DAF01707B55884C708D41FAF546A8CBE8E3EAF1462A21604180068E1666B23AD96041B';
wwv_flow_imp.g_varchar2_table(148) := '2BD49B8AAC6BA0848A00666D6B9F7AD1D1E09F19E6563F551D4CD38340E3D91AA5A1567D5D99D9A389543B3C010600E1B96877D6EA47A1EA48B9E0F1A2DA814982C118FC573FF9BCD49E54CFDCA08AF984BFC73F2D1CFC41839FBE043A6A9AA5EA5879DF';
wwv_flow_imp.g_varchar2_table(149) := 'D3977CB7EAEB9708F38BAF093000F0B57BED1B976DF14E80FAB3D5D2D9D066BF404ADA22806BB51BFFFB4FB6067F3C9BFFB6EF7D8E83BF2DB27A0A75D4B548F549F5733BACFABAFFC8D1A2480418004422A3D9F99C8C2CA5C57565D5D25CCACB004A4851';
wwv_flow_imp.g_varchar2_table(150) := '241E7963BB94ED3C6A991383FF82C7EEE3E06F494A6F81E65335D258ADDEAF936DD1D7F526A897F50C00F4F277446B3382E9CA8D80ED8D2DD26C63735AC40A987019015C52D9F7C6E6CBCEF73D81C17FE1BFF2213F7DB9F0FBE5049A8C3EDAD315F9991D';
wwv_flow_imp.g_varchar2_table(151) := 'D8009869F4F5CB73FAF70C2D8B4C8001406436DAA5E45ACC0C6A8FAA9716B50396048331F873E69F04D03EA9A2F6E819A525D9E9BC65540948B34406009A395C656E4EBAFA3240E5B1525576A6392490961B9289B7CF8A980B833F67FE11F130210C8133';
wwv_flow_imp.g_varchar2_table(152) := 'EF9F0C73F6E229AB4B7D1725FD72443B54041800A8E8689666353B3873B454DA6B9A34A3925873C7DE395DC6DE3AF5B24A865E334630F873B7BFF03F9B04D037AB2AAA94D2395C0150F2D12D9101806E1E57D88BDB83708D3092085E2F5ABDEB54A4649E';
wwv_flow_imp.g_varchar2_table(153) := '8F8A404066FFF55D32FBE1DB05B7F86517E498C7373FCE0D7F51E1D438D3D94D87C5EAFA7FC8E26E1FBFE1A33D6A020C00D47CB44BB5DA0770ECAD5DD2DDDEA91D97441B3CF6CE1972FBBF7F5EEEF8DE1704C72201E17F2460970036941E31FAA64ADE6A';
wwv_flow_imp.g_varchar2_table(154) := '854F959769FE24C000C09F7E8DDAAA2C8B25C2D3FB8E4A6BA9F5A36AA35640E38C19C539121A5CA031019A1E2D81B68A46293FACBEFEAF5F00102D4D7DF23100D0C7D7B62CB5FA91686B6993DA0365B6CAA2100990407208546C3F269D1DEA9539ABBE9D';
wwv_flow_imp.g_varchar2_table(155) := '1C4D598B9B0830007093375CA04B96718D50B50F002A9ED97D1C7FF8210112700981F2DDC7949AA04FEB1600288130D124C000C0C4C07F7A13B0FAA138BDEBB074D434F7CEC2631220811411682BAF97B387D59B73ADFA748A5467B52926C00020C50E70';
wwv_flow_imp.g_varchar2_table(156) := '63F556B70AD5D73548E5E6236E549D3A91807604AADE3B210D758D4ABBADFAB432B32713A9B41D020C00EC50D24C262F33470201C52EF49E1E39B1762FEF06D0AC5DD05CF711C0CBA4D017C5E89391B40B0402823E1D299DE7F525C000405FDF47B41CEF';
wwv_flow_imp.g_varchar2_table(157) := '05C8CBC88E988E8433874E4947352F0380053F24902A02ED671BE58CC5F23FFA32FA74AA744C45BDACD31E010600F6386927956FAC02A88C6E6C6D96FA43EAE78EABF2338D0448207602E8834D465F549564D597557999E66F020C00FCEDDFA8ADCBCBC8';
wwv_flow_imp.g_varchar2_table(158) := '51BE1D10059FDA74007FF8210112481101AB3E88DDFFE8CB29522F45D5B25ABB041800D825A5995CD0C675C3D3078E4B6B79BD6664682E09B88340F3B12A411F5469836BFFE8CB2A19A6E94B800180BEBEB7B43CDF621F407D45AD54EC50DF7F6C590905';
wwv_flow_imp.g_varchar2_table(159) := '488004A2227066DB11411F5465B6EAC3AABC5E4DA3DEF6093000B0CF4A3BC95C230008A56744B6BBA7470EBFF55EE474A6900009248CC0F177F78B6AF73FFA2EFA70C21460C19E27C000C0F32E4CAC01791939CA0ACA0E9E948EA656A50C13498004E24B';
wwv_flow_imp.g_varchar2_table(160) := '007DAEF4C00965A1567D5799D9B38954DC090106004E6869288B5B885466F77475CBA9357B55224C230112883301B3CF192B70AA62ADFAAE2A2FD3F420C000400F3F476D251E219A9391A5CCFFFEAA1DD25EDDA49461220990407C08B494D7C99ED7DF55';
wwv_flow_imp.g_varchar2_table(161) := '16863E8BBEAB14F261224D7246800180335E5A4A5BCD24AA0E95CAC9D57BB46443A34920D9048E2FDB29F5A72A95D55AF5596566266A4380018036AE8EDE503C48242DA86E2AFB976EE1A381A347CC9C24608B4057539B1C7E7B9752362D1814F459A590';
wwv_flow_imp.g_varchar2_table(162) := '2F1369945302EA5F75A7A551DE9704F018D1C2CC3CA56D7567ABA57415F702282131910462247072E92E415F531583BE8A3EAB92611A098000030050E0C7924051C8080014EF0742017BFF6FA3E0D5A438E687044820BE04D0B7F6FE6993BA50A38F9A7D';
wwv_flow_imp.g_varchar2_table(163) := '552DE5CB541AE59C000300E7CCB4CC9199962145A17CA5ED956567A56CC3FB4A19269200094447007DABB6BA4699197D147D5529C44412384F8001C07910FC634DA03033D75268FFB22D82EB94968214200112B04D00B37FF42DAB0C76FAA85519DE4CA7';
wwv_flow_imp.g_varchar2_table(164) := 'D6D1106000100D354DF3E0B6A282903A08A82EAF94C32F6FD69410CD2681C41038FC7F5B047D4B553AFA26FAA84A866924D09B000380DE34786C49C0CE0C63CF1BEF4A6B799D655914B848A0BBBDD35C39C1EA89DF3FB0F5A2E53CB22280BEB46FE5562B';
wwv_flow_imp.g_varchar2_table(165) := '31B1D3372D0BF1A800D58E8E000380E8B8699B0BCF16CFCDCC56DADFD2DC2CA7D71F50CAE894D8D3DD6D3E28A9766FA9546C392AA7D7EC93832F6E94DDAD73033B0000100049444154CFAC968DFFFE0779EB1BBF95E55F7956967FE3393D3E86ADB019B6';
wwv_flow_imp.g_varchar2_table(166) := '8301588049CDDED3D25C562B9D4D6D02663AB51195ADC796ED94B6F6369588A04FA26F2A859848027D083000E803845FAD091459DC128812F6BEB949F0C4321CEBF8C10056BBAF54F63FBB56963FFA0B79E9E11FCAEB5FF9852CFFD66F64CD0F5E92CDCF';
wwv_flow_imp.g_varchar2_table(167) := 'AD909DAFAC9723EBF748E97B47040F53AA3E54263A7C602B6C86ED60001660F2C6577E29AF7CF13FE585079F32991DF8F53AA9331882A58E6D0836371DAB9483EB76E050F9B1D3279505783A91CA474B800140B4E434CE87878C64678494041A2AEAE4E0';
wwv_flow_imp.g_varchar2_table(168) := '1F2C6E595296E0BD442CDDD71AB3D83DBF5A232BBEFC2B59F6CD5FCBB697D74AE58972C13B13BC67516A34062B30DBFAD21A59FEE4F3B2F29F9F957DCFAE11B005E3D468959A5A0FBCB451D09754B5A32FA24FAA64984602E1083000084785E72C09D899';
wwv_flow_imp.g_varchar2_table(169) := '71EC7F6BBBB4184BBA9685795C00D7B48FBCF4AEBCFEE84F8D59FE2FE5BD3FAC938A83A7A5B3ADC3E396A55EFDF6C61639FBFE29D9FEF23A93EDEB06E3136FE8F10A6AF49D031B765A3AC14E5FB42CC4C302543D7A020C00A267A775CEC2509E60E6A182';
wwv_flow_imp.g_varchar2_table(170) := '8001F0C832EBE54B55196E4EEBA86996A32F6F9615FFF08C6CFCF53263A656EB66757DA15B4345ADBCFD3FAFCAAA2F3F2B656BF70B7CE00BC3FA1881CB1EE83B580DE99374C957F441F4C54B4EF20B09D824C000C026288A5D4EA024ABF0F2937DCEEC79';
wwv_flow_imp.g_varchar2_table(171) := '7D93B1745BDAE7ACF7BF9E597740367CF72579E7D9A5E612BFF72DF29605E5074EC8EAEFBF68FAA06AEB316F296F43DBAAED2764E71F37584ADAE9839685785A80CAC7428001402CF434CF8B378E59CD3EB00AB0E3D995BED9D58D8D8D1B1F7F51563EF5';
wwv_flow_imp.g_varchar2_table(172) := '829CDE7F5CF316907AF3E183A54F3C27F0097C937A8D62D7009794B6FE74A9E5BE11F43DF4C1D86B6409BA126000A0ABE7E364774976A1A407D394A5951A03E5F1A5D6D7329585B82011BBFAD73CF97B39B26DBF0BB4A10ABD09C0276F3FF5B2B1DA74BA';
wwv_flow_imp.g_varchar2_table(173) := 'F7694F1E1F7975AB5495572875479F43DF530A699048136323C00020367EDAE7CE0CA64BBFAC024B0EEF3EB3541A8EAA7FD42C0B49A1C0B197B7989BD0AA4F9E8D5A8BDC7EF972C5C431326EFA24B97AEEB53275FE2C99B168AECCBEF326B9E19E8572E3';
wwv_flow_imp.g_varchar2_table(174) := '47F5F8C056D80CDBC1002CC64D9B28230D3679FDACDB52240760E3E51B5FFB951C7FC3BBFB4EF0AC88CDBF5D19C9C40FCEA3CF651A7DEF83133C2081280804A3C8C32C24700901FC18E564645D72AEEF9773970256099637FBA6B9F93B6E3BDBF9FDD765';
wwv_flow_imp.g_varchar2_table(175) := 'C3AF978AF4F4385235901694A2A1253266FA789971C70D326DC16C1931698C0C1C3D548A87F697FCFE85925D902B1959991208382ADAD3C2B01536C37630008B816386C94883CDB50BAE939977DC2857CE982845434A040C9D188B4D731B7EF6BABCF7A3';
wwv_flow_imp.g_varchar2_table(176) := 'A59E6C6BDB9F5D61B9F48FBE863EE7848B3F656955AC0482B116C0FC240002767E904E6E3F287B7EB11AE29EF860F07FF7A95765F7DA6D8E06FF8CDC2C197BDD249979D73C993C779A0C1D3D42B2B3B33D61B31B94CCCACE92C1A386C9E4EBA7C92C83E1';
wwv_flow_imp.g_varchar2_table(177) := 'D85993044CEDEA862060CFD2CDB2FEDB2F9A8F57B69B2FD5727B7FBD56CAF69FB054C34E5FB32C840224601060006040E0FFB113C066A4A2AC7CCB8276BDB949CAD71DB0944BB540F3B12AF3BEFEA30EAEF7A765A4C9E869E365FAA2393264C45009A565';
wwv_flow_imp.g_varchar2_table(178) := 'A4DA0CCFD78F57DB0E1939D4643A7AEA380163BB469DDC71C8F0E14F04BEB49B275572E813E81B56F5A38FA1AF59C9E9904E1B6327C0002076862CE13C8192AC02CB0D8110DDFEDC2A692DAFC7A12B3F1830FEF4E59FD9BEAF3F100CCAC809A365C6ED37';
wwv_flow_imp.g_varchar2_table(179) := 'CAB0312324232DDD9576795929301D76E5489971DB0D327CFC68E39289BD6B260D1575F2FA579F71751080F6B6E5E7C625260B07991BFF8C3E6621C66412B04D8001806D5414B42290114C17040156723567AA64E74F57B8F21A6DC3FE7273C0C09E052B';
wwv_flow_imp.g_varchar2_table(180) := '3B905E5458283317CD9591578F95CC0CCEF8C124919FCCCC4C193579ACB1223057F2F3F36D5585A7092208806F6D6548A210F6C4ECF8C972A9AFB50E88D1B7D0C792A89E8BABA26AF120C000201E1459C607048A8D194AAEC58640081FDABA57CA56EFC3';
wwv_flow_imp.g_varchar2_table(181) := 'A16B3E4DC6B2FFD26FFD463060D8516AE8B06172F5829912CAE3F57D3BBCE229939D9F23D7DC324B060E1D64AB58F8F48D6FFCCA752B01E803C7F61EB2B4017D0A7DCB52900224E08000030007B0286A8F40497691AD25DA2DCFAE10B7CCCAEAF795C96B';
wwv_flow_imp.g_varchar2_table(182) := 'C6B23F060A3B568E9B3241C6CC992881347B4BD176CAA48C330281F4A08C9B3345464D1C632B235675CC4B3BC62A8FAD0C0916AADD7642D007ACAA090402823E6525A7533A6D8D0F010600F1E1C8527A11C8490FC9402308E8752AEC61535393BCF7AB55';
wwv_flow_imp.g_varchar2_table(183) := '82E79E871548D2C9A66395B2ECC9DFDA7A794F302D28D36E32669EE38627493B56A32460C45FC3278D9129374E17F846296B242208C02A4F93B1DA637C4DD9FF58FADFFDC2DB823E60A504FA12FA94951CD349C0290106004E8951DE16012C571686722D';
wwv_flow_imp.g_varchar2_table(184) := '654FEC3B22079E7B3B6541C0B999FFCF6D2DFBA767A6CB9CC5F3247780F53B102C0DA7405C09140EEA27B317DD28F09155C158E5C16A4F9311F859C926221D01EFBE5FBC2568FB56E5A30FA12F59C9E9954E6BE345800140BC48B29CCB080CC82E9650BA';
wwv_flow_imp.g_varchar2_table(185) := 'F5C6B86D2FAF95934B775D963FD12730F8DB9DF9A787D265D6C2EB2598636D4FA2F566F9E109A4E5661A3EBA41E0ABF01217CF6225E08DAFFE4A5211049C5EB647DE7B73E34565221CA1EFA00F4548E6691288990003809811B2804804D2836962F7076C';
wwv_flow_imp.g_varchar2_table(186) := 'DB4B6BA4B92C79AFD3ADDB572A6F7EF3597B337F0CFEB75E2F69D999914CE579971048CBCE905986AFEC0401E756027E9ED420A0A5AC56363EB7CC162DF41DF4215BC21A09D1D4F8116000103F962C290C013CB4A47F765198944B4F3557D6CBBAA75E96';
wwv_flow_imp.g_varchar2_table(187) := 'D6F2BA4B1312F0AD6AEB3159FEE4F3B6AEF9632099790B07FF04B8216145225043109011B25EADB9B01280D5A0842974BE60B4EDD5DFFE9DADA0137D067DE77C56FE2181841060009010AC2CB43781FED985929799DDFB54D8E3AA43A5B2F5572BA4A3A6';
wwv_flow_imp.g_varchar2_table(188) := '396C7A3C4EE28D7E2BBFF77B5B3FC2184030F8A7E770E61F0FF6C92C0341C08C5BE64AA68D20002B01580D4AE4E580B6F27AD9FCE337A4F664A52506F415F4194B412D0568743C09300088274D961591C0C09C7EB69E1278FC9D7DF2F6775F4CC833DC31';
wwv_flow_imp.g_varchar2_table(189) := 'F35FF6CD5FDB9AF963F0C700C2C13FA24B5D9F00DF4DB719046025E0B52FFF5CAAB71D8FBB5D78A7C43BDF7D59F06862ABC2B1E48FBE6225C774128807010600F1A0C8322C096406D365901104580A1A027821CA8E1F2F8FEB4A005EB38A993F7EE88D2A';
wwv_flow_imp.g_varchar2_table(190) := '94FF63D68881030388529089AE27001FC297A12CEB551CB48D15DFFD9D607F48BC0CC3CC7FFB0F5E97D2A3A76C15893E82BE624B5843219A1C5F020C00E2CB93A52908E467E64849768142E262D281753B64FF336BE3727B60A571CDFF8DAF3D636BE68F';
wwv_flow_imp.g_varchar2_table(191) := 'C17F9A316BCCE0B2FF456778FC0841C0B40573C46E1080C706C7632500F7FAEFFFC51A797FCB1E5B04D137D0476C09538804E2408001401C20B208FB04B0B339CFC67E0094B86BCD16D9FFFFAD8C6925A07CED0159655CF3C72B6251A6EA93695C2FC640';
wwv_flow_imp.g_varchar2_table(192) := 'C1C15F45C99B6917838090A501682B5809C025234BE10802D8C772E047AB65CFBBEF4590B8F434FA04FAC6A567F9ED5202FC166F020C00E24D94E55912189ADB5FB233AC7F8851D0F6D59BE4D88B9BA35A09A8DC7A5456FFF0255B337FCC0ECDC13FD79E';
wwv_flow_imp.g_varchar2_table(193) := '5ED08D1F6F11401070ED82D912CAB2F6312E072CFBF66F259A200033FF232FBC2B68BB7608E51A01F1D0DC0176442943027125C00020AE3859981D02C14050861A4140669AF56D5A286FF36BEBCC9500FCB0E2BB9DCFB999FFFF0A667356F2A1AC4C997A';
wwv_flow_imp.g_varchar2_table(194) := 'F37592C1C1DF0A95E7D3B1BA63370840DBC1BE1127410036FCEDFA8F3764EBEB6FDB628540187D211808D892D75988B6C79F000380F833658936086404D36578DE00490BDA6B82984D1D7B618BAD9500A733FF6B8CC13F3337CB86D614F103810B414056';
wwv_flow_imp.g_varchar2_table(195) := 'B6B5CFB112802000B78F5AD98EC1FFE06F36D85EF6CF484B3703E1342320B62A9BE924900802F67E7D135133CBD49E00560086E70DB4CD61E30B2BE4E0CFD729E531F35FFEEDE76DCEFC4382C13FC4C15FC9D48F890802A6CE9F25768300DC3EAA5A09C0';
wwv_flow_imp.g_varchar2_table(196) := 'F3FDF7FE64B56C7B7DBD3D5CC6847F44FE2041206C2F83EE52B43F1104180024822ACBB44D203B3D2423F2ED07015B8CCB01C7FFB055C25D0EC0CC7FED7FBDE260F09F251CFC6DBBCA7782B8E48320203B3BDBD2B60B2B01B8A3A4AF3066FE877EF38E60';
wwv_flow_imp.g_varchar2_table(197) := 'D36ADFB448DF47170C11DEEE17890ECF278B0003806491663D1109E46664CB30E3724044813E09EB7FF5861C7CE6D26BAC1766FEF8A1EE237ED9D7501666FE1CFC2F03A3E1898CDC904C993F43EC0601CBBFFD5B295F77E01252EF3FB75E36BFB4FA9273';
wwv_flow_imp.g_varchar2_table(198) := 'AA2F57140C96509AF573095465E896467B134380014062B8B2548704F2337364706E89ED5CD86475E8B90D52B5FEB060F07736F39FC999BF6DD2FE17C4FE0F04013939D62B01D818B8FAE997CC3687B6B7DF58F6DFFEC606DB90B0DA85552FDB19284802';
wwv_flow_imp.g_varchar2_table(199) := '0924C00020817059B4330245A13C1998536C3BD3BB2FAE92DD3F5A21ABBEFF82CD5BFD4232E5E699C6E06FFD436F5B090AFA82008280C937CD90DC9C1C4B7B1004A0CDA1EDD9BEE66F948A0017AB5DC621FF774480C28922C000205164596E5404FA6515';
wwv_flow_imp.g_varchar2_table(200) := '484976A1EDBCA71B2B6CC962B3D71463F0CFCAE5E06F0B988642080226DD34DD5610003C76DB1E64F1763F04B838E68704DC428001805B3C413D3E203020BBC8D1E5800F324638C0E03FD9B8CECBC13F02209EFE800036853A09023EC8A838C0AA16DFEE';
wwv_flow_imp.g_varchar2_table(201) := 'A7006491C4E4C41160009038B62C390602982DE17A690C459859B1B90BD77739F89B38F88F0D021782801C1B7B02AC8AC3B23F56B5ACE4984E02A920C0002015D459A72D02B85E8A1DD3B684C30861F09F3C7F3AAFF98761C3536A020802AEBE6986C412';
wwv_flow_imp.g_varchar2_table(202) := '04E0CE1604B2EA9A98AA26C0D4441260009048BA2C3B6602D8313DBA708848401CFD9799962157DF348D83BF236A14EE4DC00C02E6190164BABD4756F7CE8BD52BDCD9D2FB1C8F49C06D041800B8CD23D4E73202A1B44C1953384CF0E8D4CB12239C68EF';
wwv_flow_imp.g_varchar2_table(203) := 'EA90633BDE97AEB6CE08123C4D026A025DED5D7264C70169EBEC500BF64A4D0B0605AB5658BDEA759A87511260B6C41260009058BE2C3D4E04F0D4B491F9836CBF4510D5569EA9942DCBD74BFD991A7CE587046C13A82BAF96CD6FAE932AA30DD9CD9469';
wwv_flow_imp.g_varchar2_table(204) := 'AC3A5D913F58B06A65370FE5482095041800A4923EEB764420C37C81D040C1EB53ED66EC68EB909D6F6F95933B8F484F578FDD6C94D39400DA08568E76ADDF269D1DF6578FF0563F2CFB2308D0145D02CC66918926C00020D184597E5C09E0CD69C37207';
wwv_flow_imp.g_varchar2_table(205) := '485E66B6A3728F1F3C22BB576F91D6FA6647F928AC0F81E6BA26796FE5263975F88423A3D11647E40D1404A88E32529804524C8001408A1DC0EA9D1308060282B70896641738CA5C5757275B57BE23670E9F76948FC23E27602C0C9D39784AB6AFDA288D';
wwv_flow_imp.g_varchar2_table(206) := '0D8D8E8C451B445B0CF295BE8EB8D911A64CE2093000483C63D690200203B28B05B75AA507D36CD7D0D3DD230777EC93036B77486B438BED7C14F42701B48103EB76C8C19DC63D636B0000100049444154FB056DC3AE956873687B688376F3508E04DC46';
wwv_flow_imp.g_varchar2_table(207) := '800180DB3C427D1C11C8CFCC919105831D5F12A8A8A8941D2B374AD9EEA3D2D3D9EDA84E0A7B9F007C5E6AF81E6D006DC1894579C6E527B4B97CA3ED39C947592704289B0C020C0092419975249400EE10C0322C9EB7EEA4A2CEAE2E397CE0B0EC5AF1AE';
wwv_flow_imp.g_varchar2_table(208) := 'D4975639C94A590F13A83F5D65FAFC88E17BB40127A6A08DA1ADA1CD39C947591270230106006EF40A758A8A009EB73E3C7FA0841C3EB8A5BEA95176BEB35D0EAFDF2D9DCDED51D5CD4CEE27D0D1D466FA78E7C6ED029F3BD1186D0A6D0B6DCC493ECA46';
wwv_flow_imp.g_varchar2_table(209) := '4780B992438001407238B3962411C8CBC896117983A43094EBB8C6B2F272D9BE7CA39CD97B427ABA7859C031409766802FCB0D9F6E5F615CF2317CEC544DB425B429B42DA779294F026E26C000C0CDDEA16E5111C006AD21B9FD65504EB10402CE9E21DC';
wwv_flow_imp.g_varchar2_table(210) := 'D6D92E07F7BD2F7B566E9586F2DAA8EA6726F710682CAF913D2BB6C821C3A7ED0E9EE8070B028180D986D096D0A6708E9F6410601DC922C0002059A4594FD209146715C888FC41929B91254EFFAB6DA893F7D66F91036BDF93C6330C049CF24BB57C83E1';
wwv_flow_imp.g_varchar2_table(211) := 'B3FD6B76C88EF55BA5B6B1DEB13A6833683B68438E3333030978840003008F388A6A464720273D640601580D886616575151213BDEDE22FB566F93BAD395223DD1E9C15C4920D0DD636EE6DCBB6AABBC67F8ACB2D2F097C36AD146D05630F8A3ED38CC4E';
wwv_flow_imp.g_varchar2_table(212) := 'F138106011C923C0002079AC59530A0960268797B41465E547A5455575B5ECDAB843F6ACDC2235272A448CC126AA829829FE040C5FD41E3F6BF866ABB999B3BA26BA773FA06DA08D141B2B47F15792259280FB083000709F4FA8518208E051AD8373FA09';
wwv_flow_imp.g_varchar2_table(213) := '7673E7447159006AD5D4D5CA9ECDEFC9AE159BA5EA68B9F4F0FD02C092924F4F57B7E9835DCBDF95DD5B764A4D7D74976AD016D026D036D04652620C2B3D4F807F92498001403269B32E5710C06E6EBC5970604EB160C9371AA5EA1AEA65DFB6DDB263E9';
wwv_flow_imp.g_varchar2_table(214) := '0629DD7D54DAF854C168304695A7BDBE454A771D31D8BF63FAA0AEB121AA72E07BB401B405B489A80A612612F0300106001E761E558F8D403F63A9174F742B0CE5455D50534B8BE081325B966F90036B7748F5F133C6AA006F218C1A68848C98EDD718CB';
wwv_flow_imp.g_varchar2_table(215) := 'FC60BC79C50639F2FE1101FB08E296A7E173F81E6DC05298024923C08A924B8001407279B3369711C013DD86E496989705B23342516BD7D3D32378A4ECDE2DBB64EB1BEBE5E4CE43D25C13DDCC346A257C98B1B9B6514EBE7750B6BCBE5EF618CBFC600C';
wwv_flow_imp.g_varchar2_table(216) := 'D6D19A0A1F63B91F3E87EFA32D87F948C00F041800F8C18BB42166025802BE227FB06060C020114B81AD6D6D72FCE031D9B66A93EC5EBD55CE1E3E2DAD4D7CF1905DA66D062B30DBBD72B36C5BB9518E1F3A2E6DED6D76B38795834FE15BF818BE0E2BC4';
wwv_flow_imp.g_varchar2_table(217) := '932926C0EA934D800140B289B33E5713C0D2300609BCE92D37333B665D6BAB6BE4FD1DFB64CB9BEBCDA70C9EDC7D581A2A6B1DBD792E66255C5E00DEC2D750592727F718D7F5976F92CD06ABF70D66B5B575316B0E1FC297F0297C1B73812C80047C4480';
wwv_flow_imp.g_varchar2_table(218) := '01808F9C4953E247006F7A1B91375046E40F9482281E2B1C4E93A6FA46397EE0A8BCB7668B6C7CF52D39B079B7549D3C231DED9DE1C47D7DAEB3ADC3B0FDAC1CDABC5736192CDE5BB3598EEF3F228DF5F1B96C029FC177F0217CE96B983E318E66249F00';
wwv_flow_imp.g_varchar2_table(219) := '0380E433678D1E22909B912D4373FB0BEE0F2FC233049C3D5938A2A55D9D5D5271A25CF6BDBB4B36FD698DBCB772931CDDF1BE541E3F236D0DCDE2AB070EF588B4D63749E5B17239B6FD7DD3D68D86CDFBDEDD29E5274AA5D3601111949304C337F0117C';
wwv_flow_imp.g_varchar2_table(220) := '059FC1774EB25396047423C00040378FD3DEA80864A78704F7898F29182AD8399E168C63D7E9E99186DA06397DF884ECDFB24B362FDB201B5E5D2D7BD66D93537B8F484D59A574B479E72D85D0B5B6AC4A4E1ABAEF59B75DD6FF71956C59FE8EECDFBA5B';
wwv_flow_imp.g_varchar2_table(221) := '4E1D3961DA1A951322644A0B064D9FC037F0117C154194A75D4B808AA582401C7FC552A13EEB2481E412C84CCB10DC3B3EAA6088F9170F91498406DD1D5D5273B65A8EED3B227B36EC305609D60A66CD7BD66E93C35BF649E9BEE35275E28C3456D54B47';
wwv_flow_imp.g_varchar2_table(222) := 'AB111C18B3EC44E811B64CA3AEF696366932EA860ED0053A4137E8B8E94F6B65F786ED72DCD0BDE66C95F47426E6B648B0EFED0BF826ACBE3C4902241096000380B058789204D404F0C438AC04E0213258722EC92E94507A863A538CA9B86E5E53512D65';
wwv_flow_imp.g_varchar2_table(223) := 'C74FCB91BD0765DFE65DB2E3AD7765D36B6BE5ED3FAC906DCB36CAFE0D3BE5D8CE435276E084541C392D954690505B5A290D15B566B080CB0B18BCBB3A2EEE3BC031CE210D0105649107795146A95116CA44D9A80375BDFBFA3AD96ED40D1DA00B74826E';
wwv_flow_imp.g_varchar2_table(224) := 'D031463395D9C118ACC11CECE103F842998989AE27400553438001406AB8B3561F11C092F380EC22196D5C1EC0C6335C87C653E62499FF19B3F2E68646A92C3B2BA70E1E93C3BBDF9703DBF7C97E2348D8FDCE0E796FED163358C0E5050CDEEFFCF12D79';
wwv_flow_imp.g_varchar2_table(225) := 'FBA515E607C7388734041490451EE44519478CB25026CA461DC9DE9F0096600AB6600CD6609E4CBCAC8B04FC488001801FBD4A9B5246001BCF701D7A4CE130199AD75FB0033D1008A44C1FAF561C08044C76600896600AB65EB5877AAB08302D55041800';
wwv_flow_imp.g_varchar2_table(226) := 'A48A3CEBF53581A031801564E60AEE411F53385406E5149B031A66B3BE363C06E3C0060113588119D8812158C6502CB39200094420C0002002189E26817811C035EAE2AC023318B8B268B8794B2136AF61B0C3A017AF7ABC560E6C2F0CE5CAA0DC7E32AA';
wwv_flow_imp.g_varchar2_table(227) := '7088800D067DB00233E17F5A10A091A923104C5DD5AC9904F42480EBD7D8BC86C10E83DE6863F0C320E8F780E0C2803F24B74430C387ED4372FB4B71285FB2D232F56C0CB49A0452482098C2BA59350990804120640C7E18042F0404638A86C990DC1229';
wwv_flow_imp.g_varchar2_table(228) := 'CACA17DCEA8681D310F3D4FFD019BAC306D832B6689839C3C7808F47F266A625F68E094FC1D25A591A9F4A020C0052499F759340180299C174C120898D6FB8D50D33E571C523CC4B07438CC000AB0778C67D465A7A98DCC93D051DA00B74826EB83D0FBA';
wwv_flow_imp.g_varchar2_table(229) := '4267E80E1B604B8661537235636D244002560418005811623A09B880403010145C3AC0608AFD0378C6FDD8C26132BEDF48C12504AC1EE0FE780CC49875E3DA3A2E296070C64C3C2B3DD37C4E01066CCCCECD8D75B839C1F8E018E79086FBEC218B3CC88B';
wwv_flow_imp.g_varchar2_table(230) := '325016CA44D9FDB38BCCBD0CA813754307E8029D0A4379A68ED0D505C8A882070850C5D4126000905AFEAC9D046222109080848C4B0818A8717F3C0662CCBAB1D48EA000833366E2A30A86C8E882A182011BB3F371C5236542F115E607C7388734C88C32';
wwv_flow_imp.g_varchar2_table(231) := '649107795106CA429928BB7F76A1793703EA44DD3129CFCC2440022925104C69EDAC9C0448800448405302343BD5041800A4DA03AC9F0448800448800452408001400AA0B34A12200112D09D00ED4F3D010600A9F701352001122001122081A413600090';
wwv_flow_imp.g_varchar2_table(232) := '74E4AC9004488004742740FBDD408001801BBC401D4880044880044820C9041800241938AB2301122001DD09D07E77106000E00E3F500B12200112200112482A01060049C5CDCA48800448407702B4DF2D041800B8C513D4830448800448800492488001';
wwv_flow_imp.g_varchar2_table(233) := '401261B32A12200112D09D00ED770F010600EEF105352101122001122081A41160009034D4AC8804488004742740FBDD448001809BBC415D488004488004482049041800240934AB2101122001DD09D07E77116000E02E7F501B12200112200112480A01';
wwv_flow_imp.g_varchar2_table(234) := '060049C1CC4A48800448407702B4DF6D041800B8CD23D4870448800448800492408001401220B30A12200112D09D00ED771F010600EEF309352201122001122081841360009070C4AC8004488004742740FBDD488001801BBD429D4880044880044820C1';
wwv_flow_imp.g_varchar2_table(235) := '0418002418308B2701122001DD09D07E77126000E04EBF502B12200112200112482801060009C5CBC249800448407702B4DFAD041800B8D533D48B04488004488004124880014002E1B26812200112D09D00ED772F010600EEF50D352301122001122081';
wwv_flow_imp.g_varchar2_table(236) := '841160009030B42C9804488004742740FBDD4C8001809BBD43DD48800448800448204104180024082C8B2501122001DD09D07E77136000E06EFF503B12200112200112480801060009C1CA4249800448407702B4DFED041800B8DD43D48F044880044880';
wwv_flow_imp.g_varchar2_table(237) := '04124080014002A0B24812200112D09D00ED773F010600EEF711352401122001122081B81360001077A42C9004488004742740FBBD4080018017BC441D4980044880044820CE041800C419288B2301122001DD09D07E6F106000E00D3F514B1220011220';
wwv_flow_imp.g_varchar2_table(238) := '0112882B01060071C5C9C248800448407702B4DF2B04180078C553D49304488004488004E2488001401C61B22812200112D09D00EDF70E010600DEF115352501122001122081B81160001037942C8804488004742740FBBD4480018097BC455D49800448';
wwv_flow_imp.g_varchar2_table(239) := '800448204E041800C409248B2101122001DD09D07E6F116000E02D7F515B12200112200112880B01060071C1C84248800448407702B4DF6B04180078CD63D49704488004488004E2408001401C20B20812200112D09D00EDF71E010600DEF31935260112';
wwv_flow_imp.g_varchar2_table(240) := '2001122081980930008819210B2001122001DD09D07E2F126000E045AF51671220011220011288910003801801323B09900009E84E80F67B930003006FFA8D5A93000990000990404C041800C4848F9949800448407702B4DFAB04180078D573D49B0448';
wwv_flow_imp.g_varchar2_table(241) := '80044880046220C000200678CC4A02244002BA13A0FDDE25C000C0BBBEA3E624400224400224103501060051A3634612200112D09D00EDF7320106005EF61E7527011220011220812809300088121CB39100099080EE0468BFB7093000F0B6FFA83D0990';
wwv_flow_imp.g_varchar2_table(242) := '0009900009444580014054D8988904488004742740FBBD4E800180D73D48FD49800448800448200A020C00A280C62C24400224A03B01DAEF7D020C00BCEF435A40022440022440028E093000708C8C1948800448407702B4DF0F041800F8C18BB4810448';
wwv_flow_imp.g_varchar2_table(243) := '80044880041C126000E01018C549800448407702B4DF1F041800F8C38FB482044880044880041C116000E008178549800448407702B4DF2F041800F8C593B483044880044880041C106000E000164549800448407702B4DF3F041800F8C797B484044880';
wwv_flow_imp.g_varchar2_table(244) := '044880046C136000601B150549800448407702B4DF4F041800F8C99BB485044880044880046C126000601314C548800448407702B4DF5F041800F8CB9FB486044880044880046C116000600B138548800448407702B4DF6F041800F8CDA3B48704488004';
wwv_flow_imp.g_varchar2_table(245) := '4880046C1060006003124548800448407702B4DF7F041800F8CFA7B488044880044880042C093000B044440112200112D09D00EDF7230106007EF42A6D22011220011220010B020C002C00319904488004742740FBFD498001803FFD4AAB488004488004';
wwv_flow_imp.g_varchar2_table(246) := '484049800180120F1349800448407702B4DFAF041800F8D5B3B48B044880044880041404180028E0308904488004742740FBFD4B8001807F7D4BCB48800448800448202201060011D1308104488004742740FBFD4C8001809FBD4BDB4880044880044820';
wwv_flow_imp.g_varchar2_table(247) := '0201060011C0F03409900009E84E80F6FB9B0003007FFB97D6910009900009904058020C00C262E14912200112D09D00EDF73B0106007EF730ED2301122001122081300418008481C253244002831319E5000001CB4944415424A03B01DAEF7F020C00FC';
wwv_flow_imp.g_varchar2_table(248) := 'EF635A4802244002244002971160007019129E2001122001DD09D07E1D083000D0C1CBB49104488004488004FA106000D00708BF9200099080EE0468BF1E041800E8E1675A49022440022440029710600070090E7E2101122001DD09D07E5D083000D0C5';
wwv_flow_imp.g_varchar2_table(249) := 'D3B493044880044880047A116000D00B060F49800448407702B45F1F020C00F4F1352D25011220011220810F083000F800050F48800448407702B45F27020C0074F2366D2501122001122081F30418009C07C13F24400224A03B01DAAF170106007AF99B';
wwv_flow_imp.g_varchar2_table(250) := 'D69200099000099080498001808981FF9000099080EE0468BF6E041800E8E671DA4B02244002244002060106000604FE4F02244002BA13A0FDFA116000A09FCF693109900009900009080300360212200112D09E0001E8488001808E5EA7CD2440022440';
wwv_flow_imp.g_varchar2_table(251) := '02DA136000A07D132000122001DD09D07E3D093000D0D3EFB49A04488004484073020C00346F00349F0448407702B45F57020C0074F53CED260112200112D09A000300ADDD4FE3498004742740FBF525C000405FDFD3721220011220018D093000D0D8F9';
wwv_flow_imp.g_varchar2_table(252) := '349D0448407702B45F67020C0074F63E6D270112200112D0960003006D5D4FC3498004742740FBF526F0FF030000FFFFB17177B9000000064944415403002850AFE141CAB0C70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41825610155431701965)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(41825612208070701969)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:3yhrn6vMomFS9lJSiUELavVJBvfPg1Nm_2g2zEGMqLs'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(41825612459127701969)
,p_name=>'Contribution Rights'
,p_static_id=>'contribution-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator,Contributor',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>'SH256:ciFz4rcxddalYIUr3Jinzh7tWbPXCTrEEDvj0GvJb6Y'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(41825612337096701969)
,p_name=>'Reader Rights'
,p_static_id=>'reader-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if nvl(apex_app_setting.get_value(',
    '    p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
    '    -- allow user not in the ACL to access the application',
    '    return true;',
    'else',
    '    -- require user to have at least one role',
    '    return apex_acl.has_user_any_roles (',
    '        p_application_id => :APP_ID, ',
    '        p_user_name      => :APP_USER);',
    'end if;')))).to_clob
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>'SH256:rraFlo6EMInHtSUuxfoZXPob0ulO3Y_yKNkQ5x_t8NI'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(41825611891732701967)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>'SH256:dheqzA6FvJpxO1XvRjEkdmp8Sopp4a5_9FwX9SJ6d2A'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(41825612064793701968)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>'SH256:E1I9yvnWl7TTVCZZdLycGZM5J4upKtPrWG-og_uLylc'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(41825612189872701968)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>'SH256:vmP-ozbK0YK2PWJBw-FIve6SxhPxsqFi7yI6JPE-efc'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(41825613219299701971)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(41825610398137701966)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>'SH256:wtFSXAJO6ZfBIDZaLT-NWeHYfr8jXR6d7K_DuhjTxbQ'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
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
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(41825643858102702149)
,p_lov_name=>'ACCESS_ROLES'
,p_static_id=>'access-roles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:hw1yHwou0QVtzlsCnrLSXndSn95AkdZHJv9ZCO7rHeg'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(41825621771163701988)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(41825621771163701988)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(41825622433926701989)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(41825622014915701989)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(41825625731634701996)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_static_id=>'desktop-theme-styles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:BV99rFiD2E3hUCMQwqdJUP9mSBtytAbj6XTz8AGFmsA'
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(41825651052013702157)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_static_id=>'email-username-format'
,p_lov_query=>'.'||wwv_flow_imp.id(41825651052013702157)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:og77UyB456nZ1KlCr4DAkFaNaKZm9jBHGC16mBmSJsk'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(41825651334321702157)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
,p_static_id=>'email'
);
end;
/
prompt --application/shared_components/user_interface/lovs/employee_emp_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(41830901581449818175)
,p_lov_name=>'EMPLOYEE.EMP_NO'
,p_static_id=>'employee-emp-no'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EMPLOYEE'
,p_return_column_name=>'EMP_ID'
,p_display_column_name=>'EMP_NO'
,p_default_sort_column_name=>'EMP_NO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:y17ES_WpfZtAx4xACSOc_7mTJc4QO6LIc8eBl6nHRuk'
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184100Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/exp_categories_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(41830902224239818176)
,p_lov_name=>'EXP_CATEGORIES.NAME'
,p_static_id=>'exp-categories-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EXP_CATEGORIES'
,p_return_column_name=>'CATEGORY_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:dbi35M_C0VCbILsjlVBLxqDsFMX7lSIWqQ91PxJfZ44'
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184100Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(41825626492379701999)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_static_id=>'user-theme-preference'
,p_lov_query=>'.'||wwv_flow_imp.id(41825626492379701999)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:DLn_dOJ7xpnm9CVvk5HeeBDxUDGi5ktqZfERlWXvyAE'
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(41825626707533701999)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
,p_static_id=>'yes'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(41825613575012701974)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(41825606543252701942)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232420Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(41825664029454702176)
,p_short_name=>'Administration'
,p_static_id=>'administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(43097412339986036893)
,p_short_name=>'Expense Approval Queue'
,p_static_id=>'expense-approval-queue'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20261001015644Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015644Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(43497048482548561390)
,p_short_name=>'Expense Dashboard'
,p_static_id=>'expense-dashboard'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20261002013728Z')
,p_updated_on=>wwv_flow_imp.dz('20261002013728Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(41830900572541818048)
,p_short_name=>'Expense Entry'
,p_static_id=>'expense-entry'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260926184058Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184058Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(43796612524435402571)
,p_short_name=>'Expense Explorer'
,p_static_id=>'expense-explorer'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20261002232420Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232420Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(42690819218850214982)
,p_short_name=>'Expense Search'
,p_static_id=>'expense-search'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260930012624Z')
,p_updated_on=>wwv_flow_imp.dz('20260930012624Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(41825606784898701943)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(42330371957683674036)
,p_short_name=>'My Expenses'
,p_static_id=>'my-expenses'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260929014255Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014255Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(41825607492050701944)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
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
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(41825605892814701941)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(41825610398137701966)
,p_build_option_name=>'Feature: Access Control'
,p_static_id=>'feature-access-control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:oflPhSoxb6RLGIrI0NPG8HuaDVyLNnJobFXxm8ThcXA'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(41825611193101701966)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_static_id=>'feature-theme-style-selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:QRbJopHL0jPGfJBmzVDfxlGvtK3A5q4-lkLWnG9Vv6I'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
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
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(41825606172969701942)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
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
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Employee Expense Tracker'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825621175380701986)
,p_plug_name=>'Employee Expense Tracker'
,p_static_id=>'employee-expense-tracker'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'New Expenses'
,p_alias=>'EXPENSE-ENTRY'
,p_step_title=>'New Expenses'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612459127701969)
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260926184058Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260929020401Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41830899923312818047)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(41825606543252701942)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260926184058Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184058Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41830900794639818174)
,p_plug_name=>'Expense Entry'
,p_static_id=>'expense-entry'
,p_title=>'New Expenses'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXPENSE_ID,',
'       EMP_ID,',
'       CATEGORY_ID,',
'       DESCRIPTION,',
'       AMOUNT,',
'       SPENT_ON,',
'       STATUS,',
'       RECEIPT_BLOB,',
'       RECEIPT_NAME,',
'       RECEIPT_MIME,',
'       CREATED_BY,',
'       CREATED_ON,',
'       APPROVED_BY,',
'       APPROVED_ON,',
'       REJECT_REASON',
'  from EMP_EXPENSES'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927165432Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41830912126709818185)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184100Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41830913418299818187)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P2_EXPENSE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184100Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41830912699212818186)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P2_EXPENSE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184100Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41830913068948818186)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P2_EXPENSE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184100Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(41830913885280818187)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260929020103Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830903258401818178)
,p_name=>'P2_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170648Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830906483770818181)
,p_name=>'P2_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_source=>'APPROVED_BY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170803Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830906825880818181)
,p_name=>'P2_APPROVED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_source=>'APPROVED_ON'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170803Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830902126598818176)
,p_name=>'P2_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_prompt=>'Category'
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display_value, category_id as return_value',
'from exp_categories',
'order by name'))
,p_lov_display_null=>'YES'
,p_colspan=>6
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170648Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830905682573818180)
,p_name=>'P2_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_source=>'CREATED_BY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170803Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830906031189818180)
,p_name=>'P2_CREATED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_source=>'CREATED_ON'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170803Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830902833476818177)
,p_name=>'P2_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170841Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830901499001818175)
,p_name=>'P2_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_default=>'select emp_id from employee where upper(email)=upper(:APP_USER)'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'EMP_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927172119Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830901000344818174)
,p_name=>'P2_EXPENSE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_source=>'EXPENSE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170648Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830904413320818179)
,p_name=>'P2_RECEIPT_BLOB'
,p_source_data_type=>'BLOB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_prompt=>'Receipt Blob'
,p_source=>'RECEIPT_BLOB'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_copy_paste', 'N',
  'blob_last_updated_column', 'RECEIPT_BLOB',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'RECEIPT_NAME',
  'mime_type_column', 'RECEIPT_MIME',
  'storage_type', 'DB_COLUMN')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927173315Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830905241198818180)
,p_name=>'P2_RECEIPT_MIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_source=>'RECEIPT_MIME'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170803Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830904802389818179)
,p_name=>'P2_RECEIPT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_source=>'RECEIPT_NAME'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170803Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830907202339818182)
,p_name=>'P2_REJECT_REASON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_source=>'REJECT_REASON'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170803Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830903655289818178)
,p_name=>'P2_SPENT_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_prompt=>'Spent On'
,p_source=>'SPENT_ON'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927170648Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41830904058664818179)
,p_name=>'P2_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_source_plug_id=>wwv_flow_imp.id(41830900794639818174)
,p_item_default=>'PENDING'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260927164411Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41830914200776818187)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(41830900794639818174)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Expense Entry'
,p_static_id=>'initialize-form-expense-entry'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>41830914200776818187
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260926184100Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41830914646604818188)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(41830900794639818174)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Expense Entry'
,p_static_id=>'process-form-expense-entry'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_process_error_message=>'Expense Creation Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Expense created successfully.'
,p_internal_uid=>41830914646604818188
,p_created_on=>wwv_flow_imp.dz('20260926184100Z')
,p_updated_on=>wwv_flow_imp.dz('20260929020401Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'My Expenses'
,p_alias=>'MY-EXPENSES'
,p_step_title=>'My Expenses'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.badge-PENDING, .badge-APPROVED, .badge-REJECTED {',
'  display: inline-block;',
'  padding: 4px 10px;',
'  border-radius: 12px;',
'  font-size: 12px;',
'  font-weight: bold;',
'  color: white;',
'}',
'.badge-PENDING   { background-color: #e0a800; }  /* amber */',
'.badge-APPROVED  { background-color: #28a745; }  /* green */',
'.badge-REJECTED  { background-color: #dc3545; }  /* red */'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260929014255Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260929015403Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42330371365269674035)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(41825606543252701942)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260929014255Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014255Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42330373002177674316)
,p_plug_name=>'My Expenses'
,p_static_id=>'my-expenses'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ee.expense_id,',
'       c.name as category,',
'       ee.description,',
'       ee.amount,',
'       ee.spent_on,',
'       ee.status,',
'       ee.receipt_name,',
'       ee.created_on,',
'       ee.approved_by,',
'       ee.approved_on,',
'       ee.reject_reason',
'from emp_expenses ee,',
' exp_categories c ',
'where c.category_id = ee.category_id',
'and ee.emp_id = (select emp_id from employee where upper(email) = upper(:APP_USER))',
'order by ee.spent_on desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929015303Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(42330373144190674316)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>42330373144190674316
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929015303Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330375928695674418)
,p_db_column_name=>'AMOUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014259Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330379186004674427)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929015303Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330379522320674428)
,p_db_column_name=>'APPROVED_ON'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Approved On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929015303Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39691474285198100621)
,p_db_column_name=>'CATEGORY'
,p_display_order=>25
,p_column_identifier=>'P'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014745Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014745Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330378723108674426)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014259Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330375504794674417)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014259Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330374392328674412)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Expense ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014259Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330377503352674422)
,p_db_column_name=>'RECEIPT_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Receipt Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014259Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330379928749674429)
,p_db_column_name=>'REJECT_REASON'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Reject Reason'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929015303Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330376331451674419)
,p_db_column_name=>'SPENT_ON'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Spent On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014259Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42330376728813674420)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_html_expression=>'<span class="badge-#STATUS#">#STATUS#</span>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260929014259Z')
,p_updated_on=>wwv_flow_imp.dz('20260929015303Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(42331585836526643930)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EXPENSE_ID:DESCRIPTION:AMOUNT:SPENT_ON:STATUS:RECEIPT_NAME:CREATED_ON:APPROVED_BY:APPROVED_ON:REJECT_REASON'
,p_created_on=>wwv_flow_imp.dz('20260929014517Z')
,p_updated_on=>wwv_flow_imp.dz('20260929014745Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Expense Approval Queue'
,p_alias=>'EXPENSE-APPROVAL-QUEUE'
,p_step_title=>'Expense Approval Queue'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612208070701969)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261001015643Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261001025139Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43097411796660036893)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(41825606543252701942)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20261001015644Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015644Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43097412750404037001)
,p_plug_name=>'Expense Approval Queue'
,p_static_id=>'expense-approval-queue'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ee.expense_id,',
'       emp.full_name as employee_name,',
'       c.name as category,',
'       ee.description,',
'       ee.amount,',
'       ee.spent_on,',
'       ee.status,',
'       ee.receipt_name,',
'       apex_page.get_url(',
'         p_page    => :APP_PAGE_ID,',
'         p_request => ''APPROVE'',',
'         p_clear_cache => :APP_PAGE_ID,',
'         p_items   => ''P4_EXPENSE_ID'',',
'         p_values  => ee.expense_id',
'       ) as approve_link,',
'       apex_page.get_url(',
'         p_page    => :APP_PAGE_ID,',
'         p_request => ''REJECT'',',
'         p_clear_cache => :APP_PAGE_ID,',
'         p_items   => ''P4_EXPENSE_ID'',',
'         p_values  => ee.expense_id',
'       ) as reject_link',
'from emp_expenses ee,',
' employee emp  ,',
' exp_categories c  ',
'where ee.status = ''PENDING'' AND emp.emp_id = ee.emp_id',
'  AND c.category_id = ee.category_id',
'  and emp.manager_id = (select emp_id from employee where upper(email) = upper(:APP_USER))',
'order by ee.spent_on'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261001015646Z')
,p_updated_on=>wwv_flow_imp.dz('20261001024800Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(43097412873083037001)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>43097412873083037001
,p_created_on=>wwv_flow_imp.dz('20261001015646Z')
,p_updated_on=>wwv_flow_imp.dz('20261001022243Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43097415766869037103)
,p_db_column_name=>'AMOUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261001015646Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015646Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39691477080650100649)
,p_db_column_name=>'APPROVE_LINK'
,p_display_order=>39
,p_column_identifier=>'R'
,p_column_label=>'Approve'
,p_column_link=>'#APPROVE_LINK#'
,p_column_linktext=>'Approve'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261001021001Z')
,p_updated_on=>wwv_flow_imp.dz('20261001022243Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39691476936229100648)
,p_db_column_name=>'CATEGORY'
,p_display_order=>29
,p_column_identifier=>'Q'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261001021001Z')
,p_updated_on=>wwv_flow_imp.dz('20261001021001Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43097415339297037102)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261001015646Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015646Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39691476838750100647)
,p_db_column_name=>'EMPLOYEE_NAME'
,p_display_order=>19
,p_column_identifier=>'P'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261001021001Z')
,p_updated_on=>wwv_flow_imp.dz('20261001021001Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43097414114126037098)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Expense ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261001015646Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015646Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43097417331048037108)
,p_db_column_name=>'RECEIPT_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Receipt Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261001015646Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015646Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39691477137671100650)
,p_db_column_name=>'REJECT_LINK'
,p_display_order=>49
,p_column_identifier=>'S'
,p_column_label=>'Reject'
,p_column_link=>'#REJECT_LINK#'
,p_column_linktext=>'Reject'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261001021001Z')
,p_updated_on=>wwv_flow_imp.dz('20261001022243Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43097416144256037104)
,p_db_column_name=>'SPENT_ON'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Spent On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261001015646Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015646Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43097416501374037105)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261001015646Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015646Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(43099898518408152920)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EXPENSE_ID:DESCRIPTION:AMOUNT:SPENT_ON:STATUS:RECEIPT_NAME:EMPLOYEE_NAME:CATEGORY:APPROVE_LINK:REJECT_LINK'
,p_created_on=>wwv_flow_imp.dz('20261001021604Z')
,p_updated_on=>wwv_flow_imp.dz('20261001021604Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691476713819100646)
,p_name=>'P4_EXPENSE_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261001015933Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015933Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43098553995493113001)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Expense'
,p_static_id=>'approve-expense'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update emp_expenses',
'set status = ''APPROVED'',',
'    approved_by = :APP_USER,',
'    approved_on = sysdate',
'where expense_id = :P4_EXPENSE_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'APPROVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Expense Approved'
,p_internal_uid=>43098553995493113001
,p_created_on=>wwv_flow_imp.dz('20261001021001Z')
,p_updated_on=>wwv_flow_imp.dz('20261001025139Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43098554044014113002)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Expense'
,p_static_id=>'reject-expense'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update emp_expenses',
'set status = ''REJECTED'',',
'    approved_by = :APP_USER,',
'    approved_on = sysdate',
'where expense_id = :P4_EXPENSE_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'REJECT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Expense Rejected'
,p_internal_uid=>43098554044014113002
,p_created_on=>wwv_flow_imp.dz('20261001021230Z')
,p_updated_on=>wwv_flow_imp.dz('20261001025036Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Expense Search'
,p_alias=>'EXPENSE-SEARCH'
,p_step_title=>'Expense Search'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'[id$="P5_SEARCH"] {',
'  margin-top: 100px;',
'}'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612337096701969)
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260930012624Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261001015311Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42690818694454214981)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(41825606543252701942)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260930012624Z')
,p_updated_on=>wwv_flow_imp.dz('20260930012624Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42690819867172215278)
,p_plug_name=>'Expense Search'
,p_static_id=>'expense-search'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ee.expense_id,',
'       emp.full_name as employee_name,',
'       c.name as category,',
'       ee.description,',
'       ee.amount,',
'       ee.spent_on,',
'       ee.status,',
'       ee.receipt_name,',
'       case',
'         when exists (',
'           select 1',
'           from apex_appl_acl_user_roles r',
'           where r.application_id = :APP_ID',
'             and upper(r.user_name) = upper(:APP_USER)',
'             and r.role_static_id in (''ADMINISTRATOR'', ''CONTRIBUTOR'')',
'         ) then ''UD''',
'         else null',
'       end as row_ops',
'from emp_expenses ee,',
' employee emp , ',
' exp_categories c  ',
'where :P5_SEARCH_FLAG = ''Y''',
'  and emp.emp_id = ee.emp_id',
'  and c.category_id = ee.category_id',
'  and (:P5_EXPENSE_DATE is null or ee.spent_on = to_date(:P5_EXPENSE_DATE, ''MM/DD/YYYY''))',
'  and (:P5_EXPENSE_TYPE is null or ee.category_id = :P5_EXPENSE_TYPE)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P5_EXPENSE_DATE,P5_EXPENSE_TYPE,P5_SEARCH_FLAG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260930012627Z')
,p_updated_on=>wwv_flow_imp.dz('20261001015311Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42690825183298215291)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39691476413434100643)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39691476513413100644)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39691475153606100630)
,p_name=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42690824119724215289)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39691475053751100629)
,p_name=>'EMPLOYEE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employee Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42690821192977215282)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42690828123366215297)
,p_name=>'RECEIPT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEIPT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Receipt Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39691475210392100631)
,p_name=>'ROW_OPS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_OPS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Row Ops'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260930014950Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42690826138154215293)
,p_name=>'SPENT_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPENT_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Spent On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42690827151693215295)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(42690819905467215279)
,p_internal_uid=>42690819905467215279
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_edit_row_operations_column=>'ROW_OPS'
,p_add_authorization_scheme=>wwv_flow_imp.id(41825612459127701969)
,p_update_authorization_scheme=>wwv_flow_imp.id(41825612459127701969)
,p_delete_authorization_scheme=>wwv_flow_imp.id(41825612459127701969)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20261001015311Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(42690820609063215281)
,p_interactive_grid_id=>wwv_flow_imp.id(42690819905467215279)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(42690820745194215282)
,p_report_id=>wwv_flow_imp.id(42690820609063215281)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42690821620497215284)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(42690821192977215282)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42690824678896215291)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(42690824119724215289)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42690825600055215293)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(42690825183298215291)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42690826613912215295)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(42690826138154215293)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42690827653829215297)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(42690827151693215295)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42690828681736215299)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(42690828123366215297)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42694458269651353305)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(39691476413434100643)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42694944754718214058)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(39691475053751100629)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42694945669215214060)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(39691475153606100630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42694946543579214062)
,p_view_id=>wwv_flow_imp.id(42690820745194215282)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(39691475210392100631)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39691474813116100627)
,p_button_sequence=>50
,p_button_name=>'P5_Clear'
,p_static_id=>'p5-clear'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_created_on=>wwv_flow_imp.dz('20260930013002Z')
,p_updated_on=>wwv_flow_imp.dz('20261001014409Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39691474792903100626)
,p_button_sequence=>40
,p_button_name=>'P5_SEARCH'
,p_static_id=>'p5-search'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_created_on=>wwv_flow_imp.dz('20260930013002Z')
,p_updated_on=>wwv_flow_imp.dz('20261001014355Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691474436359100623)
,p_name=>'P5_EXPENSE_DATE'
,p_item_sequence=>10
,p_prompt=>'Expense Date'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260930012913Z')
,p_updated_on=>wwv_flow_imp.dz('20261001014210Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691474512792100624)
,p_name=>'P5_EXPENSE_TYPE'
,p_item_sequence=>20
,p_prompt=>'Expense Type'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display_value, category_id as return_value',
'from exp_categories',
'order by name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260930012913Z')
,p_updated_on=>wwv_flow_imp.dz('20261001014228Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39691474630273100625)
,p_name=>'P5_SEARCH_FLAG'
,p_item_sequence=>30
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260930012913Z')
,p_updated_on=>wwv_flow_imp.dz('20260930012913Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39691476041211100639)
,p_name=>'Clear'
,p_static_id=>'clear'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39691474813116100627)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260930014647Z')
,p_updated_on=>wwv_flow_imp.dz('20261001011246Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39691476197376100640)
,p_event_id=>wwv_flow_imp.id(39691476041211100639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_EXPENSE_DATE,P5_EXPENSE_TYPE,P5_SEARCH_FLAG'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'suppress_change_event', 'N',
  'type', 'STATIC_ASSIGNMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260930014647Z')
,p_updated_on=>wwv_flow_imp.dz('20261001011246Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39691476245502100641)
,p_name=>'Clear Refresh'
,p_static_id=>'clear-refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39691474813116100627)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260930014737Z')
,p_updated_on=>wwv_flow_imp.dz('20260930014737Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39691476306790100642)
,p_event_id=>wwv_flow_imp.id(39691476245502100641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42690819867172215278)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260930014737Z')
,p_updated_on=>wwv_flow_imp.dz('20260930014737Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39691475680638100635)
,p_name=>'Search'
,p_static_id=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39691474792903100626)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260930014157Z')
,p_updated_on=>wwv_flow_imp.dz('20260930014824Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39691475770961100636)
,p_event_id=>wwv_flow_imp.id(39691475680638100635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SEARCH_FLAG'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'suppress_change_event', 'N',
  'type', 'STATIC_ASSIGNMENT',
  'value', 'Y')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260930014157Z')
,p_updated_on=>wwv_flow_imp.dz('20260930014157Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39691475886293100637)
,p_name=>'Search Refresh'
,p_static_id=>'search-refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39691474792903100626)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260930014255Z')
,p_updated_on=>wwv_flow_imp.dz('20260930014824Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39691475993286100638)
,p_event_id=>wwv_flow_imp.id(39691475886293100637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42690819867172215278)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260930014255Z')
,p_updated_on=>wwv_flow_imp.dz('20260930014255Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39691476649431100645)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(42690819867172215278)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Expense Search - Save Interactive Grid Data'
,p_static_id=>'expense-search-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_security_scheme=>wwv_flow_imp.id(41825612459127701969)
,p_internal_uid=>39691476649431100645
,p_created_on=>wwv_flow_imp.dz('20260930014928Z')
,p_updated_on=>wwv_flow_imp.dz('20260930015025Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39691474912232100628)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset_Flag'
,p_static_id=>'reset-flag'
,p_process_sql_clob=>':P5_SEARCH_FLAG := NULL;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>39691474912232100628
,p_created_on=>wwv_flow_imp.dz('20260930013120Z')
,p_updated_on=>wwv_flow_imp.dz('20261001011815Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Expense Explorer'
,p_alias=>'EXPENSE-EXPLORER'
,p_step_title=>'Expense Explorer'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2528119710305719084
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612337096701969)
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_created_on=>wwv_flow_imp.dz('20261002232420Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261002232713Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43796611974902402570)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(41825606543252701942)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20261002232420Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232420Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43796614777119402593)
,p_plug_name=>'Button Bar'
,p_static_id=>'button-bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_source=>'<div id="active_facets"></div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261002232421Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232421Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43796612827034402590)
,p_plug_name=>'Search'
,p_static_id=>'search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'ABOVE'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(43796612741910402590)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261002232420Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232420Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43796614090494402592)
,p_name=>'P6_CATEGORY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43796612827034402590)
,p_prompt=>'Category Name'
,p_source=>'CATEGORY_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_fc_exclude_allowed=>false
,p_created_on=>wwv_flow_imp.dz('20261002232421Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232421Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43796614425219402593)
,p_name=>'P6_EMPLOYEE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43796612827034402590)
,p_prompt=>'Employee Name'
,p_source=>'EMPLOYEE_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_fc_exclude_allowed=>false
,p_created_on=>wwv_flow_imp.dz('20261002232421Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232421Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43796613201518402591)
,p_name=>'P6_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43796612827034402590)
,p_prompt=>'Search'
,p_source=>'DESCRIPTION,STATUS,CATEGORY_NAME,EMPLOYEE_NAME,RECEIPT_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
,p_created_on=>wwv_flow_imp.dz('20261002232421Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232421Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43796613601932402592)
,p_name=>'P6_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43796612827034402590)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_fc_exclude_allowed=>false
,p_created_on=>wwv_flow_imp.dz('20261002232421Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232421Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(43796612741910402590)
,p_name=>'Search Results'
,p_static_id=>'search-results'
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EMP_EXPENSES_V'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>100000
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261002232425Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232647Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43796617119617403075)
,p_query_column_id=>3
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261002232425Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43796618397739403078)
,p_query_column_id=>6
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Category Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261002232425Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43796616726916403075)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261002232425Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43796618764526403079)
,p_query_column_id=>7
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Employee Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261002232425Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43796616349569403073)
,p_query_column_id=>1
,p_column_alias=>'EXPENSE_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_updated_on=>wwv_flow_imp.dz('20261002232647Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43796619125489403080)
,p_query_column_id=>8
,p_column_alias=>'RECEIPT_NAME'
,p_column_display_sequence=>8
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_updated_on=>wwv_flow_imp.dz('20261002232647Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43796617544061403076)
,p_query_column_id=>4
,p_column_alias=>'SPENT_ON'
,p_column_display_sequence=>4
,p_column_heading=>'Spent On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261002232425Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43796617936814403077)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261002232425Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43796615102170402594)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43796614777119402593)
,p_button_name=>'RESET'
,p_static_id=>'reset'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:RR,6::'
,p_icon_css_classes=>'fa-undo'
,p_created_on=>wwv_flow_imp.dz('20261002232421Z')
,p_updated_on=>wwv_flow_imp.dz('20261002232421Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Expense Dashboard'
,p_alias=>'EXPENSE-DASHBOARD'
,p_step_title=>'Expense Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612337096701969)
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261002013728Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261002231447Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43497047829319561388)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(41825606543252701942)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20261002013728Z')
,p_updated_on=>wwv_flow_imp.dz('20261002013728Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43098554750788113009)
,p_plug_name=>'Dashboard Container'
,p_static_id=>'dashboard-container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261002230224Z')
,p_updated_on=>wwv_flow_imp.dz('20261002231447Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43098554888514113010)
,p_plug_name=>'Spend by Category'
,p_static_id=>'spend-by-category'
,p_title=>'Spend by Category'
,p_parent_plug_id=>wwv_flow_imp.id(43098554750788113009)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261002230357Z')
,p_updated_on=>wwv_flow_imp.dz('20261002231138Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(43098554932738113011)
,p_region_id=>wwv_flow_imp.id(43098554888514113010)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20261002230357Z')
,p_updated_on=>wwv_flow_imp.dz('20261002231138Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(43098555007101113012)
,p_chart_id=>wwv_flow_imp.id(43098554932738113011)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>'Category Spend'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.name as label, sum(ee.amount) as value',
'from emp_expenses ee,',
' exp_categories c ',
' where c.category_id = ee.category_id',
'group by c.name',
'order by sum(ee.amount) desc'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_created_on=>wwv_flow_imp.dz('20261002230357Z')
,p_updated_on=>wwv_flow_imp.dz('20261002231138Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43098555358764113015)
,p_plug_name=>'Spend by Month'
,p_static_id=>'spend-by-month'
,p_title=>'Spend by Month'
,p_parent_plug_id=>wwv_flow_imp.id(43098554750788113009)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261002230604Z')
,p_updated_on=>wwv_flow_imp.dz('20261002231138Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(43098555455668113016)
,p_region_id=>wwv_flow_imp.id(43098555358764113015)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261002230605Z')
,p_updated_on=>wwv_flow_imp.dz('20261002231138Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(43098555534144113017)
,p_chart_id=>wwv_flow_imp.id(43098555455668113016)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>'Monthly Spend'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(ee.spent_on, ''YYYY-MM'') as month_label, sum(ee.amount) as value',
'from emp_expenses ee',
'group by to_char(ee.spent_on, ''YYYY-MM'')',
'order by month_label'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'MONTH_LABEL'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20261002230605Z')
,p_updated_on=>wwv_flow_imp.dz('20261002231138Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(43098555645875113018)
,p_chart_id=>wwv_flow_imp.id(43098555455668113016)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261002230605Z')
,p_updated_on=>wwv_flow_imp.dz('20261002230605Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(43098555733644113019)
,p_chart_id=>wwv_flow_imp.id(43098555455668113016)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261002230605Z')
,p_updated_on=>wwv_flow_imp.dz('20261002230605Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Employee Expense Tracker - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825614108511701975)
,p_plug_name=>'Employee Expense Tracker'
,p_static_id=>'employee-expense-tracker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825615798760701979)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(41825614108511701975)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825615091399701978)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41825614108511701975)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825615419311701979)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41825614108511701975)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825614678981701978)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41825614108511701975)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825619802178701983)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41825619802178701983
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825619444993701982)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>41825619444993701982
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825616175906701980)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41825616175906701980
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(41825617117794701980)
,p_page_process_id=>wwv_flow_imp.id(41825616175906701980)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(41825617657203701981)
,p_page_process_id=>wwv_flow_imp.id(41825616175906701980)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(41825616689597701980)
,p_page_process_id=>wwv_flow_imp.id(41825616175906701980)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825618004445701981)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41825618004445701981
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(41825619027936701982)
,p_page_process_id=>wwv_flow_imp.id(41825618004445701981)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(41825618565090701981)
,p_page_process_id=>wwv_flow_imp.id(41825618004445701981)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181414Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(41825613575012701974)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612208070701969)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825667522285702180)
,p_plug_name=>'Access Control'
,p_static_id=>'access-control'
,p_parent_plug_id=>wwv_flow_imp.id(41825667186892702180)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(41825610398137701966)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825671856779702189)
,p_plug_name=>'Access Control Actions'
,p_static_id=>'access-control-actions'
,p_parent_plug_id=>wwv_flow_imp.id(41825667522285702180)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(41825665077867702178)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825668349663702181)
,p_plug_name=>'ACL Information'
,p_static_id=>'acl-information'
,p_parent_plug_id=>wwv_flow_imp.id(41825667522285702180)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825663459249702176)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(41825606543252701942)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825666394023702179)
,p_plug_name=>'Column 1'
,p_static_id=>'column-1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825667186892702180)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41825668702272702182)
,p_name=>'User Counts Report'
,p_static_id=>'user-counts-report'
,p_parent_plug_id=>wwv_flow_imp.id(41825667522285702180)
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name,',
'       (select count(*)',
'          from apex_appl_acl_user_roles ur',
'         where r.role_id = ur.role_id) user_count,',
'       r.role_id',
'  from apex_appl_acl_roles r',
' where r.application_id = :APP_ID',
' group by r.role_name, r.role_id',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991461423792139
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41825670284565702187)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41825669420607702185)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41825669870035702186)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825666778436702179)
,p_plug_name=>'User Interface'
,p_static_id=>'user-interface'
,p_parent_plug_id=>wwv_flow_imp.id(41825666394023702179)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(41825664253590702177)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(41825611193101701966)
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825667970863702181)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41825667522285702180)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP,10022::'
,p_icon_css_classes=>'fa-user-plus'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41825670928371702188)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41825667970863702181)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41825671344249702188)
,p_event_id=>wwv_flow_imp.id(41825670928371702188)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41825668702272702182)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(41825613575012701974)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612208070701969)
,p_required_patch=>wwv_flow_imp.id(41825611193101701966)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260926181414Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825622804402701990)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825622931141701990)
,p_plug_name=>'Configure Appearance'
,p_static_id=>'configure-appearance'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825623890146701993)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41825622804402701990)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(41825624312096701993)
,p_button_id=>wwv_flow_imp.id(41825623890146701993)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825624806349701994)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41825622804402701990)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(41825625374995701996)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825625622239701996)
,p_name=>'P10010_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41825622931141701990)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825626364262701999)
,p_name=>'P10010_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41825622931141701990)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_grid_label_column_span=>0
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825627844533702001)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_static_id=>'save-end-user-style-preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10010_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>41825627844533702001
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825627441163702000)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_static_id=>'save-theme-style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10010_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10010_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>41825627441163702000
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(41825613575012701974)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612208070701969)
,p_required_patch=>wwv_flow_imp.id(41825610398137701966)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825628243863702001)
,p_plug_name=>'Access Control Configuration'
,p_static_id=>'access-control-configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825628357700702001)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825629413392702003)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41825628357700702001)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825629886736702003)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41825628357700702001)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(41825630350046702004)
,p_button_id=>wwv_flow_imp.id(41825629886736702003)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(41825630912472702004)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825631285862702004)
,p_name=>'P10020_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41825628243863702001)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825631653833702005)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_static_id=>'set-access-control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10020_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>41825631653833702005
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181415Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10021
begin
wwv_flow_imp_page.create_page(
 p_id=>10021
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(41825613575012701974)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(41825612208070701969)
,p_required_patch=>wwv_flow_imp.id(41825610398137701966)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260926181415Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825632096822702005)
,p_plug_name=>'Manage User Access'
,p_static_id=>'manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(41825632929045702129)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP:P10022_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>41825632929045702129
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41825634923717702139)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41825634129167702135)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41825634591511702137)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41825636530303702141)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825637626677702142)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(41825632096822702005)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_static_id=>'add-multiple-users'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10023:&APP_SESSION.::&DEBUG.:10023::'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825638080663702143)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(41825632096822702005)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:10022::'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825637229062702142)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41825632096822702005)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41825632140082702005)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(41825632096822702005)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41825638792440702143)
,p_event_id=>wwv_flow_imp.id(41825632140082702005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41825632096822702005)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10022
begin
wwv_flow_imp_page.create_page(
 p_id=>10022
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(41825613575012701974)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612208070701969)
,p_required_patch=>wwv_flow_imp.id(41825610398137701966)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825639354129702144)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825639273384702144)
,p_plug_name=>'Form on Manage User Access'
,p_static_id=>'form-on-manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825640315354702145)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41825639354129702144)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(41825640899222702146)
,p_button_id=>wwv_flow_imp.id(41825640315354702145)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825642161570702147)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(41825639354129702144)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825641398370702147)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41825639354129702144)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825641718581702147)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(41825639354129702144)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825642943516702148)
,p_name=>'P10022_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41825639273384702144)
,p_item_source_plug_id=>wwv_flow_imp.id(41825639273384702144)
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825642522809702147)
,p_name=>'P10022_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41825639273384702144)
,p_item_source_plug_id=>wwv_flow_imp.id(41825639273384702144)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825643710664702149)
,p_name=>'P10022_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41825639273384702144)
,p_item_source_plug_id=>wwv_flow_imp.id(41825639273384702144)
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825643326860702148)
,p_name=>'P10022_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41825639273384702144)
,p_item_source_plug_id=>wwv_flow_imp.id(41825639273384702144)
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10022_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(41825644971610702151)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_static_id=>'cannot-remove-yourself-from-administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10022_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10022_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825646172977702153)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41825646172977702153
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825645373310702152)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(41825639273384702144)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_static_id=>'initialize-form-manage-user-access'
,p_internal_uid=>41825645373310702152
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825645747943702152)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(41825639273384702144)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_static_id=>'process-form-manage-user-access'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'N',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41825645747943702152
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10023
begin
wwv_flow_imp_page.create_page(
 p_id=>10023
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(41825613575012701974)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612208070701969)
,p_required_patch=>wwv_flow_imp.id(41825610398137701966)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825646514440702153)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825646657180702153)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825648710987702155)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41825646514440702153)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(41825649213281702155)
,p_button_id=>wwv_flow_imp.id(41825648710987702155)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825646774601702153)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41825646514440702153)
,p_button_name=>'NEXT'
,p_static_id=>'next'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(41825649725251702156)
,p_branch_action=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RP,10024::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(41825646774601702153)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825650590235702156)
,p_name=>'P10023_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41825646657180702153)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825650124865702156)
,p_name=>'P10023_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41825646657180702153)
,p_prompt=>'Roles'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825650906228702157)
,p_name=>'P10023_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41825646657180702153)
,p_prompt=>'Username Format'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825652064306702158)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_static_id=>'create-collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10023_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10023_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10023_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(41825646774601702153)
,p_internal_uid=>41825652064306702158
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10024
begin
wwv_flow_imp_page.create_page(
 p_id=>10024
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(41825613575012701974)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(41825612208070701969)
,p_required_patch=>wwv_flow_imp.id(41825610398137701966)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_last_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825646835917702153)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41825647188969702153)
,p_name=>'Exceptions'
,p_static_id=>'exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(41825646912912702153)
,p_template=>2665811232373458102
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41825654353570702165)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41825653923959702164)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825647308881702153)
,p_plug_name=>'Hidden Items'
,p_static_id=>'hidden-items'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825657285942702168)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_static_id=>'no-valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825647258462702153)
,p_plug_name=>'&P10024_VALID_COUNT. Users to Add'
,p_static_id=>'p10024-valid-count-users-to-add'
,p_parent_plug_id=>wwv_flow_imp.id(41825646912912702153)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825656532564702167)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_static_id=>'valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10024_VALID_COUNT),',
'           apex_escape.html(:P10024_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41825646912912702153)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825658389699702169)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41825646835917702153)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(41825658821722702170)
,p_button_id=>wwv_flow_imp.id(41825658389699702169)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825657912120702169)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41825646835917702153)
,p_button_name=>'PREVIOUS'
,p_static_id=>'previous'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41825647490495702153)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41825646835917702153)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825660158207702171)
,p_name=>'P10024_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41825647308881702153)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825659345321702170)
,p_name=>'P10024_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41825647308881702153)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10023_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41825659758972702171)
,p_name=>'P10024_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41825647308881702153)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825660587666702171)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_static_id=>'add-users-to-access-control-list'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10023_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(41825647490495702153)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>41825660587666702171
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41825660929571702172)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41825660929571702172
,p_created_on=>wwv_flow_imp.dz('20260926181416Z')
,p_updated_on=>wwv_flow_imp.dz('20260926181416Z')
,p_created_by=>'RAKESH.ELURU@GMAIL.COM'
,p_updated_by=>'RAKESH.ELURU@GMAIL.COM'
);
end;
/
prompt --application/deployment/definition
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
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
