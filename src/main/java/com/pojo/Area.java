package com.pojo;

public class Area {
    private int areaId;
    private String areaName;
    public Area(){}

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId( int areaId ) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName( String areaName ) {
        this.areaName = areaName;
    }

    @Override
    public String toString() {
        return "Area{" +
                "areaId=" + areaId +
                ", areaName='" + areaName + '\'' +
                '}';
    }
}
