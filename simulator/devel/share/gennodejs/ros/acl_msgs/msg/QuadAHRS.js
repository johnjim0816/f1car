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

class QuadAHRS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.att = null;
      this.att_meas = null;
      this.rpy = null;
      this.rpy_meas = null;
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
      if (initObj.hasOwnProperty('att_meas')) {
        this.att_meas = initObj.att_meas
      }
      else {
        this.att_meas = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpy_meas')) {
        this.rpy_meas = initObj.rpy_meas
      }
      else {
        this.rpy_meas = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadAHRS
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [att]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.att, buffer, bufferOffset);
    // Serialize message field [att_meas]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.att_meas, buffer, bufferOffset);
    // Serialize message field [rpy]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpy, buffer, bufferOffset);
    // Serialize message field [rpy_meas]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpy_meas, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadAHRS
    let len;
    let data = new QuadAHRS(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [att]
    data.att = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [att_meas]
    data.att_meas = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy]
    data.rpy = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy_meas]
    data.rpy_meas = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/QuadAHRS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f4a3386f9afc8a5354d3ad861314b66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Quaternion att
    geometry_msgs/Quaternion att_meas
    geometry_msgs/Vector3 rpy
    geometry_msgs/Vector3 rpy_meas
    
    
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
    const resolved = new QuadAHRS(null);
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

    if (msg.att_meas !== undefined) {
      resolved.att_meas = geometry_msgs.msg.Quaternion.Resolve(msg.att_meas)
    }
    else {
      resolved.att_meas = new geometry_msgs.msg.Quaternion()
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = geometry_msgs.msg.Vector3.Resolve(msg.rpy)
    }
    else {
      resolved.rpy = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpy_meas !== undefined) {
      resolved.rpy_meas = geometry_msgs.msg.Vector3.Resolve(msg.rpy_meas)
    }
    else {
      resolved.rpy_meas = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = QuadAHRS;
