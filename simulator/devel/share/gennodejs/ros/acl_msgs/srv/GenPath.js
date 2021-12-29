// Auto-generated. Do not edit!

// (in-package acl_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let Trajectory = require('../msg/Trajectory.js');

//-----------------------------------------------------------

class GenPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.N = null;
      this.numD = null;
      this.T = null;
      this.h = null;
      this.R = null;
      this.p0 = null;
      this.v0 = null;
      this.a0 = null;
      this.p1 = null;
      this.v1 = null;
      this.a1 = null;
      this.obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('N')) {
        this.N = initObj.N
      }
      else {
        this.N = 0;
      }
      if (initObj.hasOwnProperty('numD')) {
        this.numD = initObj.numD
      }
      else {
        this.numD = 0;
      }
      if (initObj.hasOwnProperty('T')) {
        this.T = initObj.T
      }
      else {
        this.T = 0.0;
      }
      if (initObj.hasOwnProperty('h')) {
        this.h = initObj.h
      }
      else {
        this.h = 0.0;
      }
      if (initObj.hasOwnProperty('R')) {
        this.R = initObj.R
      }
      else {
        this.R = 0.0;
      }
      if (initObj.hasOwnProperty('p0')) {
        this.p0 = initObj.p0
      }
      else {
        this.p0 = [];
      }
      if (initObj.hasOwnProperty('v0')) {
        this.v0 = initObj.v0
      }
      else {
        this.v0 = [];
      }
      if (initObj.hasOwnProperty('a0')) {
        this.a0 = initObj.a0
      }
      else {
        this.a0 = [];
      }
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = [];
      }
      if (initObj.hasOwnProperty('v1')) {
        this.v1 = initObj.v1
      }
      else {
        this.v1 = [];
      }
      if (initObj.hasOwnProperty('a1')) {
        this.a1 = initObj.a1
      }
      else {
        this.a1 = [];
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenPathRequest
    // Serialize message field [N]
    bufferOffset = _serializer.uint16(obj.N, buffer, bufferOffset);
    // Serialize message field [numD]
    bufferOffset = _serializer.uint16(obj.numD, buffer, bufferOffset);
    // Serialize message field [T]
    bufferOffset = _serializer.float64(obj.T, buffer, bufferOffset);
    // Serialize message field [h]
    bufferOffset = _serializer.float64(obj.h, buffer, bufferOffset);
    // Serialize message field [R]
    bufferOffset = _serializer.float64(obj.R, buffer, bufferOffset);
    // Serialize message field [p0]
    // Serialize the length for message field [p0]
    bufferOffset = _serializer.uint32(obj.p0.length, buffer, bufferOffset);
    obj.p0.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [v0]
    // Serialize the length for message field [v0]
    bufferOffset = _serializer.uint32(obj.v0.length, buffer, bufferOffset);
    obj.v0.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [a0]
    // Serialize the length for message field [a0]
    bufferOffset = _serializer.uint32(obj.a0.length, buffer, bufferOffset);
    obj.a0.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [p1]
    // Serialize the length for message field [p1]
    bufferOffset = _serializer.uint32(obj.p1.length, buffer, bufferOffset);
    obj.p1.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [v1]
    // Serialize the length for message field [v1]
    bufferOffset = _serializer.uint32(obj.v1.length, buffer, bufferOffset);
    obj.v1.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [a1]
    // Serialize the length for message field [a1]
    bufferOffset = _serializer.uint32(obj.a1.length, buffer, bufferOffset);
    obj.a1.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenPathRequest
    let len;
    let data = new GenPathRequest(null);
    // Deserialize message field [N]
    data.N = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [numD]
    data.numD = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [T]
    data.T = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [h]
    data.h = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [R]
    data.R = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [p0]
    // Deserialize array length for message field [p0]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.p0 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.p0[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [v0]
    // Deserialize array length for message field [v0]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.v0 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.v0[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [a0]
    // Deserialize array length for message field [a0]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.a0 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.a0[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [p1]
    // Deserialize array length for message field [p1]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.p1 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.p1[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [v1]
    // Deserialize array length for message field [v1]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.v1 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.v1[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [a1]
    // Deserialize array length for message field [a1]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.a1 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.a1[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.p0.length;
    length += 24 * object.v0.length;
    length += 24 * object.a0.length;
    length += 24 * object.p1.length;
    length += 24 * object.v1.length;
    length += 24 * object.a1.length;
    length += 24 * object.obstacles.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/GenPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acbaa095a36e3ec458f23d58e640173a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 N # note: including N here is a little redundant as it can be inferred from the dimension of the input vectors.  However, it is useful for error checking.
    uint16 numD
    float64 T
    float64 h
    float64 R
    geometry_msgs/Vector3[] p0
    geometry_msgs/Vector3[] v0
    geometry_msgs/Vector3[] a0
    geometry_msgs/Vector3[] p1
    geometry_msgs/Vector3[] v1
    geometry_msgs/Vector3[] a1
    geometry_msgs/Vector3[] obstacles
    
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
    const resolved = new GenPathRequest(null);
    if (msg.N !== undefined) {
      resolved.N = msg.N;
    }
    else {
      resolved.N = 0
    }

    if (msg.numD !== undefined) {
      resolved.numD = msg.numD;
    }
    else {
      resolved.numD = 0
    }

    if (msg.T !== undefined) {
      resolved.T = msg.T;
    }
    else {
      resolved.T = 0.0
    }

    if (msg.h !== undefined) {
      resolved.h = msg.h;
    }
    else {
      resolved.h = 0.0
    }

    if (msg.R !== undefined) {
      resolved.R = msg.R;
    }
    else {
      resolved.R = 0.0
    }

    if (msg.p0 !== undefined) {
      resolved.p0 = new Array(msg.p0.length);
      for (let i = 0; i < resolved.p0.length; ++i) {
        resolved.p0[i] = geometry_msgs.msg.Vector3.Resolve(msg.p0[i]);
      }
    }
    else {
      resolved.p0 = []
    }

    if (msg.v0 !== undefined) {
      resolved.v0 = new Array(msg.v0.length);
      for (let i = 0; i < resolved.v0.length; ++i) {
        resolved.v0[i] = geometry_msgs.msg.Vector3.Resolve(msg.v0[i]);
      }
    }
    else {
      resolved.v0 = []
    }

    if (msg.a0 !== undefined) {
      resolved.a0 = new Array(msg.a0.length);
      for (let i = 0; i < resolved.a0.length; ++i) {
        resolved.a0[i] = geometry_msgs.msg.Vector3.Resolve(msg.a0[i]);
      }
    }
    else {
      resolved.a0 = []
    }

    if (msg.p1 !== undefined) {
      resolved.p1 = new Array(msg.p1.length);
      for (let i = 0; i < resolved.p1.length; ++i) {
        resolved.p1[i] = geometry_msgs.msg.Vector3.Resolve(msg.p1[i]);
      }
    }
    else {
      resolved.p1 = []
    }

    if (msg.v1 !== undefined) {
      resolved.v1 = new Array(msg.v1.length);
      for (let i = 0; i < resolved.v1.length; ++i) {
        resolved.v1[i] = geometry_msgs.msg.Vector3.Resolve(msg.v1[i]);
      }
    }
    else {
      resolved.v1 = []
    }

    if (msg.a1 !== undefined) {
      resolved.a1 = new Array(msg.a1.length);
      for (let i = 0; i < resolved.a1.length; ++i) {
        resolved.a1[i] = geometry_msgs.msg.Vector3.Resolve(msg.a1[i]);
      }
    }
    else {
      resolved.a1 = []
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = geometry_msgs.msg.Vector3.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    return resolved;
    }
};

class GenPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectories = null;
      this.converged = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectories')) {
        this.trajectories = initObj.trajectories
      }
      else {
        this.trajectories = [];
      }
      if (initObj.hasOwnProperty('converged')) {
        this.converged = initObj.converged
      }
      else {
        this.converged = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenPathResponse
    // Serialize message field [trajectories]
    // Serialize the length for message field [trajectories]
    bufferOffset = _serializer.uint32(obj.trajectories.length, buffer, bufferOffset);
    obj.trajectories.forEach((val) => {
      bufferOffset = Trajectory.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [converged]
    bufferOffset = _serializer.bool(obj.converged, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenPathResponse
    let len;
    let data = new GenPathResponse(null);
    // Deserialize message field [trajectories]
    // Deserialize array length for message field [trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectories[i] = Trajectory.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [converged]
    data.converged = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.trajectories.forEach((val) => {
      length += Trajectory.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/GenPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e085ee622b655aac7b4faba7e23870b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    acl_msgs/Trajectory[] trajectories
    bool converged
    
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
    const resolved = new GenPathResponse(null);
    if (msg.trajectories !== undefined) {
      resolved.trajectories = new Array(msg.trajectories.length);
      for (let i = 0; i < resolved.trajectories.length; ++i) {
        resolved.trajectories[i] = Trajectory.Resolve(msg.trajectories[i]);
      }
    }
    else {
      resolved.trajectories = []
    }

    if (msg.converged !== undefined) {
      resolved.converged = msg.converged;
    }
    else {
      resolved.converged = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GenPathRequest,
  Response: GenPathResponse,
  md5sum() { return '7a3e50543d6de9d6311088a4d374c49c'; },
  datatype() { return 'acl_msgs/GenPath'; }
};
