{
  "$GMRoom":"",
  "%Name":"rm_map",
  "creationCodeFile":"",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_765FC63","path":"rooms/rm_map/rm_map.yy",},
    {"name":"inst_612FD764","path":"rooms/rm_map/rm_map.yy",},
    {"name":"inst_3B9800A2","path":"rooms/rm_map/rm_map.yy",},
    {"name":"inst_33E74EAC","path":"rooms/rm_map/rm_map.yy",},
    {"name":"inst_71183A51","path":"rooms/rm_map/rm_map.yy",},
    {"name":"inst_987D194","path":"rooms/rm_map/rm_map.yy",},
    {"name":"inst_762D45A6","path":"rooms/rm_map/rm_map.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"UI_Layer","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_71183A51","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_71183A51","objectId":{"name":"obj_map_button","path":"objects/obj_map_button/obj_map_button.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":640.0,"y":176.0,},
        {"$GMRInstance":"","%Name":"inst_987D194","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_987D194","objectId":{"name":"obj_map_button","path":"objects/obj_map_button/obj_map_button.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":768.0,"y":112.0,},
        {"$GMRInstance":"","%Name":"inst_762D45A6","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_762D45A6","objectId":{"name":"obj_map_button","path":"objects/obj_map_button/obj_map_button.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":864.0,"y":256.0,},
      ],"layers":[],"name":"UI_Layer","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMREffectLayer":"","%Name":"Heat_Haze_Layer","depth":100,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Heat_Haze_Layer","properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.004",},
        {"name":"g_Distort2Speed","type":0,"value":"0.009",},
        {"name":"g_Distort1Scale","type":0,"value":"7.3",},
        {"name":"g_Distort1Scale","type":0,"value":"1.3",},
        {"name":"g_Distort2Scale","type":0,"value":"25.3",},
        {"name":"g_Distort2Scale","type":0,"value":"3.3",},
        {"name":"g_Distort1Amount","type":0,"value":"2",},
        {"name":"g_Distort2Amount","type":0,"value":"4",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0.5",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"Old_Film_Layer_1","depth":200,"effectEnabled":true,"effectType":"_filter_fractal_noise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Old_Film_Layer_1","properties":[
        {"name":"g_FractalNoiseScale","type":0,"value":"128",},
        {"name":"g_FractalNoisePersistence","type":0,"value":"0.5",},
        {"name":"g_FractalNoiseOffset","type":0,"value":"0",},
        {"name":"g_FractalNoiseOffset","type":0,"value":"0",},
        {"name":"g_FractalNoiseSpeed","type":0,"value":"2",},
        {"name":"g_FractalNoiseTintColour","type":1,"value":"#FF262626",},
        {"name":"g_FractalNoiseTexture","type":2,"value":"_filter_fractal_noise_texture",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMREffectLayer":"","%Name":"Old_Film_Layer","depth":300,"effectEnabled":true,"effectType":"_filter_old_film","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Old_Film_Layer","properties":[
        {"name":"g_OldFilmFlickerIntensity","type":0,"value":"0.075",},
        {"name":"g_OldFilmFlickerSpeed","type":0,"value":"1.25",},
        {"name":"g_OldFilmJitterIntensity","type":0,"value":"2",},
        {"name":"g_OldFilmSaturation","type":0,"value":"0.4",},
        {"name":"g_OldFilmSpeckIntensity","type":0,"value":"0.4",},
        {"name":"g_OldFilmBarScale","type":0,"value":"1",},
        {"name":"g_OldFilmBarSpeed","type":0,"value":"1",},
        {"name":"g_OldFilmBarFrequency","type":0,"value":"40",},
        {"name":"g_OldFilmRingScale","type":0,"value":"1",},
        {"name":"g_OldFilmRingSharpness","type":0,"value":"64",},
        {"name":"g_OldFilmRingIntensity","type":0,"value":"1",},
        {"name":"g_OldFilmTexture","type":2,"value":"_filter_old_film_texture",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMRInstanceLayer":"","%Name":"Instances","depth":400,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_612FD764","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_612FD764","objectId":{"name":"obj_dungeon_marker","path":"objects/obj_dungeon_marker/obj_dungeon_marker.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":672.0,"y":208.0,},
        {"$GMRInstance":"","%Name":"inst_3B9800A2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_3B9800A2","objectId":{"name":"obj_dungeon_marker2","path":"objects/obj_dungeon_marker2/obj_dungeon_marker2.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":800.0,"y":144.0,},
        {"$GMRInstance":"","%Name":"inst_33E74EAC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_33E74EAC","objectId":{"name":"obj_dungeon_marker3","path":"objects/obj_dungeon_marker3/obj_dungeon_marker3.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":896.0,"y":288.0,},
        {"$GMRInstance":"","%Name":"inst_765FC63","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_765FC63","objectId":{"name":"obj_submarine","path":"objects/obj_submarine/obj_submarine.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":608.0,"y":96.0,},
      ],"layers":[],"name":"Instances","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_map_bg","path":"sprites/spr_map_bg/spr_map_bg.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"rm_map",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":768,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":1000,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":false,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}