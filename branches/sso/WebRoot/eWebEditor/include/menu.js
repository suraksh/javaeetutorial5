/*
*������������������������������������
*��                                                                  ��
*��                eWebEditor - eWebSoft�����ı��༭�������޸İ�     ��
*��                                                                  ��
*��  ��Ȩ����: eWebSoft.com                                          ��
*��                                                                  ��
*��  ��������: eWeb�����Ŷ�                                          ��
*��            email:webmaster@webasp.net                            ��
*��            QQ:589808                                             ��
*��                                                                  ��
*��  �����ַ: [ԭ���ַ]http://www.eWebSoft.com/Product/eWebEditor/ ��
*��            [֧����̳]http://bbs.eWebSoft.com/                    ��
*��                                                                  ��
*��  ��ҳ��ַ: http://www.fiyu.net/   ������̳                       ��
*��           ��ʲô���⻶ӭ��������̳�����                         ��
*��                                                                  ��
*��                                                                  ��
*������������������������������������
*/


// �˵�����
var sMenuHr="<tr><td align=center valign=middle height=2><TABLE border=0 cellpadding=0 cellspacing=0 width=128 height=2><tr><td height=1 class=HrShadow><\/td><\/tr><tr><td height=1 class=HrHighLight><\/td><\/tr><\/TABLE><\/td><\/tr>";
var sMenu1="<TABLE border=0 cellpadding=0 cellspacing=0 class=Menu width=150><tr><td width=18 valign=bottom align=center style='background:url(sysimage/contextmenu.gif);background-position:bottom;'><\/td><td width=132 class=RightBg><TABLE border=0 cellpadding=0 cellspacing=0>";
var sMenu2="<\/TABLE><\/td><\/tr><\/TABLE>";

// ȡ�˵���
function getMenuRow(s_Disabled, s_Event, s_Image, s_Html) {
	var s_MenuRow = "";
	s_MenuRow = "<tr><td align=center valign=middle><TABLE border=0 cellpadding=0 cellspacing=0 width=132><tr "+s_Disabled+"><td valign=middle height=20 class=MouseOut onMouseOver=this.className='MouseOver'; onMouseOut=this.className='MouseOut';";
	if (s_Disabled==""){
		s_MenuRow += " onclick=\"parent."+s_Event+";parent.oPopupMenu.hide();\"";
	}
	s_MenuRow += ">"
	if (s_Image !=""){
		s_MenuRow += "&nbsp;<img border=0 src='buttonimage/"+config.StyleDir+"/"+s_Image+"' width=20 height=20 align=absmiddle "+s_Disabled+">&nbsp;";
	}else{
		s_MenuRow += "&nbsp;";
	}
	s_MenuRow += s_Html+"<\/td><\/tr><\/TABLE><\/td><\/tr>";
	return s_MenuRow;

}

// ȡ��׼��format�˵���
function getFormatMenuRow(menu, html, image){
	var s_Disabled = "";
	if (!eWebEditor.document.queryCommandEnabled(menu)){
		s_Disabled = "disabled";
	}
	var s_Event = "format('"+menu+"')";
	var s_Image = menu+".gif";
	if (image){
		s_Image = image;
	}
	return getMenuRow(s_Disabled, s_Event, s_Image, html)
}

// ȡ����˵���
function getTableMenuRow(what){
	var s_Menu = "";
	var s_Disabled = "disabled";
	switch(what){
	case "TableInsert":
		if (!isTableSelected()) s_Disabled="";
		s_Menu += getMenuRow(s_Disabled, "TableInsert()", "tableinsert.gif", "�������...")
		break;
	case "TableProp":
		if (isTableSelected()||isCursorInTableCell()) s_Disabled="";
		s_Menu += getMenuRow(s_Disabled, "TableProp()", "tableprop.gif", "��������...")
		break;
	case "TableCell":
		if (isCursorInTableCell()) s_Disabled="";
		s_Menu += getMenuRow(s_Disabled, "TableCellProp()", "tablecellprop.gif", "��Ԫ������...")
		s_Menu += getMenuRow(s_Disabled, "TableCellSplit()", "tablecellsplit.gif", "��ֵ�Ԫ��...")
		s_Menu += sMenuHr;
		s_Menu += getMenuRow(s_Disabled, "TableRowProp()", "tablerowprop.gif", "����������...")
		s_Menu += getMenuRow(s_Disabled, "TableRowInsertAbove()", "tablerowinsertabove.gif", "�����У����Ϸ���");
		s_Menu += getMenuRow(s_Disabled, "TableRowInsertBelow()", "tablerowinsertbelow.gif", "�����У����·���");
		s_Menu += getMenuRow(s_Disabled, "TableRowMerge()", "tablerowmerge.gif", "�ϲ��У����·���");
		s_Menu += getMenuRow(s_Disabled, "TableRowSplit(2)", "tablerowsplit.gif", "�����");
		s_Menu += getMenuRow(s_Disabled, "TableRowDelete()", "tablerowdelete.gif", "ɾ����");
		s_Menu += sMenuHr;
		s_Menu += getMenuRow(s_Disabled, "TableColInsertLeft()", "tablecolinsertleft.gif", "�����У�����ࣩ");
		s_Menu += getMenuRow(s_Disabled, "TableColInsertRight()", "tablecolinsertright.gif", "�����У����Ҳࣩ");
		s_Menu += getMenuRow(s_Disabled, "TableColMerge()", "tablecolmerge.gif", "�ϲ��У����Ҳࣩ");
		s_Menu += getMenuRow(s_Disabled, "TableColSplit(2)", "tablecolsplit.gif", "�����");
		s_Menu += getMenuRow(s_Disabled, "TableColDelete()", "tablecoldelete.gif", "ɾ����");
		break;
	}
	return s_Menu;
}

