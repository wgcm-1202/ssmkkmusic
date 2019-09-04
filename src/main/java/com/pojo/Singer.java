package com.pojo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Singer {
    private int singer_id;
    private String singer_name;
    private String singer_life;
    private int collectioncount;
    private Area area;
    private Date birthday;
    private String sex;
    private String photo;
    private List<Song> songs=new ArrayList<>();
    private List<SongListView> songListViews =new ArrayList<>();

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

    public String getSex() {
        return sex;
    }

    public void setSex( String sex ) {
        this.sex = sex;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto( String photo ) {
        this.photo = photo;
    }

    public List<Song> getSongs() {
        return songs;
    }

    public void setSongs( List<Song> songs ) {
        this.songs = songs;
    }

    public List<SongListView> getSongListViews() {
        return songListViews;
    }

    public void setSongListViews( List<SongListView> songListViews ) {
        this.songListViews = songListViews;
    }

    @Override
    public String toString() {
        return "Singer{" +
                "singer_id=" + singer_id +
                ", singer_name='" + singer_name + '\'' +
                ", singer_life='" + singer_life + '\'' +
                ", collectioncount=" + collectioncount +
                ", area=" + area +
                ", birthday=" + birthday +
                ", sex='" + sex + '\'' +
                ", photo='" + photo + '\'' +
                ", songs=" + songs +
                ", songListViews=" + songListViews +
                '}';
    }
}
