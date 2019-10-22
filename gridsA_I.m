%% GRID A BLOCK HEIGHT

cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.284,0.05,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.284,0.05,-0.036,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.284,0.05,0.018,0];
cartsvc_.call(cartmsg_)
%% GRID B BLOCK HEIGHT
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.284,0,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.284,0,-0.036,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.284,0,0.018,0];
cartsvc_.call(cartmsg_)
%% GRID C BLOCK HEIGHT
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.284,-0.046,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.284,-0.046,-0.036,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.284,-0.046,0.018,0];
cartsvc_.call(cartmsg_)
%% GRID D BLOCK HEIGHT
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.24,0.049,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.24,0.05,-0.034,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.24,0.049,0.018,0];
cartsvc_.call(cartmsg_)
%% GRID E BLOCK HEIGHT
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.24,0,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.24,0,-0.033,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.24,0,0.018,0];
cartsvc_.call(cartmsg_)
%% GRID F BLOCK HEIGHT
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.238,-0.045,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.238,-0.045,-0.034,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.238,-0.045,0.025,0];
cartsvc_.call(cartmsg_)
%% GRID G BLOCK HEIGHT
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.195,0.049,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.195,0.049,-0.033,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.195,0.049,0.018,0];
cartsvc_.call(cartmsg_)
%% GRID H BLOCK HEIGHT
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.193,0,0,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.193,0,-0.033,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.193,0,0.018,0];
cartsvc_.call(cartmsg_)
%% GRID I BLOCK HEIGHT
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.193,-0.049,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.193,-0.049,-0.034,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.193,-0.049,0.018,0];
cartsvc_.call(cartmsg_)
%% suction cup on
suctioncupsvc_ = rossvcclient('/dobot_magician/end_effector/set_suction_cup');
suctioncupmsg_ = rosmessage(suctioncupsvc_);

suctioncupmsg_.IsEndEffectorEnabled=1;
suctioncupmsg_.EndEffectorState=1;
suctioncupsvc_.call(suctioncupmsg_);
%% suction cup off
suctioncupsvc_ = rossvcclient('/dobot_magician/end_effector/set_suction_cup');
suctioncupmsg_ = rosmessage(suctioncupsvc_);

suctioncupmsg_.IsEndEffectorEnabled=0;
suctioncupmsg_.EndEffectorState=0;
suctioncupsvc_.call(suctioncupmsg_);
%% GRID A TO I
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.284,0.05,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.284,0.05,-0.036,0];
cartsvc_.call(cartmsg_)

suctioncupsvc_ = rossvcclient('/dobot_magician/end_effector/set_suction_cup');
suctioncupmsg_ = rosmessage(suctioncupsvc_);

suctioncupmsg_.IsEndEffectorEnabled=1;
suctioncupmsg_.EndEffectorState=1;
suctioncupsvc_.call(suctioncupmsg_);

cartmsg_.TargetPoints=[0.284,0.05,0.018,0];
cartsvc_.call(cartmsg_)

cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.193,-0.049,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.193,-0.049,-0.034,0];
cartsvc_.call(cartmsg_)

% cartmsg_.TargetPoints=[0.193,-0.049,0.018,0];
% cartsvc_.call(cartmsg_)


