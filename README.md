# Service-Robot

2025 魔力元宝 服务组

## 项目简介

Service-Robot 是一个基于 ROS (Robot Operating System) 的服务机器人项目，旨在实现智能服务机器人的各种功能，包括导航、人脸识别、自动充电、语音交互等。

## 功能特点

- **自主导航**：基于 SLAM 技术实现自主导航和地图构建
- **人脸识别**：支持人脸检测和识别功能
- **自动充电**：实现机器人自主寻找充电桩并充电
- **语音交互**：支持语音唤醒、语音识别和语音合成
- **AR 标记跟踪**：使用 AR 标记进行定位和导航
- **多任务管理**：支持多任务调度和执行
- **远程控制**：支持通过摇杆进行远程控制

## 系统要求

- **操作系统**：Ubuntu 18.04 LTS 或更高版本
- **ROS 版本**：ROS Melodic 或更高版本
- **依赖库**：
  - OpenCV
  - PCL (Point Cloud Library)
  - Eigen
  - Boost
  - 其他 ROS 依赖包

## 安装步骤

1. **安装 ROS**
   请参考 [ROS 官方安装指南](http://wiki.ros.org/ROS/Installation) 安装 ROS Melodic 或更高版本。

2. **克隆项目**
   ```bash
   git clone https://github.com/yourusername/Service-Robot.git
   cd Service-Robot
   ```

3. **构建工作空间**
   ```bash
   cd bobac3_ws
   catkin_make
   source devel/setup.bash
   ```

4. **安装依赖**
   ```bash
   rosdep install --from-paths src --ignore-src -r -y
   ```

## 使用方法

### 启动机器人基础功能

```bash
roslaunch rei_robot_base robot_base.launch
```

### 启动导航功能

```bash
roslaunch bobac3_navigation navigation.launch
```

### 启动人脸识别功能

```bash
roslaunch face_rec face_recognition.launch
```

### 启动语音交互功能

```bash
roslaunch robot_audio audio.launch
```

### 启动自动充电功能

```bash
roslaunch auto_charging auto_charge.launch
```

## 项目结构

```
Service-Robot/
├── bobac3_ws/           # ROS 工作空间
│   ├── build/           # 构建目录
│   ├── devel/           # 开发目录
│   └── src/             # 源代码目录
│       ├── ar_pose/                 # AR 姿态估计
│       ├── ar_track_alvar/          # AR 标记跟踪
│       ├── auto_charging/           # 自动充电功能
│       ├── bobac3_audio/            # 音频功能
│       ├── bobac3_description/      # 机器人描述
│       ├── bobac3_navigation/       # 导航功能
│       ├── bobac3_slam/             # SLAM 功能
│       ├── face_rec/                # 人脸识别
│       ├── multi_task/              # 多任务管理
│       ├── nav_goal/                # 导航目标设置
│       ├── pid_lib/                 # PID 控制库
│       ├── rei_lidar_fuse/          # 激光雷达数据融合
│       ├── rei_robot_base/          # 机器人基础控制
│       ├── rei_robot_cruise/        # 机器人巡航
│       ├── relative_move/           # 相对移动控制
│       ├── robot_audio/             # 机器人音频
│       └── robot_joy/               # 机器人摇杆控制
├── LICENSE             # 许可证文件
└── README.md           # 项目说明文件
```

## 主要功能包说明

### 1. rei_robot_base
- 机器人基础控制功能
- 电机控制和传感器数据处理
- 提供机器人状态信息

### 2. bobac3_navigation
- 自主导航功能
- 路径规划和避障
- 导航目标管理

### 3. bobac3_slam
- 同时定位与地图构建
- 环境地图生成
- 位置估计

### 4. face_rec
- 人脸检测和识别
- 人脸识别结果发布

### 5. robot_audio
- 语音唤醒功能
- 语音识别和语义理解
- 语音合成和播放

### 6. auto_charging
- 自主寻找充电桩
- 自动对接充电
- 充电状态管理

### 7. ar_track_alvar
- AR 标记检测和跟踪
- 标记位姿估计
- 基于标记的定位

