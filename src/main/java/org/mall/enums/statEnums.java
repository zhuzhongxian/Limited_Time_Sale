package org.mall.enums;

/**
 * defiend state enum
 */
public enum statEnums {
    SUCCESS(1, "秒杀成功"),
    END(0, "秒杀结束"),
    REPEAT_SECKILL(-1, "重复秒杀"),
    INNER_ERROR(-2, "内部异常"),
    DATA_REWIRTE(-3, "数据被篡改");
    private int state;
    private String Info;

    statEnums(int state, String info) {
        this.state = state;
        Info = info;
    }

    public int getState() {
        return state;
    }

    public String getInfo() {
        return Info;
    }

    /**
     * find index exit enum or not
     *
     * @param index
     * @return
     */
    public static statEnums stateOf(int index) {
        for (statEnums state : values()) {
            if (state.getState() == index) {
                return state;
            }
        }
        return null;
    }
}