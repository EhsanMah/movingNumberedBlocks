function [] = suctionOn()
suctioncupsvc_ = rossvcclient('/dobot_magician/end_effector/set_suction_cup');
suctioncupmsg_ = rosmessage(suctioncupsvc_);

suctioncupmsg_.IsEndEffectorEnabled=1;
suctioncupmsg_.EndEffectorState=1;
suctioncupsvc_.call(suctioncupmsg_);
end

