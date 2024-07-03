package org.example.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/personel")
public class PersonelServlet extends HttpServlet {
    private static List<Personel> personelList = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String idNumber = request.getParameter("idNumber");
        String[] departments = request.getParameterValues("departments");
        String phone = request.getParameter("phone");
        String hireDate = request.getParameter("hireDate");
        double salary = Double.parseDouble(request.getParameter("salary"));
        boolean isActive = request.getParameter("isActive") != null;

        Personel personel = new Personel(name, surname, idNumber, departments, phone, hireDate, salary, isActive);
        personelList.add(personel);

        request.setAttribute("message", "Personel başarıyla eklendi!");
        request.getRequestDispatcher("/sayfa/personel_ekle.jsp").forward(request, response);
    }

    public static List<Personel> getPersonelList() {
        return personelList;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/sayfa/personel_ekle.jsp").forward(request, response);
    }
}
