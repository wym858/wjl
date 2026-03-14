package com.HuangLiang.week2.homework;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

// 严格遵循 Servlet 标准写法
@WebServlet("/myInfo")
public class MyInfoServlet extends HttpServlet {

    // 1. 继承 HttpServlet
    // 2. 重写 doGet / doPost
    // 3. 设置响应编码
    // 4. 获取输出流
    // 5. 拼接HTML
    // 6. 输出内容
    // 7. 关闭流

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 3. 设置编码
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        // 4. 获取输出流
        PrintWriter out = response.getWriter();

        // 5 + 6. 输出页面
        out.println("<html>");
        out.println("<head><title>MyInfo</title></head>");
        out.println("<body>");
        out.println("<h2>Personal Information</h2>");
        out.println("Name: Huang Liang<br>");
        out.println("ID: 2024061010000514<br>");
        out.println("Time: " + new Date() + "<br>");
        out.println("</body>");
        out.println("</html>");

        // 7. 关闭流
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}