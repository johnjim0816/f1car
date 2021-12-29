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

class ClassifierProbabilities {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.probabilities = null;
      this.probabilities_raw = null;
      this.class_names = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('probabilities')) {
        this.probabilities = initObj.probabilities
      }
      else {
        this.probabilities = [];
      }
      if (initObj.hasOwnProperty('probabilities_raw')) {
        this.probabilities_raw = initObj.probabilities_raw
      }
      else {
        this.probabilities_raw = [];
      }
      if (initObj.hasOwnProperty('class_names')) {
        this.class_names = initObj.class_names
      }
      else {
        this.class_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClassifierProbabilities
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [probabilities]
    bufferOffset = _arraySerializer.float64(obj.probabilities, buffer, bufferOffset, null);
    // Serialize message field [probabilities_raw]
    bufferOffset = _arraySerializer.float64(obj.probabilities_raw, buffer, bufferOffset, null);
    // Serialize message field [class_names]
    bufferOffset = _arraySerializer.string(obj.class_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClassifierProbabilities
    let len;
    let data = new ClassifierProbabilities(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [probabilities]
    data.probabilities = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [probabilities_raw]
    data.probabilities_raw = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [class_names]
    data.class_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.probabilities.length;
    length += 8 * object.probabilities_raw.length;
    object.class_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/ClassifierProbabilities';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a18c7fe1b3d8f68005c144ab97a8ac7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[] probabilities
    float64[] probabilities_raw
    string[] class_names
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
    const resolved = new ClassifierProbabilities(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.probabilities !== undefined) {
      resolved.probabilities = msg.probabilities;
    }
    else {
      resolved.probabilities = []
    }

    if (msg.probabilities_raw !== undefined) {
      resolved.probabilities_raw = msg.probabilities_raw;
    }
    else {
      resolved.probabilities_raw = []
    }

    if (msg.class_names !== undefined) {
      resolved.class_names = msg.class_names;
    }
    else {
      resolved.class_names = []
    }

    return resolved;
    }
};

module.exports = ClassifierProbabilities;
