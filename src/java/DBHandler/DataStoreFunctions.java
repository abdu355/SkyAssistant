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

    int uniqueId = 0;
    DatastoreService ds = DatastoreServiceFactory.getDatastoreService();

    public void createUser(String... params) {
        //String uniqueID = UUID.randomUUID().toString();
        
        Entity e = new Entity("User", getUniqueId());
        e.setProperty("FullName", params[0]);
        e.setProperty("Password", params[1]);
        e.setProperty("Email", params[2]);
        e.setProperty("DOB", params[3]);
        ds.put(e);    
    }

    private int getUniqueId() {
        return ++uniqueId;
    }
    
    public String returnMessage()
    {
        return "User Created";
    }

}
