package pojo;


import java.io.Serializable;


/**
 * 评论对象
 */
public class VCommons implements Serializable {

  private long vCommonsId; //评论id
  private long vProductId; //商品id
  private String vContent; //评论内容
  private long vOrderId; //订单id
  private long vUserId; //用户id
  private double vGrade; //评分
  private java.sql.Timestamp vCreateDate; //评论创建时间
  private java.sql.Timestamp vModifyDate; //评论修改时间
  private long vIsOk; //是否推荐


  public long getVCommonsId() {
    return vCommonsId;
  }

  public void setVCommonsId(long vCommonsId) {
    this.vCommonsId = vCommonsId;
  }


  public long getVProductId() {
    return vProductId;
  }

  public void setVProductId(long vProductId) {
    this.vProductId = vProductId;
  }


  public String getVContent() {
    return vContent;
  }

  public void setVContent(String vContent) {
    this.vContent = vContent;
  }


  public long getVOrderId() {
    return vOrderId;
  }

  public void setVOrderId(long vOrderId) {
    this.vOrderId = vOrderId;
  }


  public long getVUserId() {
    return vUserId;
  }

  public void setVUserId(long vUserId) {
    this.vUserId = vUserId;
  }


  public double getVGrade() {
    return vGrade;
  }

  public void setVGrade(double vGrade) {
    this.vGrade = vGrade;
  }


  public java.sql.Timestamp getVCreateDate() {
    return vCreateDate;
  }

  public void setVCreateDate(java.sql.Timestamp vCreateDate) {
    this.vCreateDate = vCreateDate;
  }


  public java.sql.Timestamp getVModifyDate() {
    return vModifyDate;
  }

  public void setVModifyDate(java.sql.Timestamp vModifyDate) {
    this.vModifyDate = vModifyDate;
  }


  public long getVIsOk() {
    return vIsOk;
  }

  public void setVIsOk(long vIsOk) {
    this.vIsOk = vIsOk;
  }

}
