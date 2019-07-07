package org.mall.exception;

/**
 *Base exception of seckill
 * extend runtime exception
 */
public class seckillBaseException extends RuntimeException {

    public seckillBaseException(String message) {
        super(message);
    }

    public seckillBaseException(String message, Throwable cause) {
        super(message, cause);
    }
}