// Auto-generated. Do not edit!

// (in-package acl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class QuadWaypointError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.waypoint_stamp = null;
      this.pos_error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('waypoint_stamp')) {
        this.waypoint_stamp = initObj.waypoint_stamp
      }
      else {
        this.waypoint_stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('pos_error')) {
        this.pos_error = initObj.pos_error
      }
      else {
        this.pos_error = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadWaypointError
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [waypoint_stamp]
    bufferOffset = _serializer.time(obj.waypoint_stamp, buffer, bufferOffset);
    // Serialize message field [pos_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pos_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadWaypointError
    let len;
    let data = new QuadWaypointError(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [waypoint_stamp]
    data.waypoint_stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [pos_error]
    data.pos_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/QuadWaypointError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53c885b005435a69f7514b3c4a71ebe7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    time waypoint_stamp
    geometry_msgs/Vector3 pos_error
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
    const resolved = new QuadWaypointError(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.waypoint_stamp !== undefined) {
      resolved.waypoint_stamp = msg.waypoint_stamp;
    }
    else {
      resolved.waypoint_stamp = {secs: 0, nsecs: 0}
    }

    if (msg.pos_error !== undefined) {
      resolved.pos_error = geometry_msgs.msg.Vector3.Resolve(msg.pos_error)
    }
    else {
      resolved.pos_error = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = QuadWaypointError;
