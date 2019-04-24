package pojo;


import java.io.Serializable;

/**
 * 用户地址类
 */
public class VUserAddress implements Serializable {

  private long vAddressId; //用户地址id
  private long vUserId; //用户id
  private String vAddress; //用户地址
  private java.sql.Timestamp vCreateDate; //创建时间
  private java.sql.Timestamp vModifyDate; //修改时间
  private long vIsDefault; //是否默认
  private String vReciveName; //收货人姓名
  private String vRecivePhone; //收货人手机号
  private String vDistributionArea; //描述的地区信息（如：湖南-岳阳-岳阳楼区）
  private String vPostCode; //邮政编码


  public long getVAddressId() {
    return vAddressId;
  }

  public void setVAddressId(long vAddressId) {
    this.vAddressId = vAddressId;
  }


  public long getVUserId() {
    return vUserId;
  }

  public void setVUserId(long vUserId) {
    this.vUserId = vUserId;
  }


  public String getVAddress() {
    return vAddress;
  }

  public void setVAddress(String vAddress) {
    this.vAddress = vAddress;
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


  public long getVIsDefault() {
    return vIsDefault;
  }

  public void setVIsDefault(long vIsDefault) {
    this.vIsDefault = vIsDefault;
  }


  public String getVReciveName() {
    return vReciveName;
  }

  public void setVReciveName(String vReciveName) {
    this.vReciveName = vReciveName;
  }


  public String getVRecivePhone() {
    return vRecivePhone;
  }

  public void setVRecivePhone(String vRecivePhone) {
    this.vRecivePhone = vRecivePhone;
  }


  public String getVDistributionArea() {
    return vDistributionArea;
  }

  public void setVDistributionArea(String vDistributionArea) {
    this.vDistributionArea = vDistributionArea;
  }


  public String getVPostCode() {
    return vPostCode;
  }

  public void setVPostCode(String vPostCode) {
    this.vPostCode = vPostCode;
  }

}
