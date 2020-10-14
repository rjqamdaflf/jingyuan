package com.example.demo.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author 84271
 */
@Data
public class SysMenuVo implements Serializable {

    /**
     * 菜单id
     */
    private String menuId;

    /**
     * 菜单名称
     */
    private String menuName;

    /**
     * 菜单路径
     */
    private String menuPath;

    /**
     * 上级id
     */
    private String menuParentId;

    /**
     * 创建时间
     */
    private Date createTime;


    /**
     * 修改时间
     */
    private Date updateTime;

    /**
     * 如果是父类，这里存孩子节点
     */
    private List<SysMenuVo> children = new ArrayList<>();
}
