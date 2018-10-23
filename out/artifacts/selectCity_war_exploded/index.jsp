<%--
  Created by IntelliJ IDEA.
  User: 21086
  Date: 2018/10/20
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Bean.Province" import="Bean.City" %>
<%@ page import="dao.CityDao" import="dao.ProvinceDao" %>
<%@ page import="java.util.List" import="java.util.ArrayList" import="java.util.*"%>
<%@ page import="java.sql.Array" %>

<html>
  <head>
    <title>$Title$</title>
      <style>
          form {
              float: left;
          }
      </style>
  </head>
  <body>
  <%
      ProvinceDao provinceDao = new ProvinceDao();
      CityDao cityDao = new CityDao();
      List provinces = provinceDao.findAll();
      ArrayList cities = new ArrayList();
      ArrayList<String> provinceName = (ArrayList<String>) provinces;
      for(int i = 0;i < provinces.size();i++) {
          Province province = (Province) provinces.get(i);
          int  provinceId = province.getProvinceId();
          List city = cityDao.findByProvinceId(provinceId);
          cities.add(i,city);
      }
  %>
  <form name = "province" method = "post" action ="resold.jsp">
      <select id = "province" name = "province" onchange = "show()">
          <% for(int i = 0;i < provinces.size();i++) {
              Province province = (Province) provinces.get(i);
          %>
          <option value = "<%= province.getProvinceName() %>"><%= province.getProvinceName() %></option>
          <% } %>
      </select>
          <select name = "city" id = "city">
              <%
                  List cityList = (List) cities.get(0);
                  for(int i = 0;i < cityList.size();i++) {
                      City city = (City) cityList.get(i); %>
              <option value = "<%= city.getCityName() %>"><%= city.getCityName()%></option>
              <% }%>
          </select>
      <input type = "submit" value="提交">
  </form>

  <% for(int i = 0;i < cities.size();i++) {
      List city1 = (List)cities.get(i);
      for(int j = 0;j < city1.size();j++) {
          City c2 = (City)city1.get(j);%>
      <input type = "hidden" id = "<%= i%><%= j%>" value = "<%= c2.getCityName()%>">
  <% } } %>

  <% for(int i = 0;i < provinces.size();i++) {
      Province province = (Province)provinces.get(i);%>
  <input type = "hidden" id = "<%= i%>" value = "<%= province.getProvinceName()%>">
  <% } %>
  <script>
      var x = document.getElementById("province");
      var y = document.getElementById("city");

      function show() {
          var pro = new Array();
          for(var i = 0;i < <%= provinces.size()%>;i++) {
              var id = i;
              pro[i] = document.getElementById(i).value;
          }
          var ci = new Array();
          <% for(int i = 0;i < cities.size();i++) {
              List cityList1 = (List)cities.get(i); %>
          ci[<%= i%>] = new Array();
          <% for(int j = 0;j < cityList1.size();j++) {
              City c2 = (City)cityList1.get(j); %>
          ci[<%=i%>][<%=j%>] = document.getElementById("<%=i%><%=j%>").value;
          <% } } %>

          var cities = ci[x.selectedIndex];
          y.length = 0;
          for(var i = 0;i < cities.length;i++) {
              y[i] = new Option(cities[i],cities[i]);
          }
      }
  </script>
  </body>
</html>
