/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Salahudine
 */
public class GestionMail {

    // parametre connexion serveur smtp
    private static String user = "account@gmail.com";
    private static String pwd = "pass";
/// il faudra aller dans votre email https://myaccount.google.com/lesssecureapps?pli=1
    // qui envoie
    private static String from = "account@gmail.com";

    public static void sendEmail(String msg, String to, String sujet) {
        Properties props = new Properties();
        //le smtp de votre serveur web
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                // Adresse mail et password de l emetteur sur le serveur
                // smtp
                return new PasswordAuthentication(user, pwd);
            }
        });

        try {
            Message message = new MimeMessage(session);
            // adresse mail de l emetteur
            message.setFrom(new InternetAddress(from));
            // adresse destinataire
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(sujet);
            message.setContent(msg, "text/html; charset=utf-8");

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

}
