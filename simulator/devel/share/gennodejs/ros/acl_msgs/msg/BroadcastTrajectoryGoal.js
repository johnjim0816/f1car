// Auto-generated. Do not edit!

// (in-package acl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Trajectory = require('./Trajectory.js');

//-----------------------------------------------------------

class BroadcastTrajectoryGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory = null;
      this.relative_starting_coordinates = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new Trajectory();
      }
      if (initObj.hasOwnProperty('relative_starting_coordinates')) {
        this.relative_starting_coordinates = initObj.relative_starting_coordinates
      }
      else {
        this.relative_starting_coordinates = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BroadcastTrajectoryGoal
    // Serialize message field [trajectory]
    bufferOffset = Trajectory.serialize(obj.trajectory, buffer, bufferOffset);
    // Serialize message field [relative_starting_coordinates]
    bufferOffset = _serializer.bool(obj.relative_starting_coordinates, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BroadcastTrajectoryGoal
    let len;
    let data = new BroadcastTrajectoryGoal(null);
    // Deserialize message field [trajectory]
    data.trajectory = Trajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_starting_coordinates]
    data.relative_starting_coordinates = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Trajectory.getMessageSize(object.trajectory);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/BroadcastTrajectoryGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb87a26e42509a1a023ac20a2d51a6d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    acl_msgs/Trajectory trajectory
    bool relative_starting_coordinates
    
    ================================================================================
    MSG: acl_msgs/Trajectory
    Header header
    geometry_msgs/Vector3Stamped[] pos
    geometry_msgs/Vector3Stamped[] vel
    geometry_msgs/Vector3Stamped[] acc
    geometry_msgs/Vector3Stamped[] jerk
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BroadcastTrajectoryGoal(null);
    if (msg.trajectory !== undefined) {
      resolved.trajectory = Trajectory.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new Trajectory()
    }

    if (msg.relative_starting_coordinates !== undefined) {
      resolved.relative_starting_coordinates = msg.relative_starting_coordinates;
    }
    else {
      resolved.relative_starting_coordinates = false
    }

    return resolved;
    }
};

module.exports = BroadcastTrajectoryGoal;