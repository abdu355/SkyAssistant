/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBHandler;

import AppLogic.*;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import java.util.UUID;
import javax.servlet.http.HttpServlet;

/**
 *
 * @author Administrator
 */
public class DataStoreFunctions {

    DatastoreService ds;
    int uniqueId;
    
    public DataStoreFunctions() {
        int uniqueId = 0;
        ds = DatastoreServiceFactory.getDatastoreService();
    }

    public void createUser() {
        //String uniqueID = UUID.randomUUID().toString();

        Entity e = new Entity("User", getUniqueId());
        e.setProperty("FullName", "Abdu");
        e.setProperty("Password", "hi123");
        e.setProperty("Email", "abdu_sah@hotmail.com");
        e.setProperty("DOB", "02/17/2016");
        ds.put(e);
    }

    private int getUniqueId() {
        return ++uniqueId;
    }

    public String returnMessage() {
        return "User Created";
    }

}
