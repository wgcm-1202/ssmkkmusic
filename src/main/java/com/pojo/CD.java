package com.pojo;

import java.sql.Date;

public class CD {
    private int CDid;
    private String CDname;
    private String cover;
    private String company;
    private Date publishdate;
    private Singer singer;
    private String introduce;
    private int ccount;
    public CD(){}

    public int getCDid() {
        return CDid;
    }

    public void setCDid( int CDid ) {
        this.CDid = CDid;
    }

    public String getCDname() {
        return CDname;
    }

    public void setCDname( String CDname ) {
        this.CDname = CDname;
    }

    public String getCover() {
        return cover;
    }

    public void setCover( String cover ) {
        this.cover = cover;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany( String company ) {
        this.company = company;
    }

    public Date getPublishdate() {
        return publishdate;
    }

    public void setPublishdate( Date publishdate ) {
        this.publishdate = publishdate;
    }

    public Singer getSinger() {
        return singer;
    }

    public void setSinger( Singer singer ) {
        this.singer = singer;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce( String introduce ) {
        this.introduce = introduce;
    }

    public int getCcount() {
        return ccount;
    }

    public void setCcount( int ccount ) {
        this.ccount = ccount;
    }

    @Override
    public String toString() {
        return "CD{" +
                "CDid=" + CDid +
                ", CDname='" + CDname + '\'' +
                ", cover='" + cover + '\'' +
                ", company='" + company + '\'' +
                ", publishdate=" + publishdate +
                ", singer=" + singer +
                ", introduce='" + introduce + '\'' +
                ", ccount=" + ccount +
                '}';
    }
}
