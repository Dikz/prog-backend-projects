<%@page language="java" contentType="application/json;charset=UTF-8" %>
<%@ page import="org.json.*,java.util.*"%>
<%-- response.setContentType("application/json"); --%>

<%
    JSONObject resjson = new JSONObject();
    String nome = request.getParameter("nome");
    int idade = Integer.parseInt(request.getParameter("idade"));
    String classificacao = "";
    
    if (idade >= 5 && idade <= 7) {
        classificacao = "Infantil A";
    } 
    else if (idade >= 8 && idade <= 11) {
        classificacao = "Infantil B";
    }
    else if (idade >= 12 && idade <= 13) {
        classificacao = "Juvenil A";
    }
    else if (idade >= 14 && idade <= 17) {
        classificacao = "Juvenil B";
    } else if (idade >= 18) {
        classificacao = "Adultos";
    }else {
        classificacao = "Nenhuma classificação encontrada!";
    }
    
    resjson.put("nome", nome);
    resjson.put("classificacao", classificacao);
    
    out.println(resjson);
%>