package mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {
	
	public static int sendMail(String adminusername,String adminpassword) {
		
		final String username = "demotech155@gmail.com";
		final String password = "demo@123";

		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username,password);
				}
			});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("demotech155@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse("demotech155@gmail.com"));
			message.setSubject("PDEA COE Administrator New Password");
			message.setContent("<p style='font-weight:bold;font-size:large'>Dear user kindly not down your credentials for PDEA COEM, Manjari. D</p><P>Username: "+adminusername+"</p><p>Password: "+adminpassword+"</p>","text/html");

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			e.printStackTrace();
			return 0;
		}
		
		return 1;
	}
}
