package pojo;


import java.io.Serializable;

/**
 * 新闻类
 */
public class VNews implements Serializable {

  private long vNewsId; //新闻对象
  private String vTitle; //新闻标题
  private String vContent; //新闻内容
  private java.sql.Timestamp vCreateDate; //新闻创建时间


  public long getVNewsId() {
    return vNewsId;
  }

  public void setVNewsId(long vNewsId) {
    this.vNewsId = vNewsId;
  }


  public String getVTitle() {
    return vTitle;
  }

  public void setVTitle(String vTitle) {
    this.vTitle = vTitle;
  }


  public String getVContent() {
    return vContent;
  }

  public void setVContent(String vContent) {
    this.vContent = vContent;
  }


  public java.sql.Timestamp getVCreateDate() {
    return vCreateDate;
  }

  public void setVCreateDate(java.sql.Timestamp vCreateDate) {
    this.vCreateDate = vCreateDate;
  }

}
