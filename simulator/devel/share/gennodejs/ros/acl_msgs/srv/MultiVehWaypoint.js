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


//-----------------------------------------------------------

class MultiVehWaypointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.final_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('final_positions')) {
        this.final_positions = initObj.final_positions
      }
      else {
        this.final_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiVehWaypointRequest
    // Serialize message field [final_positions]
    // Serialize the length for message field [final_positions]
    bufferOffset = _serializer.uint32(obj.final_positions.length, buffer, bufferOffset);
    obj.final_positions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiVehWaypointRequest
    let len;
    let data = new MultiVehWaypointRequest(null);
    // Deserialize message field [final_positions]
    // Deserialize array length for message field [final_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.final_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.final_positions[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.final_positions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/MultiVehWaypointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28c796eba58ca392bbe3aa6ff3a7809f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3[] final_positions
    
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
    const resolved = new MultiVehWaypointRequest(null);
    if (msg.final_positions !== undefined) {
      resolved.final_positions = new Array(msg.final_positions.length);
      for (let i = 0; i < resolved.final_positions.length; ++i) {
        resolved.final_positions[i] = geometry_msgs.msg.Vector3.Resolve(msg.final_positions[i]);
      }
    }
    else {
      resolved.final_positions = []
    }

    return resolved;
    }
};

class MultiVehWaypointResponse {
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
    // Serializes a message object of type MultiVehWaypointResponse
    // Serialize message field [converged]
    bufferOffset = _serializer.bool(obj.converged, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiVehWaypointResponse
    let len;
    let data = new MultiVehWaypointResponse(null);
    // Deserialize message field [converged]
    data.converged = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/MultiVehWaypointResponse';
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
    const resolved = new MultiVehWaypointResponse(null);
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
  Request: MultiVehWaypointRequest,
  Response: MultiVehWaypointResponse,
  md5sum() { return 'fc70ffdb5fbac9cb6374d980c2d52b88'; },
  datatype() { return 'acl_msgs/MultiVehWaypoint'; }
};
