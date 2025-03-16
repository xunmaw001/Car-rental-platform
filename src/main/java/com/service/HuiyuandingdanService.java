package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuiyuandingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuiyuandingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuiyuandingdanView;


/**
 * 会员订单
 *
 * @author 
 * @email 
 * @date 2020-12-29 00:15:36
 */
public interface HuiyuandingdanService extends IService<HuiyuandingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuiyuandingdanVO> selectListVO(Wrapper<HuiyuandingdanEntity> wrapper);
   	
   	HuiyuandingdanVO selectVO(@Param("ew") Wrapper<HuiyuandingdanEntity> wrapper);
   	
   	List<HuiyuandingdanView> selectListView(Wrapper<HuiyuandingdanEntity> wrapper);
   	
   	HuiyuandingdanView selectView(@Param("ew") Wrapper<HuiyuandingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuiyuandingdanEntity> wrapper);
   	
}

