function [] = pickBlock2()
cartsvc_ = rossvcclient('/dobot_magician/PTP/set_cartesian_pos');
cartmsg_ = rosmessage(cartsvc_);

startBlockPicking()
cartmsg_.TargetPoints=[0.23,-0.09,0.018,0];
cartsvc_.call(cartmsg_)

cartmsg_.TargetPoints=[0.23,-0.09,-0.032,0];
cartsvc_.call(cartmsg_)
 
cartmsg_.TargetPoints=[0.23,-0.09,0.018,0];
cartsvc_.call(cartmsg_)
end

