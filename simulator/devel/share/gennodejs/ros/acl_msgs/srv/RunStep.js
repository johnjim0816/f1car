// Auto-generated. Do not edit!

// (in-package acl_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CarState = require('../msg/CarState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RunStepRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startState = null;
      this.dt = null;
      this.omegaDes = null;
      this.turn = null;
      this.showVis = null;
    }
    else {
      if (initObj.hasOwnProperty('startState')) {
        this.startState = initObj.startState
      }
      else {
        this.startState = new CarState();
      }
      if (initObj.hasOwnProperty('dt')) {
        this.dt = initObj.dt
      }
      else {
        this.dt = 0.0;
      }
      if (initObj.hasOwnProperty('omegaDes')) {
        this.omegaDes = initObj.omegaDes
      }
      else {
        this.omegaDes = 0.0;
      }
      if (initObj.hasOwnProperty('turn')) {
        this.turn = initObj.turn
      }
      else {
        this.turn = 0.0;
      }
      if (initObj.hasOwnProperty('showVis')) {
        this.showVis = initObj.showVis
      }
      else {
        this.showVis = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RunStepRequest
    // Serialize message field [startState]
    bufferOffset = CarState.serialize(obj.startState, buffer, bufferOffset);
    // Serialize message field [dt]
    bufferOffset = _serializer.float64(obj.dt, buffer, bufferOffset);
    // Serialize message field [omegaDes]
    bufferOffset = _serializer.float64(obj.omegaDes, buffer, bufferOffset);
    // Serialize message field [turn]
    bufferOffset = _serializer.float64(obj.turn, buffer, bufferOffset);
    // Serialize message field [showVis]
    bufferOffset = _serializer.bool(obj.showVis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RunStepRequest
    let len;
    let data = new RunStepRequest(null);
    // Deserialize message field [startState]
    data.startState = CarState.deserialize(buffer, bufferOffset);
    // Deserialize message field [dt]
    data.dt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omegaDes]
    data.omegaDes = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [turn]
    data.turn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [showVis]
    data.showVis = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CarState.getMessageSize(object.startState);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/RunStepRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f634abab07f1c51e2876bb6e2831ae17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    acl_msgs/CarState startState
    float64 dt
    float64 omegaDes
    float64 turn
    bool showVis
    
    ================================================================================
    MSG: acl_msgs/CarState
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
    const resolved = new RunStepRequest(null);
    if (msg.startState !== undefined) {
      resolved.startState = CarState.Resolve(msg.startState)
    }
    else {
      resolved.startState = new CarState()
    }

    if (msg.dt !== undefined) {
      resolved.dt = msg.dt;
    }
    else {
      resolved.dt = 0.0
    }

    if (msg.omegaDes !== undefined) {
      resolved.omegaDes = msg.omegaDes;
    }
    else {
      resolved.omegaDes = 0.0
    }

    if (msg.turn !== undefined) {
      resolved.turn = msg.turn;
    }
    else {
      resolved.turn = 0.0
    }

    if (msg.showVis !== undefined) {
      resolved.showVis = msg.showVis;
    }
    else {
      resolved.showVis = false
    }

    return resolved;
    }
};

class RunStepResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.finalState = null;
    }
    else {
      if (initObj.hasOwnProperty('finalState')) {
        this.finalState = initObj.finalState
      }
      else {
        this.finalState = new CarState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RunStepResponse
    // Serialize message field [finalState]
    bufferOffset = CarState.serialize(obj.finalState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RunStepResponse
    let len;
    let data = new RunStepResponse(null);
    // Deserialize message field [finalState]
    data.finalState = CarState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CarState.getMessageSize(object.finalState);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/RunStepResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82f383bafb8f242654e9f9af2ccea093';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    acl_msgs/CarState finalState
    
    
    ================================================================================
    MSG: acl_msgs/CarState
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
    const resolved = new RunStepResponse(null);
    if (msg.finalState !== undefined) {
      resolved.finalState = CarState.Resolve(msg.finalState)
    }
    else {
      resolved.finalState = new CarState()
    }

    return resolved;
    }
};

module.exports = {
  Request: RunStepRequest,
  Response: RunStepResponse,
  md5sum() { return '217689ad4ccf0382c4356aba3735d2cb'; },
  datatype() { return 'acl_msgs/RunStep'; }
};
