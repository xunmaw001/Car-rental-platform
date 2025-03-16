package com.entity.view;

import com.entity.HuiyuandingdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 会员订单
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
@TableName("huiyuandingdan")
public class HuiyuandingdanView  extends HuiyuandingdanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public HuiyuandingdanView(){
	}
 
 	public HuiyuandingdanView(HuiyuandingdanEntity huiyuandingdanEntity){
 	try {
			BeanUtils.copyProperties(this, huiyuandingdanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
