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

class SimpleState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segment = null;
      this.x = null;
      this.y = null;
      this.psi = null;
      this.omega = null;
      this.Vx = null;
      this.Vy = null;
      this.psidot = null;
      this.slipping = null;
      this.prev_radius = null;
    }
    else {
      if (initObj.hasOwnProperty('segment')) {
        this.segment = initObj.segment
      }
      else {
        this.segment = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('psi')) {
        this.psi = initObj.psi
      }
      else {
        this.psi = 0.0;
      }
      if (initObj.hasOwnProperty('omega')) {
        this.omega = initObj.omega
      }
      else {
        this.omega = 0.0;
      }
      if (initObj.hasOwnProperty('Vx')) {
        this.Vx = initObj.Vx
      }
      else {
        this.Vx = 0.0;
      }
      if (initObj.hasOwnProperty('Vy')) {
        this.Vy = initObj.Vy
      }
      else {
        this.Vy = 0.0;
      }
      if (initObj.hasOwnProperty('psidot')) {
        this.psidot = initObj.psidot
      }
      else {
        this.psidot = 0.0;
      }
      if (initObj.hasOwnProperty('slipping')) {
        this.slipping = initObj.slipping
      }
      else {
        this.slipping = 0;
      }
      if (initObj.hasOwnProperty('prev_radius')) {
        this.prev_radius = initObj.prev_radius
      }
      else {
        this.prev_radius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimpleState
    // Serialize message field [segment]
    bufferOffset = _serializer.int64(obj.segment, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [psi]
    bufferOffset = _serializer.float64(obj.psi, buffer, bufferOffset);
    // Serialize message field [omega]
    bufferOffset = _serializer.float64(obj.omega, buffer, bufferOffset);
    // Serialize message field [Vx]
    bufferOffset = _serializer.float64(obj.Vx, buffer, bufferOffset);
    // Serialize message field [Vy]
    bufferOffset = _serializer.float64(obj.Vy, buffer, bufferOffset);
    // Serialize message field [psidot]
    bufferOffset = _serializer.float64(obj.psidot, buffer, bufferOffset);
    // Serialize message field [slipping]
    bufferOffset = _serializer.int64(obj.slipping, buffer, bufferOffset);
    // Serialize message field [prev_radius]
    bufferOffset = _serializer.float64(obj.prev_radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimpleState
    let len;
    let data = new SimpleState(null);
    // Deserialize message field [segment]
    data.segment = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psi]
    data.psi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega]
    data.omega = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Vx]
    data.Vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Vy]
    data.Vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psidot]
    data.psidot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [slipping]
    data.slipping = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [prev_radius]
    data.prev_radius = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/SimpleState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfc3f29b7f63d9bfdd15aafee94b9fa1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SimpleState(null);
    if (msg.segment !== undefined) {
      resolved.segment = msg.segment;
    }
    else {
      resolved.segment = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.psi !== undefined) {
      resolved.psi = msg.psi;
    }
    else {
      resolved.psi = 0.0
    }

    if (msg.omega !== undefined) {
      resolved.omega = msg.omega;
    }
    else {
      resolved.omega = 0.0
    }

    if (msg.Vx !== undefined) {
      resolved.Vx = msg.Vx;
    }
    else {
      resolved.Vx = 0.0
    }

    if (msg.Vy !== undefined) {
      resolved.Vy = msg.Vy;
    }
    else {
      resolved.Vy = 0.0
    }

    if (msg.psidot !== undefined) {
      resolved.psidot = msg.psidot;
    }
    else {
      resolved.psidot = 0.0
    }

    if (msg.slipping !== undefined) {
      resolved.slipping = msg.slipping;
    }
    else {
      resolved.slipping = 0
    }

    if (msg.prev_radius !== undefined) {
      resolved.prev_radius = msg.prev_radius;
    }
    else {
      resolved.prev_radius = 0.0
    }

    return resolved;
    }
};

module.exports = SimpleState;
