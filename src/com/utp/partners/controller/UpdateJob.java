package com.utp.partners.controller;

import com.utp.partners.model.DBService;
import com.utp.partners.model.Job;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by alex on 06/03/16.
 */

@WebServlet(name = "UpdateJob", urlPatterns = {"/UpdateJob"})
    public class UpdateJob extends HttpServlet {

        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            Job job = new Job();
            job.setJobId((request.getParameter("jobId")));
            job.setJobTitle(request.getParameter("jobTitle"));
            job.setMinSalary(Integer.parseInt(request.getParameter("minSalary")));
            job.setMaxSalary(Integer.parseInt(request.getParameter("maxSalary")));
            DBService serv = new DBService();
            serv.update(job);
            response.sendRedirect("jobView.jsp");
        }

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            processRequest(request, response);
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            processRequest(request, response);
        }

        @Override
        public String getServletInfo() {
            return "Short description";
        }
    }
