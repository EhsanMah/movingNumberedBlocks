function [] = goToBlockB()
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.284,0,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.284,0,-0.036,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.284,0,0.018,0];
cartsvc_.call(cartmsg_)
end

