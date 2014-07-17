/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package report;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.HashMap;
import java.util.Map;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

/**
 *
 * @author nviradia
 */
public class NewClass {
    
    public String getPath(){
        String path = getClass().getClassLoader().getResource(".").getPath();
        System.out.println(""+path);
        return path;
    }
    
    public InputStream getStream(int ij,String n,String o) throws JRException, FileNotFoundException{
         Connection conn=null;
        org.apache.log4j.BasicConfigurator.configure();
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://54.88.228.192:3306/Naimish?zeroDateTimeBehavior=convertToNull", "naimish", "password");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            
            Map parameters = new HashMap();
            int orderid=1;
            parameters.put("orderid", ij);
            //String path = getClass().getClassLoader().getResource(".").getPath();
            String path=new NewClass().getPath();
            System.out.println("path--->"+path);
            //path+="report/Order.jasper";
            int i=n.indexOf("RBOSS");
//            String npath=path.substring(0, i);
//            npath+="RBOSS/src/main/java/report/Order.jasper";
//            System.out.println("path--->"+npath);
            JasperPrint jprint = (JasperPrint) JasperFillManager.fillReport(n, parameters, conn);
            
            // Export pdf file
            JasperExportManager.exportReportToPdfFile(jprint, "1.pdf");
            n=path.substring(0, i);
            o+="1.pdf";
            InputStream reportStream = new FileInputStream(o);
            return reportStream;
    }
    
     public static void main(String[] args) throws JRException {
        // TODO code application logic here
         System.out.println("hi");
         new NewClass().getPath();
         Connection conn=null;
        org.apache.log4j.BasicConfigurator.configure();
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://54.88.228.192:3306/Naimish?zeroDateTimeBehavior=convertToNull", "naimish", "password");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            
            Map parameters = new HashMap();
            int orderid=1;
            parameters.put("orderid", orderid);
            //String path = getClass().getClassLoader().getResource(".").getPath();
            String path=new NewClass().getPath();
            //path+="report/Order.jasper";
            int i=path.indexOf("RBOSS");
            String npath=path.substring(0, i);
            npath+="RBOSS/src/main/java/report/Order.jasper";
            System.out.println("path--->"+npath);
            JasperPrint jprint = (JasperPrint) JasperFillManager.fillReport(npath, parameters, conn);

            // Export pdf file
            JasperExportManager.exportReportToPdfFile(jprint, "1.pdf");
           // byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);
 
//            response.setContentType("application/pdf");
//            response.setContentLength(bytes.length);
////            ServletOutputStream outStream = response.getOutputStream();
//            outStream.write(bytes, 0, bytes.length);
//            outStream.flush();
//            outStream.close();
        
     }
}
