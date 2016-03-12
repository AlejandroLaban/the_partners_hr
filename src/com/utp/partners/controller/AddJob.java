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


    @WebServlet(name = "AddJob", urlPatterns = {"/AddJob"})
    public class AddJob extends HttpServlet {
        private static final long serialVersionUID = 1L;

        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            Job job = new Job();

            String r =request.getParameter("minSalary");

            job.setJobId(request.getParameter("jobId"));
            job.setJobTitle(request.getParameter("jobTitle"));
            job.setMinSalary(Integer.parseInt(request.getParameter("minSalary")));
            job.setMaxSalary(Integer.parseInt(request.getParameter("maxSalary")));

            DBService serv = new DBService();
            serv.addNew(job);
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


        public AddJob() {
        }
    }


