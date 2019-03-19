<?php
/**
 * Common upgrade script for 2.5 to clean up legacy files for download distributions.
 *
 * @var modX
 *
 * @package setup
 */
$paths = array(
    'assets' => $modx->getOption('assets_path', null, MODX_ASSETS_PATH),
    'base' => $modx->getOption('base_path', null, MODX_BASE_PATH),
    'connectors' => $modx->getOption('connectors_path', null, MODX_CONNECTORS_PATH),
    'core' => $modx->getOption('core_path', null, MODX_CORE_PATH),
    'manager' => $modx->getOption('manager_path', null, MODX_MANAGER_PATH),
    'processors' => $modx->getOption('processors_path', null, MODX_PROCESSORS_PATH),
);

$cleanup = array(
    'assets' => array(),
    'base' => array(),
    'connectors' => array(
        'browser/',
        'context/',
        'element/',
        'layout/',
        'resource/',
        'security/access/',
        'security/documentgroup.php',
        'security/flush.php',
        'security/forms/',
        'security/group.php',
        'security/logout.php',
        'security/message.php',
        'security/profile.php',
        'security/resourcegroup.php',
        'security/role.php',
        'security/user.php',
        'security/user/',
        'security/usergroup/',
        'source/',
        'system/action.php',
        'system/activeresource.php',
        'system/charset.php',
        'system/classmap.php',
        'system/contenttype.php',
        'system/country.php',
        'system/dashboard.php',
        'system/dashboard/',
        'system/databasetables.php',
        'system/derivatives.php',
        'system/errorlog.php',
        'system/event.php',
        'system/filesys.php',
        'system/import/',
        'system/index.php',
        'system/language.php',
        'system/log.php',
        'system/menu.php',
        'system/phpinfo.php',
        'system/registry/',
        'system/remove_locks.php',
        'system/rte.php',
        'system/settings.php',
        'workspace/',
    ),
    'core' => array(
        'docs/tutorials/',
        'model/modx/dbapi.class.php',
        'model/modx/mail/phpmailer/README',
        'model/modx/mail/phpmailer/language/phpmailer.lang-en.php',
        'model/modx/modeventlog.class.php',
        'model/modx/modkeyword.class.php',
        'model/modx/modlexiconfocus.class.php',
        'model/modx/modlexiconlanguage.class.php',
        'model/modx/modlexicontopic.class.php',
        'model/modx/modmanageruser.class.php',
        'model/modx/modmetatag.class.php',
        'model/modx/modresourcekeyword.class.php',
        'model/modx/modresourcemetatag.class.php',
        'model/modx/modusergroupdocumentgroup.class.php',
        'model/modx/moduserrole.class.php',
        'model/modx/modwebgroup.class.php',
        'model/modx/modwebgroupdocumentgroup.class.php',
        'model/modx/modwebgroupmember.class.php',
        'model/modx/modwebuser.class.php',
        'model/modx/modwebuserprofile.class.php',
        'model/modx/modwebusersetting.class.php',
        'model/modx/mysql/modeventlog.class.php',
        'model/modx/mysql/modeventlog.map.inc.php',
        'model/modx/mysql/modkeyword.class.php',
        'model/modx/mysql/modkeyword.map.inc.php',
        'model/modx/mysql/modlexiconfocus.class.php',
        'model/modx/mysql/modlexiconfocus.map.inc.php',
        'model/modx/mysql/modlexiconlanguage.class.php',
        'model/modx/mysql/modlexiconlanguage.map.inc.php',
        'model/modx/mysql/modlexicontopic.class.php',
        'model/modx/mysql/modlexicontopic.map.inc.php',
        'model/modx/mysql/modmanageruser.class.php',
        'model/modx/mysql/modmanageruser.map.inc.php',
        'model/modx/mysql/modmetatag.class.php',
        'model/modx/mysql/modmetatag.map.inc.php',
        'model/modx/mysql/modresourcekeyword.class.php',
        'model/modx/mysql/modresourcekeyword.map.inc.php',
        'model/modx/mysql/modresourcemetatag.class.php',
        'model/modx/mysql/modresourcemetatag.map.inc.php',
        'model/modx/mysql/modusergroupdocumentgroup.class.php',
        'model/modx/mysql/modusergroupdocumentgroup.map.inc.php',
        'model/modx/mysql/moduserrole.class.php',
        'model/modx/mysql/moduserrole.map.inc.php',
        'model/modx/mysql/modwebgroup.class.php',
        'model/modx/mysql/modwebgroup.map.inc.php',
        'model/modx/mysql/modwebgroupdocumentgroup.class.php',
        'model/modx/mysql/modwebgroupdocumentgroup.map.inc.php',
        'model/modx/mysql/modwebgroupmember.class.php',
        'model/modx/mysql/modwebgroupmember.map.inc.php',
        'model/modx/mysql/modwebuser.class.php',
        'model/modx/mysql/modwebuser.map.inc.php',
        'model/modx/mysql/modwebuserprofile.class.php',
        'model/modx/mysql/modwebuserprofile.map.inc.php',
        'model/modx/mysql/modwebusersetting.class.php',
        'model/modx/mysql/modwebusersetting.map.inc.php',
        'model/smarty/Config_File.class.php',
        'model/smarty/Smarty_Compiler.class.php',
        'model/smarty/internals/',
        'model/smarty/plugins/block.modblock.php',
        'model/smarty/plugins/block.php.php',
        'model/smarty/plugins/compiler.assign.php',
        'model/smarty/plugins/compiler.continue.php',
        'model/smarty/plugins/function.assign_debug_info.php',
        'model/smarty/plugins/function.config_load.php',
        'model/smarty/plugins/function.debug.php',
        'model/smarty/plugins/function.eval.php',
        'model/smarty/plugins/function.exit.php',
        'model/smarty/plugins/function.extends.php',
        'model/smarty/plugins/function.popup.php',
        'model/smarty/plugins/function.popup_init.php',
        'model/smarty/plugins/modifier.cat.php',
        'model/smarty/plugins/modifier.count_characters.php',
        'model/smarty/plugins/modifier.count_paragraphs.php',
        'model/smarty/plugins/modifier.count_sentences.php',
        'model/smarty/plugins/modifier.count_words.php',
        'model/smarty/plugins/modifier.default.php',
        'model/smarty/plugins/modifier.indent.php',
        'model/smarty/plugins/modifier.lower.php',
        'model/smarty/plugins/modifier.nl2br.php',
        'model/smarty/plugins/modifier.string_format.php',
        'model/smarty/plugins/modifier.strip.php',
        'model/smarty/plugins/modifier.strip_tags.php',
        'model/smarty/plugins/modifier.upper.php',
        'model/smarty/plugins/modifier.wordwrap.php',
        'model/smarty/sysplugins/smarty_internal_config.php',
        'model/smarty/sysplugins/smarty_internal_filter.php',
        'model/smarty/sysplugins/smarty_internal_register.php',
        'model/smarty/sysplugins/smarty_internal_wrapper.php',
        'xpdo/xpdo.connect.inc.php',
    ),
    'manager' => array(
        'assets/ext3/adapter/ext/ext-base-debug-w-comments.js',
        'assets/ext3/ext-all-debug-w-comments.js',
        'assets/ext3/resources/css/xtheme-gray.css',
        'assets/ext3/resources/images/access/box/corners-blue.gif',
        'assets/ext3/resources/images/access/box/corners.gif',
        'assets/ext3/resources/images/access/box/l.gif',
        'assets/ext3/resources/images/access/box/r-blue.gif',
        'assets/ext3/resources/images/access/box/tb-blue.gif',
        'assets/ext3/resources/images/access/button/',
        'assets/ext3/resources/images/access/editor/',
        'assets/ext3/resources/images/access/form/',
        'assets/ext3/resources/images/access/grid/arrow-left-white.gif',
        'assets/ext3/resources/images/access/grid/arrow-right-white.gif',
        'assets/ext3/resources/images/access/grid/col-move-bottom.gif',
        'assets/ext3/resources/images/access/grid/col-move-top.gif',
        'assets/ext3/resources/images/access/grid/columns.gif',
        'assets/ext3/resources/images/access/grid/dirty.gif',
        'assets/ext3/resources/images/access/grid/drop-no.gif',
        'assets/ext3/resources/images/access/grid/drop-yes.gif',
        'assets/ext3/resources/images/access/grid/footer-bg.gif',
        'assets/ext3/resources/images/access/grid/grid-blue-hd.gif',
        'assets/ext3/resources/images/access/grid/grid-blue-split.gif',
        'assets/ext3/resources/images/access/grid/grid-hrow.gif',
        'assets/ext3/resources/images/access/grid/grid-split.gif',
        'assets/ext3/resources/images/access/grid/grid3-hd-btn.gif',
        'assets/ext3/resources/images/access/grid/grid3-hrow-over.gif',
        'assets/ext3/resources/images/access/grid/grid3-hrow.gif',
        'assets/ext3/resources/images/access/grid/grid3-special-col-bg.gif',
        'assets/ext3/resources/images/access/grid/grid3-special-col-sel-bg.gif',
        'assets/ext3/resources/images/access/grid/group-by.gif',
        'assets/ext3/resources/images/access/grid/group-collapse.gif',
        'assets/ext3/resources/images/access/grid/group-expand-sprite.gif',
        'assets/ext3/resources/images/access/grid/group-expand.gif',
        'assets/ext3/resources/images/access/grid/hd-pop.gif',
        'assets/ext3/resources/images/access/grid/hmenu-asc.gif',
        'assets/ext3/resources/images/access/grid/hmenu-desc.gif',
        'assets/ext3/resources/images/access/grid/hmenu-lock.gif',
        'assets/ext3/resources/images/access/grid/invalid_line.gif',
        'assets/ext3/resources/images/access/grid/loading.gif',
        'assets/ext3/resources/images/access/grid/mso-hd.gif',
        'assets/ext3/resources/images/access/grid/nowait.gif',
        'assets/ext3/resources/images/access/grid/page-first-disabled.gif',
        'assets/ext3/resources/images/access/grid/page-last-disabled.gif',
        'assets/ext3/resources/images/access/grid/page-next-disabled.gif',
        'assets/ext3/resources/images/access/grid/page-prev-disabled.gif',
        'assets/ext3/resources/images/access/grid/pick-button.gif',
        'assets/ext3/resources/images/access/grid/row-check-sprite.gif',
        'assets/ext3/resources/images/access/grid/row-expand-sprite.gif',
        'assets/ext3/resources/images/access/grid/row-over.gif',
        'assets/ext3/resources/images/access/grid/row-sel.gif',
        'assets/ext3/resources/images/access/grid/sort-hd.gif',
        'assets/ext3/resources/images/access/grid/sort_asc.gif',
        'assets/ext3/resources/images/access/grid/sort_desc.gif',
        'assets/ext3/resources/images/access/grid/wait.gif',
        'assets/ext3/resources/images/access/menu/checked.gif',
        'assets/ext3/resources/images/access/menu/item-over.gif',
        'assets/ext3/resources/images/access/menu/menu.gif',
        'assets/ext3/resources/images/access/menu/unchecked.gif',
        'assets/ext3/resources/images/access/panel/',
        'assets/ext3/resources/images/access/progress/',
        'assets/ext3/resources/images/access/qtip/',
        'assets/ext3/resources/images/access/shared/glass-bg.gif',
        'assets/ext3/resources/images/access/shared/hd-sprite.gif',
        'assets/ext3/resources/images/access/sizer/',
        'assets/ext3/resources/images/access/tabs/scroll-left.gif',
        'assets/ext3/resources/images/access/tabs/scroll-right.gif',
        'assets/ext3/resources/images/access/tabs/tab-btm-inactive-left-bg.gif',
        'assets/ext3/resources/images/access/tabs/tab-btm-inactive-right-bg.gif',
        'assets/ext3/resources/images/access/tabs/tab-btm-left-bg.gif',
        'assets/ext3/resources/images/access/tabs/tab-btm-right-bg.gif',
        'assets/ext3/resources/images/access/tabs/tab-strip-bg.gif',
        'assets/ext3/resources/images/access/tabs/tab-strip-btm-bg.gif',
        'assets/ext3/resources/images/access/tabs/tabs-sprite.gif',
        'assets/ext3/resources/images/access/toolbar/bg.gif',
        'assets/ext3/resources/images/access/toolbar/btn-arrow-light.gif',
        'assets/ext3/resources/images/access/toolbar/btn-arrow.gif',
        'assets/ext3/resources/images/access/toolbar/btn-over-bg.gif',
        'assets/ext3/resources/images/access/toolbar/gray-bg.gif',
        'assets/ext3/resources/images/access/toolbar/more.gif',
        'assets/ext3/resources/images/access/toolbar/tb-btn-sprite.gif',
        'assets/ext3/resources/images/access/toolbar/tb-xl-btn-sprite.gif',
        'assets/ext3/resources/images/access/toolbar/tb-xl-sep.gif',
        'assets/ext3/resources/images/access/tree/',
        'assets/ext3/resources/images/access/window/icon-error.gif',
        'assets/ext3/resources/images/access/window/icon-info.gif',
        'assets/ext3/resources/images/access/window/icon-question.gif',
        'assets/ext3/resources/images/access/window/icon-warning.gif',
        'assets/ext3/resources/images/default/form/clear-trigger.psd',
        'assets/ext3/resources/images/default/form/date-trigger.psd',
        'assets/ext3/resources/images/default/form/search-trigger.psd',
        'assets/ext3/resources/images/default/form/trigger-square.psd',
        'assets/ext3/resources/images/default/form/trigger.psd',
        'assets/ext3/resources/images/default/window/left-corners.psd',
        'assets/ext3/resources/images/default/window/left-right.psd',
        'assets/ext3/resources/images/default/window/right-corners.psd',
        'assets/ext3/resources/images/default/window/top-bottom.psd',
        'assets/modext/build/',
        'assets/modext/modext-min.js',
        'assets/modext/sections/security/access/list.js',
        'assets/modext/sections/security/access/policy.js',
        'assets/modext/sections/security/forms/',
        'assets/modext/sections/security/usergroup/create.js',
        'assets/modext/sections/system/event.js',
        'assets/modext/sections/system/help.js',
        'assets/modext/widgets/core/modx.tree.js',
        'assets/modext/widgets/security/modx.grid.access.resourcegroup.js',
        'assets/modext/widgets/security/modx.grid.actiondom.js',
        'assets/modext/widgets/security/modx.panel.actiondom.js',
        'assets/modext/widgets/system/modx.grid.databasetables.js',
        'assets/modext/widgets/system/modx.tree.action.js',
        'assets/modext/workspace/builder/',
        'assets/modext/workspace/package.add.panel.js',
        'assets/modext/workspace/package.browser.js',
        'assets/modext/workspace/package.download.panel.js',
        'assets/modext/workspace/package.install.window.js',
        'assets/modext/workspace/package.uninstall.window.js',
        'assets/modext/workspace/package.update.window.js',
        'controllers/default/browser/index.php',
        'controllers/default/context/index.php',
        'controllers/default/context/update.php',
        'controllers/default/context/view.php',
        'controllers/default/element/chunk/create.php',
        'controllers/default/element/chunk/update.php',
        'controllers/default/element/plugin/create.php',
        'controllers/default/element/plugin/update.php',
        'controllers/default/element/propertyset/index.php',
        'controllers/default/element/snippet/create.php',
        'controllers/default/element/snippet/update.php',
        'controllers/default/element/template/create.php',
        'controllers/default/element/template/update.php',
        'controllers/default/element/tv/create.php',
        'controllers/default/element/tv/update.php',
        'controllers/default/help.php',
        'controllers/default/resource/create.php',
        'controllers/default/resource/data.php',
        'controllers/default/resource/site_schedule.php',
        'controllers/default/resource/staticresource/create.php',
        'controllers/default/resource/staticresource/update.php',
        'controllers/default/resource/symlink/create.php',
        'controllers/default/resource/symlink/update.php',
        'controllers/default/resource/tvs.php',
        'controllers/default/resource/update.php',
        'controllers/default/resource/weblink/create.php',
        'controllers/default/resource/weblink/update.php',
        'controllers/default/search/',
        'controllers/default/security/access/index.php',
        'controllers/default/security/access/policy.php',
        'controllers/default/security/access/policy/template/update.php',
        'controllers/default/security/access/policy/update.php',
        'controllers/default/security/forms/index.php',
        'controllers/default/security/forms/profile/update.php',
        'controllers/default/security/forms/set/update.php',
        'controllers/default/security/login.php',
        'controllers/default/security/logout.php',
        'controllers/default/security/message/',
        'controllers/default/security/permission/',
        'controllers/default/security/profile/',
        'controllers/default/security/resourcegroup/index.php',
        'controllers/default/security/role/',
        'controllers/default/security/user/create.php',
        'controllers/default/security/user/index.php',
        'controllers/default/security/user/update.php',
        'controllers/default/security/usergroup/create.class.php',
        'controllers/default/security/usergroup/create.php',
        'controllers/default/security/usergroup/update.php',
        'controllers/default/system/action/',
        'controllers/default/system/contenttype/',
        'controllers/default/system/event/',
        'controllers/default/system/file/edit.php',
        'controllers/default/system/import/html.php',
        'controllers/default/system/import/index.php',
        'controllers/default/system/info.php',
        'controllers/default/system/logs/index.php',
        'controllers/default/system/settings/',
        'controllers/default/welcome.php',
        'controllers/default/workspaces/builder.php',
        'controllers/default/workspaces/index.php',
        'controllers/default/workspaces/lexicon.php',
        'controllers/default/workspaces/namespace.php',
        'controllers/default/workspaces/package/view.php',
        'min/lib/Minify/YUI/Java/',
        'min/lib/Solar/',
        'templates/default/context/list.tpl',
        'templates/default/context/update.tpl',
        'templates/default/css/csshover3.htc',
        'templates/default/css/ie-min.css',
        'templates/default/css/ie.css',
        'templates/default/css/modx-min.css',
        'templates/default/css/xtheme-modx-min.css',
        'templates/default/css/xtheme-modx.css',
        'templates/default/css/zindexlist.txt',
        'templates/default/element/chunk/mutate.tpl',
        'templates/default/element/plugin/mutate.tpl',
        'templates/default/element/propertyset/',
        'templates/default/element/snippet/mutate.tpl',
        'templates/default/element/template/mutate.tpl',
        'templates/default/element/tv/mutate.tpl',
        'templates/default/element/tv/renders/input/dropdown.tpl',
        'templates/default/element/tv/renders/input/textareamini.tpl',
        'templates/default/images/modx-theme/grid/grid3-hd-btn.gif',
        'templates/default/images/modx-theme/grid/group-collapse.png',
        'templates/default/images/modx-theme/grid/group-expand.png',
        'templates/default/images/modx-theme/grid/row-expand-sprite.png',
        'templates/default/images/restyle/contentArea_bg.jpg',
        'templates/default/images/restyle/contentArea_bg.png',
        'templates/default/images/restyle/header-partner.jpeg',
        'templates/default/images/restyle/header-utility.jpeg',
        'templates/default/images/restyle/header_background.jpg',
        'templates/default/images/restyle/header_background.png',
        'templates/default/images/restyle/headers.jpg',
        'templates/default/images/restyle/icons/file_manager.png',
        'templates/default/images/restyle/icons/file_upload.png',
        'templates/default/images/restyle/icons/folder.png',
        'templates/default/images/restyle/icons/page_white.png',
        'templates/default/images/restyle/manager-loginscreen-bg.png',
        'templates/default/images/restyle/manager-loginscreen-form-bg.png',
        'templates/default/images/style/components.png',
        'templates/default/images/style/corners/',
        'templates/default/images/style/home-hover.png',
        'templates/default/images/style/leftgreennav.png',
        'templates/default/images/style/modx-logo-color.png',
        'templates/default/images/style/modx-logo-header.png',
        'templates/default/images/style/modx_logo_header.png',
        'templates/default/images/style/reports.png',
        'templates/default/images/style/security.png',
        'templates/default/images/style/site.png',
        'templates/default/images/style/support.png',
        'templates/default/images/style/system.png',
        'templates/default/images/style/tools.png',
        'templates/default/images/style/user.png',
        'templates/default/navbar.tpl',
        'templates/default/resource/_javascript.tpl',
        'templates/default/resource/data.tpl',
        'templates/default/resource/mutate.tpl',
        'templates/default/resource/site_schedule.tpl',
        'templates/default/resource/staticresource/mutate.tpl',
        'templates/default/resource/symlink/mutate.tpl',
        'templates/default/resource/weblink/mutate.tpl',
        'templates/default/search/',
        'templates/default/security/access/',
        'templates/default/security/forms/',
        'templates/default/security/message/',
        'templates/default/security/permissions/',
        'templates/default/security/profile/',
        'templates/default/security/resourcegroup/',
        'templates/default/security/role/',
        'templates/default/security/user/list.tpl',
        'templates/default/security/user/mutate.tpl',
        'templates/default/security/usergroup/',
        'templates/default/source/',
        'templates/default/system/action/',
        'templates/default/system/contenttype/',
        'templates/default/system/dashboards/',
        'templates/default/system/event/',
        'templates/default/system/file/',
        'templates/default/system/import/',
        'templates/default/system/info.tpl',
        'templates/default/system/logs/',
        'templates/default/system/settings/',
        'templates/default/workspaces/builder/',
        'templates/default/workspaces/error.tpl',
        'templates/default/workspaces/lexicon/',
        'templates/default/workspaces/namespace/',
        'templates/default/workspaces/package/',
    ),
    'processors' => array(
        'browser/directory/chmod.php',
        'browser/directory/create.php',
        'browser/directory/getfiles.php',
        'browser/directory/getlist.php',
        'browser/directory/remove.php',
        'browser/directory/update.php',
        'browser/directory/upload.php',
        'browser/file/get.php',
        'browser/file/remove.php',
        'browser/file/update.php',
        'browser/file/upload.php',
        'browser/rename.php',
        'context/create.php',
        'context/duplicate.php',
        'context/get.php',
        'context/getlist.php',
        'context/remove.php',
        'context/setting/create.php',
        'context/setting/get.php',
        'context/setting/getlist.php',
        'context/setting/remove.php',
        'context/setting/update.php',
        'context/setting/updatefromgrid.php',
        'context/update.php',
        'context/updatefromgrid.php',
        'element/category/create.php',
        'element/category/get.php',
        'element/category/getlist.php',
        'element/category/remove.php',
        'element/category/update.php',
        'element/chunk/create.php',
        'element/chunk/duplicate.php',
        'element/chunk/get.php',
        'element/chunk/getlist.php',
        'element/chunk/remove.php',
        'element/chunk/update.php',
        'element/exportproperties.php',
        'element/getclasses.php',
        'element/getinsertproperties.php',
        'element/getlistbyclass.php',
        'element/getnodes.category.php',
        'element/getnodes.incategory.php',
        'element/getnodes.php',
        'element/getnodes.root.php',
        'element/getnodes.type.php',
        'element/importproperties.php',
        'element/plugin/create.php',
        'element/plugin/duplicate.php',
        'element/plugin/event/associate.php',
        'element/plugin/event/get.php',
        'element/plugin/event/getassoc.php',
        'element/plugin/event/getlist.php',
        'element/plugin/event/remove.php',
        'element/plugin/event/update.php',
        'element/plugin/get.php',
        'element/plugin/getlist.php',
        'element/plugin/remove.php',
        'element/plugin/update.php',
        'element/propertyset/addelement.php',
        'element/propertyset/associate.php',
        'element/propertyset/create.php',
        'element/propertyset/duplicate.php',
        'element/propertyset/get.php',
        'element/propertyset/getlist.php',
        'element/propertyset/getnodes.php',
        'element/propertyset/getproperties.php',
        'element/propertyset/remove.php',
        'element/propertyset/removeelement.php',
        'element/propertyset/update.php',
        'element/propertyset/updatefromelement.php',
        'element/snippet/create.php',
        'element/snippet/duplicate.php',
        'element/snippet/get.php',
        'element/snippet/getlist.php',
        'element/snippet/remove.php',
        'element/snippet/update.php',
        'element/sort.php',
        'element/template/create.php',
        'element/template/duplicate.php',
        'element/template/get.php',
        'element/template/getlist.php',
        'element/template/remove.php',
        'element/template/tv/getlist.php',
        'element/template/update.php',
        'element/tv/create.php',
        'element/tv/duplicate.php',
        'element/tv/get.php',
        'element/tv/getlist.php',
        'element/tv/inputtype/',
        'element/tv/remove.php',
        'element/tv/renders/getinputproperties.php',
        'element/tv/renders/getinputs.php',
        'element/tv/renders/getoutputs.php',
        'element/tv/renders/getproperties.php',
        'element/tv/resourcegroup/getlist.php',
        'element/tv/template/getlist.php',
        'element/tv/template/updatefromgrid.php',
        'element/tv/update.php',
        'element/tv/widget/',
        'resource/create.php',
        'resource/data.php',
        'resource/delete.php',
        'resource/duplicate.php',
        'resource/emptyrecyclebin.php',
        'resource/event/getlist.php',
        'resource/event/updatefromgrid.php',
        'resource/get.php',
        'resource/getlist.php',
        'resource/getnodes.php',
        'resource/gettoolbar.php',
        'resource/locks/release.php',
        'resource/locks/steal.php',
        'resource/publish.php',
        'resource/resourcegroup/getlist.php',
        'resource/resourcegroup/updatefromgrid.php',
        'resource/search.php',
        'resource/sort.php',
        'resource/staticresource/',
        'resource/undelete.php',
        'resource/unpublish.php',
        'resource/update.php',
        'resource/updatefromgrid.php',
        'security/access/addacl.php',
        'security/access/flush.php',
        'security/access/getacl.php',
        'security/access/getlist.php',
        'security/access/getnodes.php',
        'security/access/permission/getlist.php',
        'security/access/policy/create.php',
        'security/access/policy/duplicate.php',
        'security/access/policy/get.php',
        'security/access/policy/getlist.php',
        'security/access/policy/getnodes.php',
        'security/access/policy/remove.php',
        'security/access/policy/removemultiple.php',
        'security/access/policy/template/create.php',
        'security/access/policy/template/duplicate.php',
        'security/access/policy/template/getlist.php',
        'security/access/policy/template/group/getlist.php',
        'security/access/policy/template/remove.php',
        'security/access/policy/template/removemultiple.php',
        'security/access/policy/template/update.php',
        'security/access/policy/template/updatefromgrid.php',
        'security/access/policy/update.php',
        'security/access/policy/updatefromgrid.php',
        'security/access/removeacl.php',
        'security/access/updateacl.php',
        'security/access/usergroup/category/create.php',
        'security/access/usergroup/category/getlist.php',
        'security/access/usergroup/category/remove.php',
        'security/access/usergroup/category/update.php',
        'security/access/usergroup/context/create.php',
        'security/access/usergroup/context/getlist.php',
        'security/access/usergroup/context/remove.php',
        'security/access/usergroup/context/update.php',
        'security/access/usergroup/resourcegroup/create.php',
        'security/access/usergroup/resourcegroup/getlist.php',
        'security/access/usergroup/resourcegroup/remove.php',
        'security/access/usergroup/resourcegroup/update.php',
        'security/flush.php',
        'security/forms/profile/activate.php',
        'security/forms/profile/activatemultiple.php',
        'security/forms/profile/create.php',
        'security/forms/profile/deactivate.php',
        'security/forms/profile/deactivatemultiple.php',
        'security/forms/profile/duplicate.php',
        'security/forms/profile/getlist.php',
        'security/forms/profile/remove.php',
        'security/forms/profile/removemultiple.php',
        'security/forms/profile/update.php',
        'security/forms/profile/updatefromgrid.php',
        'security/forms/set/activate.php',
        'security/forms/set/activatemultiple.php',
        'security/forms/set/create.php',
        'security/forms/set/deactivate.php',
        'security/forms/set/deactivatemultiple.php',
        'security/forms/set/duplicate.php',
        'security/forms/set/export.php',
        'security/forms/set/getlist.php',
        'security/forms/set/import.php',
        'security/forms/set/remove.php',
        'security/forms/set/removemultiple.php',
        'security/forms/set/update.php',
        'security/group/create.php',
        'security/group/getlist.php',
        'security/group/getnodes.php',
        'security/group/remove.php',
        'security/group/setting/create.php',
        'security/group/setting/getlist.php',
        'security/group/setting/remove.php',
        'security/group/setting/update.php',
        'security/group/setting/updatefromgrid.php',
        'security/group/sort.php',
        'security/group/update.php',
        'security/group/user/create.php',
        'security/group/user/getlist.php',
        'security/group/user/remove.php',
        'security/group/user/update.php',
        'security/login.php',
        'security/logout.php',
        'security/message/create.php',
        'security/message/forward.php',
        'security/message/getlist.php',
        'security/message/read.php',
        'security/message/remove.php',
        'security/message/reply.php',
        'security/message/unread.php',
        'security/profile/changepassword.php',
        'security/profile/get.php',
        'security/profile/update.php',
        'security/resourcegroup/create.php',
        'security/resourcegroup/getlist.php',
        'security/resourcegroup/getnodes.php',
        'security/resourcegroup/remove.php',
        'security/resourcegroup/removeresource.php',
        'security/resourcegroup/updateresourcesin.php',
        'security/role/create.php',
        'security/role/get.php',
        'security/role/getauthoritylist.php',
        'security/role/getlist.php',
        'security/role/remove.php',
        'security/role/update.php',
        'security/role/updatefromgrid.php',
        'security/user/activatemultiple.php',
        'security/user/create.php',
        'security/user/deactivatemultiple.php',
        'security/user/delete.php',
        'security/user/get.php',
        'security/user/getlist.php',
        'security/user/getrecentlyeditedresources.php',
        'security/user/group/getlist.php',
        'security/user/removemultiple.php',
        'security/user/setting/create.php',
        'security/user/setting/getlist.php',
        'security/user/setting/remove.php',
        'security/user/setting/update.php',
        'security/user/setting/updatefromgrid.php',
        'security/user/update.php',
        'security/user/updatefromgrid.php',
        'system/action/create.php',
        'system/action/get.php',
        'system/action/getlist.php',
        'system/action/getnodes.namespace.php',
        'system/action/getnodes.php',
        'system/action/getnodes.root.php',
        'system/action/getnodes.subaction.php',
        'system/action/remove.php',
        'system/action/sort.php',
        'system/action/update.php',
        'system/activeresource/getlist.php',
        'system/charset/getlist.php',
        'system/classmap/getlist.php',
        'system/clearcache.php',
        'system/console.php',
        'system/contenttype/create.php',
        'system/contenttype/getlist.php',
        'system/contenttype/remove.php',
        'system/contenttype/update.php',
        'system/contenttype/updatefromgrid.php',
        'system/country/getlist.php',
        'system/databasetable/getlist.php',
        'system/databasetable/mysql/',
        'system/databasetable/optimize.php',
        'system/databasetable/optimizedatabase.php',
        'system/databasetable/sqlsrv/',
        'system/databasetable/truncate.php',
        'system/downloadoutput.php',
        'system/errorlog/clear.php',
        'system/errorlog/get.php',
        'system/event/delete.php',
        'system/event/getlist.php',
        'system/import/html.php',
        'system/import/index.php',
        'system/info.php',
        'system/language/getlist.php',
        'system/log/getlist.php',
        'system/log/truncate.php',
        'system/menu/create.php',
        'system/menu/get.php',
        'system/menu/getlist.php',
        'system/menu/getmenu.php',
        'system/menu/getnodes.php',
        'system/menu/remove.php',
        'system/menu/sort.php',
        'system/menu/update.php',
        'system/phpinfo.php',
        'system/phpthumb.php',
        'system/registry/register/read.php',
        'system/registry/register/send.php',
        'system/remove_locks.php',
        'system/rte/getlist.php',
        'system/settings/create.php',
        'system/settings/getareas.php',
        'system/settings/getlist.php',
        'system/settings/remove.php',
        'system/settings/update.php',
        'system/settings/updatefromgrid.php',
        'workspace/builder/',
        'workspace/lexicon/create.php',
        'workspace/lexicon/export.php',
        'workspace/lexicon/getlist.php',
        'workspace/lexicon/import.php',
        'workspace/lexicon/reloadfrombase.php',
        'workspace/lexicon/revert.php',
        'workspace/lexicon/topic/getlist.php',
        'workspace/lexicon/updatefromgrid.php',
        'workspace/namespace/create.php',
        'workspace/namespace/getlist.php',
        'workspace/namespace/remove.php',
        'workspace/namespace/update.php',
        'workspace/namespace/updatefromgrid.php',
        'workspace/packages/create.php',
        'workspace/packages/download.php',
        'workspace/packages/get.php',
        'workspace/packages/getattribute.php',
        'workspace/packages/getlist.php',
        'workspace/packages/install.php',
        'workspace/packages/remove.php',
        'workspace/packages/rest/download.php',
        'workspace/packages/rest/getinfo.php',
        'workspace/packages/rest/getlist.php',
        'workspace/packages/rest/getnodes.php',
        'workspace/packages/rest/getnodes.repository.php',
        'workspace/packages/rest/getnodes.root.php',
        'workspace/packages/scanlocal.php',
        'workspace/packages/uninstall.php',
        'workspace/packages/update-remote.php',
        'workspace/packages/update.php',
        'workspace/packages/updatefromgrid.php',
        'workspace/packages/version/getlist.php',
        'workspace/packages/version/remove.php',
        'workspace/packages/view.php',
        'workspace/providers/create.php',
        'workspace/providers/disable.php',
        'workspace/providers/get.php',
        'workspace/providers/getlist.php',
        'workspace/providers/remove.php',
        'workspace/providers/update.php',
        'workspace/providers/updatefromgrid.php',
    ),
);

$removedFiles = 0;
$removedDirs = 0;

function recursiveRemoveDir($dir)
{
    $files = array_diff(scandir($dir), array('.', '..'));
    foreach ($files as $file) {
        (is_dir("$dir/$file")) ? recursiveRemoveDir("$dir/$file") : unlink("$dir/$file");
    }

    return rmdir($dir);
}

// Loop through legacy files/folders to clean up
foreach ($cleanup as $folder => $files) {
    foreach ($files as $file) {
        $legacyFile = $paths[$folder].$file;
        if (file_exists($legacyFile) === true) {
            if (is_dir($legacyFile) === true) {
                // Remove legacy directory
                recursiveRemoveDir($legacyFile);
                ++$removedDirs;
            } else {
                // Remove legacy file
                unlink($legacyFile);
                ++$removedFiles;
            }
        }
    }
}

$this->runner->addResult(
    modInstallRunner::RESULT_SUCCESS,
    '<p class="ok">'.$this->install->lexicon('legacy_cleanup_complete').
    '<br /><small>'.$this->install->lexicon('legacy_cleanup_count', array('files' => $removedFiles, 'folders' => $removedDirs)).'</small></p>'
);
