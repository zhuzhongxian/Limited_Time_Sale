package org.mall.dao.cache;

import com.dyuproject.protostuff.LinkedBuffer;
import com.dyuproject.protostuff.ProtostuffIOUtil;
import com.dyuproject.protostuff.runtime.RuntimeSchema;
import org.mall.bean.goods;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

;

public class RedisDao {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private final JedisPool jedisPool;

    public RedisDao(String ip, int prot){
        jedisPool = new JedisPool(ip,prot);
    }

    private RuntimeSchema<goods> schema = RuntimeSchema.createFrom(goods.class);

    public goods getGoods(long goodsId){
        try{
            Jedis jedis = jedisPool.getResource();
            try{
                String key = "goods:" + goodsId;
                byte[] bytes = jedis.get(key.getBytes());
                if (bytes != null){
                    goods goods = schema.newMessage();
                    ProtostuffIOUtil.mergeFrom(bytes, goods, schema);
                    return goods;
                }
            } finally {
                jedis.close();
            }
        }catch (Exception e){
            logger.error(e.getMessage(), e);
        }
        return null;
    }

    public String putGoods(goods goods){
        //set Objet(goods) ->serialize->byte[]
        try {
            Jedis jedis = jedisPool.getResource();
            try {
                String key = "goods:" + goods.getGoodsId();
                byte[] bytes = ProtostuffIOUtil.toByteArray(goods, schema, LinkedBuffer.allocate(LinkedBuffer.DEFAULT_BUFFER_SIZE));
                int timeout = 60 * 60;
                String result = jedis.setex(key.getBytes(), timeout, bytes);
                return result;
            }finally {
                jedis.close();
            }
        }catch (Exception e){
            logger.error(e.getMessage(),e);
        }
        return null;
    }

}
