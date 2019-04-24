<%-- 
    Document   : reajuste
    Created on : 10/04/2019, 20:04:05
    Author     : cicer
--%>
<%@page language="java" contentType="application/json;charset=UTF-8" %>
<%@ page import="org.json.*,java.util.*"%>
<%-- response.setContentType("application/json"); --%>

<%
    JSONObject resjson = new JSONObject();
    Double salario = Double.parseDouble(request.getParameter("salario"));
    String nome = request.getParameter("nome");
    String message = "Reajustado";
    String alert = "success";
    Double reajustado = 0.0;
    Double liquido = 0.0;
    
    if (salario < 1000) {
        reajustado = (salario + ((salario*15) / 100));
        liquido = (reajustado - ((reajustado*8)/100));
    } else if (salario >= 1000 && salario <= 2000) {
        reajustado = (salario + ((salario*10) / 100));
        liquido = (reajustado - ((reajustado*8)/100));
    } else if (salario >= 2001 && salario <= 3000) {
        reajustado = (salario + ((salario*5) / 100));
        liquido = (reajustado - ((reajustado*8)/100));
    } else {
        message = "Não foi reajustado";
        alert = "danger";
        liquido = (salario - ((salario*8)/100));
    }
    
    resjson.put("nome", nome);
    resjson.put("message", message);
    resjson.put("alert", alert);
    resjson.put("salario", salario);
    resjson.put("reajustado", reajustado);
    resjson.put("liquido", liquido);
    
    out.println(resjson);
%>