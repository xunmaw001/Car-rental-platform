package com.dao;

import com.entity.HuiyuanhaicheEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuiyuanhaicheVO;
import com.entity.view.HuiyuanhaicheView;


/**
 * 会员还车
 * 
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
public interface HuiyuanhaicheDao extends BaseMapper<HuiyuanhaicheEntity> {
	
	List<HuiyuanhaicheVO> selectListVO(@Param("ew") Wrapper<HuiyuanhaicheEntity> wrapper);
	
	HuiyuanhaicheVO selectVO(@Param("ew") Wrapper<HuiyuanhaicheEntity> wrapper);
	
	List<HuiyuanhaicheView> selectListView(@Param("ew") Wrapper<HuiyuanhaicheEntity> wrapper);

	List<HuiyuanhaicheView> selectListView(Pagination page,@Param("ew") Wrapper<HuiyuanhaicheEntity> wrapper);
	
	HuiyuanhaicheView selectView(@Param("ew") Wrapper<HuiyuanhaicheEntity> wrapper);
	
}
