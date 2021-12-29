// Auto-generated. Do not edit!

// (in-package acl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class QuadGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pos = null;
      this.vel = null;
      this.accel = null;
      this.jerk = null;
      this.yaw = null;
      this.dyaw = null;
      this.cut_power = null;
      this.reset_xy_int = null;
      this.reset_z_int = null;
      this.xy_mode = null;
      this.z_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('jerk')) {
        this.jerk = initObj.jerk
      }
      else {
        this.jerk = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('dyaw')) {
        this.dyaw = initObj.dyaw
      }
      else {
        this.dyaw = 0.0;
      }
      if (initObj.hasOwnProperty('cut_power')) {
        this.cut_power = initObj.cut_power
      }
      else {
        this.cut_power = false;
      }
      if (initObj.hasOwnProperty('reset_xy_int')) {
        this.reset_xy_int = initObj.reset_xy_int
      }
      else {
        this.reset_xy_int = false;
      }
      if (initObj.hasOwnProperty('reset_z_int')) {
        this.reset_z_int = initObj.reset_z_int
      }
      else {
        this.reset_z_int = false;
      }
      if (initObj.hasOwnProperty('xy_mode')) {
        this.xy_mode = initObj.xy_mode
      }
      else {
        this.xy_mode = 0;
      }
      if (initObj.hasOwnProperty('z_mode')) {
        this.z_mode = initObj.z_mode
      }
      else {
        this.z_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadGoal
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.vel, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accel, buffer, bufferOffset);
    // Serialize message field [jerk]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.jerk, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [dyaw]
    bufferOffset = _serializer.float64(obj.dyaw, buffer, bufferOffset);
    // Serialize message field [cut_power]
    bufferOffset = _serializer.bool(obj.cut_power, buffer, bufferOffset);
    // Serialize message field [reset_xy_int]
    bufferOffset = _serializer.bool(obj.reset_xy_int, buffer, bufferOffset);
    // Serialize message field [reset_z_int]
    bufferOffset = _serializer.bool(obj.reset_z_int, buffer, bufferOffset);
    // Serialize message field [xy_mode]
    bufferOffset = _serializer.int8(obj.xy_mode, buffer, bufferOffset);
    // Serialize message field [z_mode]
    bufferOffset = _serializer.int8(obj.z_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadGoal
    let len;
    let data = new QuadGoal(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [jerk]
    data.jerk = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dyaw]
    data.dyaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cut_power]
    data.cut_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_xy_int]
    data.reset_xy_int = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_z_int]
    data.reset_z_int = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [xy_mode]
    data.xy_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [z_mode]
    data.z_mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 117;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/QuadGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '950d02887809b520e2711856716b3af3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Vector3 pos
    geometry_msgs/Vector3 vel
    geometry_msgs/Vector3 accel
    geometry_msgs/Vector3 jerk
    float64 yaw
    float64 dyaw
    bool cut_power
    bool reset_xy_int
    bool reset_z_int
    int8 xy_mode
    int8 z_mode
    int8 MODE_POS=0
    int8 MODE_VEL=1
    int8 MODE_ACCEL=2
    
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
    const resolved = new QuadGoal(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Vector3.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Vector3()
    }

    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Vector3.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Vector3()
    }

    if (msg.accel !== undefined) {
      resolved.accel = geometry_msgs.msg.Vector3.Resolve(msg.accel)
    }
    else {
      resolved.accel = new geometry_msgs.msg.Vector3()
    }

    if (msg.jerk !== undefined) {
      resolved.jerk = geometry_msgs.msg.Vector3.Resolve(msg.jerk)
    }
    else {
      resolved.jerk = new geometry_msgs.msg.Vector3()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.dyaw !== undefined) {
      resolved.dyaw = msg.dyaw;
    }
    else {
      resolved.dyaw = 0.0
    }

    if (msg.cut_power !== undefined) {
      resolved.cut_power = msg.cut_power;
    }
    else {
      resolved.cut_power = false
    }

    if (msg.reset_xy_int !== undefined) {
      resolved.reset_xy_int = msg.reset_xy_int;
    }
    else {
      resolved.reset_xy_int = false
    }

    if (msg.reset_z_int !== undefined) {
      resolved.reset_z_int = msg.reset_z_int;
    }
    else {
      resolved.reset_z_int = false
    }

    if (msg.xy_mode !== undefined) {
      resolved.xy_mode = msg.xy_mode;
    }
    else {
      resolved.xy_mode = 0
    }

    if (msg.z_mode !== undefined) {
      resolved.z_mode = msg.z_mode;
    }
    else {
      resolved.z_mode = 0
    }

    return resolved;
    }
};

// Constants for message
QuadGoal.Constants = {
  MODE_POS: 0,
  MODE_VEL: 1,
  MODE_ACCEL: 2,
}

module.exports = QuadGoal;
