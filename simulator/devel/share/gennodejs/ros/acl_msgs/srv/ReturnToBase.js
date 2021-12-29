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

class ReturnToBaseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_init = null;
      this.twist_init = null;
      this.pose_goal = null;
      this.twist_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_init')) {
        this.pose_init = initObj.pose_init
      }
      else {
        this.pose_init = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('twist_init')) {
        this.twist_init = initObj.twist_init
      }
      else {
        this.twist_init = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('pose_goal')) {
        this.pose_goal = initObj.pose_goal
      }
      else {
        this.pose_goal = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('twist_goal')) {
        this.twist_goal = initObj.twist_goal
      }
      else {
        this.twist_goal = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReturnToBaseRequest
    // Serialize message field [pose_init]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_init, buffer, bufferOffset);
    // Serialize message field [twist_init]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist_init, buffer, bufferOffset);
    // Serialize message field [pose_goal]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_goal, buffer, bufferOffset);
    // Serialize message field [twist_goal]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReturnToBaseRequest
    let len;
    let data = new ReturnToBaseRequest(null);
    // Deserialize message field [pose_init]
    data.pose_init = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist_init]
    data.twist_init = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_goal]
    data.pose_goal = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist_goal]
    data.twist_goal = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 208;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/ReturnToBaseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd15a6b6e904d469947ea4172e4a7788c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose_init
    geometry_msgs/Twist twist_init
    geometry_msgs/Pose pose_goal
    geometry_msgs/Twist twist_goal
    
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new ReturnToBaseRequest(null);
    if (msg.pose_init !== undefined) {
      resolved.pose_init = geometry_msgs.msg.Pose.Resolve(msg.pose_init)
    }
    else {
      resolved.pose_init = new geometry_msgs.msg.Pose()
    }

    if (msg.twist_init !== undefined) {
      resolved.twist_init = geometry_msgs.msg.Twist.Resolve(msg.twist_init)
    }
    else {
      resolved.twist_init = new geometry_msgs.msg.Twist()
    }

    if (msg.pose_goal !== undefined) {
      resolved.pose_goal = geometry_msgs.msg.Pose.Resolve(msg.pose_goal)
    }
    else {
      resolved.pose_goal = new geometry_msgs.msg.Pose()
    }

    if (msg.twist_goal !== undefined) {
      resolved.twist_goal = geometry_msgs.msg.Twist.Resolve(msg.twist_goal)
    }
    else {
      resolved.twist_goal = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

class ReturnToBaseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReturnToBaseResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReturnToBaseResponse
    let len;
    let data = new ReturnToBaseResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/ReturnToBaseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReturnToBaseResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ReturnToBaseRequest,
  Response: ReturnToBaseResponse,
  md5sum() { return 'c32c7657daad0d7f97bac883e5e34a75'; },
  datatype() { return 'acl_msgs/ReturnToBase'; }
};
