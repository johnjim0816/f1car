// Auto-generated. Do not edit!

// (in-package acl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CarState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose = null;
      this.Vx = null;
      this.Vy = null;
      this.r = null;
      this.omegaF = null;
      this.omegaR = null;
      this.throttle = null;
      this.turn = null;
      this.x_center = null;
      this.y_center = null;
      this.R = null;
      this.f_FLx = null;
      this.f_FLy = null;
      this.f_FLz = null;
      this.f_FRx = null;
      this.f_FRy = null;
      this.f_FRz = null;
      this.f_RLx = null;
      this.f_RLy = null;
      this.f_RLz = null;
      this.f_RRx = null;
      this.f_RRy = null;
      this.f_RRz = null;
      this.ax = null;
      this.ay = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('Vx')) {
        this.Vx = initObj.Vx
      }
      else {
        this.Vx = 0.0;
      }
      if (initObj.hasOwnProperty('Vy')) {
        this.Vy = initObj.Vy
      }
      else {
        this.Vy = 0.0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
      }
      if (initObj.hasOwnProperty('omegaF')) {
        this.omegaF = initObj.omegaF
      }
      else {
        this.omegaF = 0.0;
      }
      if (initObj.hasOwnProperty('omegaR')) {
        this.omegaR = initObj.omegaR
      }
      else {
        this.omegaR = 0.0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('turn')) {
        this.turn = initObj.turn
      }
      else {
        this.turn = 0.0;
      }
      if (initObj.hasOwnProperty('x_center')) {
        this.x_center = initObj.x_center
      }
      else {
        this.x_center = 0.0;
      }
      if (initObj.hasOwnProperty('y_center')) {
        this.y_center = initObj.y_center
      }
      else {
        this.y_center = 0.0;
      }
      if (initObj.hasOwnProperty('R')) {
        this.R = initObj.R
      }
      else {
        this.R = 0.0;
      }
      if (initObj.hasOwnProperty('f_FLx')) {
        this.f_FLx = initObj.f_FLx
      }
      else {
        this.f_FLx = 0.0;
      }
      if (initObj.hasOwnProperty('f_FLy')) {
        this.f_FLy = initObj.f_FLy
      }
      else {
        this.f_FLy = 0.0;
      }
      if (initObj.hasOwnProperty('f_FLz')) {
        this.f_FLz = initObj.f_FLz
      }
      else {
        this.f_FLz = 0.0;
      }
      if (initObj.hasOwnProperty('f_FRx')) {
        this.f_FRx = initObj.f_FRx
      }
      else {
        this.f_FRx = 0.0;
      }
      if (initObj.hasOwnProperty('f_FRy')) {
        this.f_FRy = initObj.f_FRy
      }
      else {
        this.f_FRy = 0.0;
      }
      if (initObj.hasOwnProperty('f_FRz')) {
        this.f_FRz = initObj.f_FRz
      }
      else {
        this.f_FRz = 0.0;
      }
      if (initObj.hasOwnProperty('f_RLx')) {
        this.f_RLx = initObj.f_RLx
      }
      else {
        this.f_RLx = 0.0;
      }
      if (initObj.hasOwnProperty('f_RLy')) {
        this.f_RLy = initObj.f_RLy
      }
      else {
        this.f_RLy = 0.0;
      }
      if (initObj.hasOwnProperty('f_RLz')) {
        this.f_RLz = initObj.f_RLz
      }
      else {
        this.f_RLz = 0.0;
      }
      if (initObj.hasOwnProperty('f_RRx')) {
        this.f_RRx = initObj.f_RRx
      }
      else {
        this.f_RRx = 0.0;
      }
      if (initObj.hasOwnProperty('f_RRy')) {
        this.f_RRy = initObj.f_RRy
      }
      else {
        this.f_RRy = 0.0;
      }
      if (initObj.hasOwnProperty('f_RRz')) {
        this.f_RRz = initObj.f_RRz
      }
      else {
        this.f_RRz = 0.0;
      }
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [Vx]
    bufferOffset = _serializer.float64(obj.Vx, buffer, bufferOffset);
    // Serialize message field [Vy]
    bufferOffset = _serializer.float64(obj.Vy, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float64(obj.r, buffer, bufferOffset);
    // Serialize message field [omegaF]
    bufferOffset = _serializer.float64(obj.omegaF, buffer, bufferOffset);
    // Serialize message field [omegaR]
    bufferOffset = _serializer.float64(obj.omegaR, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [turn]
    bufferOffset = _serializer.float64(obj.turn, buffer, bufferOffset);
    // Serialize message field [x_center]
    bufferOffset = _serializer.float64(obj.x_center, buffer, bufferOffset);
    // Serialize message field [y_center]
    bufferOffset = _serializer.float64(obj.y_center, buffer, bufferOffset);
    // Serialize message field [R]
    bufferOffset = _serializer.float64(obj.R, buffer, bufferOffset);
    // Serialize message field [f_FLx]
    bufferOffset = _serializer.float64(obj.f_FLx, buffer, bufferOffset);
    // Serialize message field [f_FLy]
    bufferOffset = _serializer.float64(obj.f_FLy, buffer, bufferOffset);
    // Serialize message field [f_FLz]
    bufferOffset = _serializer.float64(obj.f_FLz, buffer, bufferOffset);
    // Serialize message field [f_FRx]
    bufferOffset = _serializer.float64(obj.f_FRx, buffer, bufferOffset);
    // Serialize message field [f_FRy]
    bufferOffset = _serializer.float64(obj.f_FRy, buffer, bufferOffset);
    // Serialize message field [f_FRz]
    bufferOffset = _serializer.float64(obj.f_FRz, buffer, bufferOffset);
    // Serialize message field [f_RLx]
    bufferOffset = _serializer.float64(obj.f_RLx, buffer, bufferOffset);
    // Serialize message field [f_RLy]
    bufferOffset = _serializer.float64(obj.f_RLy, buffer, bufferOffset);
    // Serialize message field [f_RLz]
    bufferOffset = _serializer.float64(obj.f_RLz, buffer, bufferOffset);
    // Serialize message field [f_RRx]
    bufferOffset = _serializer.float64(obj.f_RRx, buffer, bufferOffset);
    // Serialize message field [f_RRy]
    bufferOffset = _serializer.float64(obj.f_RRy, buffer, bufferOffset);
    // Serialize message field [f_RRz]
    bufferOffset = _serializer.float64(obj.f_RRz, buffer, bufferOffset);
    // Serialize message field [ax]
    bufferOffset = _serializer.float64(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float64(obj.ay, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarState
    let len;
    let data = new CarState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [Vx]
    data.Vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Vy]
    data.Vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omegaF]
    data.omegaF = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omegaR]
    data.omegaR = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [turn]
    data.turn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_center]
    data.x_center = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_center]
    data.y_center = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [R]
    data.R = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_FLx]
    data.f_FLx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_FLy]
    data.f_FLy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_FLz]
    data.f_FLz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_FRx]
    data.f_FRx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_FRy]
    data.f_FRy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_FRz]
    data.f_FRz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_RLx]
    data.f_RLx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_RLy]
    data.f_RLy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_RLz]
    data.f_RLz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_RRx]
    data.f_RRx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_RRy]
    data.f_RRy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_RRz]
    data.f_RRz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ax]
    data.ax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 248;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/CarState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24e7939ba4db72b0c2b93d5f9545e13b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Pose pose
    float64 Vx
    float64 Vy
    float64 r
    float64 omegaF
    float64 omegaR
    float64 throttle
    float64 turn
    float64 x_center
    float64 y_center
    float64 R
    float64 f_FLx
    float64 f_FLy
    float64 f_FLz
    float64 f_FRx
    float64 f_FRy
    float64 f_FRz
    float64 f_RLx
    float64 f_RLy
    float64 f_RLz
    float64 f_RRx
    float64 f_RRy
    float64 f_RRz
    float64 ax
    float64 ay
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.Vx !== undefined) {
      resolved.Vx = msg.Vx;
    }
    else {
      resolved.Vx = 0.0
    }

    if (msg.Vy !== undefined) {
      resolved.Vy = msg.Vy;
    }
    else {
      resolved.Vy = 0.0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
    }

    if (msg.omegaF !== undefined) {
      resolved.omegaF = msg.omegaF;
    }
    else {
      resolved.omegaF = 0.0
    }

    if (msg.omegaR !== undefined) {
      resolved.omegaR = msg.omegaR;
    }
    else {
      resolved.omegaR = 0.0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.turn !== undefined) {
      resolved.turn = msg.turn;
    }
    else {
      resolved.turn = 0.0
    }

    if (msg.x_center !== undefined) {
      resolved.x_center = msg.x_center;
    }
    else {
      resolved.x_center = 0.0
    }

    if (msg.y_center !== undefined) {
      resolved.y_center = msg.y_center;
    }
    else {
      resolved.y_center = 0.0
    }

    if (msg.R !== undefined) {
      resolved.R = msg.R;
    }
    else {
      resolved.R = 0.0
    }

    if (msg.f_FLx !== undefined) {
      resolved.f_FLx = msg.f_FLx;
    }
    else {
      resolved.f_FLx = 0.0
    }

    if (msg.f_FLy !== undefined) {
      resolved.f_FLy = msg.f_FLy;
    }
    else {
      resolved.f_FLy = 0.0
    }

    if (msg.f_FLz !== undefined) {
      resolved.f_FLz = msg.f_FLz;
    }
    else {
      resolved.f_FLz = 0.0
    }

    if (msg.f_FRx !== undefined) {
      resolved.f_FRx = msg.f_FRx;
    }
    else {
      resolved.f_FRx = 0.0
    }

    if (msg.f_FRy !== undefined) {
      resolved.f_FRy = msg.f_FRy;
    }
    else {
      resolved.f_FRy = 0.0
    }

    if (msg.f_FRz !== undefined) {
      resolved.f_FRz = msg.f_FRz;
    }
    else {
      resolved.f_FRz = 0.0
    }

    if (msg.f_RLx !== undefined) {
      resolved.f_RLx = msg.f_RLx;
    }
    else {
      resolved.f_RLx = 0.0
    }

    if (msg.f_RLy !== undefined) {
      resolved.f_RLy = msg.f_RLy;
    }
    else {
      resolved.f_RLy = 0.0
    }

    if (msg.f_RLz !== undefined) {
      resolved.f_RLz = msg.f_RLz;
    }
    else {
      resolved.f_RLz = 0.0
    }

    if (msg.f_RRx !== undefined) {
      resolved.f_RRx = msg.f_RRx;
    }
    else {
      resolved.f_RRx = 0.0
    }

    if (msg.f_RRy !== undefined) {
      resolved.f_RRy = msg.f_RRy;
    }
    else {
      resolved.f_RRy = 0.0
    }

    if (msg.f_RRz !== undefined) {
      resolved.f_RRz = msg.f_RRz;
    }
    else {
      resolved.f_RRz = 0.0
    }

    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    return resolved;
    }
};

module.exports = CarState;
