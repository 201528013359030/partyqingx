<?php
return [
    'adminEmail' => 'admin@example.com',
    'menu'=>[
        '01'=>['main'=>'基本设置',
            'img'=>'images/mainmenu01.png',
            'sub'=>[
                '01'=>['name'=>'企业管理','url'=>'index.php?r=admin/enterprise/index'],
                '02'=>['name'=>'查看公告','url'=>'index.php?r=admin/noticelist/index'],
            ]
        ],
        '02'=>['main'=>'组织架构',
            'img'=>'images/mainmenu01.png',
            'sub'=>[
                '01'=>['name'=>'企业组织架构','url'=>'index.php?r=admin/organization/index'],
                '02'=>['name'=>'角色类型','url'=>'index.php?r=admin/roletypeinfo/index'],
                '03'=>['name'=>'成员管理','url'=>'index.php?r=admin/member/index'],
                '04'=>['name'=>'组织架构','url'=>'index.php?r=admin/organization/test'],
            ]
        ],
        '03'=>['main'=>'轻应用',
            'img'=>'images/mainmenu01.png',
            'sub'=>[
                //'01'=>['name'=>'类型统计','url'=>'index.php?r=admin/echarts/type'],
                '02'=>['name'=>'会议统计','url'=>'index.php?r=admin/echarts/index'],
                //'03'=>['name'=>'地点统计','url'=>'index.php?r=admin/echarts/addr'],
            ]
        ],
        '04'=>['main'=>'统计',
            'img'=>'images/mainmenu01.png',
            'sub'=>[
                //'01'=>['name'=>'类型统计','url'=>'index.php?r=admin/echarts/type'],
                '02'=>['name'=>'会议统计','url'=>'index.php?r=admin/echarts/index'],
                //'03'=>['name'=>'地点统计','url'=>'index.php?r=admin/echarts/addr'],
            ]
        ]
    ],
];