// �Ҽ��˵�
var oPopupMenu = window.createPopup();
function showContextMenu(event){
	if (!bEditMode) return false;

	var width = 150;
	var height = 0;
	var lefter = event.clientX;
	var topper = event.clientY;

	var oPopDocument = oPopupMenu.document;
	var oPopBody = oPopupMenu.document.body;

	var sMenu="";

	sMenu += getFormatMenuRow("cut", "����");
	sMenu += getFormatMenuRow("copy", "����");
	sMenu += getFormatMenuRow("paste", "����ճ��");
	sMenu += getFormatMenuRow("delete", "ɾ��");
	sMenu += getFormatMenuRow("selectall", "ȫѡ");
	sMenu += sMenuHr;
	height += 102;

	if (isCursorInTableCell()){
		sMenu += getTableMenuRow("TableProp");
		sMenu += getTableMenuRow("TableCell");
		sMenu += sMenuHr;
		height += 286;
	}

	if (isControlSelected("TABLE")){
		sMenu += getTableMenuRow("TableProp");
		sMenu += sMenuHr;
		height += 22;
	}

	if (isControlSelected("IMG")){
		sMenu += getMenuRow("", "ShowDialog('dialog/img.htm', 350, 315, true)", "img.gif", "ͼƬ����...");
		sMenu += sMenuHr;
		sMenu += getMenuRow("", "zIndex('forward')", "forward.gif", "����һ��");
		sMenu += getMenuRow("", "zIndex('backward')", "backward.gif", "����һ��");
		sMenu += sMenuHr;
		height += 64;
	}

	sMenu += getMenuRow("", "findReplace()", "findreplace.gif", "�����滻...");
	height += 20;

	sMenu = sMenu1 + sMenu + sMenu2;

	oPopDocument.open();
	oPopDocument.write(config.StyleMenuHeader+sMenu);
	oPopDocument.close();

	height+=2;
	if(lefter+width > document.body.clientWidth) lefter=lefter-width;
	//if(topper+height > document.body.clientHeight) topper=topper-height;

	oPopupMenu.show(lefter, topper, width, height, eWebEditor.document.body);
	return false;

}

// �������˵�
function showToolMenu(menu){
	if (!bEditMode) return false;
	var sMenu = ""
	var width = 150;
	var height = 0;

	var lefter = event.clientX;
	var leftoff = event.offsetX
	var topper = event.clientY;
	var topoff = event.offsetY;

	var oPopDocument = oPopupMenu.document;
	var oPopBody = oPopupMenu.document.body;

	switch(menu){
	case "paste":

		break;
	case "table":		// ����˵�
		sMenu += getTableMenuRow("TableInsert");
		sMenu += getTableMenuRow("TableProp");
		sMenu += sMenuHr;
		sMenu += getTableMenuRow("TableCell");
		height = 306;
		break;
	case "form":		// �����˵�
		sMenu += getFormatMenuRow("InsertInputText", "���������", "formtext.gif");
		sMenu += getFormatMenuRow("InsertTextArea", "����������", "formtextarea.gif");
		sMenu += getFormatMenuRow("InsertInputRadio", "���뵥ѡť", "formradio.gif");
		sMenu += getFormatMenuRow("InsertInputCheckbox", "���븴ѡť", "formcheckbox.gif");
		sMenu += getFormatMenuRow("InsertSelectDropdown", "����������", "formdropdown.gif");
		sMenu += getFormatMenuRow("InsertButton", "���밴ť", "formbutton.gif");
		height = 120;
		break;
	case "zoom":		// ���Ų˵�
		for (var i=0; i<aZoomSize.length; i++){
			if (aZoomSize[i]==nCurrZoomSize){
				sMenu += getMenuRow("", "doZoom("+aZoomSize[i]+")", "checked.gif", aZoomSize[i]+"%")
			}else{
				sMenu += getMenuRow("", "doZoom("+aZoomSize[i]+")", "space.gif", aZoomSize[i]+"%")
			}
			height += 20;
		}
		break;
	}

	sMenu = sMenu1 + sMenu + sMenu2;

	oPopDocument.open();
	oPopDocument.write(config.StyleMenuHeader+sMenu);
	oPopDocument.close();

	height+=2;
	if(lefter+width > document.body.clientWidth) lefter=lefter-width;
	//if(topper+height > document.body.clientHeight) topper=topper-height;

	oPopupMenu.show(lefter - leftoff - 2, topper - topoff + 22, width, height, document.body);

	return false;
}
