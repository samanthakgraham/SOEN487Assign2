package com.flydragontech;

import javax.ejb.EJB;
import javax.ejb.Stateless;

import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;

/**
 * REST Web Service
 */

@Stateless
@Path("/temperature")
public class TemperatureResource {

    @EJB
    private TemperatureBean temperature;
    /**
     * Retrieves representation of an instance of helloworld.TemperatureResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces("text/html")
    public String getTemp() {
        return "<html><body><h1>Hello! The current temperature is "+temperature.getTemperature()+"!</h1></body></html>";
    }

    /**
     * PUT method for updating an instance of TemperatureResource
     * @param content representation for the resource
     */
    @PUT
    @Consumes("text/plain")
    public void setTemp(String content) {
        temperature.setTemperature(content);
    }
}
