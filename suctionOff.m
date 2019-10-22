function [] = suctionOff()
suctioncupsvc_ = rossvcclient('/dobot_magician/end_effector/set_suction_cup');
suctioncupmsg_ = rosmessage(suctioncupsvc_);

suctioncupmsg_.IsEndEffectorEnabled=0;
suctioncupmsg_.EndEffectorState=0;
suctioncupsvc_.call(suctioncupmsg_);
end

