function [] = startBlockPicking()
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.220,-0.15,0.018,0];
cartsvc_.call(cartmsg_)


end

