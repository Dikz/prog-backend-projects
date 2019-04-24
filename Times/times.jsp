<%@page language="java" contentType="application/json;charset=UTF-8" %>
<%@ page import="org.json.*,java.util.*"%>
<%-- response.setContentType("application/json"); --%>

<%
    /*
    Faça a Atividade usando a tecnologia JSP

    1 - Ler o nome de 2 times e o número de gols marcados na partida (para cada time). Escrever o nome
    do vencedor. Caso não haja vencedor deverá ser impressa a palavra EMPATE. 
    */
    
    JSONObject resjson = new JSONObject();
    
    String time_1 = request.getParameter("time_1");
    int gols_1 = Integer.parseInt(request.getParameter("gols_1"));
    String time_2 = request.getParameter("time_2");
    int gols_2 = Integer.parseInt(request.getParameter("gols_2"));
    
    String infoclass = "success";
    String vencedor = "";
    
    if (gols_1 > gols_2) {
        vencedor = time_1;
    } else if (gols_2 > gols_1) {
        vencedor = time_2;
    } else {
        vencedor = "Empate";
        infoclass = "warning";
    }
    
    resjson.put("vencedor", vencedor);
    resjson.put("infoclass", infoclass);
    resjson.put("time_1", time_1);
    resjson.put("time_2", time_2);
    
    out.println(resjson);
%>