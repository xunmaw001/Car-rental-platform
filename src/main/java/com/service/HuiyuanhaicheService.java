package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuiyuanhaicheEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuiyuanhaicheVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuiyuanhaicheView;


/**
 * 会员还车
 *
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
public interface HuiyuanhaicheService extends IService<HuiyuanhaicheEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuiyuanhaicheVO> selectListVO(Wrapper<HuiyuanhaicheEntity> wrapper);
   	
   	HuiyuanhaicheVO selectVO(@Param("ew") Wrapper<HuiyuanhaicheEntity> wrapper);
   	
   	List<HuiyuanhaicheView> selectListView(Wrapper<HuiyuanhaicheEntity> wrapper);
   	
   	HuiyuanhaicheView selectView(@Param("ew") Wrapper<HuiyuanhaicheEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuiyuanhaicheEntity> wrapper);
   	
}

