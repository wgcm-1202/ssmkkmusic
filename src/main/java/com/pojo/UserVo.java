package com.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class UserVo implements Serializable {
    private int id;
    private String name;
    private String password;
    private String sex;
    private int age;
    private String email;
    private String url;
    private String sign;
    private Date rgdate;
    private List<SongListView> songListViews;
    private List<SongListView> collectSonglist;

    public UserVo() {
    }

    public int getId() {
        return id;
    }

    public void setId( int id ) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName( String name ) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword( String password ) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex( String sex ) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge( int age ) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail( String email ) {
        this.email = email;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl( String url ) {
        this.url = url;
    }

    public String getSign() {
        return sign;
    }

    public void setSign( String sign ) {
        this.sign = sign;
    }

    public Date getRgdate() {
        return rgdate;
    }

    public void setRgdate( Date rgdate ) {
        this.rgdate = rgdate;
    }

    public List<SongListView> getSongListViews() {
        return songListViews;
    }

    public void setSongListViews( List<SongListView> songListViews ) {
        this.songListViews = songListViews;
    }

    public List<SongListView> getCollectSonglist() {
        return collectSonglist;
    }

    public void setCollectSonglist( List<SongListView> collectSonglist ) {
        this.collectSonglist = collectSonglist;
    }

    @Override
    public String toString() {
        return "UserVo{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", email='" + email + '\'' +
                ", url='" + url + '\'' +
                ", sign='" + sign + '\'' +
                ", rgdate=" + rgdate +
                ", songListViews=" + songListViews +
                ", collectSonglist=" + collectSonglist +
                '}';
    }
}
