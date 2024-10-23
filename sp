using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /UnrealEngine.com/Temporary/SpatialMath }

### "Ringo" means "apple" in Japanese!!! ####
ringo_spawner_device := class(creative_device):

    @editable
    prop : creative_prop_asset = DefaultCreativePropAsset

    @editable
    prop1 : creative_prop_asset = DefaultCreativePropAsset

    @editable
    pc : player_counter_device = player_counter_device{}

    @editable
    pc1 : player_counter_device = player_counter_device{}

    @editable
    pc2 : player_counter_device = player_counter_device{}



    #Runs when the device is started in a running game
    OnBegin<override>()<suspends>:void=
        MonitorPlayerCount()

    MonitorPlayerCount():void =
        loop:
            class1 := pc.GetCount()
            if(class1=1):
                SpawnPoint : vector3 = vector3 : 
                    X := 100.0
                    Y := 100.0
                    Z := 100.0
                SpawnRotation : rotation = MakeRotationFromYawPitchRollDegrees(0.0, 0.0, 0.0)
                    SpawnProp(prop, SpawnPoint, SpawnRotation)
            break
