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

class HexData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.m13 = null;
      this.m46 = null;
      this.FBody = null;
      this.MBody = null;
      this.XDesired = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('m13')) {
        this.m13 = initObj.m13
      }
      else {
        this.m13 = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('m46')) {
        this.m46 = initObj.m46
      }
      else {
        this.m46 = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('FBody')) {
        this.FBody = initObj.FBody
      }
      else {
        this.FBody = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('MBody')) {
        this.MBody = initObj.MBody
      }
      else {
        this.MBody = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('XDesired')) {
        this.XDesired = initObj.XDesired
      }
      else {
        this.XDesired = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HexData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [m13]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.m13, buffer, bufferOffset);
    // Serialize message field [m46]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.m46, buffer, bufferOffset);
    // Serialize message field [FBody]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.FBody, buffer, bufferOffset);
    // Serialize message field [MBody]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.MBody, buffer, bufferOffset);
    // Serialize message field [XDesired]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.XDesired, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HexData
    let len;
    let data = new HexData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [m13]
    data.m13 = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [m46]
    data.m46 = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [FBody]
    data.FBody = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [MBody]
    data.MBody = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [XDesired]
    data.XDesired = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/HexData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '106174b561cc37cf60ae191c835ecc70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Vector3 m13
    geometry_msgs/Vector3 m46
    geometry_msgs/Vector3 FBody
    geometry_msgs/Vector3 MBody
    geometry_msgs/Vector3 XDesired
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
    const resolved = new HexData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.m13 !== undefined) {
      resolved.m13 = geometry_msgs.msg.Vector3.Resolve(msg.m13)
    }
    else {
      resolved.m13 = new geometry_msgs.msg.Vector3()
    }

    if (msg.m46 !== undefined) {
      resolved.m46 = geometry_msgs.msg.Vector3.Resolve(msg.m46)
    }
    else {
      resolved.m46 = new geometry_msgs.msg.Vector3()
    }

    if (msg.FBody !== undefined) {
      resolved.FBody = geometry_msgs.msg.Vector3.Resolve(msg.FBody)
    }
    else {
      resolved.FBody = new geometry_msgs.msg.Vector3()
    }

    if (msg.MBody !== undefined) {
      resolved.MBody = geometry_msgs.msg.Vector3.Resolve(msg.MBody)
    }
    else {
      resolved.MBody = new geometry_msgs.msg.Vector3()
    }

    if (msg.XDesired !== undefined) {
      resolved.XDesired = geometry_msgs.msg.Vector3.Resolve(msg.XDesired)
    }
    else {
      resolved.XDesired = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = HexData;
