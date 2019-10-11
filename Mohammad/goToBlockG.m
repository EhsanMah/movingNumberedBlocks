function [] = goToBlockG()
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.195,0.049,0.018,0];
cartsvc_.call(cartmsg_)

suctionOn();

cartmsg_.TargetPoints=[0.195,0.049,-0.033,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.195,0.049,0.018,0];
cartsvc_.call(cartmsg_)
end

