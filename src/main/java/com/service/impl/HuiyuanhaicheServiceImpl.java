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


import com.dao.HuiyuanhaicheDao;
import com.entity.HuiyuanhaicheEntity;
import com.service.HuiyuanhaicheService;
import com.entity.vo.HuiyuanhaicheVO;
import com.entity.view.HuiyuanhaicheView;

@Service("huiyuanhaicheService")
public class HuiyuanhaicheServiceImpl extends ServiceImpl<HuiyuanhaicheDao, HuiyuanhaicheEntity> implements HuiyuanhaicheService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuiyuanhaicheEntity> page = this.selectPage(
                new Query<HuiyuanhaicheEntity>(params).getPage(),
                new EntityWrapper<HuiyuanhaicheEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuiyuanhaicheEntity> wrapper) {
		  Page<HuiyuanhaicheView> page =new Query<HuiyuanhaicheView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuiyuanhaicheVO> selectListVO(Wrapper<HuiyuanhaicheEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuiyuanhaicheVO selectVO(Wrapper<HuiyuanhaicheEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuiyuanhaicheView> selectListView(Wrapper<HuiyuanhaicheEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuiyuanhaicheView selectView(Wrapper<HuiyuanhaicheEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
