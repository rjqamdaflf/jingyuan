package com.example.demo.service;

import com.example.demo.entity.CenterManagement;

/**
 * @author 84271
 */
public interface CenterManagementService {

    /**
     * 验证 Center id是否存在
     *
     * @param id
     * @return
     */
    CenterManagement checkCenterIdExist(String id);
}
