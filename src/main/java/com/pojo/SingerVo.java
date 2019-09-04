package com.pojo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class SingerVo implements Serializable {
    private int singer_id;
    private String singer_name;
    private String singer_life;
    private int accesscount;
    private int collectioncount;
    private Area area;
    private Date birthday;
    private String singersex;
    private String photoUrl;
    private Tag tag;
    private List<Song> songs=new ArrayList<>();
    private List<CD> cds =new ArrayList<>();

    public SingerVo() {
    }

    public int getSinger_id() {
        return singer_id;
    }

    public void setSinger_id( int singer_id ) {
        this.singer_id = singer_id;
    }

    public String getSinger_name() {
        return singer_name;
    }

    public void setSinger_name( String singer_name ) {
        this.singer_name = singer_name;
    }

    public String getSinger_life() {
        return singer_life;
    }

    public void setSinger_life( String singer_life ) {
        this.singer_life = singer_life;
    }

    public int getAccesscount() {
        return accesscount;
    }

    public void setAccesscount( int accesscount ) {
        this.accesscount = accesscount;
    }

    public int getCollectioncount() {
        return collectioncount;
    }

    public void setCollectioncount( int collectioncount ) {
        this.collectioncount = collectioncount;
    }

    public Area getArea() {
        return area;
    }

    public void setArea( Area area ) {
        this.area = area;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday( Date birthday ) {
        this.birthday = birthday;
    }

    public String getSingersex() {
        return singersex;
    }

    public void setSingersex( String singersex ) {
        this.singersex = singersex;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl( String photoUrl ) {
        this.photoUrl = photoUrl;
    }

    public List<Song> getSongs() {
        return songs;
    }

    public void setSongs( List<Song> songs ) {
        this.songs = songs;
    }

    public List<CD> getCds() {
        return cds;
    }

    public void setCds( List<CD> cds ) {
        this.cds = cds;
    }

    public Tag getTag() {
        return tag;
    }

    public void setTag( Tag tag ) {
        this.tag = tag;
    }

    @Override
    public String toString() {
        return "SingerVo{" +
                "singer_id=" + singer_id +
                ", singer_name='" + singer_name + '\'' +
                ", singer_life='" + singer_life + '\'' +
                ", accesscount=" + accesscount +
                ", collectioncount=" + collectioncount +
                ", area=" + area +
                ", birthday=" + birthday +
                ", singersex='" + singersex + '\'' +
                ", photoUrl='" + photoUrl + '\'' +
                ", tag=" + tag +
                ", songs=" + songs +
                ", cds=" + cds +
                '}';
    }
}
