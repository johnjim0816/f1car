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

class MissionMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.START = null;
      this.END = null;
      this.KILL = null;
    }
    else {
      if (initObj.hasOwnProperty('START')) {
        this.START = initObj.START
      }
      else {
        this.START = false;
      }
      if (initObj.hasOwnProperty('END')) {
        this.END = initObj.END
      }
      else {
        this.END = false;
      }
      if (initObj.hasOwnProperty('KILL')) {
        this.KILL = initObj.KILL
      }
      else {
        this.KILL = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionMode
    // Serialize message field [START]
    bufferOffset = _serializer.bool(obj.START, buffer, bufferOffset);
    // Serialize message field [END]
    bufferOffset = _serializer.bool(obj.END, buffer, bufferOffset);
    // Serialize message field [KILL]
    bufferOffset = _serializer.bool(obj.KILL, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionMode
    let len;
    let data = new MissionMode(null);
    // Deserialize message field [START]
    data.START = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [END]
    data.END = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [KILL]
    data.KILL = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/MissionMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '735b6e363094cb9a1d391d118453bf2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool START
    bool END
    bool KILL
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionMode(null);
    if (msg.START !== undefined) {
      resolved.START = msg.START;
    }
    else {
      resolved.START = false
    }

    if (msg.END !== undefined) {
      resolved.END = msg.END;
    }
    else {
      resolved.END = false
    }

    if (msg.KILL !== undefined) {
      resolved.KILL = msg.KILL;
    }
    else {
      resolved.KILL = false
    }

    return resolved;
    }
};

module.exports = MissionMode;
