package org.mall.exception;

/**
 * return repeatkill exception
 * extend Base exception of seckill
 */
public class repeatkillException  extends seckillBaseException{

    public repeatkillException(String message) {
        super(message);
    }

    public repeatkillException(String message, Throwable cause) {
        super(message, cause);
    }
}