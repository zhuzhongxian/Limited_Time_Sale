package org.mall.bean;

import java.util.Date;

public class seckilled {
    private long goodsId;
    private long userId;
    private short state;
    private Date createTime;
    private goods goods;
    public long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(long goodsId) {
        this.goodsId = goodsId;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public short getState() {
        return state;
    }

    public void setState(short state) {
        this.state = state;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public org.mall.bean.goods getGoods() {
        return goods;
    }

    public void setGoods(org.mall.bean.goods goods) {
        this.goods = goods;
    }

    @Override
    public String toString() {
        return "seckilled{" +
                "goodsId=" + goodsId +
                ", userId=" + userId +
                ", state=" + state +
                ", createTime=" + createTime +
                ", goods=" + goods +
                '}';
    }
}
