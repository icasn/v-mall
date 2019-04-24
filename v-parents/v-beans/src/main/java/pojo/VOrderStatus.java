package pojo;

import java.io.Serializable;

/**
 * 订单状态类
 */
public class VOrderStatus implements Serializable {

  private long vStatusId;//状态id
  private String vStatusName; //状态名


  public long getVStatusId() {
    return vStatusId;
  }

  public void setVStatusId(long vStatusId) {
    this.vStatusId = vStatusId;
  }


  public String getVStatusName() {
    return vStatusName;
  }

  public void setVStatusName(String vStatusName) {
    this.vStatusName = vStatusName;
  }

}
