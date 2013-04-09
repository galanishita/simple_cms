﻿define("ace/theme/eclipse",["require","exports","module","ace/lib/dom"],function(b,a){a.isDark=!1;a.cssText='.ace-eclipse .ace_editor {  border: 2px solid rgb(159, 159, 159);}.ace-eclipse .ace_editor.ace_focus {  border: 2px solid #327fbd;}.ace-eclipse .ace_gutter {  background: #ebebeb;  border-right: 1px solid rgb(159, 159, 159);  color: rgb(136, 136, 136);}.ace-eclipse .ace_print_margin {  width: 1px;  background: #ebebeb;}.ace-eclipse .ace_scroller {  background-color: #FFFFFF;}.ace-eclipse .ace_fold {    background-color: rgb(60, 76, 114);}.ace-eclipse .ace_text-layer {}.ace-eclipse .ace_cursor {  border-left: 2px solid black;}.ace-eclipse .ace_line .ace_storage,.ace-eclipse .ace_line .ace_keyword,.ace-eclipse .ace_line .ace_variable {  color: rgb(127, 0, 85);}.ace-eclipse .ace_line .ace_constant.ace_buildin {  color: rgb(88, 72, 246);}.ace-eclipse .ace_line .ace_constant.ace_library {  color: rgb(6, 150, 14);}.ace-eclipse .ace_line .ace_function {  color: rgb(60, 76, 114);}.ace-eclipse .ace_line .ace_string {  color: rgb(42, 0, 255);}.ace-eclipse .ace_line .ace_comment {  color: rgb(63, 127, 95);}.ace-eclipse .ace_line .ace_comment.ace_doc {  color: rgb(63, 95, 191);}.ace-eclipse .ace_line .ace_comment.ace_doc.ace_tag {  color: rgb(127, 159, 191);}.ace-eclipse .ace_line .ace_constant.ace_numeric {}.ace-eclipse .ace_line .ace_tag {  color: rgb(63, 127, 127);}.ace-eclipse .ace_line .ace_type {  color: rgb(127, 0, 127);}.ace-eclipse .ace_line .ace_xml_pe {  color: rgb(104, 104, 91);}.ace-eclipse .ace_marker-layer .ace_selection {  background: rgb(181, 213, 255);}.ace-eclipse .ace_marker-layer .ace_bracket {  margin: -1px 0 0 -1px;  border: 1px solid rgb(192, 192, 192);}.ace-eclipse .ace_line .ace_meta.ace_tag {  color:rgb(63, 127, 127);}.ace-eclipse .ace_entity.ace_other.ace_attribute-name {  color:rgb(127, 0, 127);}.ace-eclipse .ace_marker-layer .ace_step {  background: rgb(255, 255, 0);}.ace-eclipse .ace_marker-layer .ace_active_line {  background: rgb(232, 242, 254);}.ace-eclipse .ace_marker-layer .ace_selected_word {  border: 1px solid rgb(181, 213, 255);}.ace-eclipse .ace_indent-guide {  background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAE0lEQVQImWP4////f4bLly//BwAmVgd1/w11/gAAAABJRU5ErkJggg==") right repeat-y;}';
a.cssClass="ace-eclipse";b("../lib/dom").importCssString(a.cssText,a.cssClass)});