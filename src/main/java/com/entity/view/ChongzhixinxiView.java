package com.entity.view;

import com.entity.ChongzhixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 充值信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
@TableName("chongzhixinxi")
public class ChongzhixinxiView  extends ChongzhixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ChongzhixinxiView(){
	}
 
 	public ChongzhixinxiView(ChongzhixinxiEntity chongzhixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, chongzhixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
