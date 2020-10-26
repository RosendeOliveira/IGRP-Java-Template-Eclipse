<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><xsl:output method="html" omit-xml-declaration="yes" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/><xsl:template match="/"><html><head><xsl:call-template name="IGRP-head"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/view/igrp.view.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/table/datatable/dataTables.bootstrap.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/table/igrp.tables.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/table/table-colors.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.min.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.style.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/colorpicker/css/bootstrap-colorpicker.min.css?v={$version}"/><style/></head><body class="{$bodyClass} sidebar-off"><xsl:call-template name="IGRP-topmenu"/><form method="POST" class="IGRP-form" name="formular_default" enctype="multipart/form-data"><div class="container-fluid"><div class="row"><xsl:call-template name="IGRP-sidebar"/><div class="col-sm-9 col-md-10 col-md-offset-2 col-sm-offset-3 main" id="igrp-contents"><div class="content"><div class="row row-msg"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:apply-templates mode="igrp-messages" select="rows/content/messages"/></div></div></div><div class="row " id="row-f101e652"><div class="gen-column col-sm-6"><div class="gen-inner"><xsl:if test="rows/content/sectionheader_1"><section class="content-header gen-container-item " gen-class="" item-name="sectionheader_1"><h2 class="disable-output-escaping"><xsl:value-of disable-output-escaping="yes" select="rows/content/sectionheader_1/fields/sectionheader_1_text/value"/></h2></section></xsl:if><xsl:if test="rows/content/view_1"><div class="box clearfix view-block gen-container-item sukundi" has-img="false" template="default" item-separator-border="false" gen-class="sukundi" item-name="view_1"><div class="box-body"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/view_1/fields"/><xsl:if test="rows/content/view_1/fields/view_1_img"><img src="{rows/content/view_1/fields/view_1_img/value}"/></xsl:if><div class="view-body clearfix "><xsl:if test="rows/content/view_1/fields/help"><div class="view-item gen-fields-holder sukundi" item-name="help"><a href="{rows/content/view_1/fields/help/value}" target="_newtab" sharpadbclient="" target-fields="" request-fields=""><i class="fa fa-question-circle"/><span><span><xsl:value-of select="rows/content/view_1/fields/help/label"/></span></span></a></div></xsl:if></div></div></div></xsl:if></div></div><div class="gen-column col-sm-6"><div class="gen-inner"><xsl:if test="rows/content/form_2"><div class="box igrp-forms gen-container-item " gen-class="" item-name="form_2"><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/form_2/fields"/><xsl:if test="rows/content/form_2/fields/aplicacao"><div class="col-sm-8 form-group  gen-fields-holder" item-name="aplicacao" item-type="select" required="required"><label for="{rows/content/form_2/fields/aplicacao/@name}"><xsl:value-of select="rows/content/form_2/fields/aplicacao/label"/></label><select class="form-control select2 " id="form_2_aplicacao" name="{rows/content/form_2/fields/aplicacao/@name}" required="required"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_2/fields/aplicacao"/></xsl:call-template><xsl:for-each select="rows/content/form_2/fields/aplicacao/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if><xsl:if test="rows/content/form_2/fields/ativo"><div class="col-sm-4  gen-fields-holder" item-name="ativo" item-type="checkbox"><div class="form-group"><div class="checkbox form-check-offset"><label class="container-box checkbox-switch switch"><xsl:value-of select="rows/content/form_2/fields/ativo/label"/><input type="checkbox" name="{rows/content/form_2/fields/ativo/@name}" value="1" class="checkbox " label="{rows/content/form_2/fields/ativo/label}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_2/fields/ativo"/></xsl:call-template><xsl:if test="rows/content/form_2/fields/ativo/value = '1'"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><span class="slider round"/><span class="checkmark"/></label></div></div></div></xsl:if></div></div><xsl:apply-templates select="rows/content/form_2/tools-bar" mode="form-buttons"/></div></xsl:if></div></div></div><div class="row " id="row-1618d586"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:if test="rows/content/novo"><div class="box igrp-forms gen-container-item " gen-class="" item-name="novo"><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/novo/fields"/><xsl:if test="rows/content/novo/fields/nome"><div class="form-group col-sm-3   gen-fields-holder" item-name="nome" item-type="text" required="required"><label for="{rows/content/novo/fields/nome/@name}"><span><xsl:value-of select="rows/content/novo/fields/nome/label"/></span></label><input type="text" value="{rows/content/novo/fields/nome/value}" class="form-control  " id="{rows/content/novo/fields/nome/@name}" name="{rows/content/novo/fields/nome/@name}" required="required" maxlength="250" placeholder="{rows/content/novo/fields/nome/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/novo/fields/nome"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/novo/fields/codigo"><div class="form-group col-sm-3   gen-fields-holder" item-name="codigo" item-type="text" required="required"><label for="{rows/content/novo/fields/codigo/@name}"><span><xsl:value-of select="rows/content/novo/fields/codigo/label"/></span></label><input type="text" value="{rows/content/novo/fields/codigo/value}" class="form-control  " id="{rows/content/novo/fields/codigo/@name}" name="{rows/content/novo/fields/codigo/@name}" required="required" maxlength="250" placeholder="{rows/content/novo/fields/codigo/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/novo/fields/codigo"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/novo/fields/descricao"><div class="form-group col-sm-6  gen-fields-holder" item-name="descricao" item-type="textarea"><label for="{rows/content/novo/fields/descricao/@name}"><xsl:value-of select="rows/content/novo/fields/descricao/label"/></label><textarea name="{rows/content/novo/fields/descricao/@name}" class="textarea form-control  " maxlength="250" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/novo/fields/descricao"/></xsl:call-template><xsl:value-of select="rows/content/novo/fields/descricao/value"/></textarea></div></xsl:if></div></div><xsl:apply-templates select="rows/content/novo/tools-bar" mode="form-buttons"/></div></xsl:if><xsl:if test="rows/content/table_1"><div class="box box-table-contents gen-container-item " gen-class="" item-name="table_1"><div class="box-body "><div class="table-contents-head"><div class="table-contents-inner"><xsl:apply-templates mode="table-legend" select="rows/content/table_1/table/legend_color"/></div></div><div class="table-box"><div class="table-box-inner"><table id="table_1" class="table table-striped  igrp-data-table IGRP_contextmenu " exports=""><thead><tr><xsl:if test="rows/content/table_1/fields/t_estado"><th td-name="t_estado" align="left" class="color-th gen-fields-holder" group-in=""><xsl:value-of select="rows/content/table_1/fields/t_estado/label"/></th></xsl:if><xsl:if test="rows/content/table_1/fields/t_aplicacao"><th td-name="t_aplicacao" align="left" show-label="true" class="text  gen-fields-holder" group-in=""><span><xsl:value-of select="rows/content/table_1/fields/t_aplicacao/label"/></span></th></xsl:if><xsl:if test="rows/content/table_1/fields/t_nome"><th td-name="t_nome" align="left" show-label="true" class="text  gen-fields-holder" group-in=""><span><xsl:value-of select="rows/content/table_1/fields/t_nome/label"/></span></th></xsl:if><xsl:if test="rows/content/table_1/fields/t_codigo"><th td-name="t_codigo" align="left" show-label="true" class="text  gen-fields-holder" group-in=""><span><xsl:value-of select="rows/content/table_1/fields/t_codigo/label"/></span></th></xsl:if><xsl:if test="rows/content/table_1/fields/t_descricao"><th td-name="t_descricao" align="left" show-label="true" class="text  gen-fields-holder" group-in=""><span><xsl:value-of select="rows/content/table_1/fields/t_descricao/label"/></span></th></xsl:if><xsl:if test="rows/content/table_1/table/context-menu/item"><th class="igrp-table-ctx-th"/></xsl:if></tr></thead><tbody><xsl:for-each select="rows/content/table_1/table/value/row[not(@total='yes')]"><tr><xsl:apply-templates mode="context-param" select="context-menu"/><input type="hidden" name="p_id_fk" value="{id}"/><input type="hidden" name="p_id_fk_desc" value="{id_desc}"/><xsl:if test="t_estado"><td align="" data-row="{position()}" data-title="{../../label/t_estado}" class="color" item-name="t_estado" data-sort="{t_estado}"><xsl:call-template name="tdcolor"><xsl:with-param name="color" select="t_estado"/></xsl:call-template></td></xsl:if><xsl:if test="t_aplicacao"><td align="left" data-order="{t_aplicacao}" data-row="{position()}" data-title="{../../../fields/t_aplicacao/label}" class="text" item-name="t_aplicacao"><span class=""><xsl:value-of select="t_aplicacao"/></span></td></xsl:if><xsl:if test="t_nome"><td align="left" data-order="{t_nome}" data-row="{position()}" data-title="{../../../fields/t_nome/label}" class="text" item-name="t_nome"><span class=""><xsl:value-of select="t_nome"/></span></td></xsl:if><xsl:if test="t_codigo"><td align="left" data-order="{t_codigo}" data-row="{position()}" data-title="{../../../fields/t_codigo/label}" class="text" item-name="t_codigo"><span class=""><xsl:value-of select="t_codigo"/></span></td></xsl:if><xsl:if test="t_descricao"><td align="left" data-order="{t_descricao}" data-row="{position()}" data-title="{../../../fields/t_descricao/label}" class="text" item-name="t_descricao"><span class=""><xsl:value-of select="t_descricao"/></span></td></xsl:if><xsl:if test="//rows/content/table_1/table/context-menu/item"><td class="igrp-table-ctx-td"><xsl:apply-templates select="../../context-menu" mode="table-context-inline"><xsl:with-param name="row-params" select="context-menu"/><xsl:with-param name="type" select="'inl'"/></xsl:apply-templates></td></xsl:if></tr></xsl:for-each></tbody></table></div></div></div></div></xsl:if></div></div></div></div></div></div></div><xsl:call-template name="IGRP-bottom"/></form><script type="text/javascript" src="{$path}/core/igrp/form/igrp.forms.js?v={$version}"/><script type="text/javascript" src="{$path}/core/igrp/table/datatable/jquery.dataTables.min.js?v={$version}"/><script type="text/javascript" src="{$path}/core/igrp/table/datatable/dataTables.bootstrap.min.js?v={$version}"/><script type="text/javascript" src="{$path}/core/igrp/table/igrp.table.js?v={$version}"/><script type="text/javascript" src="{$path}/core/igrp/table/bootstrap-contextmenu.js?v={$version}"/><script type="text/javascript" src="{$path}/core/igrp/table/table.contextmenu.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/select2/select2.full.min.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/select2/select2.init.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/colorpicker/js/bootstrap-colorpicker.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/colorpicker/colorpicker.init.js?v={$version}"/><script src="{$path}/core/igrp/IGRP.rules.class.js"/><script>
$.IGRP.rules.set({"p_aplicacao":[{"name":"prencheList","events":"load,change","isTable":false,"conditions":{"rules":[{"condition":"","value":"","value2":"","patern":"","patern_custom":"","opposite":""}],"actions":[{"action":"remote_list","targets":"table_1","procedure":"webapps?r=igrp/Gestao_tipo_documento/index","request_fields":"aplicacao","msg_type":"info","msg":""}]}}]},'actionsList');</script></body></html></xsl:template><xsl:include href="../../../xsl/tmpl/IGRP-functions.tmpl.xsl?v=16"/><xsl:include href="../../../xsl/tmpl/IGRP-variables.tmpl.xsl?v=16"/><xsl:include href="../../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=16"/><xsl:include href="../../../xsl/tmpl/IGRP-utils.tmpl.xsl?v=16"/><xsl:include href="../../../xsl/tmpl/IGRP-form-utils.tmpl.xsl?v=16"/><xsl:include href="../../../xsl/tmpl/IGRP-table-utils.tmpl.xsl?v=16"/></xsl:stylesheet>
