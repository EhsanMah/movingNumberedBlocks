function [] = goToBlockA()
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);
% defaultGrid();
cartmsg_.TargetPoints=[0.284,0.05,0.018,0];
cartsvc_.call(cartmsg_)
suctionOn();
cartmsg_.TargetPoints=[0.284,0.043,-0.036,0];    
cartsvc_.call(cartmsg_)
suctionOff();
cartmsg_.TargetPoints=[0.284,0.05,0.018,0];
cartsvc_.call(cartmsg_)

startBlockPicking()
end

