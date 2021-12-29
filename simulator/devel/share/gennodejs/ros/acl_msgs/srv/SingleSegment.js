// Auto-generated. Do not edit!

// (in-package acl_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SimpleState = require('../msg/SimpleState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SingleSegmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.r = null;
      this.v = null;
      this.reset_state = null;
      this.use_start_state = null;
      this.d = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = new SimpleState();
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('reset_state')) {
        this.reset_state = initObj.reset_state
      }
      else {
        this.reset_state = false;
      }
      if (initObj.hasOwnProperty('use_start_state')) {
        this.use_start_state = initObj.use_start_state
      }
      else {
        this.use_start_state = false;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SingleSegmentRequest
    // Serialize message field [s]
    bufferOffset = SimpleState.serialize(obj.s, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float64(obj.r, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float64(obj.v, buffer, bufferOffset);
    // Serialize message field [reset_state]
    bufferOffset = _serializer.bool(obj.reset_state, buffer, bufferOffset);
    // Serialize message field [use_start_state]
    bufferOffset = _serializer.bool(obj.use_start_state, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.int64(obj.d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleSegmentRequest
    let len;
    let data = new SingleSegmentRequest(null);
    // Deserialize message field [s]
    data.s = SimpleState.deserialize(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reset_state]
    data.reset_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_start_state]
    data.use_start_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 106;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/SingleSegmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23960faeeb6a988afa5a44d232a1bb47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    acl_msgs/SimpleState s
    float64 r
    float64 v
    bool reset_state
    bool use_start_state
    int64 d
    
    ================================================================================
    MSG: acl_msgs/SimpleState
    int64 segment
    float64 x
    float64 y
    float64 psi
    float64 omega
    float64 Vx
    float64 Vy
    float64 psidot
    int64 slipping
    float64 prev_radius
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SingleSegmentRequest(null);
    if (msg.s !== undefined) {
      resolved.s = SimpleState.Resolve(msg.s)
    }
    else {
      resolved.s = new SimpleState()
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.reset_state !== undefined) {
      resolved.reset_state = msg.reset_state;
    }
    else {
      resolved.reset_state = false
    }

    if (msg.use_start_state !== undefined) {
      resolved.use_start_state = msg.use_start_state;
    }
    else {
      resolved.use_start_state = false
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0
    }

    return resolved;
    }
};

class SingleSegmentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s_prime = null;
      this.reward = null;
    }
    else {
      if (initObj.hasOwnProperty('s_prime')) {
        this.s_prime = initObj.s_prime
      }
      else {
        this.s_prime = new SimpleState();
      }
      if (initObj.hasOwnProperty('reward')) {
        this.reward = initObj.reward
      }
      else {
        this.reward = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SingleSegmentResponse
    // Serialize message field [s_prime]
    bufferOffset = SimpleState.serialize(obj.s_prime, buffer, bufferOffset);
    // Serialize message field [reward]
    bufferOffset = _serializer.float64(obj.reward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleSegmentResponse
    let len;
    let data = new SingleSegmentResponse(null);
    // Deserialize message field [s_prime]
    data.s_prime = SimpleState.deserialize(buffer, bufferOffset);
    // Deserialize message field [reward]
    data.reward = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 88;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/SingleSegmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41dd1d4e0b5c0314f399194025f2022f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    acl_msgs/SimpleState s_prime
    float64 reward
    
    ================================================================================
    MSG: acl_msgs/SimpleState
    int64 segment
    float64 x
    float64 y
    float64 psi
    float64 omega
    float64 Vx
    float64 Vy
    float64 psidot
    int64 slipping
    float64 prev_radius
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SingleSegmentResponse(null);
    if (msg.s_prime !== undefined) {
      resolved.s_prime = SimpleState.Resolve(msg.s_prime)
    }
    else {
      resolved.s_prime = new SimpleState()
    }

    if (msg.reward !== undefined) {
      resolved.reward = msg.reward;
    }
    else {
      resolved.reward = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SingleSegmentRequest,
  Response: SingleSegmentResponse,
  md5sum() { return 'c66573959adcbfed1484944f69febdbb'; },
  datatype() { return 'acl_msgs/SingleSegment'; }
};
