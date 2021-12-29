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

class Cvx {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.JPSa_ms = null;
      this.JPS_fix_ms = null;
      this.JPStotal_ms = null;
      this.JPSa_solved = null;
      this.JPS_fix_solved = null;
      this.whole_solved = null;
      this.safe_solved = null;
      this.entered_safe_path = null;
      this.needToComputeSafePath = null;
      this.cvx_decomp_whole_ms = null;
      this.gurobi_whole_ms = null;
      this.gurobi_whole_ms_mine = null;
      this.gurobi_whole_trials = null;
      this.gurobi_whole_dt = null;
      this.gurobi_whole_factor = null;
      this.cvx_decomp_safe_ms = null;
      this.gurobi_safe_ms = null;
      this.gurobi_safe_ms_mine = null;
      this.gurobi_safe_trials = null;
      this.gurobi_safe_dt = null;
      this.gurobi_safe_factor = null;
      this.total_replanning_ms = null;
      this.Ja = null;
      this.Ja_inside = null;
      this.Ja_outside = null;
      this.Jb = null;
      this.Jb_inside = null;
      this.Jb_outside = null;
      this.decision = null;
      this.veloc_norm = null;
      this.total_dist = null;
      this.angle_deg = null;
      this.computed_both = null;
      this.deltaT = null;
      this.indexR = null;
      this.indexH = null;
      this.indexR_percentage = null;
      this.deltaT_percentage = null;
      this.k = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('JPSa_ms')) {
        this.JPSa_ms = initObj.JPSa_ms
      }
      else {
        this.JPSa_ms = 0.0;
      }
      if (initObj.hasOwnProperty('JPS_fix_ms')) {
        this.JPS_fix_ms = initObj.JPS_fix_ms
      }
      else {
        this.JPS_fix_ms = 0.0;
      }
      if (initObj.hasOwnProperty('JPStotal_ms')) {
        this.JPStotal_ms = initObj.JPStotal_ms
      }
      else {
        this.JPStotal_ms = 0.0;
      }
      if (initObj.hasOwnProperty('JPSa_solved')) {
        this.JPSa_solved = initObj.JPSa_solved
      }
      else {
        this.JPSa_solved = 0;
      }
      if (initObj.hasOwnProperty('JPS_fix_solved')) {
        this.JPS_fix_solved = initObj.JPS_fix_solved
      }
      else {
        this.JPS_fix_solved = 0;
      }
      if (initObj.hasOwnProperty('whole_solved')) {
        this.whole_solved = initObj.whole_solved
      }
      else {
        this.whole_solved = 0;
      }
      if (initObj.hasOwnProperty('safe_solved')) {
        this.safe_solved = initObj.safe_solved
      }
      else {
        this.safe_solved = 0;
      }
      if (initObj.hasOwnProperty('entered_safe_path')) {
        this.entered_safe_path = initObj.entered_safe_path
      }
      else {
        this.entered_safe_path = 0;
      }
      if (initObj.hasOwnProperty('needToComputeSafePath')) {
        this.needToComputeSafePath = initObj.needToComputeSafePath
      }
      else {
        this.needToComputeSafePath = 0;
      }
      if (initObj.hasOwnProperty('cvx_decomp_whole_ms')) {
        this.cvx_decomp_whole_ms = initObj.cvx_decomp_whole_ms
      }
      else {
        this.cvx_decomp_whole_ms = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_whole_ms')) {
        this.gurobi_whole_ms = initObj.gurobi_whole_ms
      }
      else {
        this.gurobi_whole_ms = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_whole_ms_mine')) {
        this.gurobi_whole_ms_mine = initObj.gurobi_whole_ms_mine
      }
      else {
        this.gurobi_whole_ms_mine = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_whole_trials')) {
        this.gurobi_whole_trials = initObj.gurobi_whole_trials
      }
      else {
        this.gurobi_whole_trials = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_whole_dt')) {
        this.gurobi_whole_dt = initObj.gurobi_whole_dt
      }
      else {
        this.gurobi_whole_dt = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_whole_factor')) {
        this.gurobi_whole_factor = initObj.gurobi_whole_factor
      }
      else {
        this.gurobi_whole_factor = 0.0;
      }
      if (initObj.hasOwnProperty('cvx_decomp_safe_ms')) {
        this.cvx_decomp_safe_ms = initObj.cvx_decomp_safe_ms
      }
      else {
        this.cvx_decomp_safe_ms = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_safe_ms')) {
        this.gurobi_safe_ms = initObj.gurobi_safe_ms
      }
      else {
        this.gurobi_safe_ms = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_safe_ms_mine')) {
        this.gurobi_safe_ms_mine = initObj.gurobi_safe_ms_mine
      }
      else {
        this.gurobi_safe_ms_mine = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_safe_trials')) {
        this.gurobi_safe_trials = initObj.gurobi_safe_trials
      }
      else {
        this.gurobi_safe_trials = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_safe_dt')) {
        this.gurobi_safe_dt = initObj.gurobi_safe_dt
      }
      else {
        this.gurobi_safe_dt = 0.0;
      }
      if (initObj.hasOwnProperty('gurobi_safe_factor')) {
        this.gurobi_safe_factor = initObj.gurobi_safe_factor
      }
      else {
        this.gurobi_safe_factor = 0.0;
      }
      if (initObj.hasOwnProperty('total_replanning_ms')) {
        this.total_replanning_ms = initObj.total_replanning_ms
      }
      else {
        this.total_replanning_ms = 0.0;
      }
      if (initObj.hasOwnProperty('Ja')) {
        this.Ja = initObj.Ja
      }
      else {
        this.Ja = 0.0;
      }
      if (initObj.hasOwnProperty('Ja_inside')) {
        this.Ja_inside = initObj.Ja_inside
      }
      else {
        this.Ja_inside = 0.0;
      }
      if (initObj.hasOwnProperty('Ja_outside')) {
        this.Ja_outside = initObj.Ja_outside
      }
      else {
        this.Ja_outside = 0.0;
      }
      if (initObj.hasOwnProperty('Jb')) {
        this.Jb = initObj.Jb
      }
      else {
        this.Jb = 0.0;
      }
      if (initObj.hasOwnProperty('Jb_inside')) {
        this.Jb_inside = initObj.Jb_inside
      }
      else {
        this.Jb_inside = 0.0;
      }
      if (initObj.hasOwnProperty('Jb_outside')) {
        this.Jb_outside = initObj.Jb_outside
      }
      else {
        this.Jb_outside = 0.0;
      }
      if (initObj.hasOwnProperty('decision')) {
        this.decision = initObj.decision
      }
      else {
        this.decision = 0;
      }
      if (initObj.hasOwnProperty('veloc_norm')) {
        this.veloc_norm = initObj.veloc_norm
      }
      else {
        this.veloc_norm = 0.0;
      }
      if (initObj.hasOwnProperty('total_dist')) {
        this.total_dist = initObj.total_dist
      }
      else {
        this.total_dist = 0.0;
      }
      if (initObj.hasOwnProperty('angle_deg')) {
        this.angle_deg = initObj.angle_deg
      }
      else {
        this.angle_deg = 0.0;
      }
      if (initObj.hasOwnProperty('computed_both')) {
        this.computed_both = initObj.computed_both
      }
      else {
        this.computed_both = 0;
      }
      if (initObj.hasOwnProperty('deltaT')) {
        this.deltaT = initObj.deltaT
      }
      else {
        this.deltaT = 0;
      }
      if (initObj.hasOwnProperty('indexR')) {
        this.indexR = initObj.indexR
      }
      else {
        this.indexR = 0;
      }
      if (initObj.hasOwnProperty('indexH')) {
        this.indexH = initObj.indexH
      }
      else {
        this.indexH = 0;
      }
      if (initObj.hasOwnProperty('indexR_percentage')) {
        this.indexR_percentage = initObj.indexR_percentage
      }
      else {
        this.indexR_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('deltaT_percentage')) {
        this.deltaT_percentage = initObj.deltaT_percentage
      }
      else {
        this.deltaT_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('k')) {
        this.k = initObj.k
      }
      else {
        this.k = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cvx
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [JPSa_ms]
    bufferOffset = _serializer.float64(obj.JPSa_ms, buffer, bufferOffset);
    // Serialize message field [JPS_fix_ms]
    bufferOffset = _serializer.float64(obj.JPS_fix_ms, buffer, bufferOffset);
    // Serialize message field [JPStotal_ms]
    bufferOffset = _serializer.float64(obj.JPStotal_ms, buffer, bufferOffset);
    // Serialize message field [JPSa_solved]
    bufferOffset = _serializer.int8(obj.JPSa_solved, buffer, bufferOffset);
    // Serialize message field [JPS_fix_solved]
    bufferOffset = _serializer.int8(obj.JPS_fix_solved, buffer, bufferOffset);
    // Serialize message field [whole_solved]
    bufferOffset = _serializer.int8(obj.whole_solved, buffer, bufferOffset);
    // Serialize message field [safe_solved]
    bufferOffset = _serializer.int8(obj.safe_solved, buffer, bufferOffset);
    // Serialize message field [entered_safe_path]
    bufferOffset = _serializer.int8(obj.entered_safe_path, buffer, bufferOffset);
    // Serialize message field [needToComputeSafePath]
    bufferOffset = _serializer.int8(obj.needToComputeSafePath, buffer, bufferOffset);
    // Serialize message field [cvx_decomp_whole_ms]
    bufferOffset = _serializer.float64(obj.cvx_decomp_whole_ms, buffer, bufferOffset);
    // Serialize message field [gurobi_whole_ms]
    bufferOffset = _serializer.float64(obj.gurobi_whole_ms, buffer, bufferOffset);
    // Serialize message field [gurobi_whole_ms_mine]
    bufferOffset = _serializer.float64(obj.gurobi_whole_ms_mine, buffer, bufferOffset);
    // Serialize message field [gurobi_whole_trials]
    bufferOffset = _serializer.float64(obj.gurobi_whole_trials, buffer, bufferOffset);
    // Serialize message field [gurobi_whole_dt]
    bufferOffset = _serializer.float64(obj.gurobi_whole_dt, buffer, bufferOffset);
    // Serialize message field [gurobi_whole_factor]
    bufferOffset = _serializer.float64(obj.gurobi_whole_factor, buffer, bufferOffset);
    // Serialize message field [cvx_decomp_safe_ms]
    bufferOffset = _serializer.float64(obj.cvx_decomp_safe_ms, buffer, bufferOffset);
    // Serialize message field [gurobi_safe_ms]
    bufferOffset = _serializer.float64(obj.gurobi_safe_ms, buffer, bufferOffset);
    // Serialize message field [gurobi_safe_ms_mine]
    bufferOffset = _serializer.float64(obj.gurobi_safe_ms_mine, buffer, bufferOffset);
    // Serialize message field [gurobi_safe_trials]
    bufferOffset = _serializer.float64(obj.gurobi_safe_trials, buffer, bufferOffset);
    // Serialize message field [gurobi_safe_dt]
    bufferOffset = _serializer.float64(obj.gurobi_safe_dt, buffer, bufferOffset);
    // Serialize message field [gurobi_safe_factor]
    bufferOffset = _serializer.float64(obj.gurobi_safe_factor, buffer, bufferOffset);
    // Serialize message field [total_replanning_ms]
    bufferOffset = _serializer.float64(obj.total_replanning_ms, buffer, bufferOffset);
    // Serialize message field [Ja]
    bufferOffset = _serializer.float64(obj.Ja, buffer, bufferOffset);
    // Serialize message field [Ja_inside]
    bufferOffset = _serializer.float64(obj.Ja_inside, buffer, bufferOffset);
    // Serialize message field [Ja_outside]
    bufferOffset = _serializer.float64(obj.Ja_outside, buffer, bufferOffset);
    // Serialize message field [Jb]
    bufferOffset = _serializer.float64(obj.Jb, buffer, bufferOffset);
    // Serialize message field [Jb_inside]
    bufferOffset = _serializer.float64(obj.Jb_inside, buffer, bufferOffset);
    // Serialize message field [Jb_outside]
    bufferOffset = _serializer.float64(obj.Jb_outside, buffer, bufferOffset);
    // Serialize message field [decision]
    bufferOffset = _serializer.int8(obj.decision, buffer, bufferOffset);
    // Serialize message field [veloc_norm]
    bufferOffset = _serializer.float64(obj.veloc_norm, buffer, bufferOffset);
    // Serialize message field [total_dist]
    bufferOffset = _serializer.float64(obj.total_dist, buffer, bufferOffset);
    // Serialize message field [angle_deg]
    bufferOffset = _serializer.float64(obj.angle_deg, buffer, bufferOffset);
    // Serialize message field [computed_both]
    bufferOffset = _serializer.int8(obj.computed_both, buffer, bufferOffset);
    // Serialize message field [deltaT]
    bufferOffset = _serializer.int8(obj.deltaT, buffer, bufferOffset);
    // Serialize message field [indexR]
    bufferOffset = _serializer.int8(obj.indexR, buffer, bufferOffset);
    // Serialize message field [indexH]
    bufferOffset = _serializer.int8(obj.indexH, buffer, bufferOffset);
    // Serialize message field [indexR_percentage]
    bufferOffset = _serializer.float64(obj.indexR_percentage, buffer, bufferOffset);
    // Serialize message field [deltaT_percentage]
    bufferOffset = _serializer.float64(obj.deltaT_percentage, buffer, bufferOffset);
    // Serialize message field [k]
    bufferOffset = _serializer.int8(obj.k, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cvx
    let len;
    let data = new Cvx(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [JPSa_ms]
    data.JPSa_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [JPS_fix_ms]
    data.JPS_fix_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [JPStotal_ms]
    data.JPStotal_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [JPSa_solved]
    data.JPSa_solved = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [JPS_fix_solved]
    data.JPS_fix_solved = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [whole_solved]
    data.whole_solved = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [safe_solved]
    data.safe_solved = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [entered_safe_path]
    data.entered_safe_path = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [needToComputeSafePath]
    data.needToComputeSafePath = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cvx_decomp_whole_ms]
    data.cvx_decomp_whole_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_whole_ms]
    data.gurobi_whole_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_whole_ms_mine]
    data.gurobi_whole_ms_mine = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_whole_trials]
    data.gurobi_whole_trials = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_whole_dt]
    data.gurobi_whole_dt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_whole_factor]
    data.gurobi_whole_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cvx_decomp_safe_ms]
    data.cvx_decomp_safe_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_safe_ms]
    data.gurobi_safe_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_safe_ms_mine]
    data.gurobi_safe_ms_mine = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_safe_trials]
    data.gurobi_safe_trials = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_safe_dt]
    data.gurobi_safe_dt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gurobi_safe_factor]
    data.gurobi_safe_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [total_replanning_ms]
    data.total_replanning_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Ja]
    data.Ja = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Ja_inside]
    data.Ja_inside = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Ja_outside]
    data.Ja_outside = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Jb]
    data.Jb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Jb_inside]
    data.Jb_inside = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Jb_outside]
    data.Jb_outside = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [decision]
    data.decision = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [veloc_norm]
    data.veloc_norm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [total_dist]
    data.total_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_deg]
    data.angle_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [computed_both]
    data.computed_both = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [deltaT]
    data.deltaT = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [indexR]
    data.indexR = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [indexH]
    data.indexH = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [indexR_percentage]
    data.indexR_percentage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [deltaT_percentage]
    data.deltaT_percentage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k]
    data.k = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 228;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acl_msgs/Cvx';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74962b3120644cbb8f5c179e3fb331a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 JPSa_ms   
    float64 JPS_fix_ms  
    float64 JPStotal_ms 
    
    int8 JPSa_solved      
    int8 JPS_fix_solved   
    
    int8 whole_solved
    int8 safe_solved
    
    int8 entered_safe_path
    
    int8 needToComputeSafePath
    
    float64 cvx_decomp_whole_ms  
     
    
    float64 gurobi_whole_ms  
    float64 gurobi_whole_ms_mine 
    float64 gurobi_whole_trials
    float64 gurobi_whole_dt
    float64 gurobi_whole_factor
    
    
    float64 cvx_decomp_safe_ms 
    
    float64 gurobi_safe_ms  
    float64 gurobi_safe_ms_mine 
    float64 gurobi_safe_trials
    float64 gurobi_safe_dt
    float64 gurobi_safe_factor
    
    float64 total_replanning_ms
    
    float64 Ja
    float64 Ja_inside
    float64 Ja_outside
    
    float64 Jb
    float64 Jb_inside
    float64 Jb_outside
    int8 decision 
    
    float64 veloc_norm
    float64 total_dist 
    float64 angle_deg  
    
    int8 computed_both  
    
    int8 deltaT
    int8 indexR
    int8 indexH
    float64 indexR_percentage
    float64 deltaT_percentage
    int8 k
    
    
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
    const resolved = new Cvx(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.JPSa_ms !== undefined) {
      resolved.JPSa_ms = msg.JPSa_ms;
    }
    else {
      resolved.JPSa_ms = 0.0
    }

    if (msg.JPS_fix_ms !== undefined) {
      resolved.JPS_fix_ms = msg.JPS_fix_ms;
    }
    else {
      resolved.JPS_fix_ms = 0.0
    }

    if (msg.JPStotal_ms !== undefined) {
      resolved.JPStotal_ms = msg.JPStotal_ms;
    }
    else {
      resolved.JPStotal_ms = 0.0
    }

    if (msg.JPSa_solved !== undefined) {
      resolved.JPSa_solved = msg.JPSa_solved;
    }
    else {
      resolved.JPSa_solved = 0
    }

    if (msg.JPS_fix_solved !== undefined) {
      resolved.JPS_fix_solved = msg.JPS_fix_solved;
    }
    else {
      resolved.JPS_fix_solved = 0
    }

    if (msg.whole_solved !== undefined) {
      resolved.whole_solved = msg.whole_solved;
    }
    else {
      resolved.whole_solved = 0
    }

    if (msg.safe_solved !== undefined) {
      resolved.safe_solved = msg.safe_solved;
    }
    else {
      resolved.safe_solved = 0
    }

    if (msg.entered_safe_path !== undefined) {
      resolved.entered_safe_path = msg.entered_safe_path;
    }
    else {
      resolved.entered_safe_path = 0
    }

    if (msg.needToComputeSafePath !== undefined) {
      resolved.needToComputeSafePath = msg.needToComputeSafePath;
    }
    else {
      resolved.needToComputeSafePath = 0
    }

    if (msg.cvx_decomp_whole_ms !== undefined) {
      resolved.cvx_decomp_whole_ms = msg.cvx_decomp_whole_ms;
    }
    else {
      resolved.cvx_decomp_whole_ms = 0.0
    }

    if (msg.gurobi_whole_ms !== undefined) {
      resolved.gurobi_whole_ms = msg.gurobi_whole_ms;
    }
    else {
      resolved.gurobi_whole_ms = 0.0
    }

    if (msg.gurobi_whole_ms_mine !== undefined) {
      resolved.gurobi_whole_ms_mine = msg.gurobi_whole_ms_mine;
    }
    else {
      resolved.gurobi_whole_ms_mine = 0.0
    }

    if (msg.gurobi_whole_trials !== undefined) {
      resolved.gurobi_whole_trials = msg.gurobi_whole_trials;
    }
    else {
      resolved.gurobi_whole_trials = 0.0
    }

    if (msg.gurobi_whole_dt !== undefined) {
      resolved.gurobi_whole_dt = msg.gurobi_whole_dt;
    }
    else {
      resolved.gurobi_whole_dt = 0.0
    }

    if (msg.gurobi_whole_factor !== undefined) {
      resolved.gurobi_whole_factor = msg.gurobi_whole_factor;
    }
    else {
      resolved.gurobi_whole_factor = 0.0
    }

    if (msg.cvx_decomp_safe_ms !== undefined) {
      resolved.cvx_decomp_safe_ms = msg.cvx_decomp_safe_ms;
    }
    else {
      resolved.cvx_decomp_safe_ms = 0.0
    }

    if (msg.gurobi_safe_ms !== undefined) {
      resolved.gurobi_safe_ms = msg.gurobi_safe_ms;
    }
    else {
      resolved.gurobi_safe_ms = 0.0
    }

    if (msg.gurobi_safe_ms_mine !== undefined) {
      resolved.gurobi_safe_ms_mine = msg.gurobi_safe_ms_mine;
    }
    else {
      resolved.gurobi_safe_ms_mine = 0.0
    }

    if (msg.gurobi_safe_trials !== undefined) {
      resolved.gurobi_safe_trials = msg.gurobi_safe_trials;
    }
    else {
      resolved.gurobi_safe_trials = 0.0
    }

    if (msg.gurobi_safe_dt !== undefined) {
      resolved.gurobi_safe_dt = msg.gurobi_safe_dt;
    }
    else {
      resolved.gurobi_safe_dt = 0.0
    }

    if (msg.gurobi_safe_factor !== undefined) {
      resolved.gurobi_safe_factor = msg.gurobi_safe_factor;
    }
    else {
      resolved.gurobi_safe_factor = 0.0
    }

    if (msg.total_replanning_ms !== undefined) {
      resolved.total_replanning_ms = msg.total_replanning_ms;
    }
    else {
      resolved.total_replanning_ms = 0.0
    }

    if (msg.Ja !== undefined) {
      resolved.Ja = msg.Ja;
    }
    else {
      resolved.Ja = 0.0
    }

    if (msg.Ja_inside !== undefined) {
      resolved.Ja_inside = msg.Ja_inside;
    }
    else {
      resolved.Ja_inside = 0.0
    }

    if (msg.Ja_outside !== undefined) {
      resolved.Ja_outside = msg.Ja_outside;
    }
    else {
      resolved.Ja_outside = 0.0
    }

    if (msg.Jb !== undefined) {
      resolved.Jb = msg.Jb;
    }
    else {
      resolved.Jb = 0.0
    }

    if (msg.Jb_inside !== undefined) {
      resolved.Jb_inside = msg.Jb_inside;
    }
    else {
      resolved.Jb_inside = 0.0
    }

    if (msg.Jb_outside !== undefined) {
      resolved.Jb_outside = msg.Jb_outside;
    }
    else {
      resolved.Jb_outside = 0.0
    }

    if (msg.decision !== undefined) {
      resolved.decision = msg.decision;
    }
    else {
      resolved.decision = 0
    }

    if (msg.veloc_norm !== undefined) {
      resolved.veloc_norm = msg.veloc_norm;
    }
    else {
      resolved.veloc_norm = 0.0
    }

    if (msg.total_dist !== undefined) {
      resolved.total_dist = msg.total_dist;
    }
    else {
      resolved.total_dist = 0.0
    }

    if (msg.angle_deg !== undefined) {
      resolved.angle_deg = msg.angle_deg;
    }
    else {
      resolved.angle_deg = 0.0
    }

    if (msg.computed_both !== undefined) {
      resolved.computed_both = msg.computed_both;
    }
    else {
      resolved.computed_both = 0
    }

    if (msg.deltaT !== undefined) {
      resolved.deltaT = msg.deltaT;
    }
    else {
      resolved.deltaT = 0
    }

    if (msg.indexR !== undefined) {
      resolved.indexR = msg.indexR;
    }
    else {
      resolved.indexR = 0
    }

    if (msg.indexH !== undefined) {
      resolved.indexH = msg.indexH;
    }
    else {
      resolved.indexH = 0
    }

    if (msg.indexR_percentage !== undefined) {
      resolved.indexR_percentage = msg.indexR_percentage;
    }
    else {
      resolved.indexR_percentage = 0.0
    }

    if (msg.deltaT_percentage !== undefined) {
      resolved.deltaT_percentage = msg.deltaT_percentage;
    }
    else {
      resolved.deltaT_percentage = 0.0
    }

    if (msg.k !== undefined) {
      resolved.k = msg.k;
    }
    else {
      resolved.k = 0
    }

    return resolved;
    }
};

module.exports = Cvx;
