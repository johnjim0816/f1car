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

class MultiVehPreComputeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_name = null;
    }
    else {
      if (initObj.hasOwnProperty('file_name')) {
        this.file_name = initObj.file_name
      }
      else {
        this.file_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiVehPreComputeRequest
    // Serialize message field [file_name]
    bufferOffset = _serializer.string(obj.file_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiVehPreComputeRequest
    let len;
    let data = new MultiVehPreComputeRequest(null);
    // Deserialize message field [file_name]
    data.file_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.file_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/MultiVehPreComputeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2415261c9605b9f38867ffbbe495fc04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string file_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiVehPreComputeRequest(null);
    if (msg.file_name !== undefined) {
      resolved.file_name = msg.file_name;
    }
    else {
      resolved.file_name = ''
    }

    return resolved;
    }
};

class MultiVehPreComputeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.converged = null;
    }
    else {
      if (initObj.hasOwnProperty('converged')) {
        this.converged = initObj.converged
      }
      else {
        this.converged = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiVehPreComputeResponse
    // Serialize message field [converged]
    bufferOffset = _serializer.bool(obj.converged, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiVehPreComputeResponse
    let len;
    let data = new MultiVehPreComputeResponse(null);
    // Deserialize message field [converged]
    data.converged = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/MultiVehPreComputeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a66f7ff8742366f455ff1c2cabe6fdef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool converged
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiVehPreComputeResponse(null);
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
  Request: MultiVehPreComputeRequest,
  Response: MultiVehPreComputeResponse,
  md5sum() { return 'f732d1c522c27f0f4a1daaa555df5861'; },
  datatype() { return 'acl_msgs/MultiVehPreCompute'; }
};
