package org.mall.exception;

/**
 * return seckill has been closen exception
 * extend Base exception of seckill
 */
public class seckillCloseException extends seckillBaseException{

    public seckillCloseException(String message) {
        super(message);
    }

    public seckillCloseException(String message, Throwable cause) {
        super(message, cause);
    }
}
