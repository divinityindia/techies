/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author admin
 */
public class dateParse 
{
    public static String getMysqlDate(String dt1) throws ParseException
    {
            DateFormat userDateFormat = new SimpleDateFormat("dd/mm/yyyy");  
            DateFormat dateFormatNeeded = new SimpleDateFormat("yyyy-mm-dd");
            Date date = userDateFormat.parse(dt1);  
            String convertedDate = dateFormatNeeded.format(date);
            return convertedDate;
    }
    public static String getLocalDate(String dt1) throws ParseException
    {
        if(dt1==null)
        {
            return "--";
        }else
        {    
            DateFormat  dateFormatNeeded= new SimpleDateFormat("dd/mm/yyyy");  
            DateFormat  userDateFormat= new SimpleDateFormat("yyyy-mm-dd");
            Date date = userDateFormat.parse(dt1);  
            String convertedDate = dateFormatNeeded.format(date);
            return convertedDate;
        }
    }
    public static String getLocalDateTime(String dt1) throws ParseException
    {
        DateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.S");
        Date date = inputFormat.parse(dt1);

        // Format date into output format
        DateFormat outputFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm a");
        String outputString = outputFormat.format(date);
        
        return outputString;       
    }
    public static String getStatus(boolean val, String d) throws ParseException
    {
        java.sql.Date DBdate=null;
        java.sql.Date currDate=null;
        String d2=null;
        if (d!=null)
        {
            DBdate = java.sql.Date.valueOf(d);
            d2 = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            currDate=java.sql.Date.valueOf(d2);
        }
        
        if(val==true)
        {
            String warnig="";
            if(currDate.after(DBdate))
            {
                warnig="<font color=\"red\">(Need to Close)</font>";
            }
            
            return "<font color=\"green\">On</font>"+" "+warnig+"";
        }
        else if(val==false)
            return "<font color=\"brown\">Closed</font>";
        else
            return "Error";
    }
    
}
