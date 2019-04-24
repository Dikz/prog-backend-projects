<%@page language="java" contentType="application/json;charset=UTF-8" %>
<%@ page import="org.json.*,java.util.*"%>
<%-- response.setContentType("application/json"); --%>

<%
    JSONObject resjson = new JSONObject();
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    String cargo = "";
    String infoclass = "info";
    
    /*
    101				Vendedor
    102				Atendente
    103				Auxiliar Técnico
    104				Assistente
    */
    
    switch(codigo) {
        case 101: cargo = "Vendedor";
            break;
        case 102: cargo = "Atendente"; 
            break;
        case 103: cargo = "Auxiliar Técnico"; 
            break;
        case 104: cargo = "Assistente"; 
            break;
        default: cargo = "Codigo Invalido";
            infoclass = "danger";
            break;
    }
    
    resjson.put("codigo", codigo);
    resjson.put("cargo", cargo);
    resjson.put("infoclass", infoclass);
    
    out.println(resjson);
%>