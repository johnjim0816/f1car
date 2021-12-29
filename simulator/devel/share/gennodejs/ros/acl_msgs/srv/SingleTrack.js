// Auto-generated. Do not edit!

// (in-package acl_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SingleTrackRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xcross = null;
      this.t13 = null;
      this.t24 = null;
      this.num_laps = null;
    }
    else {
      if (initObj.hasOwnProperty('xcross')) {
        this.xcross = initObj.xcross
      }
      else {
        this.xcross = 0.0;
      }
      if (initObj.hasOwnProperty('t13')) {
        this.t13 = initObj.t13
      }
      else {
        this.t13 = 0.0;
      }
      if (initObj.hasOwnProperty('t24')) {
        this.t24 = initObj.t24
      }
      else {
        this.t24 = 0.0;
      }
      if (initObj.hasOwnProperty('num_laps')) {
        this.num_laps = initObj.num_laps
      }
      else {
        this.num_laps = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SingleTrackRequest
    // Serialize message field [xcross]
    bufferOffset = _serializer.float64(obj.xcross, buffer, bufferOffset);
    // Serialize message field [t13]
    bufferOffset = _serializer.float64(obj.t13, buffer, bufferOffset);
    // Serialize message field [t24]
    bufferOffset = _serializer.float64(obj.t24, buffer, bufferOffset);
    // Serialize message field [num_laps]
    bufferOffset = _serializer.int64(obj.num_laps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleTrackRequest
    let len;
    let data = new SingleTrackRequest(null);
    // Deserialize message field [xcross]
    data.xcross = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [t13]
    data.t13 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [t24]
    data.t24 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num_laps]
    data.num_laps = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/SingleTrackRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c81f3f1f4acec1167034c36f9dc20a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 xcross
    float64 t13
    float64 t24
    int64 num_laps
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SingleTrackRequest(null);
    if (msg.xcross !== undefined) {
      resolved.xcross = msg.xcross;
    }
    else {
      resolved.xcross = 0.0
    }

    if (msg.t13 !== undefined) {
      resolved.t13 = msg.t13;
    }
    else {
      resolved.t13 = 0.0
    }

    if (msg.t24 !== undefined) {
      resolved.t24 = msg.t24;
    }
    else {
      resolved.t24 = 0.0
    }

    if (msg.num_laps !== undefined) {
      resolved.num_laps = msg.num_laps;
    }
    else {
      resolved.num_laps = 0
    }

    return resolved;
    }
};

class SingleTrackResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reward = null;
    }
    else {
      if (initObj.hasOwnProperty('reward')) {
        this.reward = initObj.reward
      }
      else {
        this.reward = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SingleTrackResponse
    // Serialize message field [reward]
    bufferOffset = _serializer.float64(obj.reward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleTrackResponse
    let len;
    let data = new SingleTrackResponse(null);
    // Deserialize message field [reward]
    data.reward = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/SingleTrackResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '771556160cdcd4a7d44d50647196f540';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 reward
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SingleTrackResponse(null);
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
  Request: SingleTrackRequest,
  Response: SingleTrackResponse,
  md5sum() { return 'ebb6ffcb54323364a7c7cbbed4d8e73a'; },
  datatype() { return 'acl_msgs/SingleTrack'; }
};
