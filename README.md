# 项目介绍

项目源头: [SmallMunich/nutonomy_pointpillars](https://github.com/SmallMunich/nutonomy_pointpillars)
新建项目的原因: [SmallMunich/nutonomy_pointpillars](https://github.com/SmallMunich/nutonomy_pointpillars) 已经有许多年没有更新，原版本依赖的第三方项目已经有多次更新，直接按 [SmallMunich/nutonomy_pointpillars 的安装说明]((https://github.com/SmallMunich/nutonomy_pointpillars#install))已经无法正确安装此项目。同时 [SmallMunich/nutonomy_pointpillars 提供的Docker镜像](https://github.com/SmallMunich/nutonomy_pointpillars#docker-environments) 已经无法正常 pull 。同时，我的GPU版本较高，gpu architecture 为 'compute_86'，官方提供的cuda11.0及以下版本的docker镜像无法支持，为了跟更方便使用官方提供的支持cuda11.1及以上版本的pytorch，我创建了此项目。

## 依赖版本

- pytorch docker image: pytorch/pytorch:1.8.0-cuda11.1-cudnn8-devel
- boost: 1.68.0
- cmake: 3.13.0
- spconv: v1.1
- SparseConvNet: not use
- nutonomy_pointpillars: master 68d3181d35702608d410e948608e9815815677b9
