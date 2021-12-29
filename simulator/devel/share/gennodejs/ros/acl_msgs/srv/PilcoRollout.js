// Auto-generated. Do not edit!

// (in-package acl_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GPparams = require('../msg/GPparams.js');

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PilcoRolloutRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.params = null;
      this.H = null;
      this.num_centers = null;
      this.D = null;
      this.E = null;
      this.rate = null;
      this.random = null;
      this.dy0 = null;
    }
    else {
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
      if (initObj.hasOwnProperty('H')) {
        this.H = initObj.H
      }
      else {
        this.H = 0;
      }
      if (initObj.hasOwnProperty('num_centers')) {
        this.num_centers = initObj.num_centers
      }
      else {
        this.num_centers = 0;
      }
      if (initObj.hasOwnProperty('D')) {
        this.D = initObj.D
      }
      else {
        this.D = 0;
      }
      if (initObj.hasOwnProperty('E')) {
        this.E = initObj.E
      }
      else {
        this.E = 0;
      }
      if (initObj.hasOwnProperty('rate')) {
        this.rate = initObj.rate
      }
      else {
        this.rate = 0.0;
      }
      if (initObj.hasOwnProperty('random')) {
        this.random = initObj.random
      }
      else {
        this.random = false;
      }
      if (initObj.hasOwnProperty('dy0')) {
        this.dy0 = initObj.dy0
      }
      else {
        this.dy0 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PilcoRolloutRequest
    // Serialize message field [params]
    // Serialize the length for message field [params]
    bufferOffset = _serializer.uint32(obj.params.length, buffer, bufferOffset);
    obj.params.forEach((val) => {
      bufferOffset = GPparams.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [H]
    bufferOffset = _serializer.int64(obj.H, buffer, bufferOffset);
    // Serialize message field [num_centers]
    bufferOffset = _serializer.int64(obj.num_centers, buffer, bufferOffset);
    // Serialize message field [D]
    bufferOffset = _serializer.int64(obj.D, buffer, bufferOffset);
    // Serialize message field [E]
    bufferOffset = _serializer.int64(obj.E, buffer, bufferOffset);
    // Serialize message field [rate]
    bufferOffset = _serializer.float64(obj.rate, buffer, bufferOffset);
    // Serialize message field [random]
    bufferOffset = _serializer.bool(obj.random, buffer, bufferOffset);
    // Serialize message field [dy0]
    bufferOffset = _serializer.float64(obj.dy0, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PilcoRolloutRequest
    let len;
    let data = new PilcoRolloutRequest(null);
    // Deserialize message field [params]
    // Deserialize array length for message field [params]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.params = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.params[i] = GPparams.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [H]
    data.H = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [num_centers]
    data.num_centers = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [D]
    data.D = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [E]
    data.E = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rate]
    data.rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [random]
    data.random = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dy0]
    data.dy0 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.params.forEach((val) => {
      length += GPparams.getMessageSize(val);
    });
    return length + 53;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/PilcoRolloutRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd55d528b5c126896ba4c21101f746628';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    acl_msgs/GPparams[] params
    int64 H
    int64 num_centers
    int64 D
    int64 E
    float64 rate
    bool random
    float64 dy0
    
    ================================================================================
    MSG: acl_msgs/GPparams
    float64[] input
    float64[] beta
    float64[] iL2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PilcoRolloutRequest(null);
    if (msg.params !== undefined) {
      resolved.params = new Array(msg.params.length);
      for (let i = 0; i < resolved.params.length; ++i) {
        resolved.params[i] = GPparams.Resolve(msg.params[i]);
      }
    }
    else {
      resolved.params = []
    }

    if (msg.H !== undefined) {
      resolved.H = msg.H;
    }
    else {
      resolved.H = 0
    }

    if (msg.num_centers !== undefined) {
      resolved.num_centers = msg.num_centers;
    }
    else {
      resolved.num_centers = 0
    }

    if (msg.D !== undefined) {
      resolved.D = msg.D;
    }
    else {
      resolved.D = 0
    }

    if (msg.E !== undefined) {
      resolved.E = msg.E;
    }
    else {
      resolved.E = 0
    }

    if (msg.rate !== undefined) {
      resolved.rate = msg.rate;
    }
    else {
      resolved.rate = 0.0
    }

    if (msg.random !== undefined) {
      resolved.random = msg.random;
    }
    else {
      resolved.random = false
    }

    if (msg.dy0 !== undefined) {
      resolved.dy0 = msg.dy0;
    }
    else {
      resolved.dy0 = 0.0
    }

    return resolved;
    }
};

class PilcoRolloutResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new std_msgs.msg.Float64MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PilcoRolloutResponse
    // Serialize message field [x]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PilcoRolloutResponse
    let len;
    let data = new PilcoRolloutResponse(null);
    // Deserialize message field [x]
    data.x = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.x);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.y);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'acl_msgs/PilcoRolloutResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea663295d8fc3e5793c094269ecffd17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64MultiArray x
    std_msgs/Float64MultiArray y
    
    
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
    const resolved = new PilcoRolloutResponse(null);
    if (msg.x !== undefined) {
      resolved.x = std_msgs.msg.Float64MultiArray.Resolve(msg.x)
    }
    else {
      resolved.x = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.y !== undefined) {
      resolved.y = std_msgs.msg.Float64MultiArray.Resolve(msg.y)
    }
    else {
      resolved.y = new std_msgs.msg.Float64MultiArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: PilcoRolloutRequest,
  Response: PilcoRolloutResponse,
  md5sum() { return '0eea5718b5de328911c85360216aff35'; },
  datatype() { return 'acl_msgs/PilcoRollout'; }
};
