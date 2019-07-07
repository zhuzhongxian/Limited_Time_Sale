package org.mall.dto;

import org.mall.bean.seckilled;
import org.mall.enums.statEnums;

/**
 * return seckill success or not
 *     private long goodsId;            goods id
 *     private int state;               seckill state
 *     private String stateInfo;        seckill state information
 *     private seckilled seckilled;     success seckill object
 */
public class seckillExecution {
    private long goodsId;
    private int state;
    private String stateInfo;
    private org.mall.bean.seckilled seckilled;

    /**
     * if success seckill
     *
     * @param goodsId
     * @param statEnum
     * @param seckilled
     */
    public seckillExecution(long goodsId, statEnums statEnum, org.mall.bean.seckilled seckilled) {
        this.goodsId = goodsId;
        this.state = statEnum.getState();
        this.stateInfo = statEnum.getInfo();
        this.seckilled = seckilled;
    }

    /**
     * if seckill error
     *
     * @param goodsId
     * @param statEnum
     */
    public seckillExecution(long goodsId, statEnums statEnum) {
        this.goodsId = goodsId;
        this.state = statEnum.getState();
        this.stateInfo = statEnum.getInfo();
    }

    public long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(long goodsId) {
        this.goodsId = goodsId;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getStateInfo() {
        return stateInfo;
    }

    public void setStateInfo(String stateInfo) {
        this.stateInfo = stateInfo;
    }

    public org.mall.bean.seckilled getSeckilled() {
        return seckilled;
    }

    public void setSeckilled(org.mall.bean.seckilled seckilled) {
        this.seckilled = seckilled;
    }

    @Override
    public String toString() {
        return "seckillExecution{" +
                "goodsId=" + goodsId +
                ", state=" + state +
                ", stateInfo='" + stateInfo + '\'' +
                ", seckilled=" + seckilled +
                '}';
    }
}
