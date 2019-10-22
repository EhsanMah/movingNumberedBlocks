function [] = goToBlockH()
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.193,0,0,0];
cartsvc_.call(cartmsg_)

suctionOn();

cartmsg_.TargetPoints=[0.193,0,-0.033,0];
cartsvc_.call(cartmsg_)

% suctionOff();

cartmsg_.TargetPoints=[0.193,0,0.018,0];
cartsvc_.call(cartmsg_)
end

