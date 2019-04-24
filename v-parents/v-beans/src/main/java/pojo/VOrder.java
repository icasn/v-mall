package pojo;


import java.io.Serializable;


/**
 * 订单类
 */
public class VOrder implements Serializable {

  private long vOrderId; //订单id
  private long vUserId; //用户id
  private String vUsername; //用户名
  private String vUserAddress; //用户地址
  private java.sql.Timestamp vCreateTime; //创建时间
  private double vCost; //订单花费
  private String vSerialNumber; //序列化的订单号
  private long vStatusId; //订单状态
  private String vPayNum; //交易号
  private long vOrderDetailId; //订单详情


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


  public String getVUsername() {
    return vUsername;
  }

  public void setVUsername(String vUsername) {
    this.vUsername = vUsername;
  }


  public String getVUserAddress() {
    return vUserAddress;
  }

  public void setVUserAddress(String vUserAddress) {
    this.vUserAddress = vUserAddress;
  }


  public java.sql.Timestamp getVCreateTime() {
    return vCreateTime;
  }

  public void setVCreateTime(java.sql.Timestamp vCreateTime) {
    this.vCreateTime = vCreateTime;
  }


  public double getVCost() {
    return vCost;
  }

  public void setVCost(double vCost) {
    this.vCost = vCost;
  }


  public String getVSerialNumber() {
    return vSerialNumber;
  }

  public void setVSerialNumber(String vSerialNumber) {
    this.vSerialNumber = vSerialNumber;
  }


  public long getVStatusId() {
    return vStatusId;
  }

  public void setVStatusId(long vStatusId) {
    this.vStatusId = vStatusId;
  }


  public String getVPayNum() {
    return vPayNum;
  }

  public void setVPayNum(String vPayNum) {
    this.vPayNum = vPayNum;
  }


  public long getVOrderDetailId() {
    return vOrderDetailId;
  }

  public void setVOrderDetailId(long vOrderDetailId) {
    this.vOrderDetailId = vOrderDetailId;
  }

}
