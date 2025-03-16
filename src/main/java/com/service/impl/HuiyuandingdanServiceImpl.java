package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.HuiyuandingdanDao;
import com.entity.HuiyuandingdanEntity;
import com.service.HuiyuandingdanService;
import com.entity.vo.HuiyuandingdanVO;
import com.entity.view.HuiyuandingdanView;

@Service("huiyuandingdanService")
public class HuiyuandingdanServiceImpl extends ServiceImpl<HuiyuandingdanDao, HuiyuandingdanEntity> implements HuiyuandingdanService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuiyuandingdanEntity> page = this.selectPage(
                new Query<HuiyuandingdanEntity>(params).getPage(),
                new EntityWrapper<HuiyuandingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuiyuandingdanEntity> wrapper) {
		  Page<HuiyuandingdanView> page =new Query<HuiyuandingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuiyuandingdanVO> selectListVO(Wrapper<HuiyuandingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuiyuandingdanVO selectVO(Wrapper<HuiyuandingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuiyuandingdanView> selectListView(Wrapper<HuiyuandingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuiyuandingdanView selectView(Wrapper<HuiyuandingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
