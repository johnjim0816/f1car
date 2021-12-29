// Auto-generated. Do not edit!

// (in-package acl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GPparams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
      this.beta = null;
      this.iL2 = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = [];
      }
      if (initObj.hasOwnProperty('beta')) {
        this.beta = initObj.beta
      }
      else {
        this.beta = [];
      }
      if (initObj.hasOwnProperty('iL2')) {
        this.iL2 = initObj.iL2
      }
      else {
        this.iL2 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPparams
    // Serialize message field [input]
    bufferOffset = _arraySerializer.float64(obj.input, buffer, bufferOffset, null);
    // Serialize message field [beta]
    bufferOffset = _arraySerializer.float64(obj.beta, buffer, bufferOffset, null);
    // Serialize message field [iL2]
    bufferOffset = _arraySerializer.float64(obj.iL2, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPparams
    let len;
    let data = new GPparams(null);
    // Deserialize message field [input]
    data.input = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [beta]
    data.beta = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [iL2]
    data.iL2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.input.length;
    length += 8 * object.beta.length;
    length += 8 * object.iL2.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/GPparams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e690124aefed3e4ccb198c08430e0e06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] input
    float64[] beta
    float64[] iL2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPparams(null);
    if (msg.input !== undefined) {
      resolved.input = msg.input;
    }
    else {
      resolved.input = []
    }

    if (msg.beta !== undefined) {
      resolved.beta = msg.beta;
    }
    else {
      resolved.beta = []
    }

    if (msg.iL2 !== undefined) {
      resolved.iL2 = msg.iL2;
    }
    else {
      resolved.iL2 = []
    }

    return resolved;
    }
};

module.exports = GPparams;
