<%@page import="org.springframework.web.util.WebUtils"%>
<%
	String ricercaLibera = "[XML,*]";
	if(!confBean.getTheXMLConfQuery().valoreNodo("/root/query/element[@genericFind='true']/text()").equals("")){
		ricercaLibera = "["+confBean.getTheXMLConfQuery().valoreNodo("/root/query/element[@genericFind='true']/text()")+"]";
	}
	String perPageNewRic = "10";
	try{ 
 		perPageNewRic = WebUtils.getCookie(request, workFlowBean.getAlias()).getValue();
	}catch(Exception e){
	}%> 
<form name="inc_theForm" class="srcForm" action="${contextPath}/search/<%=workFlowBean.getAlias() %>/title.html" onsubmit="document.inc_theForm['<%=ricercaLibera%>'].value=='ricerca libera'?document.inc_theForm['<%=ricercaLibera%>'].value='':void(0)" method="post"><%
String incRicQrID = "";
boolean raffinaDisabledEsito = true;
if(request.getAttribute("qrId")!=null){
	incRicQrID = (String)request.getAttribute("qrId");
	raffinaDisabledEsito = false;
} %>
<input value="<%=incRicQrID%>" name="selid" type="hidden" />
<input type="hidden" name="perpage" value="<%=perPageNewRic %>" />
<input value="" name="ramoDoc" type="hidden" />
<input value="<%=confBean.getSorting()%>" name="sorting" type="hidden" />
<input class="ric" name="<%=ricercaLibera%>" type="text" id="ricerca" value="ricerca libera" onfocus="this.value=''" onblur="this.value==''?this.value='ricerca libera':void(0)"/>
<select name="raffina" class="raff"><option value="0" id="primoElemento"></option>
<%if(!incRicQrID.equals("")){ %><option value="esito">tra i risultati</option><%}%>
<%if(incRicQrID.equals("")){ %><option value="tree">tra i figli</option><%}%>
</select>
<input type="submit" class="cerca_b" value="" /></form>


 