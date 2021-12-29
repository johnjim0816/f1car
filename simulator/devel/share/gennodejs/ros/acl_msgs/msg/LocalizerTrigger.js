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

class LocalizerTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.class_string = null;
      this.trigger_fov = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('class_string')) {
        this.class_string = initObj.class_string
      }
      else {
        this.class_string = '';
      }
      if (initObj.hasOwnProperty('trigger_fov')) {
        this.trigger_fov = initObj.trigger_fov
      }
      else {
        this.trigger_fov = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalizerTrigger
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [class_string]
    bufferOffset = _serializer.string(obj.class_string, buffer, bufferOffset);
    // Serialize message field [trigger_fov]
    bufferOffset = _serializer.bool(obj.trigger_fov, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalizerTrigger
    let len;
    let data = new LocalizerTrigger(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [class_string]
    data.class_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trigger_fov]
    data.trigger_fov = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.class_string);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/LocalizerTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47a0bee22db703f6268646b232b82c71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string class_string
    bool trigger_fov
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalizerTrigger(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.class_string !== undefined) {
      resolved.class_string = msg.class_string;
    }
    else {
      resolved.class_string = ''
    }

    if (msg.trigger_fov !== undefined) {
      resolved.trigger_fov = msg.trigger_fov;
    }
    else {
      resolved.trigger_fov = false
    }

    return resolved;
    }
};

module.exports = LocalizerTrigger;
