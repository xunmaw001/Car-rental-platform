package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YonghuhaicheEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YonghuhaicheVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YonghuhaicheView;


/**
 * 用户还车
 *
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
public interface YonghuhaicheService extends IService<YonghuhaicheEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YonghuhaicheVO> selectListVO(Wrapper<YonghuhaicheEntity> wrapper);
   	
   	YonghuhaicheVO selectVO(@Param("ew") Wrapper<YonghuhaicheEntity> wrapper);
   	
   	List<YonghuhaicheView> selectListView(Wrapper<YonghuhaicheEntity> wrapper);
   	
   	YonghuhaicheView selectView(@Param("ew") Wrapper<YonghuhaicheEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YonghuhaicheEntity> wrapper);
   	
}

