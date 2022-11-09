package controller;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Path("")
public class StatusController {
    @GET
    public String getStatus() {
        return "Up.";
    }
}
