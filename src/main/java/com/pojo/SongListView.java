package com.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class SongListView implements Serializable {
    private int slid;
    private User user;
    private String slname;
    private int slcounts;
    private String slinfo;
    private String sltime;
    private String slurl;
    private Tag t;
    private List<Song> songs=new ArrayList<>();

    public SongListView(){


    }

    public int getSlid() {
        return slid;
    }

    public void setSlid( int slid ) {
        this.slid = slid;
    }

    public User getUser() {
        return user;
    }

    public void setUser( User user ) {
        this.user = user;
    }

    public String getSlname() {
        return slname;
    }

    public void setSlname( String slname ) {
        this.slname = slname;
    }

    public int getSlcounts() {
        return slcounts;
    }

    public void setSlcounts( int slcounts ) {
        this.slcounts = slcounts;
    }

    public String getSlinfo() {
        return slinfo;
    }

    public void setSlinfo( String slinfo ) {
        this.slinfo = slinfo;
    }

    public String getSltime() {
        return sltime;
    }

    public void setSltime( String sltime ) {
        this.sltime = sltime;
    }

    public String getSlurl() {
        return slurl;
    }

    public void setSlurl( String slurl ) {
        this.slurl = slurl;
    }

    public Tag getT() {
        return t;
    }

    public void setT( Tag t ) {
        this.t = t;
    }

    public List<Song> getSongs() {
        return songs;
    }

    public void setSongs( List<Song> songs ) {
        this.songs = songs;
    }

    @Override
    public String toString() {
        return "SongListView{" +
                "slid=" + slid +
                ", user=" + user +
                ", slname='" + slname + '\'' +
                ", slcounts=" + slcounts +
                ", slinfo='" + slinfo + '\'' +
                ", sltime='" + sltime + '\'' +
                ", slurl='" + slurl + '\'' +
                ", t=" + t +
                ", songs=" + songs +
                '}';
    }
}
