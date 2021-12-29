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

class OLcmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.max_omega = null;
      this.max_turn = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('max_omega')) {
        this.max_omega = initObj.max_omega
      }
      else {
        this.max_omega = 0.0;
      }
      if (initObj.hasOwnProperty('max_turn')) {
        this.max_turn = initObj.max_turn
      }
      else {
        this.max_turn = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OLcmdRequest
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [max_omega]
    bufferOffset = _serializer.float64(obj.max_omega, buffer, bufferOffset);
    // Serialize message field [max_turn]
    bufferOffset = _serializer.float64(obj.max_turn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OLcmdRequest
    let len;
    let data = new OLcmdRequest(null);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_omega]
    data.max_omega = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_turn]
    data.max_turn = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/OLcmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c84a51643c3bf557c09a02b7fb1eebd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 time
    float64 max_omega
    float64 max_turn
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OLcmdRequest(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.max_omega !== undefined) {
      resolved.max_omega = msg.max_omega;
    }
    else {
      resolved.max_omega = 0.0
    }

    if (msg.max_turn !== undefined) {
      resolved.max_turn = msg.max_turn;
    }
    else {
      resolved.max_turn = 0.0
    }

    return resolved;
    }
};

class OLcmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.finish = null;
    }
    else {
      if (initObj.hasOwnProperty('finish')) {
        this.finish = initObj.finish
      }
      else {
        this.finish = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OLcmdResponse
    // Serialize message field [finish]
    bufferOffset = _serializer.bool(obj.finish, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OLcmdResponse
    let len;
    let data = new OLcmdResponse(null);
    // Deserialize message field [finish]
    data.finish = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/OLcmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '474a58dbb494a45bb1ca99544cd64e45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool finish
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OLcmdResponse(null);
    if (msg.finish !== undefined) {
      resolved.finish = msg.finish;
    }
    else {
      resolved.finish = false
    }

    return resolved;
    }
};

module.exports = {
  Request: OLcmdRequest,
  Response: OLcmdResponse,
  md5sum() { return 'b6d83d7c503466443ff05073f46784d7'; },
  datatype() { return 'acl_msgs/OLcmd'; }
};
