package com.dao;

import com.entity.YonghuhaicheEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YonghuhaicheVO;
import com.entity.view.YonghuhaicheView;


/**
 * 用户还车
 * 
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
public interface YonghuhaicheDao extends BaseMapper<YonghuhaicheEntity> {
	
	List<YonghuhaicheVO> selectListVO(@Param("ew") Wrapper<YonghuhaicheEntity> wrapper);
	
	YonghuhaicheVO selectVO(@Param("ew") Wrapper<YonghuhaicheEntity> wrapper);
	
	List<YonghuhaicheView> selectListView(@Param("ew") Wrapper<YonghuhaicheEntity> wrapper);

	List<YonghuhaicheView> selectListView(Pagination page,@Param("ew") Wrapper<YonghuhaicheEntity> wrapper);
	
	YonghuhaicheView selectView(@Param("ew") Wrapper<YonghuhaicheEntity> wrapper);
	
}
