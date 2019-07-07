package org.mall.controller;

import org.mall.bean.goods;
import org.mall.dto.exposer;
import org.mall.dto.goodsResult;
import org.mall.dto.seckillExecution;
import org.mall.enums.statEnums;
import org.mall.exception.repeatkillException;
import org.mall.exception.seckillCloseException;
import org.mall.service.goodsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class goodsController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private org.mall.service.goodsService goodsService;
    //show goods list
    //@RequestMapping(value="/list",method = RequestMethod.GET)
    @RequestMapping(value="/list")
    public String list(Model model){
        List<goods> list = goodsService.getGoodsList();
        model.addAttribute("list",list);
        return "index";
    }

    //show goods detail
    @RequestMapping(value = "/{goodsId}/detail",
            method = RequestMethod.GET)
    public String detail(@PathVariable("goodsId") Long goodsId, Model model){
        if(goodsId == null){
            return "redirect:/goods/list";
        }
        goods goods = goodsService.getById(goodsId);
        if(goods == null){
            return "forward:/goods/list";
        }
        model.addAttribute("goods",goods);
        return "detail";
    }

    @RequestMapping(value = "/{goodsId}/exposer",
            method = RequestMethod.POST,produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public goodsResult<exposer> exposer(Long goodsId){
        goodsResult<exposer> result;
        try{
            exposer exposer = goodsService.exportGoodsUrl(goodsId);
            result = new goodsResult<exposer>(true,exposer);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            result = new goodsResult<exposer>(false,e.getMessage());
        }
        return result;
    }

    @RequestMapping(value = "/{goodsId}/{md5}/execution",
            method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public goodsResult<seckillExecution> execute(@PathVariable("goodsId") Long goodsId,
                                                 @PathVariable("md5") String md5,
                                                 @CookieValue(value ="userId",required = false) Long userId){
        if (userId == null){
            return new goodsResult<seckillExecution>(false,"未登陆");
        }
        goodsResult<seckillExecution> result;
        try{
            seckillExecution execution = goodsService.executeseckill(goodsId, userId, md5);
            return new goodsResult<seckillExecution>(true,execution);
        }catch (repeatkillException e) {
            seckillExecution execution = new seckillExecution(goodsId, statEnums.REPEAT_SECKILL);
            return new goodsResult<seckillExecution>(true, execution);
        } catch (seckillCloseException e) {
            seckillExecution execution = new seckillExecution(goodsId, statEnums.END);
            return new goodsResult<seckillExecution>(true, execution);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            seckillExecution execution = new seckillExecution(goodsId, statEnums.INNER_ERROR);
            return new goodsResult<seckillExecution>(true, execution);
        }
    }

    @RequestMapping(value = "/time/now", method = RequestMethod.GET)
    @ResponseBody
    public goodsResult<Long> time() {
        Date now = new Date();
        return new goodsResult(true, now.getTime());
    }
}
