package com.pojo;

import java.io.Serializable;

public class Tag implements Serializable {
    private int tagid;
    private String tag1;
    private String tag2;
    private String tag3;
    public Tag(){

    }

    public int getTagid() {
        return tagid;
    }

    public void setTagid( int tagid ) {
        this.tagid = tagid;
    }

    public String getTag1() {
        return tag1;
    }

    public void setTag1( String tag1 ) {
        this.tag1 = tag1;
    }

    public String getTag2() {
        return tag2;
    }

    public void setTag2( String tag2 ) {
        this.tag2 = tag2;
    }

    public String getTag3() {
        return tag3;
    }

    public void setTag3( String tag3 ) {
        this.tag3 = tag3;
    }

    @Override
    public String toString() {
        return "Tag{" +
                "tagid=" + tagid +
                ", tag1='" + tag1 + '\'' +
                ", tag2='" + tag2 + '\'' +
                ", tag3='" + tag3 + '\'' +
                '}';
    }
}
