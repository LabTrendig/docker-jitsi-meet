admins = {
    "focus@auth.meet.jitsi",
    "jvb@auth.meet.jitsi"
}

plugin_paths = { "/prosody-plugins/", "/prosody-plugins-custom" }
http_default_host = "meet.jitsi"











asap_accepted_issuers = { "my_web_client","my_app_client" }



asap_accepted_audiences = { "my_server1","my_server2" }


VirtualHost "meet.jitsi"

  
    authentication = "token"
    app_id = "trendigID"
    app_secret = "trendigSecret"
    allow_empty_token = false
    

    

    ssl = {
        key = "/config/certs/meet.jitsi.key";
        certificate = "/config/certs/meet.jitsi.crt";
    }
    modules_enabled = {
        "bosh";
        "pubsub";
        "ping";
        "speakerstats";
        "conference_duration";
        
        
        
    }

    

    speakerstats_component = "speakerstats.meet.jitsi"
    conference_duration_component = "conferenceduration.meet.jitsi"

    c2s_require_encryption = false



VirtualHost "auth.meet.jitsi"
    ssl = {
        key = "/config/certs/auth.meet.jitsi.key";
        certificate = "/config/certs/auth.meet.jitsi.crt";
    }
    authentication = "internal_hashed"


VirtualHost "recorder.meet.jitsi"
    modules_enabled = {
      "ping";
    }
    authentication = "internal_hashed"


Component "internal-muc.meet.jitsi" "muc"
    storage = "memory"
    modules_enabled = {
        "ping";
        
    }
    muc_room_locking = false
    muc_room_default_public_jids = true

Component "muc.meet.jitsi" "muc"
    storage = "memory"
    modules_enabled = {
        "muc_meeting_id";
        
        "token_moderation";
        
        
        "token_verification";
        
    }
    muc_room_cache_size = 1000
    muc_room_locking = false
    muc_room_default_public_jids = true

Component "focus.meet.jitsi"
    component_secret = "e09679456fb7435eb9688e96b03e2216"

Component "speakerstats.meet.jitsi" "speakerstats_component"
    muc_component = "muc.meet.jitsi"

Component "conferenceduration.meet.jitsi" "conference_duration_component"
    muc_component = "muc.meet.jitsi"


