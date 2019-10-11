function [] = goToBlockD()
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.24,0.049,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.24,0.05,-0.034,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.24,0.049,0.018,0];
cartsvc_.call(cartmsg_)
end

