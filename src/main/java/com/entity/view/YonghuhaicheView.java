package com.entity.view;

import com.entity.YonghuhaicheEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 用户还车
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
@TableName("yonghuhaiche")
public class YonghuhaicheView  extends YonghuhaicheEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YonghuhaicheView(){
	}
 
 	public YonghuhaicheView(YonghuhaicheEntity yonghuhaicheEntity){
 	try {
			BeanUtils.copyProperties(this, yonghuhaicheEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
