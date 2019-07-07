package org.mall.dto;
/**
 * expose data
 *     private boolean exposed;           turn it on or off
 *     private String md5;                prevent tampering
 *     private long goodsId;              goodsID
 *     private long now;                  now time
 *     private long start;                seckill begin time
 *     private long end;                  seckill end time
 */
public class exposer {
    private boolean exposed;
    private String md5;
    private long goodsId;
    private long now;
    private long start;
    private long end;

    public exposer(boolean exposed, String md5, long goodsId) {
        this.exposed = exposed;
        this.md5 = md5;
        this.goodsId = goodsId;
    }

    public exposer(boolean exposed,long goodsId, long now, long start, long end) {
        this.exposed = exposed;
        this.goodsId=goodsId;
        this.now = now;
        this.start = start;
        this.end = end;
    }

    public exposer(boolean exposed, long goodsId) {
        this.exposed = exposed;
        this.goodsId = goodsId;
    }

    public boolean isExposed() {
        return exposed;
    }

    public void setExposed(boolean exposed) {
        this.exposed = exposed;
    }

    public String getMd5() {
        return md5;
    }

    public void setMd5(String md5) {
        this.md5 = md5;
    }

    public long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(long goodsId) {
        this.goodsId = goodsId;
    }

    public long getNow() {
        return now;
    }

    public void setNow(long now) {
        this.now = now;
    }

    public long getStart() {
        return start;
    }

    public void setStart(long start) {
        this.start = start;
    }

    public long getEnd() {
        return end;
    }

    public void setEnd(long end) {
        this.end = end;
    }

    @Override
    public String toString() {
        return "exposer{" +
                "exposed=" + exposed +
                ", md5='" + md5 + '\'' +
                ", goodsId=" + goodsId +
                ", now=" + now +
                ", start=" + start +
                ", end=" + end +
                '}';
    }
}
