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

class GenSimplePathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vmax = null;
      this.amax = null;
      this.p0 = null;
      this.p1 = null;
    }
    else {
      if (initObj.hasOwnProperty('vmax')) {
        this.vmax = initObj.vmax
      }
      else {
        this.vmax = 0.0;
      }
      if (initObj.hasOwnProperty('amax')) {
        this.amax = initObj.amax
      }
      else {
        this.amax = 0.0;
      }
      if (initObj.hasOwnProperty('p0')) {
        this.p0 = initObj.p0
      }
      else {
        this.p0 = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenSimplePathRequest
    // Serialize message field [vmax]
    bufferOffset = _serializer.float64(obj.vmax, buffer, bufferOffset);
    // Serialize message field [amax]
    bufferOffset = _serializer.float64(obj.amax, buffer, bufferOffset);
    // Serialize message field [p0]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.p0, buffer, bufferOffset);
    // Serialize message field [p1]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.p1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenSimplePathRequest
    let len;
    let data = new GenSimplePathRequest(null);
    // Deserialize message field [vmax]
    data.vmax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [amax]
    data.amax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [p0]
    data.p0 = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [p1]
    data.p1 = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/GenSimplePathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '394ea102ac842ab8227285101e6f3290';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 vmax
    float64 amax
    geometry_msgs/Vector3 p0
    geometry_msgs/Vector3 p1
    
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
    const resolved = new GenSimplePathRequest(null);
    if (msg.vmax !== undefined) {
      resolved.vmax = msg.vmax;
    }
    else {
      resolved.vmax = 0.0
    }

    if (msg.amax !== undefined) {
      resolved.amax = msg.amax;
    }
    else {
      resolved.amax = 0.0
    }

    if (msg.p0 !== undefined) {
      resolved.p0 = geometry_msgs.msg.Vector3.Resolve(msg.p0)
    }
    else {
      resolved.p0 = new geometry_msgs.msg.Vector3()
    }

    if (msg.p1 !== undefined) {
      resolved.p1 = geometry_msgs.msg.Vector3.Resolve(msg.p1)
    }
    else {
      resolved.p1 = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

class GenSimplePathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new Trajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenSimplePathResponse
    // Serialize message field [trajectory]
    bufferOffset = Trajectory.serialize(obj.trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenSimplePathResponse
    let len;
    let data = new GenSimplePathResponse(null);
    // Deserialize message field [trajectory]
    data.trajectory = Trajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Trajectory.getMessageSize(object.trajectory);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/GenSimplePathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63186c500e781b227e2074ba560e4296';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    acl_msgs/Trajectory trajectory
    
    
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
    const resolved = new GenSimplePathResponse(null);
    if (msg.trajectory !== undefined) {
      resolved.trajectory = Trajectory.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new Trajectory()
    }

    return resolved;
    }
};

module.exports = {
  Request: GenSimplePathRequest,
  Response: GenSimplePathResponse,
  md5sum() { return '99a4add3b0d2befb05994c24c7161515'; },
  datatype() { return 'acl_msgs/GenSimplePath'; }
};
