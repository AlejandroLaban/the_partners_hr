package com.utp.partners.model;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by alex on 06/03/16.
 */
public class DBService {

    public DBService() {
    }

    public Connection getConnection() throws NamingException, SQLException {
        InitialContext ctx = new InitialContext();
        DataSource ds = (DataSource) ctx.lookup("jdbc/hr");
        //Statement stmt = connection.createStatement();
        Connection connection = ds.getConnection();
        return connection;
    }

    public void addNew(Job job) {
        Connection con = null;
        PreparedStatement pstmt = null;
        try {
            con=this.getConnection();
            pstmt = con.prepareStatement("INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES(?,?,?,?)");
            pstmt.setString(1, job.getJob_id());
            pstmt.setString(2, job.getJob_title());
            pstmt.setInt(3, job.getMin_salary());
            pstmt.setInt(4, job.getMax_salary());
            pstmt.execute();
        } catch (SQLException | NamingException ex) {

        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
            }
        }
    }

    public void delete(String id) {
        Connection con = null;
        PreparedStatement stmt = null;
        try {
            con=this.getConnection();

            stmt =con.prepareStatement("DELETE FROM jobs WHERE job_id=?");
            stmt.setString(1,id);
            stmt.executeQuery();
        } catch (SQLException | NamingException ex) {

        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
            }
        }
    }

    public void update(Job job) {
        Connection con = null;
        PreparedStatement pstmt = null;
        try {
            con=this.getConnection();
            pstmt = con.prepareStatement("UPDATE jobs SET job_title=?, min_salary=?, max_salary=? WHERE job_id=?");
            pstmt.setString(1, job.getJob_title());
            pstmt.setInt(2, job.getMin_salary());
            pstmt.setInt(3, job.getMax_salary());
            pstmt.setString(4, job.getJob_id());
            pstmt.executeUpdate();
        } catch (SQLException | NamingException ex) {

        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
            }
        }
    }

    public Job getJobs(String id) {
        Job jobs = null;
        Connection con = null;
        PreparedStatement stmt = null;
        try {
            con=this.getConnection();
            stmt =con.prepareStatement("SELECT * FROM jobs WHERE job_id=?");
            stmt.setString(1,id);
            ResultSet rs=stmt.executeQuery();
            if (rs.next()) {
                jobs = new Job();
                jobs.setJob_id(rs.getString(1));
                jobs.setJob_title(rs.getString(2));
                jobs.setMin_salary(rs.getInt(3));
                jobs.setMax_salary(rs.getInt(4));
            }
        } catch (SQLException | NamingException ex) {

        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
            }
        }
        return jobs;
    }

    public List<Job> getJobs() {
        List<Job> list = new ArrayList<>();
        Connection con =null;
        Statement stmt = null;
        try {

            con = this.getConnection();
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM jobs ORDER BY job_id");
            while (rs.next()) {
                Job job = new Job();
                job.setJob_id(rs.getString(1));
                job.setJob_title(rs.getString(2));
                job.setMin_salary(rs.getInt(3));
                job.setMax_salary(rs.getInt(4));
                list.add(job);
            }
        } catch (SQLException  | NamingException ex) {

        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {

            }
        }
        return list;
    }
    
}
