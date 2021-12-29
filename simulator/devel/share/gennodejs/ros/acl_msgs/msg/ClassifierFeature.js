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

//-----------------------------------------------------------

class ClassifierFeature {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.feature_vector = null;
      this.class_name = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('feature_vector')) {
        this.feature_vector = initObj.feature_vector
      }
      else {
        this.feature_vector = [];
      }
      if (initObj.hasOwnProperty('class_name')) {
        this.class_name = initObj.class_name
      }
      else {
        this.class_name = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClassifierFeature
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [feature_vector]
    bufferOffset = _arraySerializer.float64(obj.feature_vector, buffer, bufferOffset, null);
    // Serialize message field [class_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.class_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClassifierFeature
    let len;
    let data = new ClassifierFeature(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [feature_vector]
    data.feature_vector = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [class_name]
    data.class_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.feature_vector.length;
    length += std_msgs.msg.String.getMessageSize(object.class_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/ClassifierFeature';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5d5252854bd1f22959b207699b8c36a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[] feature_vector
    std_msgs/String class_name
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
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClassifierFeature(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.feature_vector !== undefined) {
      resolved.feature_vector = msg.feature_vector;
    }
    else {
      resolved.feature_vector = []
    }

    if (msg.class_name !== undefined) {
      resolved.class_name = std_msgs.msg.String.Resolve(msg.class_name)
    }
    else {
      resolved.class_name = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = ClassifierFeature;
