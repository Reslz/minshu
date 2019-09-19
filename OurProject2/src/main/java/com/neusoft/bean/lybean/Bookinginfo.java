package com.neusoft.bean.lybean;

import java.sql.Date;

public class Bookinginfo {

  private int orderid;

 private int uid;
 private int houseid;

  private int personNum;

 private int residenceTime;

   private Date checkInTime;

   private Date checkOutTime;

  private String idcard;


  public int getOrderid() {
    return orderid;
  }
  public void setOrderid(int orderid){
    this.orderid = orderid;
  }
  public int getUid() {
    return uid;
  }
  public void setUid(int uid){
    this.uid = uid;
  }
  public int getHouseid() {
    return houseid;
  }
  public void setHouseid(int houseid){
    this.houseid = houseid;
  }
  public int getPersonNum() {
    return personNum;
  }
  public void setPersonNum(int personNum){
    this.personNum = personNum;
  }
  public int getResidenceTime() {
    return residenceTime;
  }
  public void setResidenceTime(int residenceTime){
    this.residenceTime = residenceTime;
  }
  public Date getCheckInTime() {
    return checkInTime;
  }
  public void setCheckInTime(Date checkInTime){
    this.checkInTime = checkInTime;
  }
  public Date getCheckOutTime() {
    return checkOutTime;
  }
  public void setCheckOutTime(Date checkOutTime){
    this.checkOutTime = checkOutTime;
  }
  public String getIdcard() {
    return idcard;
  }
  public void setIdcard(String idcard){
    this.idcard = idcard;
  }
}

