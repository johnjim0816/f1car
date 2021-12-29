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

class PolyInputs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.n = null;
      this.wp = null;
      this.wp0 = null;
      this.wpf = null;
      this.wp_vel = null;
      this.wp_elm = null;
      this.tt = null;
    }
    else {
      if (initObj.hasOwnProperty('n')) {
        this.n = initObj.n
      }
      else {
        this.n = 0;
      }
      if (initObj.hasOwnProperty('wp')) {
        this.wp = initObj.wp
      }
      else {
        this.wp = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('wp0')) {
        this.wp0 = initObj.wp0
      }
      else {
        this.wp0 = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('wpf')) {
        this.wpf = initObj.wpf
      }
      else {
        this.wpf = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('wp_vel')) {
        this.wp_vel = initObj.wp_vel
      }
      else {
        this.wp_vel = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('wp_elm')) {
        this.wp_elm = initObj.wp_elm
      }
      else {
        this.wp_elm = [];
      }
      if (initObj.hasOwnProperty('tt')) {
        this.tt = initObj.tt
      }
      else {
        this.tt = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PolyInputs
    // Serialize message field [n]
    bufferOffset = _serializer.int64(obj.n, buffer, bufferOffset);
    // Serialize message field [wp]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.wp, buffer, bufferOffset);
    // Serialize message field [wp0]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.wp0, buffer, bufferOffset);
    // Serialize message field [wpf]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.wpf, buffer, bufferOffset);
    // Serialize message field [wp_vel]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.wp_vel, buffer, bufferOffset);
    // Serialize message field [wp_elm]
    bufferOffset = _arraySerializer.int64(obj.wp_elm, buffer, bufferOffset, null);
    // Serialize message field [tt]
    bufferOffset = _arraySerializer.float64(obj.tt, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolyInputs
    let len;
    let data = new PolyInputs(null);
    // Deserialize message field [n]
    data.n = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [wp]
    data.wp = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [wp0]
    data.wp0 = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [wpf]
    data.wpf = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [wp_vel]
    data.wp_vel = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [wp_elm]
    data.wp_elm = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [tt]
    data.tt = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.wp);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.wp0);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.wpf);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.wp_vel);
    length += 8 * object.wp_elm.length;
    length += 8 * object.tt.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/PolyInputs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1bda35eaa32e8a9d7e75090c28023cbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of polynomial inputs for trajectory generation.
    
    int64 n # polynomial order (n=4 -> cubic spline)
    std_msgs/Float64MultiArray wp # x,y,z waypoints
    std_msgs/Float64MultiArray wp0 # initial x,y,z velocity and derivatives if appropriate
    std_msgs/Float64MultiArray wpf # final x,y,z velocity and derivatives if appropriate
    std_msgs/Float64MultiArray wp_vel # intermediate velocity commands
    int64[] wp_elm # waypoints at which the wp_vel should be applied
    float64[] tt # time segments between waypoints (relative, not cumulative)
    ================================================================================
    MSG: std_msgs/Float64MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float64[]         data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PolyInputs(null);
    if (msg.n !== undefined) {
      resolved.n = msg.n;
    }
    else {
      resolved.n = 0
    }

    if (msg.wp !== undefined) {
      resolved.wp = std_msgs.msg.Float64MultiArray.Resolve(msg.wp)
    }
    else {
      resolved.wp = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.wp0 !== undefined) {
      resolved.wp0 = std_msgs.msg.Float64MultiArray.Resolve(msg.wp0)
    }
    else {
      resolved.wp0 = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.wpf !== undefined) {
      resolved.wpf = std_msgs.msg.Float64MultiArray.Resolve(msg.wpf)
    }
    else {
      resolved.wpf = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.wp_vel !== undefined) {
      resolved.wp_vel = std_msgs.msg.Float64MultiArray.Resolve(msg.wp_vel)
    }
    else {
      resolved.wp_vel = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.wp_elm !== undefined) {
      resolved.wp_elm = msg.wp_elm;
    }
    else {
      resolved.wp_elm = []
    }

    if (msg.tt !== undefined) {
      resolved.tt = msg.tt;
    }
    else {
      resolved.tt = []
    }

    return resolved;
    }
};

module.exports = PolyInputs;
