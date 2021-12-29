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

class MultiVehTakeoffLandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.takeoff = null;
      this.use_current_pose = null;
      this.initial_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('takeoff')) {
        this.takeoff = initObj.takeoff
      }
      else {
        this.takeoff = false;
      }
      if (initObj.hasOwnProperty('use_current_pose')) {
        this.use_current_pose = initObj.use_current_pose
      }
      else {
        this.use_current_pose = false;
      }
      if (initObj.hasOwnProperty('initial_pose')) {
        this.initial_pose = initObj.initial_pose
      }
      else {
        this.initial_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiVehTakeoffLandRequest
    // Serialize message field [takeoff]
    bufferOffset = _serializer.bool(obj.takeoff, buffer, bufferOffset);
    // Serialize message field [use_current_pose]
    bufferOffset = _serializer.bool(obj.use_current_pose, buffer, bufferOffset);
    // Serialize message field [initial_pose]
    // Serialize the length for message field [initial_pose]
    bufferOffset = _serializer.uint32(obj.initial_pose.length, buffer, bufferOffset);
    obj.initial_pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiVehTakeoffLandRequest
    let len;
    let data = new MultiVehTakeoffLandRequest(null);
    // Deserialize message field [takeoff]
    data.takeoff = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_current_pose]
    data.use_current_pose = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [initial_pose]
    // Deserialize array length for message field [initial_pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.initial_pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.initial_pose[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.initial_pose.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/MultiVehTakeoffLandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a67fc63c3463f7de36a1ab7d74dd57e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool takeoff
    bool use_current_pose
    geometry_msgs/Pose[] initial_pose
    
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
    const resolved = new MultiVehTakeoffLandRequest(null);
    if (msg.takeoff !== undefined) {
      resolved.takeoff = msg.takeoff;
    }
    else {
      resolved.takeoff = false
    }

    if (msg.use_current_pose !== undefined) {
      resolved.use_current_pose = msg.use_current_pose;
    }
    else {
      resolved.use_current_pose = false
    }

    if (msg.initial_pose !== undefined) {
      resolved.initial_pose = new Array(msg.initial_pose.length);
      for (let i = 0; i < resolved.initial_pose.length; ++i) {
        resolved.initial_pose[i] = geometry_msgs.msg.Pose.Resolve(msg.initial_pose[i]);
      }
    }
    else {
      resolved.initial_pose = []
    }

    return resolved;
    }
};

class MultiVehTakeoffLandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiVehTakeoffLandResponse
    // Serialize message field [done]
    bufferOffset = _serializer.bool(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiVehTakeoffLandResponse
    let len;
    let data = new MultiVehTakeoffLandResponse(null);
    // Deserialize message field [done]
    data.done = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/MultiVehTakeoffLandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89bb254424e4cffedbf494e7b0ddbfea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool done
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiVehTakeoffLandResponse(null);
    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MultiVehTakeoffLandRequest,
  Response: MultiVehTakeoffLandResponse,
  md5sum() { return '27f425af94b703f836a37c2b21423b61'; },
  datatype() { return 'acl_msgs/MultiVehTakeoffLand'; }
};
