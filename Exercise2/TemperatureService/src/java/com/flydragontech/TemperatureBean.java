package com.flydragontech;

import javax.ejb.Singleton;

@Singleton
public class TemperatureBean {

    private String temperature = "0.0";

    protected TemperatureBean() {
    }

    public static TemperatureBean getInstance() {
        return TemperatureBeanHolder.INSTANCE;
    }

    private static class TemperatureBeanHolder {
        private static final TemperatureBean INSTANCE = new TemperatureBean();
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String t) {
        this.temperature = t;
    }
}
