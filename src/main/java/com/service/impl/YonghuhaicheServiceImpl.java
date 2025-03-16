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


import com.dao.YonghuhaicheDao;
import com.entity.YonghuhaicheEntity;
import com.service.YonghuhaicheService;
import com.entity.vo.YonghuhaicheVO;
import com.entity.view.YonghuhaicheView;

@Service("yonghuhaicheService")
public class YonghuhaicheServiceImpl extends ServiceImpl<YonghuhaicheDao, YonghuhaicheEntity> implements YonghuhaicheService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YonghuhaicheEntity> page = this.selectPage(
                new Query<YonghuhaicheEntity>(params).getPage(),
                new EntityWrapper<YonghuhaicheEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YonghuhaicheEntity> wrapper) {
		  Page<YonghuhaicheView> page =new Query<YonghuhaicheView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YonghuhaicheVO> selectListVO(Wrapper<YonghuhaicheEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YonghuhaicheVO selectVO(Wrapper<YonghuhaicheEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YonghuhaicheView> selectListView(Wrapper<YonghuhaicheEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YonghuhaicheView selectView(Wrapper<YonghuhaicheEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
