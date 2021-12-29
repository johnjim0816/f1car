// Auto-generated. Do not edit!

// (in-package acl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class HexCantedAttCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.att = null;
      this.rate = null;
      this.Fx = null;
      this.Fy = null;
      this.Fz = null;
      this.att_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('att')) {
        this.att = initObj.att
      }
      else {
        this.att = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('rate')) {
        this.rate = initObj.rate
      }
      else {
        this.rate = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('Fx')) {
        this.Fx = initObj.Fx
      }
      else {
        this.Fx = 0.0;
      }
      if (initObj.hasOwnProperty('Fy')) {
        this.Fy = initObj.Fy
      }
      else {
        this.Fy = 0.0;
      }
      if (initObj.hasOwnProperty('Fz')) {
        this.Fz = initObj.Fz
      }
      else {
        this.Fz = 0.0;
      }
      if (initObj.hasOwnProperty('att_status')) {
        this.att_status = initObj.att_status
      }
      else {
        this.att_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HexCantedAttCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [att]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.att, buffer, bufferOffset);
    // Serialize message field [rate]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rate, buffer, bufferOffset);
    // Serialize message field [Fx]
    bufferOffset = _serializer.float64(obj.Fx, buffer, bufferOffset);
    // Serialize message field [Fy]
    bufferOffset = _serializer.float64(obj.Fy, buffer, bufferOffset);
    // Serialize message field [Fz]
    bufferOffset = _serializer.float64(obj.Fz, buffer, bufferOffset);
    // Serialize message field [att_status]
    bufferOffset = _serializer.int16(obj.att_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HexCantedAttCmd
    let len;
    let data = new HexCantedAttCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [att]
    data.att = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [rate]
    data.rate = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [Fx]
    data.Fx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Fy]
    data.Fy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Fz]
    data.Fz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [att_status]
    data.att_status = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 82;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/HexCantedAttCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9629a5b57e06fabbc9c670074808160';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Quaternion att
    geometry_msgs/Vector3 rate
    float64 Fx
    float64 Fy
    float64 Fz
    int16 att_status
    
    
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    const resolved = new HexCantedAttCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.att !== undefined) {
      resolved.att = geometry_msgs.msg.Quaternion.Resolve(msg.att)
    }
    else {
      resolved.att = new geometry_msgs.msg.Quaternion()
    }

    if (msg.rate !== undefined) {
      resolved.rate = geometry_msgs.msg.Vector3.Resolve(msg.rate)
    }
    else {
      resolved.rate = new geometry_msgs.msg.Vector3()
    }

    if (msg.Fx !== undefined) {
      resolved.Fx = msg.Fx;
    }
    else {
      resolved.Fx = 0.0
    }

    if (msg.Fy !== undefined) {
      resolved.Fy = msg.Fy;
    }
    else {
      resolved.Fy = 0.0
    }

    if (msg.Fz !== undefined) {
      resolved.Fz = msg.Fz;
    }
    else {
      resolved.Fz = 0.0
    }

    if (msg.att_status !== undefined) {
      resolved.att_status = msg.att_status;
    }
    else {
      resolved.att_status = 0
    }

    return resolved;
    }
};

module.exports = HexCantedAttCmd;
