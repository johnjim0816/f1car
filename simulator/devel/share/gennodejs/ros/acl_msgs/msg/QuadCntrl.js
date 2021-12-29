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

class QuadCntrl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose = null;
      this.pose_actual = null;
      this.twist = null;
      this.twist_actual = null;
      this.rpy = null;
      this.rpy_actual = null;
      this.accel = null;
      this.accel_fb = null;
      this.jerk = null;
      this.jerk_fb = null;
      this.pos_integrator = null;
      this.vel_integrator = null;
      this.s = null;
      this.c = null;
      this.phi = null;
      this.phi_m = null;
      this.u = null;
      this.a = null;
      this.b = null;
      this.yaw = null;
      this.f_total = null;
      this.throttle = null;
      this.att_status = null;
      this.vicon_time = null;
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
      if (initObj.hasOwnProperty('pose_actual')) {
        this.pose_actual = initObj.pose_actual
      }
      else {
        this.pose_actual = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('twist_actual')) {
        this.twist_actual = initObj.twist_actual
      }
      else {
        this.twist_actual = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpy_actual')) {
        this.rpy_actual = initObj.rpy_actual
      }
      else {
        this.rpy_actual = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('accel_fb')) {
        this.accel_fb = initObj.accel_fb
      }
      else {
        this.accel_fb = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('jerk')) {
        this.jerk = initObj.jerk
      }
      else {
        this.jerk = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('jerk_fb')) {
        this.jerk_fb = initObj.jerk_fb
      }
      else {
        this.jerk_fb = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('pos_integrator')) {
        this.pos_integrator = initObj.pos_integrator
      }
      else {
        this.pos_integrator = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('vel_integrator')) {
        this.vel_integrator = initObj.vel_integrator
      }
      else {
        this.vel_integrator = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('phi')) {
        this.phi = initObj.phi
      }
      else {
        this.phi = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('phi_m')) {
        this.phi_m = initObj.phi_m
      }
      else {
        this.phi_m = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('u')) {
        this.u = initObj.u
      }
      else {
        this.u = 0.0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('f_total')) {
        this.f_total = initObj.f_total
      }
      else {
        this.f_total = 0.0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('att_status')) {
        this.att_status = initObj.att_status
      }
      else {
        this.att_status = 0;
      }
      if (initObj.hasOwnProperty('vicon_time')) {
        this.vicon_time = initObj.vicon_time
      }
      else {
        this.vicon_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadCntrl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [pose_actual]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_actual, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist, buffer, bufferOffset);
    // Serialize message field [twist_actual]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist_actual, buffer, bufferOffset);
    // Serialize message field [rpy]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpy, buffer, bufferOffset);
    // Serialize message field [rpy_actual]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpy_actual, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accel, buffer, bufferOffset);
    // Serialize message field [accel_fb]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accel_fb, buffer, bufferOffset);
    // Serialize message field [jerk]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.jerk, buffer, bufferOffset);
    // Serialize message field [jerk_fb]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.jerk_fb, buffer, bufferOffset);
    // Serialize message field [pos_integrator]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pos_integrator, buffer, bufferOffset);
    // Serialize message field [vel_integrator]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.vel_integrator, buffer, bufferOffset);
    // Serialize message field [s]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.s, buffer, bufferOffset);
    // Serialize message field [c]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.c, buffer, bufferOffset);
    // Serialize message field [phi]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.phi, buffer, bufferOffset);
    // Serialize message field [phi_m]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.phi_m, buffer, bufferOffset);
    // Serialize message field [u]
    bufferOffset = _serializer.float64(obj.u, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.float64(obj.b, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [f_total]
    bufferOffset = _serializer.float64(obj.f_total, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [att_status]
    bufferOffset = _serializer.int16(obj.att_status, buffer, bufferOffset);
    // Serialize message field [vicon_time]
    bufferOffset = _serializer.float64(obj.vicon_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadCntrl
    let len;
    let data = new QuadCntrl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_actual]
    data.pose_actual = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist_actual]
    data.twist_actual = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy]
    data.rpy = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy_actual]
    data.rpy_actual = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [accel_fb]
    data.accel_fb = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [jerk]
    data.jerk = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [jerk_fb]
    data.jerk_fb = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_integrator]
    data.pos_integrator = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_integrator]
    data.vel_integrator = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [s]
    data.s = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [c]
    data.c = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [phi]
    data.phi = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [phi_m]
    data.phi_m = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [u]
    data.u = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_total]
    data.f_total = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [att_status]
    data.att_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vicon_time]
    data.vicon_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 554;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/QuadCntrl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73822b1fb2aea2756d0f5f88004413c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Pose pose
    geometry_msgs/Pose pose_actual
    geometry_msgs/Twist twist
    geometry_msgs/Twist twist_actual
    geometry_msgs/Vector3 rpy
    geometry_msgs/Vector3 rpy_actual
    geometry_msgs/Vector3 accel
    geometry_msgs/Vector3 accel_fb
    geometry_msgs/Vector3 jerk
    geometry_msgs/Vector3 jerk_fb
    geometry_msgs/Vector3 pos_integrator
    geometry_msgs/Vector3 vel_integrator
    geometry_msgs/Vector3 s
    geometry_msgs/Vector3 c
    geometry_msgs/Vector3 phi
    geometry_msgs/Vector3 phi_m
    float64 u
    float64 a
    float64 b
    float64 yaw
    float64 f_total
    float64 throttle
    int16 att_status
    float64 vicon_time
    
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new QuadCntrl(null);
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

    if (msg.pose_actual !== undefined) {
      resolved.pose_actual = geometry_msgs.msg.Pose.Resolve(msg.pose_actual)
    }
    else {
      resolved.pose_actual = new geometry_msgs.msg.Pose()
    }

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.Twist()
    }

    if (msg.twist_actual !== undefined) {
      resolved.twist_actual = geometry_msgs.msg.Twist.Resolve(msg.twist_actual)
    }
    else {
      resolved.twist_actual = new geometry_msgs.msg.Twist()
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = geometry_msgs.msg.Vector3.Resolve(msg.rpy)
    }
    else {
      resolved.rpy = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpy_actual !== undefined) {
      resolved.rpy_actual = geometry_msgs.msg.Vector3.Resolve(msg.rpy_actual)
    }
    else {
      resolved.rpy_actual = new geometry_msgs.msg.Vector3()
    }

    if (msg.accel !== undefined) {
      resolved.accel = geometry_msgs.msg.Vector3.Resolve(msg.accel)
    }
    else {
      resolved.accel = new geometry_msgs.msg.Vector3()
    }

    if (msg.accel_fb !== undefined) {
      resolved.accel_fb = geometry_msgs.msg.Vector3.Resolve(msg.accel_fb)
    }
    else {
      resolved.accel_fb = new geometry_msgs.msg.Vector3()
    }

    if (msg.jerk !== undefined) {
      resolved.jerk = geometry_msgs.msg.Vector3.Resolve(msg.jerk)
    }
    else {
      resolved.jerk = new geometry_msgs.msg.Vector3()
    }

    if (msg.jerk_fb !== undefined) {
      resolved.jerk_fb = geometry_msgs.msg.Vector3.Resolve(msg.jerk_fb)
    }
    else {
      resolved.jerk_fb = new geometry_msgs.msg.Vector3()
    }

    if (msg.pos_integrator !== undefined) {
      resolved.pos_integrator = geometry_msgs.msg.Vector3.Resolve(msg.pos_integrator)
    }
    else {
      resolved.pos_integrator = new geometry_msgs.msg.Vector3()
    }

    if (msg.vel_integrator !== undefined) {
      resolved.vel_integrator = geometry_msgs.msg.Vector3.Resolve(msg.vel_integrator)
    }
    else {
      resolved.vel_integrator = new geometry_msgs.msg.Vector3()
    }

    if (msg.s !== undefined) {
      resolved.s = geometry_msgs.msg.Vector3.Resolve(msg.s)
    }
    else {
      resolved.s = new geometry_msgs.msg.Vector3()
    }

    if (msg.c !== undefined) {
      resolved.c = geometry_msgs.msg.Vector3.Resolve(msg.c)
    }
    else {
      resolved.c = new geometry_msgs.msg.Vector3()
    }

    if (msg.phi !== undefined) {
      resolved.phi = geometry_msgs.msg.Vector3.Resolve(msg.phi)
    }
    else {
      resolved.phi = new geometry_msgs.msg.Vector3()
    }

    if (msg.phi_m !== undefined) {
      resolved.phi_m = geometry_msgs.msg.Vector3.Resolve(msg.phi_m)
    }
    else {
      resolved.phi_m = new geometry_msgs.msg.Vector3()
    }

    if (msg.u !== undefined) {
      resolved.u = msg.u;
    }
    else {
      resolved.u = 0.0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.f_total !== undefined) {
      resolved.f_total = msg.f_total;
    }
    else {
      resolved.f_total = 0.0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.att_status !== undefined) {
      resolved.att_status = msg.att_status;
    }
    else {
      resolved.att_status = 0
    }

    if (msg.vicon_time !== undefined) {
      resolved.vicon_time = msg.vicon_time;
    }
    else {
      resolved.vicon_time = 0.0
    }

    return resolved;
    }
};

module.exports = QuadCntrl;
