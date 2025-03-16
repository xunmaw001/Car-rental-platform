package com.entity.vo;

import com.entity.QichexinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 汽车信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
public class QichexinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 汽车类型
	 */
	
	private String qicheleixing;
		
	/**
	 * 汽车类别
	 */
	
	private String qicheleibie;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 品牌
	 */
	
	private String pinpai;
		
	/**
	 * 颜色
	 */
	
	private String yanse;
		
	/**
	 * 排量
	 */
	
	private String pailiang;
		
	/**
	 * 油耗
	 */
	
	private String youhao;
		
	/**
	 * 参数详情
	 */
	
	private String canshuxiangqing;
		
	/**
	 * 租赁价格
	 */
	
	private Integer zulinjiage;
		
	/**
	 * 会员折扣
	 */
	
	private Float huiyuanzhekou;
		
	/**
	 * 车牌
	 */
	
	private String chepai;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
				
	
	/**
	 * 设置：汽车类型
	 */
	 
	public void setQicheleixing(String qicheleixing) {
		this.qicheleixing = qicheleixing;
	}
	
	/**
	 * 获取：汽车类型
	 */
	public String getQicheleixing() {
		return qicheleixing;
	}
				
	
	/**
	 * 设置：汽车类别
	 */
	 
	public void setQicheleibie(String qicheleibie) {
		this.qicheleibie = qicheleibie;
	}
	
	/**
	 * 获取：汽车类别
	 */
	public String getQicheleibie() {
		return qicheleibie;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：品牌
	 */
	 
	public void setPinpai(String pinpai) {
		this.pinpai = pinpai;
	}
	
	/**
	 * 获取：品牌
	 */
	public String getPinpai() {
		return pinpai;
	}
				
	
	/**
	 * 设置：颜色
	 */
	 
	public void setYanse(String yanse) {
		this.yanse = yanse;
	}
	
	/**
	 * 获取：颜色
	 */
	public String getYanse() {
		return yanse;
	}
				
	
	/**
	 * 设置：排量
	 */
	 
	public void setPailiang(String pailiang) {
		this.pailiang = pailiang;
	}
	
	/**
	 * 获取：排量
	 */
	public String getPailiang() {
		return pailiang;
	}
				
	
	/**
	 * 设置：油耗
	 */
	 
	public void setYouhao(String youhao) {
		this.youhao = youhao;
	}
	
	/**
	 * 获取：油耗
	 */
	public String getYouhao() {
		return youhao;
	}
				
	
	/**
	 * 设置：参数详情
	 */
	 
	public void setCanshuxiangqing(String canshuxiangqing) {
		this.canshuxiangqing = canshuxiangqing;
	}
	
	/**
	 * 获取：参数详情
	 */
	public String getCanshuxiangqing() {
		return canshuxiangqing;
	}
				
	
	/**
	 * 设置：租赁价格
	 */
	 
	public void setZulinjiage(Integer zulinjiage) {
		this.zulinjiage = zulinjiage;
	}
	
	/**
	 * 获取：租赁价格
	 */
	public Integer getZulinjiage() {
		return zulinjiage;
	}
				
	
	/**
	 * 设置：会员折扣
	 */
	 
	public void setHuiyuanzhekou(Float huiyuanzhekou) {
		this.huiyuanzhekou = huiyuanzhekou;
	}
	
	/**
	 * 获取：会员折扣
	 */
	public Float getHuiyuanzhekou() {
		return huiyuanzhekou;
	}
				
	
	/**
	 * 设置：车牌
	 */
	 
	public void setChepai(String chepai) {
		this.chepai = chepai;
	}
	
	/**
	 * 获取：车牌
	 */
	public String getChepai() {
		return chepai;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
			
}
