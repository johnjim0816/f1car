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

class QuadWaypointQueueComplete {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_queue_complete = null;
      this.veh_name = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_queue_complete')) {
        this.is_queue_complete = initObj.is_queue_complete
      }
      else {
        this.is_queue_complete = false;
      }
      if (initObj.hasOwnProperty('veh_name')) {
        this.veh_name = initObj.veh_name
      }
      else {
        this.veh_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadWaypointQueueComplete
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_queue_complete]
    bufferOffset = _serializer.bool(obj.is_queue_complete, buffer, bufferOffset);
    // Serialize message field [veh_name]
    bufferOffset = _serializer.string(obj.veh_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadWaypointQueueComplete
    let len;
    let data = new QuadWaypointQueueComplete(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_queue_complete]
    data.is_queue_complete = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [veh_name]
    data.veh_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.veh_name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/QuadWaypointQueueComplete';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e49744385c766b273caa0908141d6daf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool is_queue_complete
    string veh_name
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
    const resolved = new QuadWaypointQueueComplete(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_queue_complete !== undefined) {
      resolved.is_queue_complete = msg.is_queue_complete;
    }
    else {
      resolved.is_queue_complete = false
    }

    if (msg.veh_name !== undefined) {
      resolved.veh_name = msg.veh_name;
    }
    else {
      resolved.veh_name = ''
    }

    return resolved;
    }
};

module.exports = QuadWaypointQueueComplete;
