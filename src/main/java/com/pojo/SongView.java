package com.pojo;

import java.io.Serializable;
import java.sql.Date;

public class SongView implements Serializable {
    private int sid;
    private String sname;
    private Singer singer;
    private CD cd;
    private int playcount;
    private Date publishdate;
    private String songurl;
    private String cyricul;
    private String stime;
    private String spic;
    private Type type;
    public SongView(){}

    public int getSid() {
        return sid;
    }

    public void setSid( int sid ) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname( String sname ) {
        this.sname = sname;
    }

    public Singer getSinger() {
        return singer;
    }

    public void setSinger( Singer singer ) {
        this.singer = singer;
    }

    public CD getCd() {
        return cd;
    }

    public void setCd( CD cd ) {
        this.cd = cd;
    }

    public int getPlaycount() {
        return playcount;
    }

    public void setPlaycount( int playcount ) {
        this.playcount = playcount;
    }

    public Date getPublishdate() {
        return publishdate;
    }

    public void setPublishdate( Date publishdate ) {
        this.publishdate = publishdate;
    }

    public String getSongurl() {
        return songurl;
    }

    public void setSongurl( String songurl ) {
        this.songurl = songurl;
    }

    public String getCyricul() {
        return cyricul;
    }

    public void setCyricul( String cyricul ) {
        this.cyricul = cyricul;
    }

    public String getStime() {
        return stime;
    }

    public void setStime( String stime ) {
        this.stime = stime;
    }

    public String getSpic() {
        return spic;
    }

    public void setSpic( String spic ) {
        this.spic = spic;
    }

    public Type getType() {
        return type;
    }

    public void setType( Type type ) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Song{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", singer=" + singer +
                ", cd=" + cd +
                ", playcount=" + playcount +
                ", publishdate=" + publishdate +
                ", songurl='" + songurl + '\'' +
                ", cyricul='" + cyricul + '\'' +
                ", stime='" + stime + '\'' +
                ", spic='" + spic + '\'' +
                ", type=" + type +
                '}';
    }
}
