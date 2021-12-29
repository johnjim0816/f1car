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

class QuadHealth {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_since_boot = null;
      this.dropped_packets = null;
      this.received_seq = null;
      this.voltage = null;
      this.current = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_since_boot')) {
        this.time_since_boot = initObj.time_since_boot
      }
      else {
        this.time_since_boot = 0.0;
      }
      if (initObj.hasOwnProperty('dropped_packets')) {
        this.dropped_packets = initObj.dropped_packets
      }
      else {
        this.dropped_packets = 0;
      }
      if (initObj.hasOwnProperty('received_seq')) {
        this.received_seq = initObj.received_seq
      }
      else {
        this.received_seq = 0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadHealth
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_since_boot]
    bufferOffset = _serializer.float64(obj.time_since_boot, buffer, bufferOffset);
    // Serialize message field [dropped_packets]
    bufferOffset = _serializer.int64(obj.dropped_packets, buffer, bufferOffset);
    // Serialize message field [received_seq]
    bufferOffset = _serializer.uint8(obj.received_seq, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float64(obj.voltage, buffer, bufferOffset);
    // Check that the constant length array field [current] has the right length
    if (obj.current.length !== 4) {
      throw new Error('Unable to serialize array field current - length must be 4')
    }
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float64(obj.current, buffer, bufferOffset, 4);
    // Check that the constant length array field [temperature] has the right length
    if (obj.temperature.length !== 4) {
      throw new Error('Unable to serialize array field temperature - length must be 4')
    }
    // Serialize message field [temperature]
    bufferOffset = _arraySerializer.float64(obj.temperature, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadHealth
    let len;
    let data = new QuadHealth(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_since_boot]
    data.time_since_boot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dropped_packets]
    data.dropped_packets = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [received_seq]
    data.received_seq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [temperature]
    data.temperature = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 89;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/QuadHealth';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '343728cd67e960654d49bfc9f80c1b8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 time_since_boot
    int64 dropped_packets
    uint8 received_seq
    float64 voltage
    float64[4] current
    float64[4] temperature
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
    const resolved = new QuadHealth(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_since_boot !== undefined) {
      resolved.time_since_boot = msg.time_since_boot;
    }
    else {
      resolved.time_since_boot = 0.0
    }

    if (msg.dropped_packets !== undefined) {
      resolved.dropped_packets = msg.dropped_packets;
    }
    else {
      resolved.dropped_packets = 0
    }

    if (msg.received_seq !== undefined) {
      resolved.received_seq = msg.received_seq;
    }
    else {
      resolved.received_seq = 0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = new Array(4).fill(0)
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = QuadHealth;
