package com.dao;

import com.entity.HuiyuandingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuiyuandingdanVO;
import com.entity.view.HuiyuandingdanView;


/**
 * 会员订单
 * 
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
public interface HuiyuandingdanDao extends BaseMapper<HuiyuandingdanEntity> {
	
	List<HuiyuandingdanVO> selectListVO(@Param("ew") Wrapper<HuiyuandingdanEntity> wrapper);
	
	HuiyuandingdanVO selectVO(@Param("ew") Wrapper<HuiyuandingdanEntity> wrapper);
	
	List<HuiyuandingdanView> selectListView(@Param("ew") Wrapper<HuiyuandingdanEntity> wrapper);

	List<HuiyuandingdanView> selectListView(Pagination page,@Param("ew") Wrapper<HuiyuandingdanEntity> wrapper);
	
	HuiyuandingdanView selectView(@Param("ew") Wrapper<HuiyuandingdanEntity> wrapper);
	
}
