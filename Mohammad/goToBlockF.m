function [] = goToBlockF()
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

cartmsg_.TargetPoints=[0.238,-0.045,0.018,0];
cartsvc_.call(cartmsg_)

suctionOn();

cartmsg_.TargetPoints=[0.238,-0.045,-0.034,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.238,-0.045,0.025,0];
cartsvc_.call(cartmsg_)
end

